(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1773009283)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp255543 (list gxc#::basic-xform::t))
            (__tmp255542 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp255543
         '()
         __tmp255542
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args254820%_
        (apply make-instance gxc#::optimize-call::t _%$args254820%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp255544
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
        (__make-atomic-promise __tmp255544)))
    (define gxc#apply-optimize-call
      (lambda (_%stx254812%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self254815%_
                (let ((__obj255534
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj255534))
               (__tmp255545
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self254815%_ _%stx254812%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp255545
           gxc#current-compile-method
           _%self254815%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp255547 (list gxc#::void::t))
            (__tmp255546 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp255547
         '()
         __tmp255546
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args254809%_
        (apply make-instance gxc#::check-return-type::t _%$args254809%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp255548
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
        (__make-atomic-promise __tmp255548)))
    (define gxc#apply-check-return-type
      (lambda (_%stx254801%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self254804%_
                (let ((__obj255536
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj255536))
               (__tmp255549
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self254804%_ _%stx254801%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp255549
           gxc#current-compile-method
           _%self254804%_))))
    (define gxc#optimize-call%
      (lambda (_%self254408%_ _%stx254409%_)
        (let* ((_%__stx254889254890%_ _%stx254409%_)
               (_%g254412254458%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254889254890%_)))))
          (let ((_%__kont254891254892%_
                 (lambda (_%g254414254597%_ _%g254415254598%_)
                   (let* ((_%rator-id254618%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g254415254598%_)))
                          (_%rator-type254620%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id254618%_))))
                     (if (or (not _%rator-type254620%_)
                             (eq? (##structure-ref
                                   _%rator-type254620%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self254408%_ _%stx254409%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type254620%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp255550
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type254620%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id254618%_
                                  '" => "
                                  _%rator-type254620%_
                                  '" "
                                  __tmp255550))
                               (let* ((_%optimized254635%_
                                       (let ((__method255537
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type254620%_
                                                 'optimize-call))))
                                         (if __method255537
                                             (let ((__tmp255551
                                                    (let ((__tmp255552
                                                           (lambda (_%g254627254630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g254628254632%_)
                     (cons _%g254627254630%_ _%g254628254632%_))))
              (declare (not safe))
              (foldr__0 __tmp255552 '() _%g254414254597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method255537
                                                _%rator-type254620%_
                                                _%self254408%_
                                                _%stx254409%_
                                                __tmp255551))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type254620%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx254837254838%_
                                       _%optimized254635%_)
                                      (_%g254638254667%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx254837254838%_)))))
                                 (let ((_%__kont254839254840%_
                                        (lambda (_%g254640254733%_
                                                 _%g254641254734%_)
                                          (let* ((_%optimized-rator-id254761%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g254641254734%_)))
                                                 (_%rator-type254766%_
                                                  (let ((_%$e254763%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id254761%_))))
                                                    (if _%$e254763%_
                                                        _%$e254763%_
                                                        _%rator-type254620%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type254766%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id254761%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type254766%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type254766%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized254635%_
                                                (let ((__tmp255553
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g254641254734%_ '()))
                           (let ((__tmp255554
                                  (lambda (_%g254774254777%_ _%g254775254779%_)
                                    (cons _%g254774254777%_
                                          _%g254775254779%_))))
                             (declare (not safe))
                             (foldr__0 __tmp255554 '() _%g254640254733%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp255553
                                                   _%stx254409%_))))))
                                       (_%__kont254843254844%_
                                        (lambda () _%optimized254635%_)))
                                   (let ((_%__match254886254887%_
                                          (lambda (_%e254642254679%_
                                                   _%hd254643254682%_
                                                   _%tl254644254684%_
                                                   _%e254645254687%_
                                                   _%hd254646254690%_
                                                   _%tl254647254692%_
                                                   _%e254648254695%_
                                                   _%hd254649254698%_
                                                   _%tl254650254700%_
                                                   _%e254651254703%_
                                                   _%hd254652254706%_
                                                   _%tl254653254708%_
                                                   _%__splice254841254842%_
                                                   _%target254654254711%_
                                                   _%tl254656254713%_)
                                            (letrec ((_%loop254657254716%_
                                                      (lambda (_%hd254655254719%_
                                                               _%arg254661254721%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd254655254719%_))
                                                            (let ((_%e254658254723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd254655254719%_))))
                      (let ((_%lp-tl254660254728%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e254658254723%_)))
                            (_%lp-hd254659254726%_
                             (let ()
                               (declare (not safe))
                               (##car _%e254658254723%_))))
                        (_%loop254657254716%_
                         _%lp-tl254660254728%_
                         (cons _%lp-hd254659254726%_ _%arg254661254721%_))))
                    (let ((_%arg254662254731%_ (reverse _%arg254661254721%_)))
                      (_%__kont254839254840%_
                       _%arg254662254731%_
                       _%hd254652254706%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop254657254716%_
                                               _%target254654254711%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx254837254838%_))
                                         (let ((_%e254642254679%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx254837254838%_))))
                                           (let ((_%tl254644254684%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e254642254679%_)))
                                                 (_%hd254643254682%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e254642254679%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd254643254682%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd254643254682%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl254644254684%_))
                                                         (let ((_%e254645254687%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl254644254684%_))))
                   (let ((_%tl254647254692%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e254645254687%_)))
                         (_%hd254646254690%_
                          (let ()
                            (declare (not safe))
                            (##car _%e254645254687%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd254646254690%_))
                         (let ((_%e254648254695%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd254646254690%_))))
                           (let ((_%tl254650254700%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e254648254695%_)))
                                 (_%hd254649254698%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e254648254695%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd254649254698%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd254649254698%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl254650254700%_))
                                         (let ((_%e254651254703%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl254650254700%_))))
                                           (let ((_%tl254653254708%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e254651254703%_)))
                                                 (_%hd254652254706%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e254651254703%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl254653254708%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl254647254692%_))
                                                     (let ((_%__splice254841254842%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl254647254692%_
                                                               '0))))
                                                       (let ((_%tl254656254713%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice254841254842%_ '1)))
                     (_%target254654254711%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice254841254842%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl254656254713%_))
                     (_%__match254886254887%_
                      _%e254642254679%_
                      _%hd254643254682%_
                      _%tl254644254684%_
                      _%e254645254687%_
                      _%hd254646254690%_
                      _%tl254647254692%_
                      _%e254648254695%_
                      _%hd254649254698%_
                      _%tl254650254700%_
                      _%e254651254703%_
                      _%hd254652254706%_
                      _%tl254653254708%_
                      _%__splice254841254842%_
                      _%target254654254711%_
                      _%tl254656254713%_)
                     (_%__kont254843254844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont254843254844%_))
                                                 (_%__kont254843254844%_))))
                                         (_%__kont254843254844%_))
                                     (_%__kont254843254844%_))
                                 (_%__kont254843254844%_))))
                         (_%__kont254843254844%_))))
                 (_%__kont254843254844%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont254843254844%_))
                                                 (_%__kont254843254844%_))))
                                         (_%__kont254843254844%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type254620%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type254620%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp255555
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g254415254598%_
                                                                '()))
                                                    (map (lambda (_%g254785254787%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self254408%_
                                                              _%g254785254787%_)))
                                                         (let ((__tmp255556
                                                                (lambda (_%g254789254792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g254790254794%_)
                          (cons _%g254789254792%_ _%g254790254794%_))))
                   (declare (not safe))
                   (foldr__0 __tmp255556 '() _%g254414254597%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp255555
                                    _%stx254409%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx254409%_
                                    _%rator-type254620%_))))))))
                (_%__kont254895254896%_
                 (lambda (_%g254437254501%_ _%g254438254502%_)
                   (let ((_%rator-type254519%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g254438254502%_))))
                     (if (and _%rator-type254519%_
                              (eq? (##structure-ref
                                    _%rator-type254519%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type254519%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type254519%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type254519%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp255557
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self254408%_
                                               _%g254438254502%_))
                                            (map (lambda (_%g254521254523%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self254408%_
                                                      _%g254521254523%_)))
                                                 (let ((__tmp255558
                                                        (lambda (_%g254525254528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g254526254530%_)
                  (cons _%g254525254528%_ _%g254526254530%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp255558
                                                    '()
                                                    _%g254437254501%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp255557 _%stx254409%_))
                         (if (or (not _%rator-type254519%_)
                                 (let ((__tmp255559
                                        (##structure-ref
                                         _%rator-type254519%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp255559 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self254408%_ _%stx254409%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx254409%_
                                _%rator-type254519%_))))))))
            (let* ((_%__match254956254957%_
                    (lambda (_%e254439254463%_
                             _%hd254440254466%_
                             _%tl254441254468%_
                             _%e254442254471%_
                             _%hd254443254474%_
                             _%tl254444254476%_
                             _%__splice254897254898%_
                             _%target254445254479%_
                             _%tl254447254481%_)
                      (letrec ((_%loop254448254484%_
                                (lambda (_%hd254446254487%_
                                         _%rand254452254489%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd254446254487%_))
                                      (let ((_%e254449254491%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd254446254487%_))))
                                        (let ((_%lp-tl254451254496%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e254449254491%_)))
                                              (_%lp-hd254450254494%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e254449254491%_))))
                                          (_%loop254448254484%_
                                           _%lp-tl254451254496%_
                                           (cons _%lp-hd254450254494%_
                                                 _%rand254452254489%_))))
                                      (let ((_%rand254453254499%_
                                             (reverse _%rand254452254489%_)))
                                        (_%__kont254895254896%_
                                         _%rand254453254499%_
                                         _%hd254443254474%_))))))
                        (_%loop254448254484%_ _%target254445254479%_ '()))))
                   (_%__match254936254937%_
                    (lambda (_%e254416254543%_
                             _%hd254417254546%_
                             _%tl254418254548%_
                             _%e254419254551%_
                             _%hd254420254554%_
                             _%tl254421254556%_
                             _%e254422254559%_
                             _%hd254423254562%_
                             _%tl254424254564%_
                             _%e254425254567%_
                             _%hd254426254570%_
                             _%tl254427254572%_
                             _%__splice254893254894%_
                             _%target254428254575%_
                             _%tl254430254577%_)
                      (letrec ((_%loop254431254580%_
                                (lambda (_%hd254429254583%_
                                         _%rand254435254585%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd254429254583%_))
                                      (let ((_%e254432254587%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd254429254583%_))))
                                        (let ((_%lp-tl254434254592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e254432254587%_)))
                                              (_%lp-hd254433254590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e254432254587%_))))
                                          (_%loop254431254580%_
                                           _%lp-tl254434254592%_
                                           (cons _%lp-hd254433254590%_
                                                 _%rand254435254585%_))))
                                      (let ((_%rand254436254595%_
                                             (reverse _%rand254435254585%_)))
                                        (_%__kont254891254892%_
                                         _%rand254436254595%_
                                         _%hd254426254570%_))))))
                        (_%loop254431254580%_ _%target254428254575%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254889254890%_))
                  (let ((_%e254416254543%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254889254890%_))))
                    (let ((_%tl254418254548%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e254416254543%_)))
                          (_%hd254417254546%_
                           (let ()
                             (declare (not safe))
                             (##car _%e254416254543%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl254418254548%_))
                          (let ((_%e254419254551%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl254418254548%_))))
                            (let ((_%tl254421254556%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e254419254551%_)))
                                  (_%hd254420254554%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e254419254551%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd254420254554%_))
                                  (let ((_%e254422254559%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd254420254554%_))))
                                    (let ((_%tl254424254564%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e254422254559%_)))
                                          (_%hd254423254562%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e254422254559%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd254423254562%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd254423254562%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl254424254564%_))
                                                  (let ((_%e254425254567%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl254424254564%_))))
                                                    (let ((_%tl254427254572%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e254425254567%_)))
                                                          (_%hd254426254570%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e254425254567%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl254427254572%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl254421254556%_))
                      (let ((_%__splice254893254894%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl254421254556%_
                                '0))))
                        (let ((_%tl254430254577%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice254893254894%_ '1)))
                              (_%target254428254575%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice254893254894%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl254430254577%_))
                              (_%__match254936254937%_
                               _%e254416254543%_
                               _%hd254417254546%_
                               _%tl254418254548%_
                               _%e254419254551%_
                               _%hd254420254554%_
                               _%tl254421254556%_
                               _%e254422254559%_
                               _%hd254423254562%_
                               _%tl254424254564%_
                               _%e254425254567%_
                               _%hd254426254570%_
                               _%tl254427254572%_
                               _%__splice254893254894%_
                               _%target254428254575%_
                               _%tl254430254577%_)
                              (let ()
                                (declare (not safe))
                                (_%g254412254458%_)))))
                      (let () (declare (not safe)) (_%g254412254458%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl254421254556%_))
                      (let ((_%__splice254897254898%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl254421254556%_
                                '0))))
                        (let ((_%tl254447254481%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice254897254898%_ '1)))
                              (_%target254445254479%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice254897254898%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl254447254481%_))
                              (_%__match254956254957%_
                               _%e254416254543%_
                               _%hd254417254546%_
                               _%tl254418254548%_
                               _%e254419254551%_
                               _%hd254420254554%_
                               _%tl254421254556%_
                               _%__splice254897254898%_
                               _%target254445254479%_
                               _%tl254447254481%_)
                              (let ()
                                (declare (not safe))
                                (_%g254412254458%_)))))
                      (let () (declare (not safe)) (_%g254412254458%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl254421254556%_))
                                                      (let ((_%__splice254897254898%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl254421254556%_
                        '0))))
                (let ((_%tl254447254481%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice254897254898%_ '1)))
                      (_%target254445254479%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice254897254898%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl254447254481%_))
                      (_%__match254956254957%_
                       _%e254416254543%_
                       _%hd254417254546%_
                       _%tl254418254548%_
                       _%e254419254551%_
                       _%hd254420254554%_
                       _%tl254421254556%_
                       _%__splice254897254898%_
                       _%target254445254479%_
                       _%tl254447254481%_)
                      (let () (declare (not safe)) (_%g254412254458%_)))))
              (let () (declare (not safe)) (_%g254412254458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl254421254556%_))
                                                  (let ((_%__splice254897254898%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl254421254556%_
                                                            '0))))
                                                    (let ((_%tl254447254481%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice254897254898%_
                                                              '1)))
                                                          (_%target254445254479%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice254897254898%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl254447254481%_))
                                                          (_%__match254956254957%_
                                                           _%e254416254543%_
                                                           _%hd254417254546%_
                                                           _%tl254418254548%_
                                                           _%e254419254551%_
                                                           _%hd254420254554%_
                                                           _%tl254421254556%_
                                                           _%__splice254897254898%_
                                                           _%target254445254479%_
                                                           _%tl254447254481%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g254412254458%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g254412254458%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl254421254556%_))
                                              (let ((_%__splice254897254898%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl254421254556%_
                                                        '0))))
                                                (let ((_%tl254447254481%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice254897254898%_
                                                          '1)))
                                                      (_%target254445254479%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice254897254898%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl254447254481%_))
                                                      (_%__match254956254957%_
                                                       _%e254416254543%_
                                                       _%hd254417254546%_
                                                       _%tl254418254548%_
                                                       _%e254419254551%_
                                                       _%hd254420254554%_
                                                       _%tl254421254556%_
                                                       _%__splice254897254898%_
                                                       _%target254445254479%_
                                                       _%tl254447254481%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g254412254458%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g254412254458%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl254421254556%_))
                                      (let ((_%__splice254897254898%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl254421254556%_
                                                '0))))
                                        (let ((_%tl254447254481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice254897254898%_
                                                  '1)))
                                              (_%target254445254479%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice254897254898%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl254447254481%_))
                                              (_%__match254956254957%_
                                               _%e254416254543%_
                                               _%hd254417254546%_
                                               _%tl254418254548%_
                                               _%e254419254551%_
                                               _%hd254420254554%_
                                               _%tl254421254556%_
                                               _%__splice254897254898%_
                                               _%target254445254479%_
                                               _%tl254447254481%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g254412254458%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g254412254458%_))))))
                          (let () (declare (not safe)) (_%g254412254458%_)))))
                  (let () (declare (not safe)) (_%g254412254458%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self254370%_ _%ctx254371%_ _%stx254372%_ _%args254373%_)
        (let ((_%self254376%_ _%self254370%_))
          (if (let ((__method255538
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self254376%_ 'check-arguments))))
                (if __method255538
                    (let ()
                      (declare (not safe))
                      (__method255538
                       _%self254376%_
                       _%ctx254371%_
                       _%stx254372%_
                       _%args254373%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self254376%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature254386%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254376%_ '2 '#f '#f)))
                     (_%signature254388%_ _%signature254386%_)
                     (_%$e254398%_
                      (if _%signature254388%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature254388%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e254398%_
                    ((lambda (_%unchecked254401%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked254401%_))
                           (let ((__tmp255560
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked254401%_
                                                          '()))
                                              (map (lambda (_%g254402254404%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx254371%_
                                                        _%g254402254404%_)))
                                                   _%args254373%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp255560
                              _%stx254372%_
                              _%ctx254371%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx254371%_ _%stx254372%_))))
                     _%$e254398%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx254371%_ _%stx254372%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx254371%_ _%stx254372%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass254822 __method-table254823)
        (let ((__check-arguments254824
               (let ((__tmp255561
                      (lambda ()
                        (let ((__method254825
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table254823
                                  'check-arguments
                                  '#f))))
                          (if __method254825
                              __method254825
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp255561))))
          (lambda (_%self254370%_ _%ctx254371%_ _%stx254372%_ _%args254373%_)
            (let ((_%self254376%_ _%self254370%_))
              (if ((force __check-arguments254824)
                   _%self254376%_
                   _%ctx254371%_
                   _%stx254372%_
                   _%args254373%_)
                  (let* ((_%signature254386%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self254376%_
                             '2
                             '#f
                             '#f)))
                         (_%signature254388%_ _%signature254386%_)
                         (_%$e254398%_
                          (if _%signature254388%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature254388%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e254398%_
                        ((lambda (_%unchecked254401%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked254401%_))
                               (let ((__tmp255562
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked254401%_
                                                              '()))
                                                  (map (lambda (_%g254402254404%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx254371%_
                                                            _%g254402254404%_)))
                                                       _%args254373%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp255562
                                  _%stx254372%_
                                  _%ctx254371%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx254371%_
                                  _%stx254372%_))))
                         _%$e254398%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx254371%_ _%stx254372%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx254371%_ _%stx254372%_))))))))
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
      (lambda (_%self254123%_ _%ctx254124%_ _%stx254125%_ _%args254126%_)
        (let* ((_%self254129%_ _%self254123%_)
               (_%signature254138254140%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254129%_ '2 '#f '#f))))
          (if _%signature254138254140%_
              (let* ((_%signature254142%_ _%signature254138254140%_)
                     (_%argument-types254143254145%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature254142%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types254143254145%_
                    (let* ((_%argument-types254147%_
                            _%argument-types254143254145%_)
                           (_%argument-types254152%_
                            (let ((__tmp255563
                                   (lambda (_%t254150%_)
                                     (if _%t254150%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx254125%_
                                            _%t254150%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp255563
                               _%argument-types254147%_))))
                      (let _%loop254154%_ ((_%rest-args254156%_ _%args254126%_)
                                           (_%rest-types254157%_
                                            _%argument-types254152%_)
                                           (_%result254158%_ '#t))
                        (let* ((_%rest-args254159254167%_ _%rest-args254156%_)
                               (_%else254161254175%_
                                (lambda () _%result254158%_))
                               (_%K254163254236%_
                                (lambda (_%rest-args254178%_ _%arg254179%_)
                                  (let* ((_%rest-types254180254191%_
                                          _%rest-types254157%_)
                                         (_%E254184254195%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types254180254191%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K254187254224%_
                                           (lambda (_%rest-types254221%_
                                                    _%type254222%_)
                                             (_%loop254154%_
                                              _%rest-args254178%_
                                              _%rest-types254221%_
                                              (if (gxc#check-expression-type!
                                                   _%stx254125%_
                                                   _%arg254179%_
                                                   _%type254222%_)
                                                  _%result254158%_
                                                  '#f))))
                                          (_%K254186254215%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx254125%_
                                                _%argument-types254152%_))))
                                          (_%K254185254205%_
                                           (lambda (_%tail-type254199%_)
                                             (if (let ((__tmp255564
                                                        (lambda (_%g254200254202%_)
                                                          (gxc#check-expression-type!
                                                           _%stx254125%_
                                                           _%g254200254202%_
                                                           _%tail-type254199%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp255564
                                                    _%rest-args254178%_))
                                                 _%result254158%_
                                                 '#f))))
                                      (let ((_%try-match254182254218%_
                                             (lambda ()
                                               (if (null? _%rest-types254180254191%_)
                                                   (_%K254186254215%_)
                                                   (let ((_%tail-type254208%_
                                                          _%rest-types254180254191%_))
                                                     (_%K254185254205%_
                                                      _%tail-type254208%_))))))
                                        (if (pair? _%rest-types254180254191%_)
                                            (let ((_%tl254189254229%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types254180254191%_)))
                                                  (_%hd254188254227%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types254180254191%_))))
                                              (let ((_%type254232%_
                                                     _%hd254188254227%_)
                                                    (_%rest-types254234%_
                                                     _%tl254189254229%_))
                                                (_%K254187254224%_
                                                 _%rest-types254234%_
                                                 _%type254232%_)))
                                            (_%try-match254182254218%_))))))))
                          (if (pair? _%rest-args254159254167%_)
                              (let ((_%hd254164254239%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args254159254167%_)))
                                    (_%tl254165254241%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args254159254167%_))))
                                (let* ((_%arg254244%_ _%hd254164254239%_)
                                       (_%rest-args254246%_
                                        _%tl254165254241%_))
                                  (_%K254163254236%_
                                   _%rest-args254246%_
                                   _%arg254244%_)))
                              (_%else254161254175%_)))))
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
      (lambda (_%self253934%_ _%ctx253935%_ _%stx253936%_ _%args253937%_)
        (let* ((_%self253940%_ _%self253934%_)
               (_%g253950253960%_
                (lambda (_%g253951253957%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g253951253957%_))))
               (_%g253949253998%_
                (lambda (_%g253951253963%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g253951253963%_))
                      (let ((_%e253953253965%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g253951253963%_))))
                        (let ((_%hd253954253968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253953253965%_)))
                              (_%tl253955253970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253953253965%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253955253970%_))
                              ((lambda (_%g253952253973%_)
                                 (let* ((_%klass253985%_
                                         (let ((__tmp255565
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self253940%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx253936%_
                                            __tmp255565)))
                                        (_%object253987%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx253935%_
                                            _%g253952253973%_)))
                                        (_%instance?253992%_
                                         (let ((_%$e253989%_
                                                (gxc#expression-type?
                                                 _%object253987%_
                                                 _%klass253985%_)))
                                           (if _%$e253989%_
                                               _%$e253989%_
                                               (gxc#expression-type?
                                                _%g253952253973%_
                                                _%klass253985%_)))))
                                   (if _%instance?253992%_
                                       (let ((__tmp255566
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object253987%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g253952253973%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object253987%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp255566
                                          _%stx253936%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx253935%_
                                          _%stx253936%_)))))
                               _%hd253954253968%_)
                              (_%g253950253960%_ _%g253951253963%_))))
                      (_%g253950253960%_ _%g253951253963%_)))))
          (_%g253949253998%_ _%args253937%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self253730%_ _%ctx253731%_ _%stx253732%_ _%args253733%_)
        (let* ((_%self253736%_ _%self253730%_)
               (_%g253746253756%_
                (lambda (_%g253747253753%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g253747253753%_))))
               (_%g253745253809%_
                (lambda (_%g253747253759%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g253747253759%_))
                      (let ((_%e253749253761%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g253747253759%_))))
                        (let ((_%hd253750253764%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253749253761%_)))
                              (_%tl253751253766%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253749253761%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253751253766%_))
                              ((lambda (_%g253748253769%_)
                                 (let* ((_%klass253781%_
                                         (let ((__tmp255567
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self253736%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx253732%_
                                            __tmp255567)))
                                        (_%object253783%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx253731%_
                                            _%g253748253769%_)))
                                        (_%instance?253788%_
                                         (let ((_%$e253785%_
                                                (gxc#expression-type?
                                                 _%object253783%_
                                                 _%klass253781%_)))
                                           (if _%$e253785%_
                                               _%$e253785%_
                                               (gxc#expression-type?
                                                _%g253748253769%_
                                                _%klass253781%_))))
                                        (_%klass253791%_ _%klass253781%_))
                                   (if _%instance?253788%_
                                       (let ((__tmp255568
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object253783%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g253748253769%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object253783%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp255568
                                          _%stx253732%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass253791%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp255569
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass253791%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object253783%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp255569
                                              _%stx253732%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass253791%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp255570
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass253791%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object253783%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp255570
                                                  _%stx253732%_))
                                               (let ((__tmp255571
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self253736%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object253783%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp255571
                                                  _%stx253732%_)))))))
                               _%hd253750253764%_)
                              (_%g253746253756%_ _%g253747253759%_))))
                      (_%g253746253756%_ _%g253747253759%_)))))
          (_%g253745253809%_ _%args253733%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx253398%_)
        (let* ((_%__stx254966254967%_ _%stx253398%_)
               (_%g253403253444%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254966254967%_)))))
          (let ((_%__kont254968254969%_ (lambda () '#t))
                (_%__kont254970254971%_ (lambda () '#t))
                (_%__kont254972254973%_
                 (lambda (_%g253417253510%_ _%g253418253511%_)
                   (let ((_%rator-type253532253534%_
                          (let ((__tmp255572
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g253418253511%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp255572))))
                     (if _%rator-type253532253534%_
                         (let* ((_%rator-type253536%_
                                 _%rator-type253532253534%_)
                                (_%rator-signature253537253539%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type253536%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type253536%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature253537253539%_
                               (let* ((_%rator-signature253541%_
                                       _%rator-signature253537253539%_)
                                      (_%rator-effect253542253544%_
                                       (if _%rator-signature253541%_
                                           (##direct-structure-ref
                                            _%rator-signature253541%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect253542253544%_
                                     (let ((_%rator-effect253546%_
                                            _%rator-effect253542253544%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect253546%_)
                                               (equal? '(alloc)
                                                       _%rator-effect253546%_))
                                           (let ((__tmp255573
                                                  (let ((__tmp255574
                                                         (lambda (_%g253551253554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g253552253556%_)
                   (cons _%g253551253554%_ _%g253552253556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp255574
                                                     '()
                                                     _%g253417253510%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp255573))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont254976254977%_ (lambda () '#f)))
            (let ((_%__match255055255056%_
                   (lambda (_%e253419253456%_
                            _%hd253420253459%_
                            _%tl253421253461%_
                            _%e253422253464%_
                            _%hd253423253467%_
                            _%tl253424253469%_
                            _%e253425253472%_
                            _%hd253426253475%_
                            _%tl253427253477%_
                            _%e253428253480%_
                            _%hd253429253483%_
                            _%tl253430253485%_
                            _%__splice254974254975%_
                            _%target253431253488%_
                            _%tl253433253490%_)
                     (letrec ((_%loop253434253493%_
                               (lambda (_%hd253432253496%_
                                        _%rand253438253498%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd253432253496%_))
                                     (let ((_%e253435253500%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd253432253496%_))))
                                       (let ((_%lp-tl253437253505%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e253435253500%_)))
                                             (_%lp-hd253436253503%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e253435253500%_))))
                                         (_%loop253434253493%_
                                          _%lp-tl253437253505%_
                                          (cons _%lp-hd253436253503%_
                                                _%rand253438253498%_))))
                                     (let ((_%rand253439253508%_
                                            (reverse _%rand253438253498%_)))
                                       (_%__kont254972254973%_
                                        _%rand253439253508%_
                                        _%hd253429253483%_))))))
                       (_%loop253434253493%_ _%target253431253488%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254966254967%_))
                  (let ((_%e253405253587%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254966254967%_))))
                    (let ((_%tl253407253592%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e253405253587%_)))
                          (_%hd253406253590%_
                           (let ()
                             (declare (not safe))
                             (##car _%e253405253587%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd253406253590%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd253406253590%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl253407253592%_))
                                  (let ((_%e253408253595%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl253407253592%_))))
                                    (let ((_%tl253410253600%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253408253595%_)))
                                          (_%hd253409253598%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253408253595%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl253410253600%_))
                                          (_%__kont254968254969%_)
                                          (_%__kont254976254977%_))))
                                  (_%__kont254976254977%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd253406253590%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl253407253592%_))
                                      (let ((_%e253414253572%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl253407253592%_))))
                                        (let ((_%tl253416253577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253414253572%_)))
                                              (_%hd253415253575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253414253572%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl253416253577%_))
                                              (_%__kont254970254971%_)
                                              (_%__kont254976254977%_))))
                                      (_%__kont254976254977%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd253406253590%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl253407253592%_))
                                          (let ((_%e253422253464%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl253407253592%_))))
                                            (let ((_%tl253424253469%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e253422253464%_)))
                                                  (_%hd253423253467%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e253422253464%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd253423253467%_))
                                                  (let ((_%e253425253472%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd253423253467%_))))
                                                    (let ((_%tl253427253477%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e253425253472%_)))
                                                          (_%hd253426253475%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e253425253472%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd253426253475%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd253426253475%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl253427253477%_))
                          (let ((_%e253428253480%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl253427253477%_))))
                            (let ((_%tl253430253485%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e253428253480%_)))
                                  (_%hd253429253483%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e253428253480%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl253430253485%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl253424253469%_))
                                      (let ((_%__splice254974254975%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl253424253469%_
                                                '0))))
                                        (let ((_%tl253433253490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice254974254975%_
                                                  '1)))
                                              (_%target253431253488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice254974254975%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl253433253490%_))
                                              (_%__match255055255056%_
                                               _%e253405253587%_
                                               _%hd253406253590%_
                                               _%tl253407253592%_
                                               _%e253422253464%_
                                               _%hd253423253467%_
                                               _%tl253424253469%_
                                               _%e253425253472%_
                                               _%hd253426253475%_
                                               _%tl253427253477%_
                                               _%e253428253480%_
                                               _%hd253429253483%_
                                               _%tl253430253485%_
                                               _%__splice254974254975%_
                                               _%target253431253488%_
                                               _%tl253433253490%_)
                                              (_%__kont254976254977%_))))
                                      (_%__kont254976254977%_))
                                  (_%__kont254976254977%_))))
                          (_%__kont254976254977%_))
                      (_%__kont254976254977%_))
                  (_%__kont254976254977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont254976254977%_))))
                                          (_%__kont254976254977%_))
                                      (_%__kont254976254977%_))))
                          (_%__kont254976254977%_))))
                  (_%__kont254976254977%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx253393%_ _%klass253394%_)
        (let ((_%expr-type253396%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx253393%_))))
          (if _%expr-type253396%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type253396%_ _%klass253394%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx253371%_ _%expr253372%_ _%type253373%_)
        (if (not _%type253373%_)
            '#f
            (let ((_%$e253376%_
                   (eq? (##structure-ref _%type253373%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e253376%_
                  _%$e253376%_
                  (let ((_%expr-type253380%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr253372%_))))
                    (if (not _%expr-type253380%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type253380%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e253384%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type253380%_
                                      'gxc#!abort::t))))
                              (if _%$e253384%_
                                  _%$e253384%_
                                  (let ((_%$e253387%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type253380%_
                                            _%type253373%_))))
                                    (if _%$e253387%_
                                        _%$e253387%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type253373%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type253373%_
                                                   _%expr-type253380%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx253371%_
                                                   _%expr253372%_
                                                   _%expr-type253380%_
                                                   _%type253373%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self253185%_ _%ctx253186%_ _%stx253187%_ _%args253188%_)
        (let* ((_%self253191%_ _%self253185%_)
               (_%klass253201%_
                (let ((__tmp255575
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self253191%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx253187%_ __tmp255575)))
               (_%fields253203%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass253201%_
                           '5
                           '#f
                           '#f))))
               (_%args253209%_
                (map (lambda (_%g253204253206%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx253186%_ _%g253204253206%_)))
                     _%args253188%_))
               (_%inline-make-object253211%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self253191%_
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
                           _%self253191%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields253203%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass253214%_ _%klass253201%_)
               (_%$e253228%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass253214%_ '6 '#f '#f))))
          (if _%$e253228%_
              ((lambda (_%ctor253231%_)
                 (let ((_%$obj253233%_
                        (let ((__tmp255576
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp255576)))
                       (_%ctor-impl253234%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass253214%_
                           _%ctor253231%_))))
                   (let ((__tmp255577
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj253233%_ '())
                                                  (cons _%inline-make-object253211%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl253234%_
                                                            (let ((__tmp255578
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl253234%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj253233%_ '()))
                                             _%args253209%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp255578
                       _%stx253187%_
                       _%ctx253186%_))
                    (let ((_%$ctor253236%_
                           (let ((__tmp255579
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp255579))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor253236%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self253191%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj253233%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor253231%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor253236%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor253236%_ '()))
                              (cons (cons '%#ref (cons _%$obj253233%_ '()))
                                    _%args253209%_)))
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
                             _%self253191%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor253231%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj253233%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp255577 _%stx253187%_))))
               _%$e253228%_)
              (let ((_%$e253238%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass253214%_
                        '10
                        '#f
                        '#f))))
                (if _%$e253238%_
                    ((lambda (_%metaclass253241%_)
                       (let* ((_%$obj253243%_
                               (let ((__tmp255580
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp255580)))
                              (_%metakons253245%_
                               (let ((__tmp255581
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx253187%_
                                         _%metaclass253241%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp255581
                                  'instance-init!)))
                              (__tmp255582
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj253243%_
                                                             '())
                                                       (cons _%inline-make-object253211%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons253245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp255583
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons253245%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self253191%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj253243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args253209%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp255583
                            _%stx253187%_
                            _%ctx253186%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self253191%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj253243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args253209%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj253243%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255582 _%stx253187%_)))
                     _%$e253238%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass253214%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp255584
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args253209%_))))
                              (declare (not safe))
                              (##fx= __tmp255584 _%fields253203%_))
                            (let ((__tmp255585
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self253191%_
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
                                              _%self253191%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args253209%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp255585
                               _%stx253187%_))
                            (let ((__tmp255587
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self253191%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp255586
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass253214%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx253187%_
                               __tmp255587
                               __tmp255586)))
                        (let ((_%$obj253250%_
                               (let ((__tmp255588
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp255588))))
                          (let _%lp253252%_ ((_%rest253254%_ _%args253209%_)
                                             (_%initializers253255%_ '()))
                            (let* ((_%__stx255058255059%_ _%rest253254%_)
                                   (_%g253259253280%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx255058255059%_)))))
                              (let ((_%__kont255060255061%_
                                     (lambda (_%g253261253334%_
                                              _%g253262253335%_
                                              _%g253263253336%_)
                                       (let* ((_%slot253363%_
                                               (let ((__tmp255589
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g253263253336%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp255589)))
                                              (_%off253365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass253214%_
                                                  _%slot253363%_))))
                                         (if _%off253365%_
                                             (_%lp253252%_
                                              _%g253261253334%_
                                              (cons (cons _%off253365%_
                                                          _%g253262253335%_)
                                                    _%initializers253255%_))
                                             (let ((__tmp255590
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self253191%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx253187%_
                                                __tmp255590
                                                _%slot253363%_))))))
                                    (_%__kont255062255063%_
                                     (lambda ()
                                       (let ((__tmp255591
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj253250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object253211%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp255594
                                     (cons (cons '%#ref
                                                 (cons _%$obj253250%_ '()))
                                           '()))
                                    (__tmp255592
                                     (let ((__tmp255593
                                            (lambda (_%i253294%_ _%r253295%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self253191%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i253294%_) '()))
                              (cons (cons '%#ref (cons _%$obj253250%_ '()))
                                    (cons (cdr _%i253294%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r253295%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp255593
                                        '()
                                        _%initializers253255%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp255594 __tmp255592)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp255591
                                          _%stx253187%_))))
                                    (_%__kont255064255065%_
                                     (lambda ()
                                       (let ((__tmp255595
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj253250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object253211%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj253250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args253209%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj253250%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp255595
                                          _%stx253187%_)))))
                                (let* ((_%g253257253297%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx255058255059%_))
                                              (_%__kont255062255063%_)
                                              (_%__kont255064255065%_))))
                                       (_%__match255095255096%_
                                        (lambda (_%e253264253302%_
                                                 _%hd253265253305%_
                                                 _%tl253266253307%_
                                                 _%e253267253310%_
                                                 _%hd253268253313%_
                                                 _%tl253269253315%_
                                                 _%e253270253318%_
                                                 _%hd253271253321%_
                                                 _%tl253272253323%_
                                                 _%e253273253326%_
                                                 _%hd253274253329%_
                                                 _%tl253275253331%_)
                                          (let ((_%g253261253334%_
                                                 _%tl253275253331%_)
                                                (_%g253262253335%_
                                                 _%hd253274253329%_)
                                                (_%g253263253336%_
                                                 _%hd253271253321%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g253263253336%_))
                                                (_%__kont255060255061%_
                                                 _%g253261253334%_
                                                 _%g253262253335%_
                                                 _%g253263253336%_)
                                                (_%__kont255064255065%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx255058255059%_))
                                      (let ((_%e253264253302%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx255058255059%_))))
                                        (let ((_%tl253266253307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253264253302%_)))
                                              (_%hd253265253305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253264253302%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd253265253305%_))
                                              (let ((_%e253267253310%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd253265253305%_))))
                                                (let ((_%tl253269253315%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e253267253310%_)))
                                                      (_%hd253268253313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e253267253310%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd253268253313%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd253268253313%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl253269253315%_))
                      (let ((_%e253270253318%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl253269253315%_))))
                        (let ((_%tl253272253323%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253270253318%_)))
                              (_%hd253271253321%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253270253318%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253272253323%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl253266253307%_))
                                  (let ((_%e253273253326%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl253266253307%_))))
                                    (let ((_%tl253275253331%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253273253326%_)))
                                          (_%hd253274253329%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253273253326%_))))
                                      (_%__match255095255096%_
                                       _%e253264253302%_
                                       _%hd253265253305%_
                                       _%tl253266253307%_
                                       _%e253267253310%_
                                       _%hd253268253313%_
                                       _%tl253269253315%_
                                       _%e253270253318%_
                                       _%hd253271253321%_
                                       _%tl253272253323%_
                                       _%e253273253326%_
                                       _%hd253274253329%_
                                       _%tl253275253331%_)))
                                  (_%__kont255064255065%_))
                              (_%__kont255064255065%_))))
                      (_%__kont255064255065%_))
                  (_%__kont255064255065%_))
              (_%__kont255064255065%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont255064255065%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g253257253297%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self252968%_ _%ctx252969%_ _%stx252970%_ _%args252971%_)
        (let* ((_%self252974%_ _%self252968%_)
               (_%arguments-ok?252984%_
                (let ((__method255539
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self252974%_ 'check-arguments))))
                  (if __method255539
                      (let ()
                        (declare (not safe))
                        (__method255539
                         _%self252974%_
                         _%ctx252969%_
                         _%stx252970%_
                         _%args252971%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self252974%_
                                 'check-arguments))
                        '#!void))))
               (_%g252986252996%_
                (lambda (_%g252987252993%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g252987252993%_))))
               (_%g252985253060%_
                (lambda (_%g252987252999%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g252987252999%_))
                      (let ((_%e252989253001%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g252987252999%_))))
                        (let ((_%hd252990253004%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252989253001%_)))
                              (_%tl252991253006%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252989253001%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252991253006%_))
                              ((lambda (_%g252988253009%_)
                                 (let* ((_%klass253022%_
                                         (let ((__tmp255596
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self252974%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx252970%_
                                            __tmp255596)))
                                        (_%field253024%_
                                         (let ((__tmp255597
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self252974%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass253022%_
                                            __tmp255597)))
                                        (_%object253026%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx252969%_
                                            _%g252988253009%_)))
                                        (_%klass253029%_ _%klass253022%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass253029%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp255598
                                              (cons (if (or _%arguments-ok?252984%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self252974%_
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
                                 _%self252974%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field253024%_ '()))
                        (cons _%object253026%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp255598
                                          _%stx252970%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass253029%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp255599
                                                  (cons (if (or _%arguments-ok?252984%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self252974%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252974%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field253024%_ '()))
                            (cons _%object253026%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp255599
                                              _%stx252970%_))
                                           (let ((_%$e253048%_
                                                  (let ((__tmp255600
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self252974%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass253029%_
                                                     __tmp255600))))
                                             (if _%$e253048%_
                                                 ((lambda (_%klass253051%_)
                                                    (let ((__tmp255601
                                                           (cons (if (or _%arguments-ok?252984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self252974%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self252974%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field253024%_ '()))
                                     (cons _%object253026%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp255601 _%stx252970%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e253048%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self252974%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp255602
                                                            (let ((_%$obj253057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp255603
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp255603))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj253057%_ '())
                                              (cons _%object253026%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass253029%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj253057%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252974%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field253024%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj253057%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?252984%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj253057%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self252974%_
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
                                                             _%self252974%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj253057%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self252974%_
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
               (gxc#xform-wrap-source __tmp255602 _%stx252970%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp255604
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object253026%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self252974%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp255604 _%stx252970%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd252990253004%_)
                              (_%g252986252996%_ _%g252987252999%_))))
                      (_%g252986252996%_ _%g252987252999%_)))))
          (_%g252985253060%_ _%args252971%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass254826 __method-table254827)
        (let ((__check-arguments254828
               (let ((__tmp255605
                      (lambda ()
                        (let ((__method254829
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table254827
                                  'check-arguments
                                  '#f))))
                          (if __method254829
                              __method254829
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp255605)))
              (__slot254830
               (let ((__slot254831
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass254826 'slot))))
                 (if __slot254831
                     __slot254831
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self252968%_ _%ctx252969%_ _%stx252970%_ _%args252971%_)
            (let* ((_%self252974%_ _%self252968%_)
                   (_%arguments-ok?252984%_
                    ((force __check-arguments254828)
                     _%self252974%_
                     _%ctx252969%_
                     _%stx252970%_
                     _%args252971%_))
                   (_%g252986252996%_
                    (lambda (_%g252987252993%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g252987252993%_))))
                   (_%g252985253060%_
                    (lambda (_%g252987252999%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g252987252999%_))
                          (let ((_%e252989253001%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g252987252999%_))))
                            (let ((_%hd252990253004%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252989253001%_)))
                                  (_%tl252991253006%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252989253001%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl252991253006%_))
                                  ((lambda (_%g252988253009%_)
                                     (let* ((_%klass253022%_
                                             (let ((__tmp255606
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self252974%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx252970%_
                                                __tmp255606)))
                                            (_%field253024%_
                                             (let ((__tmp255607
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self252974%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass253022%_
                                                __tmp255607)))
                                            (_%object253026%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx252969%_
                                                _%g252988253009%_)))
                                            (_%klass253029%_ _%klass253022%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass253029%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp255608
                                                  (cons (if (or _%arguments-ok?252984%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self252974%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252974%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field253024%_ '()))
                            (cons _%object253026%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp255608
                                              _%stx252970%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass253029%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp255609
                                                      (cons (if (or _%arguments-ok?252984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self252974%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self252974%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field253024%_ '()))
                                (cons _%object253026%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp255609
                                                  _%stx252970%_))
                                               (let ((_%$e253048%_
                                                      (let ((__tmp255610
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self252974%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass253029%_ __tmp255610))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e253048%_
                                                     ((lambda (_%klass253051%_)
                                                        (let ((__tmp255611
                                                               (cons (if (or _%arguments-ok?252984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252974%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self252974%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field253024%_ '()))
                                         (cons _%object253026%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp255611 _%stx252970%_)))
              _%$e253048%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self252974%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp255612
                                                                (let ((_%$obj253057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255613
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp255613))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj253057%_ '())
                                                  (cons _%object253026%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass253029%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj253057%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self252974%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field253024%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj253057%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?252984%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj253057%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252974%_
                               __slot254830
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
                        (##unchecked-structure-ref _%self252974%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj253057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252974%_
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
                   (gxc#xform-wrap-source __tmp255612 _%stx252970%_))
                 (let ((__tmp255614
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object253026%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self252974%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp255614 _%stx252970%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd252990253004%_)
                                  (_%g252986252996%_ _%g252987252999%_))))
                          (_%g252986252996%_ _%g252987252999%_)))))
              (_%g252985253060%_ _%args252971%_))))))
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
      (lambda (_%self252732%_ _%ctx252733%_ _%stx252734%_ _%args252735%_)
        (let* ((_%self252738%_ _%self252732%_)
               (_%arguments-ok?252748%_
                (let ((__method255540
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self252738%_ 'check-arguments))))
                  (if __method255540
                      (let ()
                        (declare (not safe))
                        (__method255540
                         _%self252738%_
                         _%ctx252733%_
                         _%stx252734%_
                         _%args252735%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self252738%_
                                 'check-arguments))
                        '#!void))))
               (_%g252750252764%_
                (lambda (_%g252751252761%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g252751252761%_))))
               (_%g252749252843%_
                (lambda (_%g252751252767%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g252751252767%_))
                      (let ((_%e252754252769%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g252751252767%_))))
                        (let ((_%hd252755252772%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252754252769%_)))
                              (_%tl252756252774%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252754252769%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl252756252774%_))
                              (let ((_%e252757252777%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl252756252774%_))))
                                (let ((_%hd252758252780%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e252757252777%_)))
                                      (_%tl252759252782%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e252757252777%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl252759252782%_))
                                      ((lambda (_%g252752252785%_
                                                _%g252753252786%_)
                                         (let* ((_%klass252802%_
                                                 (let ((__tmp255615
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self252738%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx252734%_
                                                    __tmp255615)))
                                                (_%field252804%_
                                                 (let ((__tmp255616
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self252738%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass252802%_
                                                    __tmp255616)))
                                                (_%object252806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx252733%_
                                                    _%g252753252786%_)))
                                                (_%value252808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx252733%_
                                                    _%g252752252785%_)))
                                                (_%klass252811%_
                                                 _%klass252802%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass252811%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp255617
                                                      (cons (if (or _%arguments-ok?252748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self252738%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self252738%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field252804%_ '()))
                                (cons _%object252806%_
                                      (cons _%value252808%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp255617
                                                  _%stx252734%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass252811%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp255618
                                                          (cons (if (or _%arguments-ok?252748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self252738%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252738%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field252804%_ '()))
                                    (cons _%object252806%_
                                          (cons _%value252808%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp255618
                                                      _%stx252734%_))
                                                   (let ((_%$e252831%_
                                                          (let ((__tmp255619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self252738%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass252811%_
                     __tmp255619))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e252831%_
                                                         ((lambda (_%klass252834%_)
                                                            (let ((__tmp255620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?252748%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self252738%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self252738%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field252804%_ '()))
                                             (cons _%object252806%_
                                                   (cons _%value252808%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255620 _%stx252734%_)))
                  _%$e252831%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self252738%_ '4 '#f '#f))
                     (let ((__tmp255621
                            (let ((_%$obj252840%_
                                   (let ((__tmp255622
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp255622))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj252840%_ '())
                                                      (cons _%object252806%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass252811%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj252840%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self252738%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field252804%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj252840%_
                                                              '()))
                                                  (cons _%value252808%_
                                                        '())))))
                          (cons (if _%arguments-ok?252748%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj252840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self252738%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value252808%_ '())))))
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
                             _%self252738%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj252840%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self252738%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value252808%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp255621 _%stx252734%_))
                     (let ((__tmp255623
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object252806%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self252738%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value252808%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp255623
                        _%stx252734%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd252758252780%_
                                       _%hd252755252772%_)
                                      (_%g252750252764%_ _%g252751252767%_))))
                              (_%g252750252764%_ _%g252751252767%_))))
                      (_%g252750252764%_ _%g252751252767%_)))))
          (_%g252749252843%_ _%args252735%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass254832 __method-table254833)
        (let ((__check-arguments254834
               (let ((__tmp255624
                      (lambda ()
                        (let ((__method254835
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table254833
                                  'check-arguments
                                  '#f))))
                          (if __method254835
                              __method254835
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp255624))))
          (lambda (_%self252732%_ _%ctx252733%_ _%stx252734%_ _%args252735%_)
            (let* ((_%self252738%_ _%self252732%_)
                   (_%arguments-ok?252748%_
                    ((force __check-arguments254834)
                     _%self252738%_
                     _%ctx252733%_
                     _%stx252734%_
                     _%args252735%_))
                   (_%g252750252764%_
                    (lambda (_%g252751252761%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g252751252761%_))))
                   (_%g252749252843%_
                    (lambda (_%g252751252767%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g252751252767%_))
                          (let ((_%e252754252769%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g252751252767%_))))
                            (let ((_%hd252755252772%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252754252769%_)))
                                  (_%tl252756252774%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252754252769%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl252756252774%_))
                                  (let ((_%e252757252777%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl252756252774%_))))
                                    (let ((_%hd252758252780%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252757252777%_)))
                                          (_%tl252759252782%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252757252777%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl252759252782%_))
                                          ((lambda (_%g252752252785%_
                                                    _%g252753252786%_)
                                             (let* ((_%klass252802%_
                                                     (let ((__tmp255625
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self252738%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx252734%_
                                                        __tmp255625)))
                                                    (_%field252804%_
                                                     (let ((__tmp255626
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self252738%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass252802%_
                                                        __tmp255626)))
                                                    (_%object252806%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx252733%_
                                                        _%g252753252786%_)))
                                                    (_%value252808%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx252733%_
                                                        _%g252752252785%_)))
                                                    (_%klass252811%_
                                                     _%klass252802%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass252811%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp255627
                                                          (cons (if (or _%arguments-ok?252748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self252738%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252738%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field252804%_ '()))
                                    (cons _%object252806%_
                                          (cons _%value252808%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp255627
                                                      _%stx252734%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass252811%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp255628
                                                              (cons (if (or _%arguments-ok?252748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self252738%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self252738%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field252804%_ '()))
                                        (cons _%object252806%_
                                              (cons _%value252808%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp255628 _%stx252734%_))
               (let ((_%$e252831%_
                      (let ((__tmp255629
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self252738%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass252811%_
                         __tmp255629))))
                 (if _%$e252831%_
                     ((lambda (_%klass252834%_)
                        (let ((__tmp255630
                               (cons (if (or _%arguments-ok?252748%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self252738%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self252738%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field252804%_
                                                             '()))
                                                 (cons _%object252806%_
                                                       (cons _%value252808%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp255630 _%stx252734%_)))
                      _%$e252831%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self252738%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp255631
                                (let ((_%$obj252840%_
                                       (let ((__tmp255632
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp255632))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj252840%_
                                                                '())
                                                          (cons _%object252806%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass252811%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj252840%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self252738%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field252804%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj252840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value252808%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?252748%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj252840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self252738%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value252808%_ '())))))
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
                                 _%self252738%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj252840%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252738%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value252808%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp255631 _%stx252734%_))
                         (let ((__tmp255633
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object252806%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252738%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value252808%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp255633
                            _%stx252734%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd252758252780%_
                                           _%hd252755252772%_)
                                          (_%g252750252764%_
                                           _%g252751252767%_))))
                                  (_%g252750252764%_ _%g252751252767%_))))
                          (_%g252750252764%_ _%g252751252767%_)))))
              (_%g252749252843%_ _%args252735%_))))))
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
      (lambda (_%self252548%_ _%ctx252549%_ _%stx252550%_ _%args252551%_)
        (let* ((_%self252554%_ _%self252548%_)
               (_%self252563252573%_ _%self252554%_)
               (_%E252565252576%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self252563252573%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K252566252586%_
                (lambda (_%inline252579%_ _%dispatch252580%_ _%arity252581%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self252554%_
                         _%args252551%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx252550%_
                         _%arity252581%_)))
                  (if _%inline252579%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp255634 (_%inline252579%_ _%stx252550%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp255634
                           _%stx252550%_
                           _%ctx252549%_)))
                      (if (and _%dispatch252580%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch252580%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch252580%_))
                            (let ((__tmp255635
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch252580%_
                                                           '()))
                                               _%args252551%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp255635
                               _%stx252550%_
                               _%ctx252549%_)))
                          (gxc#!procedure::optimize-call
                           _%self252554%_
                           _%ctx252549%_
                           _%stx252550%_
                           _%args252551%_)))))
               (_%e252567252589%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252563252573%_ '1 '#f '#f)))
               (_%e252568252592%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252563252573%_ '2 '#f '#f)))
               (_%e252569252595%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252563252573%_ '3 '#f '#f)))
               (_%arity252598%_ _%e252569252595%_)
               (_%e252570252600%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252563252573%_ '4 '#f '#f)))
               (_%dispatch252603%_ _%e252570252600%_)
               (_%e252571252605%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252563252573%_ '5 '#f '#f)))
               (_%inline252608%_ _%e252571252605%_))
          (_%K252566252586%_
           _%inline252608%_
           _%dispatch252603%_
           _%arity252598%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self252400%_ _%ctx252401%_ _%stx252402%_ _%args252403%_)
        (let* ((_%self252406%_ _%self252400%_)
               (_%$e252420%_
                (let ((__tmp255637
                       (lambda (_%g252415252417%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g252415252417%_
                            _%args252403%_))))
                      (__tmp255636
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self252406%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp255637 __tmp255636))))
          (if _%$e252420%_
              ((lambda (_%clause252423%_)
                 (let ((__method255541
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause252423%_ 'optimize-call))))
                   (if __method255541
                       (let ()
                         (declare (not safe))
                         (__method255541
                          _%clause252423%_
                          _%ctx252401%_
                          _%stx252402%_
                          _%args252403%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause252423%_
                                  'optimize-call))
                         '#!void))))
               _%$e252420%_)
              (let ((__tmp255638
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self252406%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx252402%_
                 __tmp255638))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self252141%_ _%ctx252142%_ _%stx252143%_ _%args252144%_)
        (let* ((_%self252147%_ _%self252141%_)
               (_%self252156252165%_ _%self252147%_)
               (_%E252158252168%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self252156252165%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K252159252259%_
                (lambda (_%dispatch252171%_ _%table252172%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch252171%_))
                      (let* ((_%g252173252183%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch252171%_)))
                             (_%else252175252191%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch252171%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx252142%_
                                   _%stx252143%_))))
                             (_%K252177252240%_
                              (lambda (_%main252194%_ _%keys252195%_)
                                (let ((_g255639_
                                       (gxc#!kw-lambda-split-args
                                        _%stx252143%_
                                        _%args252144%_)))
                                  (begin
                                    (let ((_g255640_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g255639_)
                                                 (##values-length _g255639_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g255640_ 2)))
                                          (error "Context expects 2 values"
                                                 _g255640_)))
                                    (let ((_%pargs252197%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g255639_ 0)))
                                          (_%kwargs252198%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g255639_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main252194%_))
                                        (if _%table252172%_
                                            (let ((_%xargs252206%_
                                                   (map (lambda (_%key252200%_)
                                                          (let ((_%$e252202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key252200%_ _%kwargs252198%_))))
                    (if _%$e252202%_ _%$e252202%_ '(%#ref absent-value))))
                _%keys252195%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw252208%_)
                                                 (if (memq (car _%kw252208%_)
                                                           _%keys252195%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx252143%_
                                                        _%keys252195%_
                                                        _%kw252208%_))))
                                               _%kwargs252198%_)
                                              (let ((__tmp255641
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main252194%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs252197%_
                                  _%xargs252206%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp255641
                                                 _%stx252143%_
                                                 _%ctx252142%_)))
                                            (let* ((_%kwt252210%_
                                                    (let ((__tmp255642
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp255642)))
                                                   (_%kwvars252214%_
                                                    (map (lambda (_%_252212%_)
                                                           (let ((__tmp255643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp255643)))
                 _%kwargs252198%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind252219%_
                                                    (map (lambda (_%kw252216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar252217%_)
                   (cons (cons _%kwvar252217%_ '())
                         (cons (cdr _%kw252216%_) '())))
                 _%kwargs252198%_
                 _%kwvars252214%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset252224%_
                                                    (map (lambda (_%kw252221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar252222%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt252210%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw252221%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar252222%_
                                                             '()))
                                                 '()))))))
                 _%kwargs252198%_
                 _%kwvars252214%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs252229%_
                                                    (map (lambda (_%kw252226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar252227%_)
                   (cons (car _%kw252226%_)
                         (cons '%#ref (cons _%kwvar252227%_ '()))))
                 _%kwargs252198%_
                 _%kwvars252214%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs252237%_
                                                    (map (lambda (_%key252231%_)
                                                           (let ((_%$e252233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key252231%_ _%xkwargs252229%_))))
                     (if _%$e252233%_ _%$e252233%_ '(%#ref absent-value))))
                 _%keys252195%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp255644
                                                    (cons '%#let-values
                                                          (cons _%kwbind252219%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt252210%_ '())
                                                      (cons (let ((__tmp255645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs252198%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255645 _%stx252143%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp255646
                                                             (cons (let ((__tmp255647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main252194%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt252210%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs252197%_
                                                       _%xargs252237%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp255647 _%stx252143%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp255646 _%kwset252224%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp255644
                                               _%stx252143%_
                                               _%ctx252142%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g252173252183%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e252178252243%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g252173252183%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e252179252246%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g252173252183%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e252180252249%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g252173252183%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys252252%_ _%e252180252249%_)
                                   (_%e252181252254%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g252173252183%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main252257%_ _%e252181252254%_))
                              (_%K252177252240%_
                               _%main252257%_
                               _%keys252252%_))
                            (_%else252175252191%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx252142%_ _%stx252143%_)))))
               (_%e252160252262%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252156252165%_ '1 '#f '#f)))
               (_%e252161252265%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252156252165%_ '2 '#f '#f)))
               (_%e252162252268%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252156252165%_ '3 '#f '#f)))
               (_%table252271%_ _%e252162252268%_)
               (_%e252163252273%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252156252165%_ '4 '#f '#f)))
               (_%dispatch252276%_ _%e252163252273%_))
          (_%K252159252259%_ _%dispatch252276%_ _%table252271%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx251754%_ _%args251755%_)
        (let _%lp251757%_ ((_%rest251759%_ _%args251755%_)
                           (_%pargs251760%_ '())
                           (_%kwargs251761%_ '()))
          (let* ((_%__stx255100255101%_ _%rest251759%_)
                 (_%g251767251819%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx255100255101%_)))))
            (let ((_%__kont255102255103%_
                   (lambda (_%g251769251998%_ _%g251770251999%_)
                     (_%lp251757%_
                      _%g251769251998%_
                      (cons _%g251770251999%_ _%pargs251760%_)
                      _%kwargs251761%_)))
                  (_%__kont255104255105%_
                   (lambda (_%g251784251944%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%g251784251944%_
                                _%pargs251760%_))
                             (reverse _%kwargs251761%_))))
                  (_%__kont255106255107%_
                   (lambda (_%g251795251891%_
                            _%g251796251892%_
                            _%g251797251893%_)
                     (let ((_%kw251910%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g251797251893%_))))
                       (if (assq _%kw251910%_ _%kwargs251761%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx251754%_
                              _%kw251910%_))
                           (_%lp251757%_
                            _%g251795251891%_
                            _%pargs251760%_
                            (cons (cons _%kw251910%_ _%g251796251892%_)
                                  _%kwargs251761%_))))))
                  (_%__kont255108255109%_
                   (lambda (_%g251810251839%_ _%g251811251840%_)
                     (_%lp251757%_
                      _%g251810251839%_
                      (cons _%g251811251840%_ _%pargs251760%_)
                      _%kwargs251761%_)))
                  (_%__kont255110255111%_
                   (lambda ()
                     (values (reverse _%pargs251760%_)
                             (reverse _%kwargs251761%_)))))
              (let ((_%__match255207255208%_
                     (lambda (_%e251798251859%_
                              _%hd251799251862%_
                              _%tl251800251864%_
                              _%e251801251867%_
                              _%hd251802251870%_
                              _%tl251803251872%_
                              _%e251804251875%_
                              _%hd251805251878%_
                              _%tl251806251880%_
                              _%e251807251883%_
                              _%hd251808251886%_
                              _%tl251809251888%_)
                       (let ((_%g251795251891%_ _%tl251809251888%_)
                             (_%g251796251892%_ _%hd251808251886%_)
                             (_%g251797251893%_ _%hd251805251878%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g251797251893%_))
                             (_%__kont255106255107%_
                              _%g251795251891%_
                              _%g251796251892%_
                              _%g251797251893%_)
                             (_%__kont255108255109%_
                              _%tl251800251864%_
                              _%hd251799251862%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx255100255101%_))
                    (let ((_%e251771251963%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx255100255101%_))))
                      (let ((_%tl251773251968%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e251771251963%_)))
                            (_%hd251772251966%_
                             (let ()
                               (declare (not safe))
                               (##car _%e251771251963%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd251772251966%_))
                            (let ((_%e251774251971%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd251772251966%_))))
                              (let ((_%tl251776251976%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e251774251971%_)))
                                    (_%hd251775251974%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e251774251971%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd251775251974%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd251775251974%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl251776251976%_))
                                            (let ((_%e251777251979%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl251776251976%_))))
                                              (let ((_%tl251779251984%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e251777251979%_)))
                                                    (_%hd251778251982%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e251777251979%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd251778251982%_))
                                                    (let ((_%e251780251987%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd251778251982%_))))
                                                      (if (equal? _%e251780251987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl251779251984%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl251773251968%_))
                          (let ((_%e251781251990%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl251773251968%_))))
                            (let ((_%tl251783251995%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251781251990%_)))
                                  (_%hd251782251993%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251781251990%_))))
                              (_%__kont255102255103%_
                               _%tl251783251995%_
                               _%hd251782251993%_)))
                          (_%__kont255108255109%_
                           _%tl251773251968%_
                           _%hd251772251966%_))
                      (_%__kont255108255109%_
                       _%tl251773251968%_
                       _%hd251772251966%_))
                  (if (equal? _%e251780251987%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl251779251984%_))
                          (_%__kont255104255105%_ _%tl251773251968%_)
                          (_%__kont255108255109%_
                           _%tl251773251968%_
                           _%hd251772251966%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl251779251984%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl251773251968%_))
                              (let ((_%e251807251883%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl251773251968%_))))
                                (let ((_%tl251809251888%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e251807251883%_)))
                                      (_%hd251808251886%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e251807251883%_))))
                                  (_%__match255207255208%_
                                   _%e251771251963%_
                                   _%hd251772251966%_
                                   _%tl251773251968%_
                                   _%e251774251971%_
                                   _%hd251775251974%_
                                   _%tl251776251976%_
                                   _%e251777251979%_
                                   _%hd251778251982%_
                                   _%tl251779251984%_
                                   _%e251807251883%_
                                   _%hd251808251886%_
                                   _%tl251809251888%_)))
                              (_%__kont255108255109%_
                               _%tl251773251968%_
                               _%hd251772251966%_))
                          (_%__kont255108255109%_
                           _%tl251773251968%_
                           _%hd251772251966%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl251779251984%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl251773251968%_))
                                                            (let ((_%e251807251883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl251773251968%_))))
                      (let ((_%tl251809251888%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e251807251883%_)))
                            (_%hd251808251886%_
                             (let ()
                               (declare (not safe))
                               (##car _%e251807251883%_))))
                        (_%__match255207255208%_
                         _%e251771251963%_
                         _%hd251772251966%_
                         _%tl251773251968%_
                         _%e251774251971%_
                         _%hd251775251974%_
                         _%tl251776251976%_
                         _%e251777251979%_
                         _%hd251778251982%_
                         _%tl251779251984%_
                         _%e251807251883%_
                         _%hd251808251886%_
                         _%tl251809251888%_)))
                    (_%__kont255108255109%_
                     _%tl251773251968%_
                     _%hd251772251966%_))
                (_%__kont255108255109%_
                 _%tl251773251968%_
                 _%hd251772251966%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont255108255109%_
                                             _%tl251773251968%_
                                             _%hd251772251966%_))
                                        (_%__kont255108255109%_
                                         _%tl251773251968%_
                                         _%hd251772251966%_))
                                    (_%__kont255108255109%_
                                     _%tl251773251968%_
                                     _%hd251772251966%_))))
                            (_%__kont255108255109%_
                             _%tl251773251968%_
                             _%hd251772251966%_))))
                    (_%__kont255110255111%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self251738%_ _%ctx251739%_ _%stx251740%_ _%args251741%_)
        (let ((_%self251744%_ _%self251738%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx251739%_ _%stx251740%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self251428%_ _%stx251429%_)
        (let* ((_%__stx255216255217%_ _%stx251429%_)
               (_%g251432251472%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx255216255217%_)))))
          (let ((_%__kont255218255219%_
                 (lambda (_%g251434251576%_ _%g251435251577%_)
                   (let ((_%$e251604%_
                          (member 'return:
                                  (let ((__tmp255648
                                         (lambda (_%g251596251599%_
                                                  _%g251597251601%_)
                                           (cons _%g251596251599%_
                                                 _%g251597251601%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp255648
                                     '()
                                     _%g251435251577%_))
                                  gx#stx-eq?)))
                     (if _%$e251604%_
                         ((lambda (_%tail251607%_)
                            (let ((_%type251609%_
                                   (let ((__tmp255649
                                          (let ((__tmp255650
                                                 (cadr _%tail251607%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp255650))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx251429%_
                                      __tmp255649))))
                              (gxc#check-return-type!
                               _%stx251429%_
                               _%g251434251576%_
                               _%type251609%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self251428%_
                                 _%g251434251576%_))))
                          _%$e251604%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self251428%_
                            _%g251434251576%_))))))
                (_%__kont255222255223%_
                 (lambda (_%g251457251501%_ _%g251458251502%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self251428%_ _%g251457251501%_)))))
            (let ((_%__match255253255254%_
                   (lambda (_%e251436251522%_
                            _%hd251437251525%_
                            _%tl251438251527%_
                            _%e251439251530%_
                            _%hd251440251533%_
                            _%tl251441251535%_
                            _%e251442251538%_
                            _%hd251443251541%_
                            _%tl251444251543%_
                            _%__splice255220255221%_
                            _%target251445251546%_
                            _%tl251447251548%_)
                     (letrec ((_%loop251448251551%_
                               (lambda (_%hd251446251554%_
                                        _%signature251452251556%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd251446251554%_))
                                     (let ((_%e251449251558%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd251446251554%_))))
                                       (let ((_%lp-tl251451251563%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e251449251558%_)))
                                             (_%lp-hd251450251561%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e251449251558%_))))
                                         (_%loop251448251551%_
                                          _%lp-tl251451251563%_
                                          (cons _%lp-hd251450251561%_
                                                _%signature251452251556%_))))
                                     (let ((_%signature251453251566%_
                                            (reverse _%signature251452251556%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl251441251535%_))
                                           (let ((_%e251454251568%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl251441251535%_))))
                                             (let ((_%tl251456251573%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e251454251568%_)))
                                                   (_%hd251455251571%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e251454251568%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl251456251573%_))
                                                   (_%__kont255218255219%_
                                                    _%hd251455251571%_
                                                    _%signature251453251566%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g251432251472%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g251432251472%_))))))))
                       (_%loop251448251551%_ _%target251445251546%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx255216255217%_))
                  (let ((_%e251436251522%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx255216255217%_))))
                    (let ((_%tl251438251527%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e251436251522%_)))
                          (_%hd251437251525%_
                           (let ()
                             (declare (not safe))
                             (##car _%e251436251522%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl251438251527%_))
                          (let ((_%e251439251530%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl251438251527%_))))
                            (let ((_%tl251441251535%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251439251530%_)))
                                  (_%hd251440251533%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251439251530%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd251440251533%_))
                                  (let ((_%e251442251538%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd251440251533%_))))
                                    (let ((_%tl251444251543%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251442251538%_)))
                                          (_%hd251443251541%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251442251538%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd251443251541%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd251443251541%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl251444251543%_))
                                                  (let ((_%__splice255220255221%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl251444251543%_
                                                            '0))))
                                                    (let ((_%tl251447251548%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice255220255221%_
                                                              '1)))
                                                          (_%target251445251546%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice255220255221%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl251447251548%_))
                                                          (_%__match255253255254%_
                                                           _%e251436251522%_
                                                           _%hd251437251525%_
                                                           _%tl251438251527%_
                                                           _%e251439251530%_
                                                           _%hd251440251533%_
                                                           _%tl251441251535%_
                                                           _%e251442251538%_
                                                           _%hd251443251541%_
                                                           _%tl251444251543%_
                                                           _%__splice255220255221%_
                                                           _%target251445251546%_
                                                           _%tl251447251548%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl251441251535%_))
                      (let ((_%e251465251493%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl251441251535%_))))
                        (let ((_%tl251467251498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251465251493%_)))
                              (_%hd251466251496%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251465251493%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl251467251498%_))
                              (_%__kont255222255223%_
                               _%hd251466251496%_
                               _%hd251440251533%_)
                              (let ()
                                (declare (not safe))
                                (_%g251432251472%_)))))
                      (let () (declare (not safe)) (_%g251432251472%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl251441251535%_))
                                                      (let ((_%e251465251493%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl251441251535%_))))
                (let ((_%tl251467251498%_
                       (let () (declare (not safe)) (##cdr _%e251465251493%_)))
                      (_%hd251466251496%_
                       (let ()
                         (declare (not safe))
                         (##car _%e251465251493%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl251467251498%_))
                      (_%__kont255222255223%_
                       _%hd251466251496%_
                       _%hd251440251533%_)
                      (let () (declare (not safe)) (_%g251432251472%_)))))
              (let () (declare (not safe)) (_%g251432251472%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl251441251535%_))
                                                  (let ((_%e251465251493%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl251441251535%_))))
                                                    (let ((_%tl251467251498%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e251465251493%_)))
                                                          (_%hd251466251496%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e251465251493%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl251467251498%_))
                                                          (_%__kont255222255223%_
                                                           _%hd251466251496%_
                                                           _%hd251440251533%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g251432251472%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g251432251472%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl251441251535%_))
                                              (let ((_%e251465251493%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl251441251535%_))))
                                                (let ((_%tl251467251498%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e251465251493%_)))
                                                      (_%hd251466251496%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e251465251493%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl251467251498%_))
                                                      (_%__kont255222255223%_
                                                       _%hd251466251496%_
                                                       _%hd251440251533%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g251432251472%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g251432251472%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl251441251535%_))
                                      (let ((_%e251465251493%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl251441251535%_))))
                                        (let ((_%tl251467251498%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e251465251493%_)))
                                              (_%hd251466251496%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e251465251493%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl251467251498%_))
                                              (_%__kont255222255223%_
                                               _%hd251466251496%_
                                               _%hd251440251533%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g251432251472%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g251432251472%_))))))
                          (let () (declare (not safe)) (_%g251432251472%_)))))
                  (let () (declare (not safe)) (_%g251432251472%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx251403%_ _%expr251404%_ _%type251405%_)
        (let ((_%$e251407%_ (not _%type251405%_)))
          (if _%$e251407%_
              _%$e251407%_
              (let ((_%$e251410%_
                     (eq? (##structure-ref _%type251405%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e251410%_
                    _%$e251410%_
                    (let ((_%$e251413%_
                           (eq? (##structure-ref
                                 _%type251405%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e251413%_
                          _%$e251413%_
                          (let ((_%expr-type251417%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr251404%_))))
                            (if (not _%expr-type251417%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx251403%_
                                   _%type251405%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type251417%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx251403%_
                                       _%type251405%_
                                       _%expr-type251417%_))
                                    (let ((_%$e251421%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type251417%_
                                              'gxc#!abort::t))))
                                      (if _%$e251421%_
                                          _%$e251421%_
                                          (let ((_%$e251424%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type251417%_
                                                    _%type251405%_))))
                                            (if _%$e251424%_
                                                _%$e251424%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx251403%_
                                                   _%type251405%_
                                                   _%expr-type251417%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self250829%_ _%stx250830%_)
        (let* ((_%__stx255298255299%_ _%stx250830%_)
               (_%g250835250945%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx255298255299%_)))))
          (let ((_%__kont255300255301%_
                 (lambda (_%g250837251377%_
                          _%g250838251378%_
                          _%g250839251379%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g250839251379%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self250829%_ _%g250838251378%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self250829%_
                          _%g250837251377%_)))))
                (_%__kont255302255303%_
                 (lambda (_%g250858251203%_
                          _%g250859251204%_
                          _%g250860251205%_
                          _%g250861251206%_)
                   (let ((_%$e251238%_
                          (let ((__tmp255651
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g250861251206%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp255651))))
                     (if _%$e251238%_
                         ((lambda (_%pred-type251241%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type251241%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type251241%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test251246%_
                                        (let ((__tmp255652
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g250861251206%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g250860251205%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp255652
                                           _%stx250830%_
                                           _%self250829%_)))
                                       (_%K251250%_
                                        (let ((__tmp255653
                                               (lambda ()
                                                 (let ((__tmp255656
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self250829%_
                                                             _%g250859251204%_))))
                                                       (__tmp255654
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g250860251205%_))
                            (let ((__tmp255655
                                   (##structure-ref
                                    _%pred-type251241%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx250830%_
                               __tmp255655)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp255656
                                                    gxc#current-compile-path-type
                                                    __tmp255654)))))
                                          (declare (not safe))
                                          (__make-promise __tmp255653)))
                                       (_%E251253%_
                                        (let ((__tmp255657
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self250829%_
                                                    _%g250858251203%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp255657)))
                                       (_%__stx255276255277%_ _%test251246%_)
                                       (_%g251257251271%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx255276255277%_)))))
                                  (let ((_%__kont255278255279%_
                                         (lambda (_%g251259251299%_
                                                  _%g251260251300%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g251259251299%_))
                                               (force _%K251250%_)
                                               (force _%E251253%_))))
                                        (_%__kont255280255281%_
                                         (lambda ()
                                           (let ((__tmp255658
                                                  (cons '%#if
                                                        (cons _%test251246%_
                                                              (cons (force _%K251250%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E251253%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp255658
                                              _%stx250830%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx255276255277%_))
                                        (let ((_%e251261251283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx255276255277%_))))
                                          (let ((_%tl251263251288%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e251261251283%_)))
                                                (_%hd251262251286%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e251261251283%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl251263251288%_))
                                                (let ((_%e251264251291%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl251263251288%_))))
                                                  (let ((_%tl251266251296%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e251264251291%_)))
                                                        (_%hd251265251294%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e251264251291%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl251266251296%_))
                                                        (_%__kont255278255279%_
                                                         _%hd251265251294%_
                                                         _%hd251262251286%_)
                                                        (_%__kont255280255281%_))))
                                                (_%__kont255280255281%_))))
                                        (_%__kont255280255281%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self250829%_
                                   _%stx250830%_))))
                          _%$e251238%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self250829%_
                            _%stx250830%_))))))
                (_%__kont255304255305%_
                 (lambda (_%g250895251079%_
                          _%g250896251080%_
                          _%g250897251081%_
                          _%g250898251082%_)
                   (gxc#optimize-if%
                    _%self250829%_
                    (let ((__tmp255659
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g250897251081%_
                                       (cons _%g250895251079%_
                                             (cons _%g250896251080%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255659 _%stx250830%_)))))
                (_%__kont255306255307%_
                 (lambda (_%g250926250982%_
                          _%g250927250983%_
                          _%g250928250984%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self250829%_ _%stx250830%_)))))
            (let ((_%__match255505255506%_
                   (lambda (_%e250899251007%_
                            _%hd250900251010%_
                            _%tl250901251012%_
                            _%e250902251015%_
                            _%hd250903251018%_
                            _%tl250904251020%_
                            _%e250905251023%_
                            _%hd250906251026%_
                            _%tl250907251028%_
                            _%e250908251031%_
                            _%hd250909251034%_
                            _%tl250910251036%_
                            _%e250911251039%_
                            _%hd250912251042%_
                            _%tl250913251044%_
                            _%e250914251047%_
                            _%hd250915251050%_
                            _%tl250916251052%_
                            _%e250917251055%_
                            _%hd250918251058%_
                            _%tl250919251060%_
                            _%e250920251063%_
                            _%hd250921251066%_
                            _%tl250922251068%_
                            _%e250923251071%_
                            _%hd250924251074%_
                            _%tl250925251076%_)
                     (let ((_%g250895251079%_ _%hd250924251074%_)
                           (_%g250896251080%_ _%hd250921251066%_)
                           (_%g250897251081%_ _%hd250918251058%_)
                           (_%g250898251082%_ _%hd250915251050%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g250898251082%_ 'not))
                           (_%__kont255304255305%_
                            _%g250895251079%_
                            _%g250896251080%_
                            _%g250897251081%_
                            _%g250898251082%_)
                           (_%__kont255306255307%_
                            _%hd250924251074%_
                            _%hd250921251066%_
                            _%hd250903251018%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx255298255299%_))
                  (let ((_%e250840251329%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx255298255299%_))))
                    (let ((_%tl250842251334%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250840251329%_)))
                          (_%hd250841251332%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250840251329%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250842251334%_))
                          (let ((_%e250843251337%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250842251334%_))))
                            (let ((_%tl250845251342%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250843251337%_)))
                                  (_%hd250844251340%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250843251337%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd250844251340%_))
                                  (let ((_%e250846251345%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd250844251340%_))))
                                    (let ((_%tl250848251350%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250846251345%_)))
                                          (_%hd250847251348%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250846251345%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd250847251348%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd250847251348%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250848251350%_))
                                                  (let ((_%e250849251353%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250848251350%_))))
                                                    (let ((_%tl250851251358%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250849251353%_)))
                                                          (_%hd250850251356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250849251353%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250851251358%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl250845251342%_))
                      (let ((_%e250852251361%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250845251342%_))))
                        (let ((_%tl250854251366%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250852251361%_)))
                              (_%hd250853251364%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250852251361%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250854251366%_))
                              (let ((_%e250855251369%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl250854251366%_))))
                                (let ((_%tl250857251374%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250855251369%_)))
                                      (_%hd250856251372%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250855251369%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl250857251374%_))
                                      (_%__kont255300255301%_
                                       _%hd250856251372%_
                                       _%hd250853251364%_
                                       _%hd250850251356%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g250835250945%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g250835250945%_)))))
                      (let () (declare (not safe)) (_%g250835250945%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250845251342%_))
                      (let ((_%e250935250966%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250845251342%_))))
                        (let ((_%tl250937250971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250935250966%_)))
                              (_%hd250936250969%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250935250966%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250937250971%_))
                              (let ((_%e250938250974%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl250937250971%_))))
                                (let ((_%tl250940250979%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250938250974%_)))
                                      (_%hd250939250977%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250938250974%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl250940250979%_))
                                      (_%__kont255306255307%_
                                       _%hd250939250977%_
                                       _%hd250936250969%_
                                       _%hd250844251340%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g250835250945%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g250835250945%_)))))
                      (let () (declare (not safe)) (_%g250835250945%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250845251342%_))
                                                      (let ((_%e250935250966%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250845251342%_))))
                (let ((_%tl250937250971%_
                       (let () (declare (not safe)) (##cdr _%e250935250966%_)))
                      (_%hd250936250969%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250935250966%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250937250971%_))
                      (let ((_%e250938250974%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250937250971%_))))
                        (let ((_%tl250940250979%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250938250974%_)))
                              (_%hd250939250977%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250938250974%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250940250979%_))
                              (_%__kont255306255307%_
                               _%hd250939250977%_
                               _%hd250936250969%_
                               _%hd250844251340%_)
                              (let ()
                                (declare (not safe))
                                (_%g250835250945%_)))))
                      (let () (declare (not safe)) (_%g250835250945%_)))))
              (let () (declare (not safe)) (_%g250835250945%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd250847251348%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250848251350%_))
                                                      (let ((_%e250871251139%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250848251350%_))))
                (let ((_%tl250873251144%_
                       (let () (declare (not safe)) (##cdr _%e250871251139%_)))
                      (_%hd250872251142%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250871251139%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd250872251142%_))
                      (let ((_%e250874251147%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd250872251142%_))))
                        (let ((_%tl250876251152%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250874251147%_)))
                              (_%hd250875251150%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250874251147%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd250875251150%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd250875251150%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250876251152%_))
                                      (let ((_%e250877251155%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250876251152%_))))
                                        (let ((_%tl250879251160%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250877251155%_)))
                                              (_%hd250878251158%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250877251155%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250879251160%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250873251144%_))
                                                  (let ((_%e250880251163%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250873251144%_))))
                                                    (let ((_%tl250882251168%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250880251163%_)))
                                                          (_%hd250881251166%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250880251163%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd250881251166%_))
                                                          (let ((_%e250883251171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd250881251166%_))))
                    (let ((_%tl250885251176%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250883251171%_)))
                          (_%hd250884251174%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250883251171%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd250884251174%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd250884251174%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250885251176%_))
                                  (let ((_%e250886251179%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250885251176%_))))
                                    (let ((_%tl250888251184%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250886251179%_)))
                                          (_%hd250887251182%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250886251179%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250888251184%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250882251168%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250845251342%_))
                                                  (let ((_%e250889251187%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250845251342%_))))
                                                    (let ((_%tl250891251192%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250889251187%_)))
                                                          (_%hd250890251190%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250889251187%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250891251192%_))
                                                          (let ((_%e250892251195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250891251192%_))))
                    (let ((_%tl250894251200%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250892251195%_)))
                          (_%hd250893251198%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250892251195%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250894251200%_))
                          (_%__kont255302255303%_
                           _%hd250893251198%_
                           _%hd250890251190%_
                           _%hd250887251182%_
                           _%hd250878251158%_)
                          (let () (declare (not safe)) (_%g250835250945%_)))))
                  (let () (declare (not safe)) (_%g250835250945%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250835250945%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250845251342%_))
                                                  (let ((_%e250935250966%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250845251342%_))))
                                                    (let ((_%tl250937250971%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250935250966%_)))
                                                          (_%hd250936250969%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250935250966%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250937250971%_))
                                                          (let ((_%e250938250974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250937250971%_))))
                    (let ((_%tl250940250979%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250938250974%_)))
                          (_%hd250939250977%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250938250974%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250940250979%_))
                          (_%__kont255306255307%_
                           _%hd250939250977%_
                           _%hd250936250969%_
                           _%hd250844251340%_)
                          (let () (declare (not safe)) (_%g250835250945%_)))))
                  (let () (declare (not safe)) (_%g250835250945%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250835250945%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250882251168%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250845251342%_))
                                                  (let ((_%e250920251063%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250845251342%_))))
                                                    (let ((_%tl250922251068%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250920251063%_)))
                                                          (_%hd250921251066%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250920251063%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250922251068%_))
                                                          (let ((_%e250923251071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250922251068%_))))
                    (let ((_%tl250925251076%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250923251071%_)))
                          (_%hd250924251074%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250923251071%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250925251076%_))
                          (_%__match255505255506%_
                           _%e250840251329%_
                           _%hd250841251332%_
                           _%tl250842251334%_
                           _%e250843251337%_
                           _%hd250844251340%_
                           _%tl250845251342%_
                           _%e250846251345%_
                           _%hd250847251348%_
                           _%tl250848251350%_
                           _%e250871251139%_
                           _%hd250872251142%_
                           _%tl250873251144%_
                           _%e250874251147%_
                           _%hd250875251150%_
                           _%tl250876251152%_
                           _%e250877251155%_
                           _%hd250878251158%_
                           _%tl250879251160%_
                           _%e250880251163%_
                           _%hd250881251166%_
                           _%tl250882251168%_
                           _%e250920251063%_
                           _%hd250921251066%_
                           _%tl250922251068%_
                           _%e250923251071%_
                           _%hd250924251074%_
                           _%tl250925251076%_)
                          (let () (declare (not safe)) (_%g250835250945%_)))))
                  (let () (declare (not safe)) (_%g250835250945%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250835250945%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250845251342%_))
                                                  (let ((_%e250935250966%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250845251342%_))))
                                                    (let ((_%tl250937250971%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250935250966%_)))
                                                          (_%hd250936250969%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250935250966%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250937250971%_))
                                                          (let ((_%e250938250974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250937250971%_))))
                    (let ((_%tl250940250979%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250938250974%_)))
                          (_%hd250939250977%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250938250974%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250940250979%_))
                          (_%__kont255306255307%_
                           _%hd250939250977%_
                           _%hd250936250969%_
                           _%hd250844251340%_)
                          (let () (declare (not safe)) (_%g250835250945%_)))))
                  (let () (declare (not safe)) (_%g250835250945%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250835250945%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl250882251168%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250845251342%_))
                                          (let ((_%e250920251063%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250845251342%_))))
                                            (let ((_%tl250922251068%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250920251063%_)))
                                                  (_%hd250921251066%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250920251063%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250922251068%_))
                                                  (let ((_%e250923251071%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250922251068%_))))
                                                    (let ((_%tl250925251076%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250923251071%_)))
                                                          (_%hd250924251074%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250923251071%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250925251076%_))
                                                          (_%__match255505255506%_
                                                           _%e250840251329%_
                                                           _%hd250841251332%_
                                                           _%tl250842251334%_
                                                           _%e250843251337%_
                                                           _%hd250844251340%_
                                                           _%tl250845251342%_
                                                           _%e250846251345%_
                                                           _%hd250847251348%_
                                                           _%tl250848251350%_
                                                           _%e250871251139%_
                                                           _%hd250872251142%_
                                                           _%tl250873251144%_
                                                           _%e250874251147%_
                                                           _%hd250875251150%_
                                                           _%tl250876251152%_
                                                           _%e250877251155%_
                                                           _%hd250878251158%_
                                                           _%tl250879251160%_
                                                           _%e250880251163%_
                                                           _%hd250881251166%_
                                                           _%tl250882251168%_
                                                           _%e250920251063%_
                                                           _%hd250921251066%_
                                                           _%tl250922251068%_
                                                           _%e250923251071%_
                                                           _%hd250924251074%_
                                                           _%tl250925251076%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250835250945%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250835250945%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250835250945%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250845251342%_))
                                          (let ((_%e250935250966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250845251342%_))))
                                            (let ((_%tl250937250971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250935250966%_)))
                                                  (_%hd250936250969%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250935250966%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250937250971%_))
                                                  (let ((_%e250938250974%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250937250971%_))))
                                                    (let ((_%tl250940250979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250938250974%_)))
                                                          (_%hd250939250977%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250938250974%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250940250979%_))
                                                          (_%__kont255306255307%_
                                                           _%hd250939250977%_
                                                           _%hd250936250969%_
                                                           _%hd250844251340%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250835250945%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250835250945%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250835250945%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl250882251168%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250845251342%_))
                                      (let ((_%e250920251063%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250845251342%_))))
                                        (let ((_%tl250922251068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250920251063%_)))
                                              (_%hd250921251066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250920251063%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250922251068%_))
                                              (let ((_%e250923251071%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250922251068%_))))
                                                (let ((_%tl250925251076%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250923251071%_)))
                                                      (_%hd250924251074%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250923251071%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250925251076%_))
                                                      (_%__match255505255506%_
                                                       _%e250840251329%_
                                                       _%hd250841251332%_
                                                       _%tl250842251334%_
                                                       _%e250843251337%_
                                                       _%hd250844251340%_
                                                       _%tl250845251342%_
                                                       _%e250846251345%_
                                                       _%hd250847251348%_
                                                       _%tl250848251350%_
                                                       _%e250871251139%_
                                                       _%hd250872251142%_
                                                       _%tl250873251144%_
                                                       _%e250874251147%_
                                                       _%hd250875251150%_
                                                       _%tl250876251152%_
                                                       _%e250877251155%_
                                                       _%hd250878251158%_
                                                       _%tl250879251160%_
                                                       _%e250880251163%_
                                                       _%hd250881251166%_
                                                       _%tl250882251168%_
                                                       _%e250920251063%_
                                                       _%hd250921251066%_
                                                       _%tl250922251068%_
                                                       _%e250923251071%_
                                                       _%hd250924251074%_
                                                       _%tl250925251076%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250835250945%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250835250945%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250835250945%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250845251342%_))
                                      (let ((_%e250935250966%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250845251342%_))))
                                        (let ((_%tl250937250971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250935250966%_)))
                                              (_%hd250936250969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250935250966%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250937250971%_))
                                              (let ((_%e250938250974%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250937250971%_))))
                                                (let ((_%tl250940250979%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250938250974%_)))
                                                      (_%hd250939250977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250938250974%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250940250979%_))
                                                      (_%__kont255306255307%_
                                                       _%hd250939250977%_
                                                       _%hd250936250969%_
                                                       _%hd250844251340%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250835250945%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250835250945%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250835250945%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250882251168%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250845251342%_))
                                  (let ((_%e250920251063%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250845251342%_))))
                                    (let ((_%tl250922251068%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250920251063%_)))
                                          (_%hd250921251066%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250920251063%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250922251068%_))
                                          (let ((_%e250923251071%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250922251068%_))))
                                            (let ((_%tl250925251076%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250923251071%_)))
                                                  (_%hd250924251074%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250923251071%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl250925251076%_))
                                                  (_%__match255505255506%_
                                                   _%e250840251329%_
                                                   _%hd250841251332%_
                                                   _%tl250842251334%_
                                                   _%e250843251337%_
                                                   _%hd250844251340%_
                                                   _%tl250845251342%_
                                                   _%e250846251345%_
                                                   _%hd250847251348%_
                                                   _%tl250848251350%_
                                                   _%e250871251139%_
                                                   _%hd250872251142%_
                                                   _%tl250873251144%_
                                                   _%e250874251147%_
                                                   _%hd250875251150%_
                                                   _%tl250876251152%_
                                                   _%e250877251155%_
                                                   _%hd250878251158%_
                                                   _%tl250879251160%_
                                                   _%e250880251163%_
                                                   _%hd250881251166%_
                                                   _%tl250882251168%_
                                                   _%e250920251063%_
                                                   _%hd250921251066%_
                                                   _%tl250922251068%_
                                                   _%e250923251071%_
                                                   _%hd250924251074%_
                                                   _%tl250925251076%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250835250945%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250835250945%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250835250945%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250845251342%_))
                                  (let ((_%e250935250966%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250845251342%_))))
                                    (let ((_%tl250937250971%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250935250966%_)))
                                          (_%hd250936250969%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250935250966%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250937250971%_))
                                          (let ((_%e250938250974%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250937250971%_))))
                                            (let ((_%tl250940250979%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250938250974%_)))
                                                  (_%hd250939250977%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250938250974%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl250940250979%_))
                                                  (_%__kont255306255307%_
                                                   _%hd250939250977%_
                                                   _%hd250936250969%_
                                                   _%hd250844251340%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250835250945%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250835250945%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250835250945%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250882251168%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250845251342%_))
                          (let ((_%e250920251063%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250845251342%_))))
                            (let ((_%tl250922251068%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250920251063%_)))
                                  (_%hd250921251066%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250920251063%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250922251068%_))
                                  (let ((_%e250923251071%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250922251068%_))))
                                    (let ((_%tl250925251076%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250923251071%_)))
                                          (_%hd250924251074%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250923251071%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250925251076%_))
                                          (_%__match255505255506%_
                                           _%e250840251329%_
                                           _%hd250841251332%_
                                           _%tl250842251334%_
                                           _%e250843251337%_
                                           _%hd250844251340%_
                                           _%tl250845251342%_
                                           _%e250846251345%_
                                           _%hd250847251348%_
                                           _%tl250848251350%_
                                           _%e250871251139%_
                                           _%hd250872251142%_
                                           _%tl250873251144%_
                                           _%e250874251147%_
                                           _%hd250875251150%_
                                           _%tl250876251152%_
                                           _%e250877251155%_
                                           _%hd250878251158%_
                                           _%tl250879251160%_
                                           _%e250880251163%_
                                           _%hd250881251166%_
                                           _%tl250882251168%_
                                           _%e250920251063%_
                                           _%hd250921251066%_
                                           _%tl250922251068%_
                                           _%e250923251071%_
                                           _%hd250924251074%_
                                           _%tl250925251076%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g250835250945%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250835250945%_)))))
                          (let () (declare (not safe)) (_%g250835250945%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250845251342%_))
                          (let ((_%e250935250966%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250845251342%_))))
                            (let ((_%tl250937250971%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250935250966%_)))
                                  (_%hd250936250969%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250935250966%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250937250971%_))
                                  (let ((_%e250938250974%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250937250971%_))))
                                    (let ((_%tl250940250979%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250938250974%_)))
                                          (_%hd250939250977%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250938250974%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250940250979%_))
                                          (_%__kont255306255307%_
                                           _%hd250939250977%_
                                           _%hd250936250969%_
                                           _%hd250844251340%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g250835250945%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250835250945%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g250835250945%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250845251342%_))
                                                      (let ((_%e250935250966%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250845251342%_))))
                (let ((_%tl250937250971%_
                       (let () (declare (not safe)) (##cdr _%e250935250966%_)))
                      (_%hd250936250969%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250935250966%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250937250971%_))
                      (let ((_%e250938250974%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250937250971%_))))
                        (let ((_%tl250940250979%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250938250974%_)))
                              (_%hd250939250977%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250938250974%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250940250979%_))
                              (_%__kont255306255307%_
                               _%hd250939250977%_
                               _%hd250936250969%_
                               _%hd250844251340%_)
                              (let ()
                                (declare (not safe))
                                (_%g250835250945%_)))))
                      (let () (declare (not safe)) (_%g250835250945%_)))))
              (let () (declare (not safe)) (_%g250835250945%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250845251342%_))
                                                  (let ((_%e250935250966%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250845251342%_))))
                                                    (let ((_%tl250937250971%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250935250966%_)))
                                                          (_%hd250936250969%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250935250966%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250937250971%_))
                                                          (let ((_%e250938250974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250937250971%_))))
                    (let ((_%tl250940250979%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250938250974%_)))
                          (_%hd250939250977%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250938250974%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250940250979%_))
                          (_%__kont255306255307%_
                           _%hd250939250977%_
                           _%hd250936250969%_
                           _%hd250844251340%_)
                          (let () (declare (not safe)) (_%g250835250945%_)))))
                  (let () (declare (not safe)) (_%g250835250945%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250835250945%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250845251342%_))
                                          (let ((_%e250935250966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250845251342%_))))
                                            (let ((_%tl250937250971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250935250966%_)))
                                                  (_%hd250936250969%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250935250966%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250937250971%_))
                                                  (let ((_%e250938250974%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250937250971%_))))
                                                    (let ((_%tl250940250979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250938250974%_)))
                                                          (_%hd250939250977%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250938250974%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250940250979%_))
                                                          (_%__kont255306255307%_
                                                           _%hd250939250977%_
                                                           _%hd250936250969%_
                                                           _%hd250844251340%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250835250945%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250835250945%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250835250945%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250845251342%_))
                                      (let ((_%e250935250966%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250845251342%_))))
                                        (let ((_%tl250937250971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250935250966%_)))
                                              (_%hd250936250969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250935250966%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250937250971%_))
                                              (let ((_%e250938250974%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250937250971%_))))
                                                (let ((_%tl250940250979%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250938250974%_)))
                                                      (_%hd250939250977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250938250974%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250940250979%_))
                                                      (_%__kont255306255307%_
                                                       _%hd250939250977%_
                                                       _%hd250936250969%_
                                                       _%hd250844251340%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250835250945%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250835250945%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250835250945%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250845251342%_))
                                  (let ((_%e250935250966%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250845251342%_))))
                                    (let ((_%tl250937250971%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250935250966%_)))
                                          (_%hd250936250969%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250935250966%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250937250971%_))
                                          (let ((_%e250938250974%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250937250971%_))))
                                            (let ((_%tl250940250979%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250938250974%_)))
                                                  (_%hd250939250977%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250938250974%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl250940250979%_))
                                                  (_%__kont255306255307%_
                                                   _%hd250939250977%_
                                                   _%hd250936250969%_
                                                   _%hd250844251340%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250835250945%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250835250945%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250835250945%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250845251342%_))
                          (let ((_%e250935250966%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250845251342%_))))
                            (let ((_%tl250937250971%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250935250966%_)))
                                  (_%hd250936250969%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250935250966%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250937250971%_))
                                  (let ((_%e250938250974%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250937250971%_))))
                                    (let ((_%tl250940250979%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250938250974%_)))
                                          (_%hd250939250977%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250938250974%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250940250979%_))
                                          (_%__kont255306255307%_
                                           _%hd250939250977%_
                                           _%hd250936250969%_
                                           _%hd250844251340%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g250835250945%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250835250945%_)))))
                          (let () (declare (not safe)) (_%g250835250945%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl250845251342%_))
                  (let ((_%e250935250966%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250845251342%_))))
                    (let ((_%tl250937250971%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250935250966%_)))
                          (_%hd250936250969%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250935250966%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250937250971%_))
                          (let ((_%e250938250974%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250937250971%_))))
                            (let ((_%tl250940250979%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250938250974%_)))
                                  (_%hd250939250977%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250938250974%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl250940250979%_))
                                  (_%__kont255306255307%_
                                   _%hd250939250977%_
                                   _%hd250936250969%_
                                   _%hd250844251340%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g250835250945%_)))))
                          (let () (declare (not safe)) (_%g250835250945%_)))))
                  (let () (declare (not safe)) (_%g250835250945%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250845251342%_))
                                                      (let ((_%e250935250966%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250845251342%_))))
                (let ((_%tl250937250971%_
                       (let () (declare (not safe)) (##cdr _%e250935250966%_)))
                      (_%hd250936250969%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250935250966%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250937250971%_))
                      (let ((_%e250938250974%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250937250971%_))))
                        (let ((_%tl250940250979%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250938250974%_)))
                              (_%hd250939250977%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250938250974%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250940250979%_))
                              (_%__kont255306255307%_
                               _%hd250939250977%_
                               _%hd250936250969%_
                               _%hd250844251340%_)
                              (let ()
                                (declare (not safe))
                                (_%g250835250945%_)))))
                      (let () (declare (not safe)) (_%g250835250945%_)))))
              (let () (declare (not safe)) (_%g250835250945%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250845251342%_))
                                              (let ((_%e250935250966%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250845251342%_))))
                                                (let ((_%tl250937250971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250935250966%_)))
                                                      (_%hd250936250969%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250935250966%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250937250971%_))
                                                      (let ((_%e250938250974%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250937250971%_))))
                (let ((_%tl250940250979%_
                       (let () (declare (not safe)) (##cdr _%e250938250974%_)))
                      (_%hd250939250977%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250938250974%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250940250979%_))
                      (_%__kont255306255307%_
                       _%hd250939250977%_
                       _%hd250936250969%_
                       _%hd250844251340%_)
                      (let () (declare (not safe)) (_%g250835250945%_)))))
              (let () (declare (not safe)) (_%g250835250945%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g250835250945%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250845251342%_))
                                      (let ((_%e250935250966%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250845251342%_))))
                                        (let ((_%tl250937250971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250935250966%_)))
                                              (_%hd250936250969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250935250966%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250937250971%_))
                                              (let ((_%e250938250974%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250937250971%_))))
                                                (let ((_%tl250940250979%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250938250974%_)))
                                                      (_%hd250939250977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250938250974%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250940250979%_))
                                                      (_%__kont255306255307%_
                                                       _%hd250939250977%_
                                                       _%hd250936250969%_
                                                       _%hd250844251340%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250835250945%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250835250945%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250835250945%_))))))
                          (let () (declare (not safe)) (_%g250835250945%_)))))
                  (let () (declare (not safe)) (_%g250835250945%_))))))))))
