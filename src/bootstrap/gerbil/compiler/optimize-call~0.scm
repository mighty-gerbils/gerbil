(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1783878484)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp262189 (list gxc#::basic-xform::t))
            (__tmp262188 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp262189
         '()
         __tmp262188
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args261286%_
        (apply make-instance gxc#::optimize-call::t _%$args261286%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp262190
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
        (__make-atomic-promise __tmp262190)))
    (define gxc#apply-optimize-call
      (lambda (_%stx261278%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self261281%_
                (let ((__obj262180
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj262180))
               (__tmp262191
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self261281%_ _%stx261278%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp262191
           gxc#current-compile-method
           _%self261281%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp262193 (list gxc#::void::t))
            (__tmp262192 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp262193
         '()
         __tmp262192
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args261275%_
        (apply make-instance gxc#::check-return-type::t _%$args261275%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp262194
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
        (__make-atomic-promise __tmp262194)))
    (define gxc#apply-check-return-type
      (lambda (_%stx261267%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self261270%_
                (let ((__obj262182
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj262182))
               (__tmp262195
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self261270%_ _%stx261267%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp262195
           gxc#current-compile-method
           _%self261270%_))))
    (define gxc#optimize-call%
      (lambda (_%self260415%_ _%stx260416%_)
        (let* ((_%__stx261427261428%_ _%stx260416%_)
               (_%$%g260420260502%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx261427261428%_)))))
          (let ((_%__kont261429261430%_
                 (lambda (_%$%g260422261063%_ _%$%g260423261064%_)
                   (let* ((_%rator-id261084%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%$%g260423261064%_)))
                          (_%rator-type261086%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id261084%_))))
                     (if (or (not _%rator-type261086%_)
                             (eq? (##structure-ref
                                   _%rator-type261086%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self260415%_ _%stx260416%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type261086%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp262196
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type261086%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id261084%_
                                  '" => "
                                  _%rator-type261086%_
                                  '" "
                                  __tmp262196))
                               (let* ((_%optimized261101%_
                                       (let ((__method262183
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type261086%_
                                                 'optimize-call))))
                                         (if __method262183
                                             (let ((__tmp262197
                                                    (let ((__tmp262198
                                                           (lambda (_%$%g261093261096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g261094261098%_)
                     (cons _%$%g261093261096%_ _%$%g261094261098%_))))
              (declare (not safe))
              (foldr__0 __tmp262198 '() _%$%g260422261063%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method262183
                                                _%rator-type261086%_
                                                _%self260415%_
                                                _%stx260416%_
                                                __tmp262197))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type261086%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx261375261376%_
                                       _%optimized261101%_)
                                      (_%$%g261104261133%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx261375261376%_)))))
                                 (let ((_%__kont261377261378%_
                                        (lambda (_%$%g261106261199%_
                                                 _%$%g261107261200%_)
                                          (let* ((_%optimized-rator-id261227%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%$%g261107261200%_)))
                                                 (_%rator-type261232%_
                                                  (let ((_%$e261229%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id261227%_))))
                                                    (if _%$e261229%_
                                                        _%$e261229%_
                                                        _%rator-type261086%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type261232%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id261227%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type261232%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type261232%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized261101%_
                                                (let ((__tmp262199
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%$%g261107261200%_ '()))
                           (let ((__tmp262200
                                  (lambda (_%$%g261240261243%_
                                           _%$%g261241261245%_)
                                    (cons _%$%g261240261243%_
                                          _%$%g261241261245%_))))
                             (declare (not safe))
                             (foldr__0
                              __tmp262200
                              '()
                              _%$%g261106261199%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp262199
                                                   _%stx260416%_))))))
                                       (_%__kont261381261382%_
                                        (lambda () _%optimized261101%_)))
                                   (let ((_%__match261424261425%_
                                          (lambda (_%$%e261108261145%_
                                                   _%$%hd261109261148%_
                                                   _%$%tl261110261150%_
                                                   _%$%e261111261153%_
                                                   _%$%hd261112261156%_
                                                   _%$%tl261113261158%_
                                                   _%$%e261114261161%_
                                                   _%$%hd261115261164%_
                                                   _%$%tl261116261166%_
                                                   _%$%e261117261169%_
                                                   _%$%hd261118261172%_
                                                   _%$%tl261119261174%_
                                                   _%__splice261379261380%_
                                                   _%$%target261120261177%_
                                                   _%$%tl261122261179%_)
                                            (letrec ((_%$%loop261123261182%_
                                                      (lambda (_%$%hd261121261185%_
                                                               _%$%arg261127261187%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd261121261185%_))
                                                            (let ((_%$%e261124261189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd261121261185%_))))
                      (let ((_%$%lp-tl261126261194%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e261124261189%_)))
                            (_%$%lp-hd261125261192%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e261124261189%_))))
                        (_%$%loop261123261182%_
                         _%$%lp-tl261126261194%_
                         (cons _%$%lp-hd261125261192%_
                               _%$%arg261127261187%_))))
                    (let ((_%$%arg261128261197%_
                           (reverse _%$%arg261127261187%_)))
                      (_%__kont261377261378%_
                       _%$%arg261128261197%_
                       _%$%hd261118261172%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop261123261182%_
                                               _%$%target261120261177%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx261375261376%_))
                                         (let ((_%$%e261108261145%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx261375261376%_))))
                                           (let ((_%$%tl261110261150%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e261108261145%_)))
                                                 (_%$%hd261109261148%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e261108261145%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%$%hd261109261148%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%$%hd261109261148%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl261110261150%_))
                                                         (let ((_%$%e261111261153%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl261110261150%_))))
                   (let ((_%$%tl261113261158%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e261111261153%_)))
                         (_%$%hd261112261156%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e261111261153%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%hd261112261156%_))
                         (let ((_%$%e261114261161%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%hd261112261156%_))))
                           (let ((_%$%tl261116261166%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e261114261161%_)))
                                 (_%$%hd261115261164%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e261114261161%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%hd261115261164%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq?
                                        '%#ref
                                        _%$%hd261115261164%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%tl261116261166%_))
                                         (let ((_%$%e261117261169%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%tl261116261166%_))))
                                           (let ((_%$%tl261119261174%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e261117261169%_)))
                                                 (_%$%hd261118261172%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e261117261169%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%$%tl261119261174%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%$%tl261113261158%_))
                                                     (let ((_%__splice261379261380%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%$%tl261113261158%_
                                                               '0))))
                                                       (let ((_%$%tl261122261179%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice261379261380%_ '1)))
                     (_%$%target261120261177%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice261379261380%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl261122261179%_))
                     (_%__match261424261425%_
                      _%$%e261108261145%_
                      _%$%hd261109261148%_
                      _%$%tl261110261150%_
                      _%$%e261111261153%_
                      _%$%hd261112261156%_
                      _%$%tl261113261158%_
                      _%$%e261114261161%_
                      _%$%hd261115261164%_
                      _%$%tl261116261166%_
                      _%$%e261117261169%_
                      _%$%hd261118261172%_
                      _%$%tl261119261174%_
                      _%__splice261379261380%_
                      _%$%target261120261177%_
                      _%$%tl261122261179%_)
                     (_%__kont261381261382%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont261381261382%_))
                                                 (_%__kont261381261382%_))))
                                         (_%__kont261381261382%_))
                                     (_%__kont261381261382%_))
                                 (_%__kont261381261382%_))))
                         (_%__kont261381261382%_))))
                 (_%__kont261381261382%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont261381261382%_))
                                                 (_%__kont261381261382%_))))
                                         (_%__kont261381261382%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type261086%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type261086%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp262201
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%$%g260423261064%_
                                                                '()))
                                                    (map (lambda (_%$%g261251261253%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self260415%_
                                                              _%$%g261251261253%_)))
                                                         (let ((__tmp262202
                                                                (lambda (_%$%g261255261258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g261256261260%_)
                          (cons _%$%g261255261258%_ _%$%g261256261260%_))))
                   (declare (not safe))
                   (foldr__0 __tmp262202 '() _%$%g260422261063%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp262201
                                    _%stx260416%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx260416%_
                                    _%rator-type261086%_))))))))
                (_%__kont261433261434%_
                 (lambda (_%$%g260445260671%_
                          _%$%g260446260672%_
                          _%$%g260447260673%_)
                   (let _%loop260791%_ ((_%rest-arg260793%_
                                         (let ((__tmp262209
                                                (lambda (_%$%g260989260992%_
                                                         _%$%g260990260994%_)
                                                  (cons _%$%g260989260992%_
                                                        _%$%g260990260994%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp262209
                                            '()
                                            _%$%g260447260673%_)))
                                        (_%rest-rand260794%_
                                         (let ((__tmp262210
                                                (lambda (_%$%g260996260999%_
                                                         _%$%g260997261001%_)
                                                  (cons _%$%g260996260999%_
                                                        _%$%g260997261001%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp262210
                                            '()
                                            _%$%g260445260671%_)))
                                        (_%bind260795%_ '())
                                        (_%subst260796%_ '()))
                     (let* ((_%$%rest-arg260797260805%_ _%rest-arg260793%_)
                            (_%$%else260799260818%_
                             (lambda ()
                               (let* ((_%body260813%_
                                       (if (null? _%subst260796%_)
                                           _%$%g260446260672%_
                                           (let ((__tmp262203
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-inline-subst__%
                                                     '#f
                                                     _%subst260796%_
                                                     _%$%g260446260672%_))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp262203
                                              _%stx260416%_))))
                                      (_%expr260815%_
                                       (let ((__tmp262204
                                              (cons '%#let-values
                                                    (cons _%bind260795%_
                                                          (cons _%body260813%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp262204
                                          _%stx260416%_))))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-refine-type-info _%expr260815%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self260415%_
                                    _%expr260815%_)))))
                            (_%$%K260801260978%_
                             (lambda (_%rest-arg260821%_ _%arg-id260822%_)
                               (let* ((_%$%rest-rand260823260831%_
                                       _%rest-rand260794%_)
                                      (_%$%else260825260853%_
                                       (lambda ()
                                         (let ((__tmp262207
                                                (let ((__tmp262208
                                                       (lambda (_%$%g260838260841%_
                                                                _%$%g260839260843%_)
                                                         (cons _%$%g260838260841%_
                                                               _%$%g260839260843%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp262208
                                                   '()
                                                   _%$%g260447260673%_)))
                                               (__tmp262205
                                                (let ((__tmp262206
                                                       (lambda (_%$%g260845260848%_
                                                                _%$%g260846260850%_)
                                                         (cons _%$%g260845260848%_
                                                               _%$%g260846260850%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp262206
                                                   '()
                                                   _%$%g260445260671%_))))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"inline lambda arity mismatch"
                                            _%stx260416%_
                                            __tmp262207
                                            __tmp262205))))
                                      (_%$%K260827260966%_
                                       (lambda (_%rest-rand260856%_
                                                _%rand260857%_)
                                         (let* ((_%__stx261329261330%_
                                                 _%rand260857%_)
                                                (_%$%g260861260881%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx261329261330%_)))))
                                           (let ((_%__kont261331261332%_
                                                  (lambda (_%$%g260863260952%_)
                                                    (_%loop260791%_
                                                     _%rest-arg260821%_
                                                     _%rest-rand260856%_
                                                     _%bind260795%_
                                                     (cons (cons _%arg-id260822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand260857%_)
                   _%subst260796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont261333261334%_
                                                  (lambda (_%$%g260870260909%_)
                                                    (_%loop260791%_
                                                     _%rest-arg260821%_
                                                     _%rest-rand260856%_
                                                     _%bind260795%_
                                                     (cons (cons _%arg-id260822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand260857%_)
                   _%subst260796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont261335261336%_
                                                  (lambda ()
                                                    (_%loop260791%_
                                                     _%rest-arg260821%_
                                                     _%rest-rand260856%_
                                                     (cons (cons (cons _%arg-id260822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _%rand260857%_ '()))
                   _%bind260795%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%subst260796%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx261329261330%_))
                                                 (let ((_%$%e260864260936%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx261329261330%_))))
                                                   (let ((_%$%tl260866260941%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e260864260936%_)))
                                                         (_%$%hd260865260939%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e260864260936%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%$%hd260865260939%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#quote _%$%hd260865260939%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl260866260941%_))
                         (let ((_%$%e260867260944%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl260866260941%_))))
                           (let ((_%$%tl260869260949%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e260867260944%_)))
                                 (_%$%hd260868260947%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e260867260944%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl260869260949%_))
                                 (_%__kont261331261332%_ _%$%hd260868260947%_)
                                 (_%__kont261335261336%_))))
                         (_%__kont261335261336%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#ref _%$%hd260865260939%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl260866260941%_))
                             (let ((_%$%e260874260901%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl260866260941%_))))
                               (let ((_%$%tl260876260906%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e260874260901%_)))
                                     (_%$%hd260875260904%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e260874260901%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl260876260906%_))
                                     (_%__kont261333261334%_
                                      _%$%hd260875260904%_)
                                     (_%__kont261335261336%_))))
                             (_%__kont261335261336%_))
                         (_%__kont261335261336%_)))
                 (_%__kont261335261336%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont261335261336%_)))))))
                                 (if (pair? _%$%rest-rand260823260831%_)
                                     (let ((_%$%hd260828260969%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%rest-rand260823260831%_)))
                                           (_%$%tl260829260971%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%rest-rand260823260831%_))))
                                       (let* ((_%rand260974%_
                                               _%$%hd260828260969%_)
                                              (_%rest-rand260976%_
                                               _%$%tl260829260971%_))
                                         (_%$%K260827260966%_
                                          _%rest-rand260976%_
                                          _%rand260974%_)))
                                     (_%$%else260825260853%_))))))
                       (if (pair? _%$%rest-arg260797260805%_)
                           (let ((_%$%hd260802260981%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest-arg260797260805%_)))
                                 (_%$%tl260803260983%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest-arg260797260805%_))))
                             (let* ((_%arg-id260986%_ _%$%hd260802260981%_)
                                    (_%rest-arg260988%_ _%$%tl260803260983%_))
                               (_%$%K260801260978%_
                                _%rest-arg260988%_
                                _%arg-id260986%_)))
                           (_%$%else260799260818%_))))))
                (_%__kont261439261440%_
                 (lambda (_%$%g260481260545%_ _%$%g260482260546%_)
                   (let ((_%rator-type260563%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%$%g260482260546%_))))
                     (if (and _%rator-type260563%_
                              (eq? (##structure-ref
                                    _%rator-type260563%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type260563%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type260563%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type260563%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp262211
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self260415%_
                                               _%$%g260482260546%_))
                                            (map (lambda (_%$%g260565260567%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self260415%_
                                                      _%$%g260565260567%_)))
                                                 (let ((__tmp262212
                                                        (lambda (_%$%g260569260572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g260570260574%_)
                  (cons _%$%g260569260572%_ _%$%g260570260574%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp262212
                                                    '()
                                                    _%$%g260481260545%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp262211 _%stx260416%_))
                         (if (or (not _%rator-type260563%_)
                                 (let ((__tmp262213
                                        (##structure-ref
                                         _%rator-type260563%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp262213 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self260415%_ _%stx260416%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx260416%_
                                _%rator-type260563%_))))))))
            (let* ((_%__match261536261537%_
                    (lambda (_%$%e260483260507%_
                             _%$%hd260484260510%_
                             _%$%tl260485260512%_
                             _%$%e260486260515%_
                             _%$%hd260487260518%_
                             _%$%tl260488260520%_
                             _%__splice261441261442%_
                             _%$%target260489260523%_
                             _%$%tl260491260525%_)
                      (letrec ((_%$%loop260492260528%_
                                (lambda (_%$%hd260490260531%_
                                         _%$%rand260496260533%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd260490260531%_))
                                      (let ((_%$%e260493260535%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd260490260531%_))))
                                        (let ((_%$%lp-tl260495260540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e260493260535%_)))
                                              (_%$%lp-hd260494260538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e260493260535%_))))
                                          (_%$%loop260492260528%_
                                           _%$%lp-tl260495260540%_
                                           (cons _%$%lp-hd260494260538%_
                                                 _%$%rand260496260533%_))))
                                      (let ((_%$%rand260497260543%_
                                             (reverse _%$%rand260496260533%_)))
                                        (_%__kont261439261440%_
                                         _%$%rand260497260543%_
                                         _%$%hd260487260518%_))))))
                        (_%$%loop260492260528%_
                         _%$%target260489260523%_
                         '()))))
                   (_%__match261528261529%_
                    (lambda (_%$%e260483260507%_
                             _%$%hd260484260510%_
                             _%$%tl260485260512%_
                             _%$%e260486260515%_
                             _%$%hd260487260518%_
                             _%$%tl260488260520%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl260488260520%_))
                          (let ((_%__splice261441261442%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl260488260520%_
                                    '0))))
                            (let ((_%$%tl260491260525%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice261441261442%_
                                      '1)))
                                  (_%$%target260489260523%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice261441261442%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl260491260525%_))
                                  (_%__match261536261537%_
                                   _%$%e260483260507%_
                                   _%$%hd260484260510%_
                                   _%$%tl260485260512%_
                                   _%$%e260486260515%_
                                   _%$%hd260487260518%_
                                   _%$%tl260488260520%_
                                   _%__splice261441261442%_
                                   _%$%target260489260523%_
                                   _%$%tl260491260525%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g260420260502%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g260420260502%_)))))
                   (_%__match261516261517%_
                    (lambda (_%$%e260448260587%_
                             _%$%hd260449260590%_
                             _%$%tl260450260592%_
                             _%$%e260451260595%_
                             _%$%hd260452260598%_
                             _%$%tl260453260600%_
                             _%$%e260454260603%_
                             _%$%hd260455260606%_
                             _%$%tl260456260608%_
                             _%$%e260457260611%_
                             _%$%hd260458260614%_
                             _%$%tl260459260616%_
                             _%__splice261435261436%_
                             _%$%target260460260619%_
                             _%$%tl260462260621%_)
                      (letrec ((_%$%loop260463260624%_
                                (lambda (_%$%hd260461260627%_
                                         _%$%arg260467260629%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd260461260627%_))
                                      (let ((_%$%e260464260631%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd260461260627%_))))
                                        (let ((_%$%lp-tl260466260636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e260464260631%_)))
                                              (_%$%lp-hd260465260634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e260464260631%_))))
                                          (_%$%loop260463260624%_
                                           _%$%lp-tl260466260636%_
                                           (cons _%$%lp-hd260465260634%_
                                                 _%$%arg260467260629%_))))
                                      (let ((_%$%arg260468260639%_
                                             (reverse _%$%arg260467260629%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl260459260616%_))
                                            (let ((_%$%e260469260641%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl260459260616%_))))
                                              (let ((_%$%tl260471260646%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e260469260641%_)))
                                                    (_%$%hd260470260644%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e260469260641%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl260471260646%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl260453260600%_))
                                                        (let ((_%__splice261437261438%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl260453260600%_
                          '0))))
                  (let ((_%$%tl260474260651%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice261437261438%_ '1)))
                        (_%$%target260472260649%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice261437261438%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl260474260651%_))
                        (letrec ((_%$%loop260475260654%_
                                  (lambda (_%$%hd260473260657%_
                                           _%$%rand260479260659%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd260473260657%_))
                                        (let ((_%$%e260476260661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd260473260657%_))))
                                          (let ((_%$%lp-tl260478260666%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e260476260661%_)))
                                                (_%$%lp-hd260477260664%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e260476260661%_))))
                                            (_%$%loop260475260654%_
                                             _%$%lp-tl260478260666%_
                                             (cons _%$%lp-hd260477260664%_
                                                   _%$%rand260479260659%_))))
                                        (let ((_%$%rand260480260669%_
                                               (reverse _%$%rand260479260659%_)))
                                          (let ((_%$%g260445260671%_
                                                 _%$%rand260480260669%_)
                                                (_%$%g260446260672%_
                                                 _%$%hd260470260644%_)
                                                (_%$%g260447260673%_
                                                 _%$%arg260468260639%_))
                                            (if (and (= (length (let ((__tmp262214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%$%g260699260702%_
                                        _%$%g260700260704%_)
                                 (cons _%$%g260699260702%_
                                       _%$%g260700260704%_))))
                          (declare (not safe))
                          (foldr__0 __tmp262214 '() _%$%g260447260673%_)))
                (length (let ((__tmp262215
                               (lambda (_%$%g260706260709%_
                                        _%$%g260707260711%_)
                                 (cons _%$%g260706260709%_
                                       _%$%g260707260711%_))))
                          (declare (not safe))
                          (foldr__0 __tmp262215 '() _%$%g260445260671%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp262218
                                                            (lambda (_%id260714%_)
                                                              (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gxc#mutable-binding? _%id260714%_)))))
                   (__tmp262216
                    (let ((__tmp262217
                           (lambda (_%$%g260715260718%_ _%$%g260716260720%_)
                             (cons _%$%g260715260718%_ _%$%g260716260720%_))))
                      (declare (not safe))
                      (foldr__0 __tmp262217 '() _%$%g260447260673%_))))
               (declare (not safe))
               (andmap__0 __tmp262218 __tmp262216))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp262221
                                                            (lambda (_%rand260723%_)
                                                              (let* ((_%__stx261303261304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%rand260723%_)
                             (_%$%g260726260739%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx261303261304%_)))))
                        (let ((_%__kont261305261306%_
                               (lambda (_%$%g260728260767%_)
                                 (not (let ()
                                        (declare (not safe))
                                        (gxc#mutable-binding?
                                         _%$%g260728260767%_)))))
                              (_%__kont261307261308%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx261303261304%_))
                              (let ((_%$%e260729260751%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx261303261304%_))))
                                (let ((_%$%tl260731260756%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e260729260751%_)))
                                      (_%$%hd260730260754%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e260729260751%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd260730260754%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd260730260754%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl260731260756%_))
                                              (let ((_%$%e260732260759%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl260731260756%_))))
                                                (let ((_%$%tl260734260764%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e260732260759%_)))
                                                      (_%$%hd260733260762%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e260732260759%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl260734260764%_))
                                                      (_%__kont261305261306%_
                                                       _%$%hd260733260762%_)
                                                      (_%__kont261307261308%_))))
                                              (_%__kont261307261308%_))
                                          (_%__kont261307261308%_))
                                      (_%__kont261307261308%_))))
                              (_%__kont261307261308%_))))))
                   (__tmp262219
                    (let ((__tmp262220
                           (lambda (_%$%g260783260786%_ _%$%g260784260788%_)
                             (cons _%$%g260783260786%_ _%$%g260784260788%_))))
                      (declare (not safe))
                      (foldr__0 __tmp262220 '() _%$%g260445260671%_))))
               (declare (not safe))
               (andmap__0 __tmp262221 __tmp262219)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont261433261434%_
                                                 _%$%g260445260671%_
                                                 _%$%g260446260672%_
                                                 _%$%g260447260673%_)
                                                (_%__match261536261537%_
                                                 _%$%e260448260587%_
                                                 _%$%hd260449260590%_
                                                 _%$%tl260450260592%_
                                                 _%$%e260451260595%_
                                                 _%$%hd260452260598%_
                                                 _%$%tl260453260600%_
                                                 _%__splice261437261438%_
                                                 _%$%target260472260649%_
                                                 _%$%tl260474260651%_))))))))
                          (_%$%loop260475260654%_
                           _%$%target260472260649%_
                           '()))
                        (let () (declare (not safe)) (_%$%g260420260502%_)))))
                (let () (declare (not safe)) (_%$%g260420260502%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match261528261529%_
                                                     _%$%e260448260587%_
                                                     _%$%hd260449260590%_
                                                     _%$%tl260450260592%_
                                                     _%$%e260451260595%_
                                                     _%$%hd260452260598%_
                                                     _%$%tl260453260600%_))))
                                            (_%__match261528261529%_
                                             _%$%e260448260587%_
                                             _%$%hd260449260590%_
                                             _%$%tl260450260592%_
                                             _%$%e260451260595%_
                                             _%$%hd260452260598%_
                                             _%$%tl260453260600%_)))))))
                        (_%$%loop260463260624%_
                         _%$%target260460260619%_
                         '()))))
                   (_%__match261480261481%_
                    (lambda (_%$%e260424261009%_
                             _%$%hd260425261012%_
                             _%$%tl260426261014%_
                             _%$%e260427261017%_
                             _%$%hd260428261020%_
                             _%$%tl260429261022%_
                             _%$%e260430261025%_
                             _%$%hd260431261028%_
                             _%$%tl260432261030%_
                             _%$%e260433261033%_
                             _%$%hd260434261036%_
                             _%$%tl260435261038%_
                             _%__splice261431261432%_
                             _%$%target260436261041%_
                             _%$%tl260438261043%_)
                      (letrec ((_%$%loop260439261046%_
                                (lambda (_%$%hd260437261049%_
                                         _%$%rand260443261051%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd260437261049%_))
                                      (let ((_%$%e260440261053%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd260437261049%_))))
                                        (let ((_%$%lp-tl260442261058%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e260440261053%_)))
                                              (_%$%lp-hd260441261056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e260440261053%_))))
                                          (_%$%loop260439261046%_
                                           _%$%lp-tl260442261058%_
                                           (cons _%$%lp-hd260441261056%_
                                                 _%$%rand260443261051%_))))
                                      (let ((_%$%rand260444261061%_
                                             (reverse _%$%rand260443261051%_)))
                                        (_%__kont261429261430%_
                                         _%$%rand260444261061%_
                                         _%$%hd260434261036%_))))))
                        (_%$%loop260439261046%_
                         _%$%target260436261041%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx261427261428%_))
                  (let ((_%$%e260424261009%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx261427261428%_))))
                    (let ((_%$%tl260426261014%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e260424261009%_)))
                          (_%$%hd260425261012%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e260424261009%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl260426261014%_))
                          (let ((_%$%e260427261017%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl260426261014%_))))
                            (let ((_%$%tl260429261022%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e260427261017%_)))
                                  (_%$%hd260428261020%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e260427261017%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd260428261020%_))
                                  (let ((_%$%e260430261025%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd260428261020%_))))
                                    (let ((_%$%tl260432261030%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e260430261025%_)))
                                          (_%$%hd260431261028%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e260430261025%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd260431261028%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd260431261028%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl260432261030%_))
                                                  (let ((_%$%e260433261033%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl260432261030%_))))
                                                    (let ((_%$%tl260435261038%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e260433261033%_)))
                                                          (_%$%hd260434261036%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e260433261033%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl260435261038%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl260429261022%_))
                      (let ((_%__splice261431261432%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl260429261022%_
                                '0))))
                        (let ((_%$%tl260438261043%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice261431261432%_ '1)))
                              (_%$%target260436261041%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice261431261432%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl260438261043%_))
                              (_%__match261480261481%_
                               _%$%e260424261009%_
                               _%$%hd260425261012%_
                               _%$%tl260426261014%_
                               _%$%e260427261017%_
                               _%$%hd260428261020%_
                               _%$%tl260429261022%_
                               _%$%e260430261025%_
                               _%$%hd260431261028%_
                               _%$%tl260432261030%_
                               _%$%e260433261033%_
                               _%$%hd260434261036%_
                               _%$%tl260435261038%_
                               _%__splice261431261432%_
                               _%$%target260436261041%_
                               _%$%tl260438261043%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g260420260502%_)))))
                      (let () (declare (not safe)) (_%$%g260420260502%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl260429261022%_))
                      (let ((_%__splice261441261442%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl260429261022%_
                                '0))))
                        (let ((_%$%tl260491260525%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice261441261442%_ '1)))
                              (_%$%target260489260523%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice261441261442%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl260491260525%_))
                              (_%__match261536261537%_
                               _%$%e260424261009%_
                               _%$%hd260425261012%_
                               _%$%tl260426261014%_
                               _%$%e260427261017%_
                               _%$%hd260428261020%_
                               _%$%tl260429261022%_
                               _%__splice261441261442%_
                               _%$%target260489260523%_
                               _%$%tl260491260525%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g260420260502%_)))))
                      (let () (declare (not safe)) (_%$%g260420260502%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl260429261022%_))
                                                      (let ((_%__splice261441261442%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl260429261022%_
                        '0))))
                (let ((_%$%tl260491260525%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice261441261442%_ '1)))
                      (_%$%target260489260523%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice261441261442%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl260491260525%_))
                      (_%__match261536261537%_
                       _%$%e260424261009%_
                       _%$%hd260425261012%_
                       _%$%tl260426261014%_
                       _%$%e260427261017%_
                       _%$%hd260428261020%_
                       _%$%tl260429261022%_
                       _%__splice261441261442%_
                       _%$%target260489260523%_
                       _%$%tl260491260525%_)
                      (let () (declare (not safe)) (_%$%g260420260502%_)))))
              (let () (declare (not safe)) (_%$%g260420260502%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#lambda
                                                     _%$%hd260431261028%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl260432261030%_))
                                                      (let ((_%$%e260457260611%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl260432261030%_))))
                (let ((_%$%tl260459260616%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e260457260611%_)))
                      (_%$%hd260458260614%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e260457260611%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%hd260458260614%_))
                      (let ((_%__splice261435261436%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%hd260458260614%_
                                '0))))
                        (let ((_%$%tl260462260621%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice261435261436%_ '1)))
                              (_%$%target260460260619%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice261435261436%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl260462260621%_))
                              (_%__match261516261517%_
                               _%$%e260424261009%_
                               _%$%hd260425261012%_
                               _%$%tl260426261014%_
                               _%$%e260427261017%_
                               _%$%hd260428261020%_
                               _%$%tl260429261022%_
                               _%$%e260430261025%_
                               _%$%hd260431261028%_
                               _%$%tl260432261030%_
                               _%$%e260457260611%_
                               _%$%hd260458260614%_
                               _%$%tl260459260616%_
                               _%__splice261435261436%_
                               _%$%target260460260619%_
                               _%$%tl260462260621%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _%$%tl260429261022%_))
                                  (let ((_%__splice261441261442%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice->vector
                                            _%$%tl260429261022%_
                                            '0))))
                                    (let ((_%$%tl260491260525%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice261441261442%_
                                              '1)))
                                          (_%$%target260489260523%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice261441261442%_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl260491260525%_))
                                          (_%__match261536261537%_
                                           _%$%e260424261009%_
                                           _%$%hd260425261012%_
                                           _%$%tl260426261014%_
                                           _%$%e260427261017%_
                                           _%$%hd260428261020%_
                                           _%$%tl260429261022%_
                                           _%__splice261441261442%_
                                           _%$%target260489260523%_
                                           _%$%tl260491260525%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g260420260502%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g260420260502%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl260429261022%_))
                          (let ((_%__splice261441261442%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl260429261022%_
                                    '0))))
                            (let ((_%$%tl260491260525%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice261441261442%_
                                      '1)))
                                  (_%$%target260489260523%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice261441261442%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl260491260525%_))
                                  (_%__match261536261537%_
                                   _%$%e260424261009%_
                                   _%$%hd260425261012%_
                                   _%$%tl260426261014%_
                                   _%$%e260427261017%_
                                   _%$%hd260428261020%_
                                   _%$%tl260429261022%_
                                   _%__splice261441261442%_
                                   _%$%target260489260523%_
                                   _%$%tl260491260525%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g260420260502%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g260420260502%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl260429261022%_))
                  (let ((_%__splice261441261442%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl260429261022%_
                            '0))))
                    (let ((_%$%tl260491260525%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice261441261442%_ '1)))
                          (_%$%target260489260523%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice261441261442%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl260491260525%_))
                          (_%__match261536261537%_
                           _%$%e260424261009%_
                           _%$%hd260425261012%_
                           _%$%tl260426261014%_
                           _%$%e260427261017%_
                           _%$%hd260428261020%_
                           _%$%tl260429261022%_
                           _%__splice261441261442%_
                           _%$%target260489260523%_
                           _%$%tl260491260525%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g260420260502%_)))))
                  (let () (declare (not safe)) (_%$%g260420260502%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl260429261022%_))
                                                      (let ((_%__splice261441261442%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl260429261022%_
                        '0))))
                (let ((_%$%tl260491260525%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice261441261442%_ '1)))
                      (_%$%target260489260523%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice261441261442%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl260491260525%_))
                      (_%__match261536261537%_
                       _%$%e260424261009%_
                       _%$%hd260425261012%_
                       _%$%tl260426261014%_
                       _%$%e260427261017%_
                       _%$%hd260428261020%_
                       _%$%tl260429261022%_
                       _%__splice261441261442%_
                       _%$%target260489260523%_
                       _%$%tl260491260525%_)
                      (let () (declare (not safe)) (_%$%g260420260502%_)))))
              (let () (declare (not safe)) (_%$%g260420260502%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl260429261022%_))
                                              (let ((_%__splice261441261442%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl260429261022%_
                                                        '0))))
                                                (let ((_%$%tl260491260525%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice261441261442%_
                                                          '1)))
                                                      (_%$%target260489260523%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice261441261442%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl260491260525%_))
                                                      (_%__match261536261537%_
                                                       _%$%e260424261009%_
                                                       _%$%hd260425261012%_
                                                       _%$%tl260426261014%_
                                                       _%$%e260427261017%_
                                                       _%$%hd260428261020%_
                                                       _%$%tl260429261022%_
                                                       _%__splice261441261442%_
                                                       _%$%target260489260523%_
                                                       _%$%tl260491260525%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g260420260502%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g260420260502%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl260429261022%_))
                                      (let ((_%__splice261441261442%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl260429261022%_
                                                '0))))
                                        (let ((_%$%tl260491260525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice261441261442%_
                                                  '1)))
                                              (_%$%target260489260523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice261441261442%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl260491260525%_))
                                              (_%__match261536261537%_
                                               _%$%e260424261009%_
                                               _%$%hd260425261012%_
                                               _%$%tl260426261014%_
                                               _%$%e260427261017%_
                                               _%$%hd260428261020%_
                                               _%$%tl260429261022%_
                                               _%__splice261441261442%_
                                               _%$%target260489260523%_
                                               _%$%tl260491260525%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g260420260502%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g260420260502%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g260420260502%_)))))
                  (let () (declare (not safe)) (_%$%g260420260502%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self260377%_ _%ctx260378%_ _%stx260379%_ _%args260380%_)
        (let ((_%self260383%_ _%self260377%_))
          (if (let ((__method262184
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self260383%_ 'check-arguments))))
                (if __method262184
                    (let ()
                      (declare (not safe))
                      (__method262184
                       _%self260383%_
                       _%ctx260378%_
                       _%stx260379%_
                       _%args260380%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self260383%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature260393%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self260383%_ '2 '#f '#f)))
                     (_%signature260395%_ _%signature260393%_)
                     (_%$e260405%_
                      (if _%signature260395%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature260395%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e260405%_
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%$e260405%_))
                        (let ((__tmp262222
                               (cons '%#call
                                     (cons (cons '%#ref
                                                 (cons _%$e260405%_ '()))
                                           (map (lambda (_%$%g260409260411%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx260378%_
                                                     _%$%g260409260411%_)))
                                                _%args260380%_)))))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp262222
                           _%stx260379%_
                           _%ctx260378%_))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx260378%_ _%stx260379%_)))
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx260378%_ _%stx260379%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx260378%_ _%stx260379%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass261288 __method-table261289)
        (let ((__check-arguments261290
               (let ((__tmp262223
                      (lambda ()
                        (let ((__method261291
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table261289
                                  'check-arguments
                                  '#f))))
                          (if __method261291
                              __method261291
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp262223))))
          (lambda (_%self260377%_ _%ctx260378%_ _%stx260379%_ _%args260380%_)
            (let ((_%self260383%_ _%self260377%_))
              (if ((force __check-arguments261290)
                   _%self260383%_
                   _%ctx260378%_
                   _%stx260379%_
                   _%args260380%_)
                  (let* ((_%signature260393%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self260383%_
                             '2
                             '#f
                             '#f)))
                         (_%signature260395%_ _%signature260393%_)
                         (_%$e260405%_
                          (if _%signature260395%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature260395%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e260405%_
                        (if (let ()
                              (declare (not safe))
                              (gxc#symbol-in-local-scope? _%$e260405%_))
                            (let ((__tmp262224
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%$e260405%_ '()))
                                               (map (lambda (_%$%g260409260411%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%ctx260378%_
                                                         _%$%g260409260411%_)))
                                                    _%args260380%_)))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp262224
                               _%stx260379%_
                               _%ctx260378%_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _%ctx260378%_ _%stx260379%_)))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx260378%_ _%stx260379%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx260378%_ _%stx260379%_))))))))
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
      (lambda (_%self260130%_ _%ctx260131%_ _%stx260132%_ _%args260133%_)
        (let* ((_%self260136%_ _%self260130%_)
               (_%$%signature260145260147%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self260136%_ '2 '#f '#f))))
          (if _%$%signature260145260147%_
              (let* ((_%signature260149%_ _%$%signature260145260147%_)
                     (_%$%argument-types260150260152%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature260149%_
                         '3
                         '#f
                         '#f))))
                (if _%$%argument-types260150260152%_
                    (let* ((_%argument-types260154%_
                            _%$%argument-types260150260152%_)
                           (_%argument-types260159%_
                            (let ((__tmp262225
                                   (lambda (_%t260157%_)
                                     (if _%t260157%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx260132%_
                                            _%t260157%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp262225
                               _%argument-types260154%_))))
                      (let _%loop260161%_ ((_%rest-args260163%_ _%args260133%_)
                                           (_%rest-types260164%_
                                            _%argument-types260159%_)
                                           (_%result260165%_ '#t))
                        (let* ((_%$%rest-args260166260174%_
                                _%rest-args260163%_)
                               (_%$%else260168260182%_
                                (lambda () _%result260165%_))
                               (_%$%K260170260243%_
                                (lambda (_%rest-args260185%_ _%arg260186%_)
                                  (let* ((_%$%rest-types260187260198%_
                                          _%rest-types260164%_)
                                         (_%$%E260191260202%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-types260187260198%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%$%K260194260231%_
                                           (lambda (_%rest-types260228%_
                                                    _%type260229%_)
                                             (_%loop260161%_
                                              _%rest-args260185%_
                                              _%rest-types260228%_
                                              (if (gxc#check-expression-type!
                                                   _%stx260132%_
                                                   _%arg260186%_
                                                   _%type260229%_)
                                                  _%result260165%_
                                                  '#f))))
                                          (_%$%K260193260222%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx260132%_
                                                _%argument-types260159%_))))
                                          (_%$%K260192260212%_
                                           (lambda (_%tail-type260206%_)
                                             (if (let ((__tmp262226
                                                        (lambda (_%$%g260207260209%_)
                                                          (gxc#check-expression-type!
                                                           _%stx260132%_
                                                           _%$%g260207260209%_
                                                           _%tail-type260206%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp262226
                                                    _%rest-args260185%_))
                                                 _%result260165%_
                                                 '#f))))
                                      (let ((_%$%try-match260189260225%_
                                             (lambda ()
                                               (if (null? _%$%rest-types260187260198%_)
                                                   (_%$%K260193260222%_)
                                                   (let ((_%tail-type260215%_
                                                          _%$%rest-types260187260198%_))
                                                     (_%$%K260192260212%_
                                                      _%tail-type260215%_))))))
                                        (if (pair? _%$%rest-types260187260198%_)
                                            (let ((_%$%tl260196260236%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%rest-types260187260198%_)))
                                                  (_%$%hd260195260234%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%rest-types260187260198%_))))
                                              (let ((_%type260239%_
                                                     _%$%hd260195260234%_)
                                                    (_%rest-types260241%_
                                                     _%$%tl260196260236%_))
                                                (_%$%K260194260231%_
                                                 _%rest-types260241%_
                                                 _%type260239%_)))
                                            (_%$%try-match260189260225%_))))))))
                          (if (pair? _%$%rest-args260166260174%_)
                              (let ((_%$%hd260171260246%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest-args260166260174%_)))
                                    (_%$%tl260172260248%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest-args260166260174%_))))
                                (let* ((_%arg260251%_ _%$%hd260171260246%_)
                                       (_%rest-args260253%_
                                        _%$%tl260172260248%_))
                                  (_%$%K260170260243%_
                                   _%rest-args260253%_
                                   _%arg260251%_)))
                              (_%$%else260168260182%_)))))
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
      (lambda (_%self259933%_ _%ctx259934%_ _%stx259935%_ _%args259936%_)
        (let* ((_%self259939%_ _%self259933%_)
               (_%$%g259949259959%_
                (lambda (_%$%g259950259956%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g259950259956%_))))
               (_%$%g259948260005%_
                (lambda (_%$%g259950259962%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g259950259962%_))
                      (let ((_%$%e259952259964%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g259950259962%_))))
                        (let ((_%$%hd259953259967%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e259952259964%_)))
                              (_%$%tl259954259969%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e259952259964%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl259954259969%_))
                              (let* ((_%klass259984%_
                                      (let ((__tmp262227
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self259939%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx259935%_
                                         __tmp262227)))
                                     (_%object259986%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx259934%_
                                         _%$%hd259953259967%_)))
                                     (_%instance?259991%_
                                      (let ((_%$e259988%_
                                             (gxc#expression-type?
                                              _%object259986%_
                                              _%klass259984%_)))
                                        (if _%$e259988%_
                                            _%$e259988%_
                                            (gxc#expression-type?
                                             _%$%hd259953259967%_
                                             _%klass259984%_))))
                                     (_%incompatible?259996%_
                                      (let ((_%$e259993%_
                                             (gxc#incompatible-type?
                                              _%object259986%_
                                              _%klass259984%_)))
                                        (if _%$e259993%_
                                            _%$e259993%_
                                            (gxc#incompatible-type?
                                             _%$%hd259953259967%_
                                             _%klass259984%_)))))
                                (if _%instance?259991%_
                                    (let ((__tmp262228
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object259986%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd259953259967%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object259986%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp262228
                                       _%stx259935%_))
                                    (if _%incompatible?259996%_
                                        (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#xform-call%
                                           _%ctx259934%_
                                           _%stx259935%_)))))
                              (_%$%g259949259959%_ _%$%g259950259962%_))))
                      (_%$%g259949259959%_ _%$%g259950259962%_)))))
          (_%$%g259948260005%_ _%args259936%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self259722%_ _%ctx259723%_ _%stx259724%_ _%args259725%_)
        (let* ((_%self259728%_ _%self259722%_)
               (_%$%g259738259748%_
                (lambda (_%$%g259739259745%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g259739259745%_))))
               (_%$%g259737259808%_
                (lambda (_%$%g259739259751%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g259739259751%_))
                      (let ((_%$%e259741259753%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g259739259751%_))))
                        (let ((_%$%hd259742259756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e259741259753%_)))
                              (_%$%tl259743259758%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e259741259753%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl259743259758%_))
                              (let* ((_%klass259773%_
                                      (let ((__tmp262229
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self259728%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx259724%_
                                         __tmp262229)))
                                     (_%object259775%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx259723%_
                                         _%$%hd259742259756%_)))
                                     (_%instance?259780%_
                                      (let ((_%$e259777%_
                                             (gxc#expression-type?
                                              _%object259775%_
                                              _%klass259773%_)))
                                        (if _%$e259777%_
                                            _%$e259777%_
                                            (gxc#expression-type?
                                             _%$%hd259742259756%_
                                             _%klass259773%_))))
                                     (_%incompatible?259785%_
                                      (let ((_%$e259782%_
                                             (gxc#incompatible-type?
                                              _%object259775%_
                                              _%klass259773%_)))
                                        (if _%$e259782%_
                                            _%$e259782%_
                                            (gxc#incompatible-type?
                                             _%$%hd259742259756%_
                                             _%klass259773%_))))
                                     (_%klass259788%_ _%klass259773%_))
                                (if _%instance?259780%_
                                    (let ((__tmp262230
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object259775%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd259742259756%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object259775%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp262230
                                       _%stx259724%_))
                                    (if _%incompatible?259785%_
                                        (cons '%#quote (cons '#f '()))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass259788%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp262231
                                                   (cons '%#struct-direct-instance?
                                                         (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass259788%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%object259775%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp262231
                                               _%stx259724%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass259788%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp262232
                                                       (cons '%#struct-instance?
                                                             (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass259788%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%object259775%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp262232
                                                   _%stx259724%_))
                                                (let ((__tmp262233
                                                       (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons 'class-instance? '()))
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self259728%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons _%object259775%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp262233
                                                   _%stx259724%_)))))))
                              (_%$%g259738259748%_ _%$%g259739259751%_))))
                      (_%$%g259738259748%_ _%$%g259739259751%_)))))
          (_%$%g259737259808%_ _%args259725%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx259390%_)
        (let* ((_%__stx261546261547%_ _%stx259390%_)
               (_%$%g259395259436%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx261546261547%_)))))
          (let ((_%__kont261548261549%_ (lambda () '#t))
                (_%__kont261550261551%_ (lambda () '#t))
                (_%__kont261552261553%_
                 (lambda (_%$%g259409259502%_ _%$%g259410259503%_)
                   (let ((_%$%rator-type259524259526%_
                          (let ((__tmp262234
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol
                                    _%$%g259410259503%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp262234))))
                     (if _%$%rator-type259524259526%_
                         (let* ((_%rator-type259528%_
                                 _%$%rator-type259524259526%_)
                                (_%$%rator-signature259529259531%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type259528%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type259528%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%$%rator-signature259529259531%_
                               (let* ((_%rator-signature259533%_
                                       _%$%rator-signature259529259531%_)
                                      (_%$%rator-effect259534259536%_
                                       (if _%rator-signature259533%_
                                           (##direct-structure-ref
                                            _%rator-signature259533%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%$%rator-effect259534259536%_
                                     (let ((_%rator-effect259538%_
                                            _%$%rator-effect259534259536%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect259538%_)
                                               (equal? '(alloc)
                                                       _%rator-effect259538%_))
                                           (let ((__tmp262235
                                                  (let ((__tmp262236
                                                         (lambda (_%$%g259543259546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g259544259548%_)
                   (cons _%$%g259543259546%_ _%$%g259544259548%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp262236
                                                     '()
                                                     _%$%g259409259502%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp262235))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont261556261557%_ (lambda () '#f)))
            (let ((_%__match261635261636%_
                   (lambda (_%$%e259411259448%_
                            _%$%hd259412259451%_
                            _%$%tl259413259453%_
                            _%$%e259414259456%_
                            _%$%hd259415259459%_
                            _%$%tl259416259461%_
                            _%$%e259417259464%_
                            _%$%hd259418259467%_
                            _%$%tl259419259469%_
                            _%$%e259420259472%_
                            _%$%hd259421259475%_
                            _%$%tl259422259477%_
                            _%__splice261554261555%_
                            _%$%target259423259480%_
                            _%$%tl259425259482%_)
                     (letrec ((_%$%loop259426259485%_
                               (lambda (_%$%hd259424259488%_
                                        _%$%rand259430259490%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd259424259488%_))
                                     (let ((_%$%e259427259492%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd259424259488%_))))
                                       (let ((_%$%lp-tl259429259497%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e259427259492%_)))
                                             (_%$%lp-hd259428259495%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e259427259492%_))))
                                         (_%$%loop259426259485%_
                                          _%$%lp-tl259429259497%_
                                          (cons _%$%lp-hd259428259495%_
                                                _%$%rand259430259490%_))))
                                     (let ((_%$%rand259431259500%_
                                            (reverse _%$%rand259430259490%_)))
                                       (_%__kont261552261553%_
                                        _%$%rand259431259500%_
                                        _%$%hd259421259475%_))))))
                       (_%$%loop259426259485%_
                        _%$%target259423259480%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx261546261547%_))
                  (let ((_%$%e259397259579%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx261546261547%_))))
                    (let ((_%$%tl259399259584%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e259397259579%_)))
                          (_%$%hd259398259582%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e259397259579%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd259398259582%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd259398259582%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl259399259584%_))
                                  (let ((_%$%e259400259587%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl259399259584%_))))
                                    (let ((_%$%tl259402259592%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e259400259587%_)))
                                          (_%$%hd259401259590%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e259400259587%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl259402259592%_))
                                          (_%__kont261548261549%_)
                                          (_%__kont261556261557%_))))
                                  (_%__kont261556261557%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd259398259582%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl259399259584%_))
                                      (let ((_%$%e259406259564%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl259399259584%_))))
                                        (let ((_%$%tl259408259569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e259406259564%_)))
                                              (_%$%hd259407259567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e259406259564%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl259408259569%_))
                                              (_%__kont261550261551%_)
                                              (_%__kont261556261557%_))))
                                      (_%__kont261556261557%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%$%hd259398259582%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl259399259584%_))
                                          (let ((_%$%e259414259456%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl259399259584%_))))
                                            (let ((_%$%tl259416259461%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e259414259456%_)))
                                                  (_%$%hd259415259459%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e259414259456%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd259415259459%_))
                                                  (let ((_%$%e259417259464%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd259415259459%_))))
                                                    (let ((_%$%tl259419259469%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e259417259464%_)))
                                                          (_%$%hd259418259467%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e259417259464%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd259418259467%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%$%hd259418259467%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl259419259469%_))
                          (let ((_%$%e259420259472%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl259419259469%_))))
                            (let ((_%$%tl259422259477%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e259420259472%_)))
                                  (_%$%hd259421259475%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e259420259472%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl259422259477%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl259416259461%_))
                                      (let ((_%__splice261554261555%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl259416259461%_
                                                '0))))
                                        (let ((_%$%tl259425259482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice261554261555%_
                                                  '1)))
                                              (_%$%target259423259480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice261554261555%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl259425259482%_))
                                              (_%__match261635261636%_
                                               _%$%e259397259579%_
                                               _%$%hd259398259582%_
                                               _%$%tl259399259584%_
                                               _%$%e259414259456%_
                                               _%$%hd259415259459%_
                                               _%$%tl259416259461%_
                                               _%$%e259417259464%_
                                               _%$%hd259418259467%_
                                               _%$%tl259419259469%_
                                               _%$%e259420259472%_
                                               _%$%hd259421259475%_
                                               _%$%tl259422259477%_
                                               _%__splice261554261555%_
                                               _%$%target259423259480%_
                                               _%$%tl259425259482%_)
                                              (_%__kont261556261557%_))))
                                      (_%__kont261556261557%_))
                                  (_%__kont261556261557%_))))
                          (_%__kont261556261557%_))
                      (_%__kont261556261557%_))
                  (_%__kont261556261557%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont261556261557%_))))
                                          (_%__kont261556261557%_))
                                      (_%__kont261556261557%_))))
                          (_%__kont261556261557%_))))
                  (_%__kont261556261557%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx259385%_ _%klass259386%_)
        (let ((_%expr-type259388%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx259385%_))))
          (if _%expr-type259388%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type259388%_ _%klass259386%_))
              '#f))))
    (define gxc#incompatible-type?
      (lambda (_%expr259369%_ _%type259370%_)
        (if (not _%type259370%_)
            '#f
            (if (eq? (##structure-ref _%type259370%_ '1 gxc#!type::t '#f) 't)
                '#f
                (if (eq? (##structure-ref _%type259370%_ '1 gxc#!type::t '#f)
                         'false)
                    '#f
                    (let ((_%expr-type259376%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr259369%_))))
                      (if (not _%expr-type259376%_)
                          '#f
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type259376%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              '#f
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%expr-type259376%_
                                     'gxc#!abort::t))
                                  '#f
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#!type-subtype?
                                         _%expr-type259376%_
                                         _%type259370%_))
                                      '#f
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#!interface-instance?
                                             _%type259370%_))
                                          '#f
                                          (if (let ()
                                                (declare (not safe))
                                                (gxc#!type-subtype?
                                                 _%type259370%_
                                                 _%expr-type259376%_))
                                              '#f
                                              '#t))))))))))))
    (define gxc#check-expression-type!
      (lambda (_%stx259347%_ _%expr259348%_ _%type259349%_)
        (if (not _%type259349%_)
            '#f
            (let ((_%$e259352%_
                   (eq? (##structure-ref _%type259349%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e259352%_
                  _%$e259352%_
                  (let ((_%expr-type259356%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr259348%_))))
                    (if (not _%expr-type259356%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type259356%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e259360%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type259356%_
                                      'gxc#!abort::t))))
                              (if _%$e259360%_
                                  _%$e259360%_
                                  (let ((_%$e259363%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type259356%_
                                            _%type259349%_))))
                                    (if _%$e259363%_
                                        _%$e259363%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type259349%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type259349%_
                                                   _%expr-type259356%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx259347%_
                                                   _%expr259348%_
                                                   _%expr-type259356%_
                                                   _%type259349%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self259161%_ _%ctx259162%_ _%stx259163%_ _%args259164%_)
        (let* ((_%self259167%_ _%self259161%_)
               (_%klass259177%_
                (let ((__tmp262237
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self259167%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx259163%_ __tmp262237)))
               (_%fields259179%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass259177%_
                           '5
                           '#f
                           '#f))))
               (_%args259185%_
                (map (lambda (_%$%g259180259182%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx259162%_ _%$%g259180259182%_)))
                     _%args259164%_))
               (_%inline-make-object259187%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self259167%_
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
                           _%self259167%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields259179%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass259190%_ _%klass259177%_)
               (_%$e259204%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass259190%_ '6 '#f '#f))))
          (if _%$e259204%_
              (let ((_%$obj259209%_
                     (let ((__tmp262238
                            (let () (declare (not safe)) (##gensym '__obj))))
                       (declare (not safe))
                       (make-symbol__0 __tmp262238)))
                    (_%ctor-impl259210%_
                     (let ()
                       (declare (not safe))
                       (gxc#!class-lookup-method
                        _%klass259190%_
                        _%$e259204%_))))
                (let ((__tmp262239
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj259209%_ '())
                                               (cons _%inline-make-object259187%_
                                                     '()))
                                         '())
                                   (cons (cons '%#begin
                                               (cons (if _%ctor-impl259210%_
                                                         (let ((__tmp262240
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl259210%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj259209%_ '()))
                                          _%args259185%_)))))
                   (declare (not safe))
                   (gxc#xform-wrap-apply
                    __tmp262240
                    _%stx259163%_
                    _%ctx259162%_))
                 (let ((_%$ctor259212%_
                        (let ((__tmp262241
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__constructor))))
                          (declare (not safe))
                          (make-symbol__0 __tmp262241))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$ctor259212%_ '())
                                           (cons (cons '%#call
                                                       (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'direct-method-ref '()))
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self259167%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#ref (cons _%$obj259209%_ '()))
                                 (cons (cons '%#quote (cons _%$e259204%_ '()))
                                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#ref
                                                       (cons _%$ctor259212%_
                                                             '()))
                                                 (cons (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$ctor259212%_ '()))
                           (cons (cons '%#ref (cons _%$obj259209%_ '()))
                                 _%args259185%_)))
               (cons (cons '%#call
                           (cons (cons '%#ref (cons 'error '()))
                                 (cons (cons '%#quote
                                             (cons '"missing constructor method implementation"
                                                   '()))
                                       (cons (cons '%#quote (cons 'class: '()))
                                             (cons (cons '%#ref
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%self259167%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#quote
                                                               (cons 'method:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _%$e259204%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$obj259209%_ '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp262239 _%stx259163%_)))
              (let ((_%$e259214%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass259190%_
                        '10
                        '#f
                        '#f))))
                (if _%$e259214%_
                    (let* ((_%$obj259219%_
                            (let ((__tmp262242
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp262242)))
                           (_%metakons259221%_
                            (let ((__tmp262243
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx259163%_
                                      _%$e259214%_))))
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               __tmp262243
                               'instance-init!)))
                           (__tmp262244
                            (cons '%#let-values
                                  (cons (cons (cons (cons _%$obj259219%_ '())
                                                    (cons _%inline-make-object259187%_
                                                          '()))
                                              '())
                                        (cons (cons '%#begin
                                                    (cons (if _%metakons259221%_
                                                              (let ((__tmp262245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons259221%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self259167%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj259219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args259185%_))))))
                        (declare (not safe))
                        (gxc#xform-wrap-apply
                         __tmp262245
                         _%stx259163%_
                         _%ctx259162%_))
                      (cons '%#call
                            (cons (cons '%#ref (cons 'call-method '()))
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self259167%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons 'instance-init! '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj259219%_
                                                                '()))
                                                    _%args259185%_))))))
                  (cons (cons '%#ref (cons _%$obj259219%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp262244 _%stx259163%_))
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass259190%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp262246
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args259185%_))))
                              (declare (not safe))
                              (##fx= __tmp262246 _%fields259179%_))
                            (let ((__tmp262247
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self259167%_
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
                                              _%self259167%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args259185%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp262247
                               _%stx259163%_))
                            (let ((__tmp262249
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self259167%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp262248
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass259190%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx259163%_
                               __tmp262249
                               __tmp262248)))
                        (let ((_%$obj259226%_
                               (let ((__tmp262250
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp262250))))
                          (let _%lp259228%_ ((_%rest259230%_ _%args259185%_)
                                             (_%initializers259231%_ '()))
                            (let* ((_%__stx261638261639%_ _%rest259230%_)
                                   (_%$%g259235259256%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx261638261639%_)))))
                              (let ((_%__kont261640261641%_
                                     (lambda (_%$%g259237259310%_
                                              _%$%g259238259311%_
                                              _%$%g259239259312%_)
                                       (let* ((_%slot259339%_
                                               (let ((__tmp262251
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g259239259312%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp262251)))
                                              (_%off259341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass259190%_
                                                  _%slot259339%_))))
                                         (if _%off259341%_
                                             (_%lp259228%_
                                              _%$%g259237259310%_
                                              (cons (cons _%off259341%_
                                                          _%$%g259238259311%_)
                                                    _%initializers259231%_))
                                             (let ((__tmp262252
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self259167%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx259163%_
                                                __tmp262252
                                                _%slot259339%_))))))
                                    (_%__kont261642261643%_
                                     (lambda ()
                                       (let ((__tmp262253
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj259226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object259187%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp262256
                                     (cons (cons '%#ref
                                                 (cons _%$obj259226%_ '()))
                                           '()))
                                    (__tmp262254
                                     (let ((__tmp262255
                                            (lambda (_%i259270%_ _%r259271%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self259167%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i259270%_) '()))
                              (cons (cons '%#ref (cons _%$obj259226%_ '()))
                                    (cons (cdr _%i259270%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r259271%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp262255
                                        '()
                                        _%initializers259231%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp262256 __tmp262254)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp262253
                                          _%stx259163%_))))
                                    (_%__kont261644261645%_
                                     (lambda ()
                                       (let ((__tmp262257
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj259226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object259187%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj259226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args259185%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj259226%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp262257
                                          _%stx259163%_)))))
                                (let* ((_%$%g259233259273%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx261638261639%_))
                                              (_%__kont261642261643%_)
                                              (_%__kont261644261645%_))))
                                       (_%__match261675261676%_
                                        (lambda (_%$%e259240259278%_
                                                 _%$%hd259241259281%_
                                                 _%$%tl259242259283%_
                                                 _%$%e259243259286%_
                                                 _%$%hd259244259289%_
                                                 _%$%tl259245259291%_
                                                 _%$%e259246259294%_
                                                 _%$%hd259247259297%_
                                                 _%$%tl259248259299%_
                                                 _%$%e259249259302%_
                                                 _%$%hd259250259305%_
                                                 _%$%tl259251259307%_)
                                          (let ((_%$%g259237259310%_
                                                 _%$%tl259251259307%_)
                                                (_%$%g259238259311%_
                                                 _%$%hd259250259305%_)
                                                (_%$%g259239259312%_
                                                 _%$%hd259247259297%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%$%g259239259312%_))
                                                (_%__kont261640261641%_
                                                 _%$%g259237259310%_
                                                 _%$%g259238259311%_
                                                 _%$%g259239259312%_)
                                                (_%__kont261644261645%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx261638261639%_))
                                      (let ((_%$%e259240259278%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx261638261639%_))))
                                        (let ((_%$%tl259242259283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e259240259278%_)))
                                              (_%$%hd259241259281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e259240259278%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd259241259281%_))
                                              (let ((_%$%e259243259286%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd259241259281%_))))
                                                (let ((_%$%tl259245259291%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e259243259286%_)))
                                                      (_%$%hd259244259289%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e259243259286%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd259244259289%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%$%hd259244259289%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl259245259291%_))
                      (let ((_%$%e259246259294%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl259245259291%_))))
                        (let ((_%$%tl259248259299%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e259246259294%_)))
                              (_%$%hd259247259297%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e259246259294%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl259248259299%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl259242259283%_))
                                  (let ((_%$%e259249259302%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl259242259283%_))))
                                    (let ((_%$%tl259251259307%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e259249259302%_)))
                                          (_%$%hd259250259305%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e259249259302%_))))
                                      (_%__match261675261676%_
                                       _%$%e259240259278%_
                                       _%$%hd259241259281%_
                                       _%$%tl259242259283%_
                                       _%$%e259243259286%_
                                       _%$%hd259244259289%_
                                       _%$%tl259245259291%_
                                       _%$%e259246259294%_
                                       _%$%hd259247259297%_
                                       _%$%tl259248259299%_
                                       _%$%e259249259302%_
                                       _%$%hd259250259305%_
                                       _%$%tl259251259307%_)))
                                  (_%__kont261644261645%_))
                              (_%__kont261644261645%_))))
                      (_%__kont261644261645%_))
                  (_%__kont261644261645%_))
              (_%__kont261644261645%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont261644261645%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g259233259273%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::check-arguments
      (lambda (_%self259023%_ _%ctx259024%_ _%stx259025%_ _%args259026%_)
        (let ((_%self259029%_ _%self259023%_))
          (if (let ()
                (declare (not safe))
                (##unchecked-structure-ref _%self259029%_ '4 '#f '#f))
              (gxc#!procedure::check-arguments
               _%self259029%_
               _%ctx259024%_
               _%stx259025%_
               _%args259026%_)
              '#t))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'check-arguments
       gxc#!accessor::check-arguments
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self258806%_ _%ctx258807%_ _%stx258808%_ _%args258809%_)
        (let* ((_%self258812%_ _%self258806%_)
               (_%arguments-ok?258822%_
                (let ((__method262185
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self258812%_ 'check-arguments))))
                  (if __method262185
                      (let ()
                        (declare (not safe))
                        (__method262185
                         _%self258812%_
                         _%ctx258807%_
                         _%stx258808%_
                         _%args258809%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self258812%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g258824258834%_
                (lambda (_%$%g258825258831%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g258825258831%_))))
               (_%$%g258823258898%_
                (lambda (_%$%g258825258837%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g258825258837%_))
                      (let ((_%$%e258827258839%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g258825258837%_))))
                        (let ((_%$%hd258828258842%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e258827258839%_)))
                              (_%$%tl258829258844%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e258827258839%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl258829258844%_))
                              (let* ((_%klass258860%_
                                      (let ((__tmp262258
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self258812%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx258808%_
                                         __tmp262258)))
                                     (_%field258862%_
                                      (let ((__tmp262259
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self258812%_
                                                '3
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#!class-slot->field-offset
                                         _%klass258860%_
                                         __tmp262259)))
                                     (_%object258864%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx258807%_
                                         _%$%hd258828258842%_)))
                                     (_%klass258867%_ _%klass258860%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass258867%_
                                       '8
                                       '#f
                                       '#f))
                                    (let ((__tmp262260
                                           (cons (if (or _%arguments-ok?258822%_
                                                         (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self258812%_
                         '4
                         '#f
                         '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '%#struct-unchecked-ref
                                                     '%#struct-direct-ref)
                                                 (cons (cons '%#ref
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self258812%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#quote (cons _%field258862%_ '()))
                     (cons _%object258864%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp262260
                                       _%stx258808%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass258867%_
                                           '7
                                           '#f
                                           '#f))
                                        (let ((__tmp262261
                                               (cons (if (or _%arguments-ok?258822%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self258812%_
                             '4
                             '#f
                             '#f))))
                 '%#struct-unchecked-ref
                 '%#struct-ref)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self258812%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field258862%_ '()))
                         (cons _%object258864%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp262261
                                           _%stx258808%_))
                                        (let ((_%$e258886%_
                                               (let ((__tmp262262
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self258812%_
                                                         '3
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#!class-slot-find-struct
                                                  _%klass258867%_
                                                  __tmp262262))))
                                          (if _%$e258886%_
                                              (let ((__tmp262263
                                                     (cons (if (or _%arguments-ok?258822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (not (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self258812%_
                                   '4
                                   '#f
                                   '#f))))
                       '%#struct-unchecked-ref
                       '%#struct-ref)
                   (cons (cons '%#ref
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self258812%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#quote (cons _%field258862%_ '()))
                               (cons _%object258864%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp262263
                                                 _%stx258808%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self258812%_
                                                     '4
                                                     '#f
                                                     '#f))
                                                  (let ((__tmp262264
                                                         (let ((_%$obj258895%_
                                                                (let ((__tmp262265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp262265))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$obj258895%_ '())
                                           (cons _%object258864%_ '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#struct-direct-instance?
                                                       (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass258867%_
                                    '1
                                    '#f
                                    '#f))
                                 '()))
                     (cons (cons '%#ref (cons _%$obj258895%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#struct-unchecked-ref
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self258812%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field258862%_ '()))
                                 (cons (cons '%#ref (cons _%$obj258895%_ '()))
                                       '()))))
               (cons (if _%arguments-ok?258822%_
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj258895%_ '()))
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self258812%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'class-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self258812%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj258895%_
                                                             '()))
                                                 (cons (cons '%#quote
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self258812%_
                              '3
                              '#f
                              '#f))
                           '()))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp262264
                                                     _%stx258808%_))
                                                  (let ((__tmp262266
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'unchecked-slot-ref '()))
                             (cons _%object258864%_
                                   (cons (cons '%#quote
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self258812%_
                                                        '3
                                                        '#f
                                                        '#f))
                                                     '()))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp262266
                                                     _%stx258808%_))))))))
                              (_%$%g258824258834%_ _%$%g258825258837%_))))
                      (_%$%g258824258834%_ _%$%g258825258837%_)))))
          (_%$%g258823258898%_ _%args258809%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass261292 __method-table261293)
        (let ((__check-arguments261294
               (let ((__tmp262267
                      (lambda ()
                        (let ((__method261295
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table261293
                                  'check-arguments
                                  '#f))))
                          (if __method261295
                              __method261295
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp262267)))
              (__slot261296
               (let ((__slot261297
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass261292 'slot))))
                 (if __slot261297
                     __slot261297
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self258806%_ _%ctx258807%_ _%stx258808%_ _%args258809%_)
            (let* ((_%self258812%_ _%self258806%_)
                   (_%arguments-ok?258822%_
                    ((force __check-arguments261294)
                     _%self258812%_
                     _%ctx258807%_
                     _%stx258808%_
                     _%args258809%_))
                   (_%$%g258824258834%_
                    (lambda (_%$%g258825258831%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g258825258831%_))))
                   (_%$%g258823258898%_
                    (lambda (_%$%g258825258837%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g258825258837%_))
                          (let ((_%$%e258827258839%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g258825258837%_))))
                            (let ((_%$%hd258828258842%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e258827258839%_)))
                                  (_%$%tl258829258844%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e258827258839%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl258829258844%_))
                                  (let* ((_%klass258860%_
                                          (let ((__tmp262268
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self258812%_
                                                    '1
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx258808%_
                                             __tmp262268)))
                                         (_%field258862%_
                                          (let ((__tmp262269
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self258812%_
                                                    '3
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#!class-slot->field-offset
                                             _%klass258860%_
                                             __tmp262269)))
                                         (_%object258864%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%ctx258807%_
                                             _%$%hd258828258842%_)))
                                         (_%klass258867%_ _%klass258860%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass258867%_
                                           '8
                                           '#f
                                           '#f))
                                        (let ((__tmp262270
                                               (cons (if (or _%arguments-ok?258822%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self258812%_
                             '4
                             '#f
                             '#f))))
                 '%#struct-unchecked-ref
                 '%#struct-direct-ref)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self258812%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field258862%_ '()))
                         (cons _%object258864%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp262270
                                           _%stx258808%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass258867%_
                                               '7
                                               '#f
                                               '#f))
                                            (let ((__tmp262271
                                                   (cons (if (or _%arguments-ok?258822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self258812%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-ref
                     '%#struct-ref)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self258812%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field258862%_ '()))
                             (cons _%object258864%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp262271
                                               _%stx258808%_))
                                            (let ((_%$e258886%_
                                                   (let ((__tmp262272
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self258812%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot-find-struct
                                                      _%klass258867%_
                                                      __tmp262272))))
                                              (if _%$e258886%_
                                                  (let ((__tmp262273
                                                         (cons (if (or _%arguments-ok?258822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (not (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self258812%_
                                       '4
                                       '#f
                                       '#f))))
                           '%#struct-unchecked-ref
                           '%#struct-ref)
                       (cons (cons '%#ref
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self258812%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#quote (cons _%field258862%_ '()))
                                   (cons _%object258864%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp262273
                                                     _%stx258808%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self258812%_
                                                         '4
                                                         '#f
                                                         '#f))
                                                      (let ((__tmp262274
                                                             (let ((_%$obj258895%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp262275
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp262275))))
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj258895%_ '())
                                               (cons _%object258864%_ '()))
                                         '())
                                   (cons (cons '%#if
                                               (cons (cons '%#struct-direct-instance?
                                                           (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%klass258867%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#ref (cons _%$obj258895%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#struct-unchecked-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self258812%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field258862%_ '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj258895%_ '()))
                                           '()))))
                   (cons (if _%arguments-ok?258822%_
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-ref '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj258895%_ '()))
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self258812%_
                            __slot261296
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
                                                              _%self258812%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj258895%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self258812%_
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
                (gxc#xform-wrap-source __tmp262274 _%stx258808%_))
              (let ((__tmp262276
                     (cons '%#call
                           (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                 (cons _%object258864%_
                                       (cons (cons '%#quote
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self258812%_
                                                            '3
                                                            '#f
                                                            '#f))
                                                         '()))
                                             '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp262276 _%stx258808%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g258824258834%_ _%$%g258825258837%_))))
                          (_%$%g258824258834%_ _%$%g258825258837%_)))))
              (_%$%g258823258898%_ _%args258809%_))))))
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
      (lambda (_%self258570%_ _%ctx258571%_ _%stx258572%_ _%args258573%_)
        (let* ((_%self258576%_ _%self258570%_)
               (_%arguments-ok?258586%_
                (let ((__method262186
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self258576%_ 'check-arguments))))
                  (if __method262186
                      (let ()
                        (declare (not safe))
                        (__method262186
                         _%self258576%_
                         _%ctx258571%_
                         _%stx258572%_
                         _%args258573%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self258576%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g258588258602%_
                (lambda (_%$%g258589258599%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g258589258599%_))))
               (_%$%g258587258681%_
                (lambda (_%$%g258589258605%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g258589258605%_))
                      (let ((_%$%e258592258607%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g258589258605%_))))
                        (let ((_%$%hd258593258610%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e258592258607%_)))
                              (_%$%tl258594258612%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e258592258607%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl258594258612%_))
                              (let ((_%$%e258595258615%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl258594258612%_))))
                                (let ((_%$%hd258596258618%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e258595258615%_)))
                                      (_%$%tl258597258620%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e258595258615%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl258597258620%_))
                                      (let* ((_%klass258640%_
                                              (let ((__tmp262277
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self258576%_
                                                        '1
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#optimizer-resolve-class
                                                 _%stx258572%_
                                                 __tmp262277)))
                                             (_%field258642%_
                                              (let ((__tmp262278
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self258576%_
                                                        '3
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#!class-slot->field-offset
                                                 _%klass258640%_
                                                 __tmp262278)))
                                             (_%object258644%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx258571%_
                                                 _%$%hd258593258610%_)))
                                             (_%value258646%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx258571%_
                                                 _%$%hd258596258618%_)))
                                             (_%klass258649%_ _%klass258640%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass258649%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp262279
                                                   (cons (if (or _%arguments-ok?258586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self258576%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-set!
                     '%#struct-direct-set!)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self258576%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field258642%_ '()))
                             (cons _%object258644%_
                                   (cons _%value258646%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp262279
                                               _%stx258572%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass258649%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp262280
                                                       (cons (if (or _%arguments-ok?258586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self258576%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self258576%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field258642%_ '()))
                                 (cons _%object258644%_
                                       (cons _%value258646%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp262280
                                                   _%stx258572%_))
                                                (let ((_%$e258669%_
                                                       (let ((__tmp262281
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self258576%_
                         '3
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#!class-slot-find-struct _%klass258649%_ __tmp262281))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%$e258669%_
                                                      (let ((__tmp262282
                                                             (cons (if (or _%arguments-ok?258586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (not (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self258576%_
                                           '3
                                           '#f
                                           '#f))))
                               '%#struct-unchecked-set!
                               '%#struct-set!)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self258576%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field258642%_ '()))
                                       (cons _%object258644%_
                                             (cons _%value258646%_ '())))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp262282 _%stx258572%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self258576%_ '4 '#f '#f))
                  (let ((__tmp262283
                         (let ((_%$obj258678%_
                                (let ((__tmp262284
                                       (let ()
                                         (declare (not safe))
                                         (##gensym '__obj))))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp262284))))
                           (cons '%#let-values
                                 (cons (cons (cons (cons _%$obj258678%_ '())
                                                   (cons _%object258644%_ '()))
                                             '())
                                       (cons (cons '%#if
                                                   (cons (cons '%#struct-direct-instance?
                                                               (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass258649%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#ref (cons _%$obj258678%_ '()))
                                   '())))
                 (cons (cons '%#struct-unchecked-set!
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self258576%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field258642%_ '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj258678%_ '()))
                                               (cons _%value258646%_ '())))))
                       (cons (if _%arguments-ok?258586%_
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'unchecked-slot-set!
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj258678%_
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self258576%_
                                '3
                                '#f
                                '#f))
                             '()))
                 (cons _%value258646%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'class-slot-set! '()))
                                             (cons (cons '%#ref
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%self258576%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#ref
                                                               (cons _%$obj258678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self258576%_
                                      '3
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%value258646%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp262283 _%stx258572%_))
                  (let ((__tmp262285
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-set! '()))
                                     (cons _%object258644%_
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self258576%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%value258646%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp262285 _%stx258572%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g258588258602%_
                                       _%$%g258589258605%_))))
                              (_%$%g258588258602%_ _%$%g258589258605%_))))
                      (_%$%g258588258602%_ _%$%g258589258605%_)))))
          (_%$%g258587258681%_ _%args258573%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass261298 __method-table261299)
        (let ((__check-arguments261300
               (let ((__tmp262286
                      (lambda ()
                        (let ((__method261301
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table261299
                                  'check-arguments
                                  '#f))))
                          (if __method261301
                              __method261301
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp262286))))
          (lambda (_%self258570%_ _%ctx258571%_ _%stx258572%_ _%args258573%_)
            (let* ((_%self258576%_ _%self258570%_)
                   (_%arguments-ok?258586%_
                    ((force __check-arguments261300)
                     _%self258576%_
                     _%ctx258571%_
                     _%stx258572%_
                     _%args258573%_))
                   (_%$%g258588258602%_
                    (lambda (_%$%g258589258599%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g258589258599%_))))
                   (_%$%g258587258681%_
                    (lambda (_%$%g258589258605%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g258589258605%_))
                          (let ((_%$%e258592258607%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g258589258605%_))))
                            (let ((_%$%hd258593258610%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e258592258607%_)))
                                  (_%$%tl258594258612%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e258592258607%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl258594258612%_))
                                  (let ((_%$%e258595258615%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl258594258612%_))))
                                    (let ((_%$%hd258596258618%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e258595258615%_)))
                                          (_%$%tl258597258620%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e258595258615%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl258597258620%_))
                                          (let* ((_%klass258640%_
                                                  (let ((__tmp262287
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self258576%_
                                                            '1
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#optimizer-resolve-class
                                                     _%stx258572%_
                                                     __tmp262287)))
                                                 (_%field258642%_
                                                  (let ((__tmp262288
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self258576%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot->field-offset
                                                     _%klass258640%_
                                                     __tmp262288)))
                                                 (_%object258644%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx258571%_
                                                     _%$%hd258593258610%_)))
                                                 (_%value258646%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx258571%_
                                                     _%$%hd258596258618%_)))
                                                 (_%klass258649%_
                                                  _%klass258640%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass258649%_
                                                   '8
                                                   '#f
                                                   '#f))
                                                (let ((__tmp262289
                                                       (cons (if (or _%arguments-ok?258586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self258576%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-direct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self258576%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field258642%_ '()))
                                 (cons _%object258644%_
                                       (cons _%value258646%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp262289
                                                   _%stx258572%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%klass258649%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp262290
                                                           (cons (if (or _%arguments-ok?258586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self258576%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-set!
                             '%#struct-set!)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self258576%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field258642%_ '()))
                                     (cons _%object258644%_
                                           (cons _%value258646%_ '())))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp262290 _%stx258572%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$e258669%_
                                                           (let ((__tmp262291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self258576%_
                             '3
                             '#f
                             '#f))))
                     (declare (not safe))
                     (gxc#!class-slot-find-struct
                      _%klass258649%_
                      __tmp262291))))
              (if _%$e258669%_
                  (let ((__tmp262292
                         (cons (if (or _%arguments-ok?258586%_
                                       (not (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self258576%_
                                               '3
                                               '#f
                                               '#f))))
                                   '%#struct-unchecked-set!
                                   '%#struct-set!)
                               (cons (cons '%#ref
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self258576%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     (cons (cons '%#quote
                                                 (cons _%field258642%_ '()))
                                           (cons _%object258644%_
                                                 (cons _%value258646%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp262292 _%stx258572%_))
                  (if (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self258576%_ '4 '#f '#f))
                      (let ((__tmp262293
                             (let ((_%$obj258678%_
                                    (let ((__tmp262294
                                           (let ()
                                             (declare (not safe))
                                             (##gensym '__obj))))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp262294))))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj258678%_
                                                             '())
                                                       (cons _%object258644%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#if
                                                       (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass258649%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#ref (cons _%$obj258678%_ '()))
                                       '())))
                     (cons (cons '%#struct-unchecked-set!
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self258576%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field258642%_ '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj258678%_
                                                               '()))
                                                   (cons _%value258646%_
                                                         '())))))
                           (cons (if _%arguments-ok?258586%_
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'unchecked-slot-set!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj258678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#quote
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self258576%_
                                    '3
                                    '#f
                                    '#f))
                                 '()))
                     (cons _%value258646%_ '())))))
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
                              _%self258576%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#ref (cons _%$obj258678%_ '()))
                     (cons (cons '%#quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self258576%_
                                          '3
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%value258646%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp262293 _%stx258572%_))
                      (let ((__tmp262295
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-set! '()))
                                         (cons _%object258644%_
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self258576%_
                            '3
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%value258646%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source
                         __tmp262295
                         _%stx258572%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g258588258602%_
                                           _%$%g258589258605%_))))
                                  (_%$%g258588258602%_ _%$%g258589258605%_))))
                          (_%$%g258588258602%_ _%$%g258589258605%_)))))
              (_%$%g258587258681%_ _%args258573%_))))))
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
      (lambda (_%self258386%_ _%ctx258387%_ _%stx258388%_ _%args258389%_)
        (let* ((_%self258392%_ _%self258386%_)
               (_%$%self258401258411%_ _%self258392%_)
               (_%$%E258403258414%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self258401258411%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%$%K258404258424%_
                (lambda (_%inline258417%_ _%dispatch258418%_ _%arity258419%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self258392%_
                         _%args258389%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx258388%_
                         _%arity258419%_)))
                  (if _%inline258417%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp262296 (_%inline258417%_ _%stx258388%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp262296
                           _%stx258388%_
                           _%ctx258387%_)))
                      (if (and _%dispatch258418%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch258418%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch258418%_))
                            (let ((__tmp262297
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch258418%_
                                                           '()))
                                               _%args258389%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp262297
                               _%stx258388%_
                               _%ctx258387%_)))
                          (gxc#!procedure::optimize-call
                           _%self258392%_
                           _%ctx258387%_
                           _%stx258388%_
                           _%args258389%_)))))
               (_%$%e258405258427%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self258401258411%_
                   '1
                   '#f
                   '#f)))
               (_%$%e258406258430%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self258401258411%_
                   '2
                   '#f
                   '#f)))
               (_%$%e258407258433%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self258401258411%_
                   '3
                   '#f
                   '#f)))
               (_%arity258436%_ _%$%e258407258433%_)
               (_%$%e258408258438%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self258401258411%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch258441%_ _%$%e258408258438%_)
               (_%$%e258409258443%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self258401258411%_
                   '5
                   '#f
                   '#f)))
               (_%inline258446%_ _%$%e258409258443%_))
          (_%$%K258404258424%_
           _%inline258446%_
           _%dispatch258441%_
           _%arity258436%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self258238%_ _%ctx258239%_ _%stx258240%_ _%args258241%_)
        (let* ((_%self258244%_ _%self258238%_)
               (_%$e258258%_
                (let ((__tmp262299
                       (lambda (_%$%g258253258255%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%$%g258253258255%_
                            _%args258241%_))))
                      (__tmp262298
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self258244%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp262299 __tmp262298))))
          (if _%$e258258%_
              (let ((__method262187
                     (let ()
                       (declare (not safe))
                       (__method-ref _%$e258258%_ 'optimize-call))))
                (if __method262187
                    (let ()
                      (declare (not safe))
                      (__method262187
                       _%$e258258%_
                       _%ctx258239%_
                       _%stx258240%_
                       _%args258241%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method" _%$e258258%_ 'optimize-call))
                      '#!void)))
              (let ((__tmp262300
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self258244%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx258240%_
                 __tmp262300))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self257979%_ _%ctx257980%_ _%stx257981%_ _%args257982%_)
        (let* ((_%self257985%_ _%self257979%_)
               (_%$%self257994258003%_ _%self257985%_)
               (_%$%E257996258006%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self257994258003%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%$%K257997258097%_
                (lambda (_%dispatch258009%_ _%table258010%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch258009%_))
                      (let* ((_%$%g258011258021%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch258009%_)))
                             (_%$%else258013258029%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch258009%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx257980%_
                                   _%stx257981%_))))
                             (_%$%K258015258078%_
                              (lambda (_%main258032%_ _%keys258033%_)
                                (let ((_g262301_
                                       (gxc#!kw-lambda-split-args
                                        _%stx257981%_
                                        _%args257982%_)))
                                  (begin
                                    (let ((_g262302_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g262301_)
                                                 (##values-length _g262301_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g262302_ 2)))
                                          (error "Context expects 2 values"
                                                 _g262302_)))
                                    (let ((_%pargs258035%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g262301_ 0)))
                                          (_%kwargs258036%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g262301_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main258032%_))
                                        (if _%table258010%_
                                            (let ((_%xargs258044%_
                                                   (map (lambda (_%key258038%_)
                                                          (let ((_%$e258040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key258038%_ _%kwargs258036%_))))
                    (if _%$e258040%_ _%$e258040%_ '(%#ref absent-value))))
                _%keys258033%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw258046%_)
                                                 (if (memq (car _%kw258046%_)
                                                           _%keys258033%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx257981%_
                                                        _%keys258033%_
                                                        _%kw258046%_))))
                                               _%kwargs258036%_)
                                              (let ((__tmp262303
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main258032%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs258035%_
                                  _%xargs258044%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp262303
                                                 _%stx257981%_
                                                 _%ctx257980%_)))
                                            (let* ((_%kwt258048%_
                                                    (let ((__tmp262304
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp262304)))
                                                   (_%kwvars258052%_
                                                    (map (lambda (_%_258050%_)
                                                           (let ((__tmp262305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp262305)))
                 _%kwargs258036%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind258057%_
                                                    (map (lambda (_%kw258054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar258055%_)
                   (cons (cons _%kwvar258055%_ '())
                         (cons (cdr _%kw258054%_) '())))
                 _%kwargs258036%_
                 _%kwvars258052%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset258062%_
                                                    (map (lambda (_%kw258059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar258060%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt258048%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw258059%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar258060%_
                                                             '()))
                                                 '()))))))
                 _%kwargs258036%_
                 _%kwvars258052%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs258067%_
                                                    (map (lambda (_%kw258064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar258065%_)
                   (cons (car _%kw258064%_)
                         (cons '%#ref (cons _%kwvar258065%_ '()))))
                 _%kwargs258036%_
                 _%kwvars258052%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs258075%_
                                                    (map (lambda (_%key258069%_)
                                                           (let ((_%$e258071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key258069%_ _%xkwargs258067%_))))
                     (if _%$e258071%_ _%$e258071%_ '(%#ref absent-value))))
                 _%keys258033%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp262306
                                                    (cons '%#let-values
                                                          (cons _%kwbind258057%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt258048%_ '())
                                                      (cons (let ((__tmp262307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs258036%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp262307 _%stx257981%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp262308
                                                             (cons (let ((__tmp262309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main258032%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt258048%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs258035%_
                                                       _%xargs258075%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp262309 _%stx257981%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp262308 _%kwset258062%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp262306
                                               _%stx257981%_
                                               _%ctx257980%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%g258011258021%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%$%e258016258081%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g258011258021%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%$%e258017258084%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g258011258021%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%$%e258018258087%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g258011258021%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys258090%_ _%$%e258018258087%_)
                                   (_%$%e258019258092%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g258011258021%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main258095%_ _%$%e258019258092%_))
                              (_%$%K258015258078%_
                               _%main258095%_
                               _%keys258090%_))
                            (_%$%else258013258029%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx257980%_ _%stx257981%_)))))
               (_%$%e257998258100%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self257994258003%_
                   '1
                   '#f
                   '#f)))
               (_%$%e257999258103%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self257994258003%_
                   '2
                   '#f
                   '#f)))
               (_%$%e258000258106%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self257994258003%_
                   '3
                   '#f
                   '#f)))
               (_%table258109%_ _%$%e258000258106%_)
               (_%$%e258001258111%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self257994258003%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch258114%_ _%$%e258001258111%_))
          (_%$%K257997258097%_ _%dispatch258114%_ _%table258109%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx257592%_ _%args257593%_)
        (let _%lp257595%_ ((_%rest257597%_ _%args257593%_)
                           (_%pargs257598%_ '())
                           (_%kwargs257599%_ '()))
          (let* ((_%__stx261680261681%_ _%rest257597%_)
                 (_%$%g257605257657%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx261680261681%_)))))
            (let ((_%__kont261682261683%_
                   (lambda (_%$%g257607257836%_ _%$%g257608257837%_)
                     (_%lp257595%_
                      _%$%g257607257836%_
                      (cons _%$%g257608257837%_ _%pargs257598%_)
                      _%kwargs257599%_)))
                  (_%__kont261684261685%_
                   (lambda (_%$%g257622257782%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%$%g257622257782%_
                                _%pargs257598%_))
                             (reverse _%kwargs257599%_))))
                  (_%__kont261686261687%_
                   (lambda (_%$%g257633257729%_
                            _%$%g257634257730%_
                            _%$%g257635257731%_)
                     (let ((_%kw257748%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g257635257731%_))))
                       (if (assq _%kw257748%_ _%kwargs257599%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx257592%_
                              _%kw257748%_))
                           (_%lp257595%_
                            _%$%g257633257729%_
                            _%pargs257598%_
                            (cons (cons _%kw257748%_ _%$%g257634257730%_)
                                  _%kwargs257599%_))))))
                  (_%__kont261688261689%_
                   (lambda (_%$%g257648257677%_ _%$%g257649257678%_)
                     (_%lp257595%_
                      _%$%g257648257677%_
                      (cons _%$%g257649257678%_ _%pargs257598%_)
                      _%kwargs257599%_)))
                  (_%__kont261690261691%_
                   (lambda ()
                     (values (reverse _%pargs257598%_)
                             (reverse _%kwargs257599%_)))))
              (let ((_%__match261787261788%_
                     (lambda (_%$%e257636257697%_
                              _%$%hd257637257700%_
                              _%$%tl257638257702%_
                              _%$%e257639257705%_
                              _%$%hd257640257708%_
                              _%$%tl257641257710%_
                              _%$%e257642257713%_
                              _%$%hd257643257716%_
                              _%$%tl257644257718%_
                              _%$%e257645257721%_
                              _%$%hd257646257724%_
                              _%$%tl257647257726%_)
                       (let ((_%$%g257633257729%_ _%$%tl257647257726%_)
                             (_%$%g257634257730%_ _%$%hd257646257724%_)
                             (_%$%g257635257731%_ _%$%hd257643257716%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%$%g257635257731%_))
                             (_%__kont261686261687%_
                              _%$%g257633257729%_
                              _%$%g257634257730%_
                              _%$%g257635257731%_)
                             (_%__kont261688261689%_
                              _%$%tl257638257702%_
                              _%$%hd257637257700%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx261680261681%_))
                    (let ((_%$%e257609257801%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx261680261681%_))))
                      (let ((_%$%tl257611257806%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e257609257801%_)))
                            (_%$%hd257610257804%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e257609257801%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd257610257804%_))
                            (let ((_%$%e257612257809%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd257610257804%_))))
                              (let ((_%$%tl257614257814%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e257612257809%_)))
                                    (_%$%hd257613257812%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e257612257809%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd257613257812%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd257613257812%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl257614257814%_))
                                            (let ((_%$%e257615257817%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl257614257814%_))))
                                              (let ((_%$%tl257617257822%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e257615257817%_)))
                                                    (_%$%hd257616257820%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e257615257817%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd257616257820%_))
                                                    (let ((_%$%e257618257825%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd257616257820%_))))
                                                      (if (equal? _%$%e257618257825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl257617257822%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl257611257806%_))
                          (let ((_%$%e257619257828%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl257611257806%_))))
                            (let ((_%$%tl257621257833%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e257619257828%_)))
                                  (_%$%hd257620257831%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e257619257828%_))))
                              (_%__kont261682261683%_
                               _%$%tl257621257833%_
                               _%$%hd257620257831%_)))
                          (_%__kont261688261689%_
                           _%$%tl257611257806%_
                           _%$%hd257610257804%_))
                      (_%__kont261688261689%_
                       _%$%tl257611257806%_
                       _%$%hd257610257804%_))
                  (if (equal? _%$%e257618257825%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl257617257822%_))
                          (_%__kont261684261685%_ _%$%tl257611257806%_)
                          (_%__kont261688261689%_
                           _%$%tl257611257806%_
                           _%$%hd257610257804%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl257617257822%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl257611257806%_))
                              (let ((_%$%e257645257721%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl257611257806%_))))
                                (let ((_%$%tl257647257726%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e257645257721%_)))
                                      (_%$%hd257646257724%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e257645257721%_))))
                                  (_%__match261787261788%_
                                   _%$%e257609257801%_
                                   _%$%hd257610257804%_
                                   _%$%tl257611257806%_
                                   _%$%e257612257809%_
                                   _%$%hd257613257812%_
                                   _%$%tl257614257814%_
                                   _%$%e257615257817%_
                                   _%$%hd257616257820%_
                                   _%$%tl257617257822%_
                                   _%$%e257645257721%_
                                   _%$%hd257646257724%_
                                   _%$%tl257647257726%_)))
                              (_%__kont261688261689%_
                               _%$%tl257611257806%_
                               _%$%hd257610257804%_))
                          (_%__kont261688261689%_
                           _%$%tl257611257806%_
                           _%$%hd257610257804%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl257617257822%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl257611257806%_))
                                                            (let ((_%$%e257645257721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl257611257806%_))))
                      (let ((_%$%tl257647257726%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e257645257721%_)))
                            (_%$%hd257646257724%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e257645257721%_))))
                        (_%__match261787261788%_
                         _%$%e257609257801%_
                         _%$%hd257610257804%_
                         _%$%tl257611257806%_
                         _%$%e257612257809%_
                         _%$%hd257613257812%_
                         _%$%tl257614257814%_
                         _%$%e257615257817%_
                         _%$%hd257616257820%_
                         _%$%tl257617257822%_
                         _%$%e257645257721%_
                         _%$%hd257646257724%_
                         _%$%tl257647257726%_)))
                    (_%__kont261688261689%_
                     _%$%tl257611257806%_
                     _%$%hd257610257804%_))
                (_%__kont261688261689%_
                 _%$%tl257611257806%_
                 _%$%hd257610257804%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont261688261689%_
                                             _%$%tl257611257806%_
                                             _%$%hd257610257804%_))
                                        (_%__kont261688261689%_
                                         _%$%tl257611257806%_
                                         _%$%hd257610257804%_))
                                    (_%__kont261688261689%_
                                     _%$%tl257611257806%_
                                     _%$%hd257610257804%_))))
                            (_%__kont261688261689%_
                             _%$%tl257611257806%_
                             _%$%hd257610257804%_))))
                    (_%__kont261690261691%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self257576%_ _%ctx257577%_ _%stx257578%_ _%args257579%_)
        (let ((_%self257582%_ _%self257576%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx257577%_ _%stx257578%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self257266%_ _%stx257267%_)
        (let* ((_%__stx261796261797%_ _%stx257267%_)
               (_%$%g257270257310%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx261796261797%_)))))
          (let ((_%__kont261798261799%_
                 (lambda (_%$%g257272257414%_ _%$%g257273257415%_)
                   (let ((_%$e257442%_
                          (member 'return:
                                  (let ((__tmp262310
                                         (lambda (_%$%g257434257437%_
                                                  _%$%g257435257439%_)
                                           (cons _%$%g257434257437%_
                                                 _%$%g257435257439%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp262310
                                     '()
                                     _%$%g257273257415%_))
                                  gx#stx-eq?)))
                     (if _%$e257442%_
                         (let ((_%type257447%_
                                (let ((__tmp262311
                                       (let ((__tmp262312 (cadr _%$e257442%_)))
                                         (declare (not safe))
                                         (gxc#identifier-symbol __tmp262312))))
                                  (declare (not safe))
                                  (gxc#optimizer-resolve-class
                                   _%stx257267%_
                                   __tmp262311))))
                           (gxc#check-return-type!
                            _%stx257267%_
                            _%$%g257272257414%_
                            _%type257447%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self257266%_
                              _%$%g257272257414%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self257266%_
                            _%$%g257272257414%_))))))
                (_%__kont261802261803%_
                 (lambda (_%$%g257295257339%_ _%$%g257296257340%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self257266%_ _%$%g257295257339%_)))))
            (let ((_%__match261833261834%_
                   (lambda (_%$%e257274257360%_
                            _%$%hd257275257363%_
                            _%$%tl257276257365%_
                            _%$%e257277257368%_
                            _%$%hd257278257371%_
                            _%$%tl257279257373%_
                            _%$%e257280257376%_
                            _%$%hd257281257379%_
                            _%$%tl257282257381%_
                            _%__splice261800261801%_
                            _%$%target257283257384%_
                            _%$%tl257285257386%_)
                     (letrec ((_%$%loop257286257389%_
                               (lambda (_%$%hd257284257392%_
                                        _%$%signature257290257394%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd257284257392%_))
                                     (let ((_%$%e257287257396%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd257284257392%_))))
                                       (let ((_%$%lp-tl257289257401%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e257287257396%_)))
                                             (_%$%lp-hd257288257399%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e257287257396%_))))
                                         (_%$%loop257286257389%_
                                          _%$%lp-tl257289257401%_
                                          (cons _%$%lp-hd257288257399%_
                                                _%$%signature257290257394%_))))
                                     (let ((_%$%signature257291257404%_
                                            (reverse _%$%signature257290257394%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl257279257373%_))
                                           (let ((_%$%e257292257406%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl257279257373%_))))
                                             (let ((_%$%tl257294257411%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e257292257406%_)))
                                                   (_%$%hd257293257409%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e257292257406%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl257294257411%_))
                                                   (_%__kont261798261799%_
                                                    _%$%hd257293257409%_
                                                    _%$%signature257291257404%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g257270257310%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g257270257310%_))))))))
                       (_%$%loop257286257389%_
                        _%$%target257283257384%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx261796261797%_))
                  (let ((_%$%e257274257360%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx261796261797%_))))
                    (let ((_%$%tl257276257365%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e257274257360%_)))
                          (_%$%hd257275257363%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e257274257360%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl257276257365%_))
                          (let ((_%$%e257277257368%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl257276257365%_))))
                            (let ((_%$%tl257279257373%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e257277257368%_)))
                                  (_%$%hd257278257371%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e257277257368%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd257278257371%_))
                                  (let ((_%$%e257280257376%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd257278257371%_))))
                                    (let ((_%$%tl257282257381%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e257280257376%_)))
                                          (_%$%hd257281257379%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e257280257376%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd257281257379%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%$%hd257281257379%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%$%tl257282257381%_))
                                                  (let ((_%__splice261800261801%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl257282257381%_
                                                            '0))))
                                                    (let ((_%$%tl257285257386%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice261800261801%_
                                                              '1)))
                                                          (_%$%target257283257384%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice261800261801%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl257285257386%_))
                                                          (_%__match261833261834%_
                                                           _%$%e257274257360%_
                                                           _%$%hd257275257363%_
                                                           _%$%tl257276257365%_
                                                           _%$%e257277257368%_
                                                           _%$%hd257278257371%_
                                                           _%$%tl257279257373%_
                                                           _%$%e257280257376%_
                                                           _%$%hd257281257379%_
                                                           _%$%tl257282257381%_
                                                           _%__splice261800261801%_
                                                           _%$%target257283257384%_
                                                           _%$%tl257285257386%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl257279257373%_))
                      (let ((_%$%e257303257331%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl257279257373%_))))
                        (let ((_%$%tl257305257336%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e257303257331%_)))
                              (_%$%hd257304257334%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e257303257331%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl257305257336%_))
                              (_%__kont261802261803%_
                               _%$%hd257304257334%_
                               _%$%hd257278257371%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g257270257310%_)))))
                      (let () (declare (not safe)) (_%$%g257270257310%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl257279257373%_))
                                                      (let ((_%$%e257303257331%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl257279257373%_))))
                (let ((_%$%tl257305257336%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e257303257331%_)))
                      (_%$%hd257304257334%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e257303257331%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl257305257336%_))
                      (_%__kont261802261803%_
                       _%$%hd257304257334%_
                       _%$%hd257278257371%_)
                      (let () (declare (not safe)) (_%$%g257270257310%_)))))
              (let () (declare (not safe)) (_%$%g257270257310%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl257279257373%_))
                                                  (let ((_%$%e257303257331%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl257279257373%_))))
                                                    (let ((_%$%tl257305257336%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e257303257331%_)))
                                                          (_%$%hd257304257334%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e257303257331%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl257305257336%_))
                                                          (_%__kont261802261803%_
                                                           _%$%hd257304257334%_
                                                           _%$%hd257278257371%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g257270257310%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g257270257310%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl257279257373%_))
                                              (let ((_%$%e257303257331%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl257279257373%_))))
                                                (let ((_%$%tl257305257336%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e257303257331%_)))
                                                      (_%$%hd257304257334%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e257303257331%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl257305257336%_))
                                                      (_%__kont261802261803%_
                                                       _%$%hd257304257334%_
                                                       _%$%hd257278257371%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g257270257310%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g257270257310%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl257279257373%_))
                                      (let ((_%$%e257303257331%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl257279257373%_))))
                                        (let ((_%$%tl257305257336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e257303257331%_)))
                                              (_%$%hd257304257334%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e257303257331%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl257305257336%_))
                                              (_%__kont261802261803%_
                                               _%$%hd257304257334%_
                                               _%$%hd257278257371%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g257270257310%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g257270257310%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g257270257310%_)))))
                  (let () (declare (not safe)) (_%$%g257270257310%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx257241%_ _%expr257242%_ _%type257243%_)
        (let ((_%$e257245%_ (not _%type257243%_)))
          (if _%$e257245%_
              _%$e257245%_
              (let ((_%$e257248%_
                     (eq? (##structure-ref _%type257243%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e257248%_
                    _%$e257248%_
                    (let ((_%$e257251%_
                           (eq? (##structure-ref
                                 _%type257243%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e257251%_
                          _%$e257251%_
                          (let ((_%expr-type257255%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr257242%_))))
                            (if (not _%expr-type257255%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx257241%_
                                   _%type257243%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type257255%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx257241%_
                                       _%type257243%_
                                       _%expr-type257255%_))
                                    (let ((_%$e257259%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type257255%_
                                              'gxc#!abort::t))))
                                      (if _%$e257259%_
                                          _%$e257259%_
                                          (let ((_%$e257262%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type257255%_
                                                    _%type257243%_))))
                                            (if _%$e257262%_
                                                _%$e257262%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx257241%_
                                                   _%type257243%_
                                                   _%expr-type257255%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self256670%_ _%stx256671%_)
        (gxc#check-contract-violation!
         _%stx256671%_
         (let* ((_%__stx261882261883%_ _%stx256671%_)
                (_%$%g256676256786%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; invalid match target"
                      _%__stx261882261883%_)))))
           (let ((_%__kont261884261885%_
                  (lambda (_%$%g256678257215%_
                           _%$%g256679257216%_
                           _%$%g256680257217%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-e _%$%g256680257217%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self256670%_
                           _%$%g256679257216%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self256670%_
                           _%$%g256678257215%_)))))
                 (_%__kont261886261887%_
                  (lambda (_%$%g256699257044%_
                           _%$%g256700257045%_
                           _%$%g256701257046%_
                           _%$%g256702257047%_)
                    (let ((_%$e257079%_
                           (let ((__tmp262313
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g256702257047%_))))
                             (declare (not safe))
                             (gxc#optimizer-lookup-type __tmp262313))))
                      (if _%$e257079%_
                          (if (or (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e257079%_
                                     'gxc#!predicate::t))
                                  (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e257079%_
                                     'gxc#!primitive-predicate::t)))
                              (let* ((_%test257087%_
                                      (let ((__tmp262314
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '%#call))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '%#ref))
                       (cons _%$%g256702257047%_ '()))
                 (cons (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#ref))
                             (cons _%$%g256701257046%_ '()))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-apply
                                         __tmp262314
                                         _%stx256671%_
                                         _%self256670%_)))
                                     (_%K257091%_
                                      (let ((__tmp262315
                                             (lambda ()
                                               (let ((__tmp262318
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self256670%_
                                                           _%$%g256700257045%_))))
                                                     (__tmp262316
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#identifier-symbol _%$%g256701257046%_))
                          (let ((__tmp262317
                                 (##structure-ref
                                  _%$e257079%_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             _%stx256671%_
                             __tmp262317)))
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp262318
                                                  gxc#current-compile-path-type
                                                  __tmp262316)))))
                                        (declare (not safe))
                                        (__make-promise __tmp262315)))
                                     (_%E257094%_
                                      (let ((__tmp262319
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self256670%_
                                                  _%$%g256699257044%_)))))
                                        (declare (not safe))
                                        (__make-promise __tmp262319)))
                                     (_%__stx261856261857%_ _%test257087%_)
                                     (_%$%g257098257111%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx261856261857%_)))))
                                (let ((_%__kont261858261859%_
                                       (lambda (_%$%g257100257139%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%$%g257100257139%_))
                                             (force _%K257091%_)
                                             (force _%E257094%_))))
                                      (_%__kont261860261861%_
                                       (lambda ()
                                         (let ((__tmp262320
                                                (cons '%#if
                                                      (cons _%test257087%_
                                                            (cons (force _%K257091%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (force _%E257094%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp262320
                                            _%stx256671%_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx261856261857%_))
                                      (let ((_%$%e257101257123%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx261856261857%_))))
                                        (let ((_%$%tl257103257128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e257101257123%_)))
                                              (_%$%hd257102257126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e257101257123%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%hd257102257126%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#quote
                                                     _%$%hd257102257126%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl257103257128%_))
                                                      (let ((_%$%e257104257131%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl257103257128%_))))
                (let ((_%$%tl257106257136%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e257104257131%_)))
                      (_%$%hd257105257134%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e257104257131%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl257106257136%_))
                      (_%__kont261858261859%_ _%$%hd257105257134%_)
                      (_%__kont261860261861%_))))
              (_%__kont261860261861%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont261860261861%_))
                                              (_%__kont261860261861%_))))
                                      (_%__kont261860261861%_))))
                              (let ()
                                (declare (not safe))
                                (gxc#xform-operands
                                 _%self256670%_
                                 _%stx256671%_)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-operands
                             _%self256670%_
                             _%stx256671%_))))))
                 (_%__kont261888261889%_
                  (lambda (_%$%g256736256920%_
                           _%$%g256737256921%_
                           _%$%g256738256922%_
                           _%$%g256739256923%_)
                    (gxc#optimize-if%
                     _%self256670%_
                     (let ((__tmp262321
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#if))
                                  (cons _%$%g256738256922%_
                                        (cons _%$%g256736256920%_
                                              (cons _%$%g256737256921%_
                                                    '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp262321 _%stx256671%_)))))
                 (_%__kont261890261891%_
                  (lambda (_%$%g256767256823%_
                           _%$%g256768256824%_
                           _%$%g256769256825%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-operands _%self256670%_ _%stx256671%_)))))
             (let ((_%__match262089262090%_
                    (lambda (_%$%e256740256848%_
                             _%$%hd256741256851%_
                             _%$%tl256742256853%_
                             _%$%e256743256856%_
                             _%$%hd256744256859%_
                             _%$%tl256745256861%_
                             _%$%e256746256864%_
                             _%$%hd256747256867%_
                             _%$%tl256748256869%_
                             _%$%e256749256872%_
                             _%$%hd256750256875%_
                             _%$%tl256751256877%_
                             _%$%e256752256880%_
                             _%$%hd256753256883%_
                             _%$%tl256754256885%_
                             _%$%e256755256888%_
                             _%$%hd256756256891%_
                             _%$%tl256757256893%_
                             _%$%e256758256896%_
                             _%$%hd256759256899%_
                             _%$%tl256760256901%_
                             _%$%e256761256904%_
                             _%$%hd256762256907%_
                             _%$%tl256763256909%_
                             _%$%e256764256912%_
                             _%$%hd256765256915%_
                             _%$%tl256766256917%_)
                      (let ((_%$%g256736256920%_ _%$%hd256765256915%_)
                            (_%$%g256737256921%_ _%$%hd256762256907%_)
                            (_%$%g256738256922%_ _%$%hd256759256899%_)
                            (_%$%g256739256923%_ _%$%hd256756256891%_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _%$%g256739256923%_
                               'not))
                            (_%__kont261888261889%_
                             _%$%g256736256920%_
                             _%$%g256737256921%_
                             _%$%g256738256922%_
                             _%$%g256739256923%_)
                            (_%__kont261890261891%_
                             _%$%hd256765256915%_
                             _%$%hd256762256907%_
                             _%$%hd256744256859%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx261882261883%_))
                   (let ((_%$%e256681257167%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx261882261883%_))))
                     (let ((_%$%tl256683257172%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e256681257167%_)))
                           (_%$%hd256682257170%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e256681257167%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl256683257172%_))
                           (let ((_%$%e256684257175%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl256683257172%_))))
                             (let ((_%$%tl256686257180%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e256684257175%_)))
                                   (_%$%hd256685257178%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e256684257175%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd256685257178%_))
                                   (let ((_%$%e256687257183%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd256685257178%_))))
                                     (let ((_%$%tl256689257188%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e256687257183%_)))
                                           (_%$%hd256688257186%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e256687257183%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd256688257186%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#quote
                                                  _%$%hd256688257186%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl256689257188%_))
                                                   (let ((_%$%e256690257191%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl256689257188%_))))
                                                     (let ((_%$%tl256692257196%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e256690257191%_)))
                                                           (_%$%hd256691257194%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e256690257191%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl256692257196%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl256686257180%_))
                       (let ((_%$%e256693257199%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl256686257180%_))))
                         (let ((_%$%tl256695257204%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e256693257199%_)))
                               (_%$%hd256694257202%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e256693257199%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl256695257204%_))
                               (let ((_%$%e256696257207%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl256695257204%_))))
                                 (let ((_%$%tl256698257212%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e256696257207%_)))
                                       (_%$%hd256697257210%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e256696257207%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl256698257212%_))
                                       (_%__kont261884261885%_
                                        _%$%hd256697257210%_
                                        _%$%hd256694257202%_
                                        _%$%hd256691257194%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g256676256786%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g256676256786%_)))))
                       (let () (declare (not safe)) (_%$%g256676256786%_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl256686257180%_))
                       (let ((_%$%e256776256807%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl256686257180%_))))
                         (let ((_%$%tl256778256812%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e256776256807%_)))
                               (_%$%hd256777256810%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e256776256807%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl256778256812%_))
                               (let ((_%$%e256779256815%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl256778256812%_))))
                                 (let ((_%$%tl256781256820%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e256779256815%_)))
                                       (_%$%hd256780256818%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e256779256815%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl256781256820%_))
                                       (_%__kont261890261891%_
                                        _%$%hd256780256818%_
                                        _%$%hd256777256810%_
                                        _%$%hd256685257178%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g256676256786%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g256676256786%_)))))
                       (let () (declare (not safe)) (_%$%g256676256786%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl256686257180%_))
                                                       (let ((_%$%e256776256807%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl256686257180%_))))
                 (let ((_%$%tl256778256812%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e256776256807%_)))
                       (_%$%hd256777256810%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e256776256807%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl256778256812%_))
                       (let ((_%$%e256779256815%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl256778256812%_))))
                         (let ((_%$%tl256781256820%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e256779256815%_)))
                               (_%$%hd256780256818%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e256779256815%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl256781256820%_))
                               (_%__kont261890261891%_
                                _%$%hd256780256818%_
                                _%$%hd256777256810%_
                                _%$%hd256685257178%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g256676256786%_)))))
                       (let () (declare (not safe)) (_%$%g256676256786%_)))))
               (let () (declare (not safe)) (_%$%g256676256786%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-eq?
                                                      '%#call
                                                      _%$%hd256688257186%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl256689257188%_))
                                                       (let ((_%$%e256712256980%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl256689257188%_))))
                 (let ((_%$%tl256714256985%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e256712256980%_)))
                       (_%$%hd256713256983%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e256712256980%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%hd256713256983%_))
                       (let ((_%$%e256715256988%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%hd256713256983%_))))
                         (let ((_%$%tl256717256993%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e256715256988%_)))
                               (_%$%hd256716256991%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e256715256988%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%$%hd256716256991%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-eq? '%#ref _%$%hd256716256991%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl256717256993%_))
                                       (let ((_%$%e256718256996%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl256717256993%_))))
                                         (let ((_%$%tl256720257001%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e256718256996%_)))
                                               (_%$%hd256719256999%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e256718256996%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl256720257001%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl256714256985%_))
                                                   (let ((_%$%e256721257004%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl256714256985%_))))
                                                     (let ((_%$%tl256723257009%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e256721257004%_)))
                                                           (_%$%hd256722257007%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e256721257004%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd256722257007%_))
                                                           (let ((_%$%e256724257012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd256722257007%_))))
                     (let ((_%$%tl256726257017%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e256724257012%_)))
                           (_%$%hd256725257015%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e256724257012%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%$%hd256725257015%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-eq? '%#ref _%$%hd256725257015%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl256726257017%_))
                                   (let ((_%$%e256727257020%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl256726257017%_))))
                                     (let ((_%$%tl256729257025%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e256727257020%_)))
                                           (_%$%hd256728257023%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e256727257020%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl256729257025%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl256723257009%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl256686257180%_))
                                                   (let ((_%$%e256730257028%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl256686257180%_))))
                                                     (let ((_%$%tl256732257033%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e256730257028%_)))
                                                           (_%$%hd256731257031%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e256730257028%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl256732257033%_))
                                                           (let ((_%$%e256733257036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl256732257033%_))))
                     (let ((_%$%tl256735257041%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e256733257036%_)))
                           (_%$%hd256734257039%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e256733257036%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl256735257041%_))
                           (_%__kont261886261887%_
                            _%$%hd256734257039%_
                            _%$%hd256731257031%_
                            _%$%hd256728257023%_
                            _%$%hd256719256999%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g256676256786%_)))))
                   (let () (declare (not safe)) (_%$%g256676256786%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256676256786%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl256686257180%_))
                                                   (let ((_%$%e256776256807%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl256686257180%_))))
                                                     (let ((_%$%tl256778256812%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e256776256807%_)))
                                                           (_%$%hd256777256810%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e256776256807%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl256778256812%_))
                                                           (let ((_%$%e256779256815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl256778256812%_))))
                     (let ((_%$%tl256781256820%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e256779256815%_)))
                           (_%$%hd256780256818%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e256779256815%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl256781256820%_))
                           (_%__kont261890261891%_
                            _%$%hd256780256818%_
                            _%$%hd256777256810%_
                            _%$%hd256685257178%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g256676256786%_)))))
                   (let () (declare (not safe)) (_%$%g256676256786%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256676256786%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl256723257009%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl256686257180%_))
                                                   (let ((_%$%e256761256904%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl256686257180%_))))
                                                     (let ((_%$%tl256763256909%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e256761256904%_)))
                                                           (_%$%hd256762256907%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e256761256904%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl256763256909%_))
                                                           (let ((_%$%e256764256912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl256763256909%_))))
                     (let ((_%$%tl256766256917%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e256764256912%_)))
                           (_%$%hd256765256915%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e256764256912%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl256766256917%_))
                           (_%__match262089262090%_
                            _%$%e256681257167%_
                            _%$%hd256682257170%_
                            _%$%tl256683257172%_
                            _%$%e256684257175%_
                            _%$%hd256685257178%_
                            _%$%tl256686257180%_
                            _%$%e256687257183%_
                            _%$%hd256688257186%_
                            _%$%tl256689257188%_
                            _%$%e256712256980%_
                            _%$%hd256713256983%_
                            _%$%tl256714256985%_
                            _%$%e256715256988%_
                            _%$%hd256716256991%_
                            _%$%tl256717256993%_
                            _%$%e256718256996%_
                            _%$%hd256719256999%_
                            _%$%tl256720257001%_
                            _%$%e256721257004%_
                            _%$%hd256722257007%_
                            _%$%tl256723257009%_
                            _%$%e256761256904%_
                            _%$%hd256762256907%_
                            _%$%tl256763256909%_
                            _%$%e256764256912%_
                            _%$%hd256765256915%_
                            _%$%tl256766256917%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g256676256786%_)))))
                   (let () (declare (not safe)) (_%$%g256676256786%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256676256786%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl256686257180%_))
                                                   (let ((_%$%e256776256807%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl256686257180%_))))
                                                     (let ((_%$%tl256778256812%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e256776256807%_)))
                                                           (_%$%hd256777256810%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e256776256807%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl256778256812%_))
                                                           (let ((_%$%e256779256815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl256778256812%_))))
                     (let ((_%$%tl256781256820%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e256779256815%_)))
                           (_%$%hd256780256818%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e256779256815%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl256781256820%_))
                           (_%__kont261890261891%_
                            _%$%hd256780256818%_
                            _%$%hd256777256810%_
                            _%$%hd256685257178%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g256676256786%_)))))
                   (let () (declare (not safe)) (_%$%g256676256786%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256676256786%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl256723257009%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl256686257180%_))
                                           (let ((_%$%e256761256904%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl256686257180%_))))
                                             (let ((_%$%tl256763256909%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e256761256904%_)))
                                                   (_%$%hd256762256907%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e256761256904%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl256763256909%_))
                                                   (let ((_%$%e256764256912%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl256763256909%_))))
                                                     (let ((_%$%tl256766256917%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e256764256912%_)))
                                                           (_%$%hd256765256915%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e256764256912%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl256766256917%_))
                                                           (_%__match262089262090%_
                                                            _%$%e256681257167%_
                                                            _%$%hd256682257170%_
                                                            _%$%tl256683257172%_
                                                            _%$%e256684257175%_
                                                            _%$%hd256685257178%_
                                                            _%$%tl256686257180%_
                                                            _%$%e256687257183%_
                                                            _%$%hd256688257186%_
                                                            _%$%tl256689257188%_
                                                            _%$%e256712256980%_
                                                            _%$%hd256713256983%_
                                                            _%$%tl256714256985%_
                                                            _%$%e256715256988%_
                                                            _%$%hd256716256991%_
                                                            _%$%tl256717256993%_
                                                            _%$%e256718256996%_
                                                            _%$%hd256719256999%_
                                                            _%$%tl256720257001%_
                                                            _%$%e256721257004%_
                                                            _%$%hd256722257007%_
                                                            _%$%tl256723257009%_
                                                            _%$%e256761256904%_
                                                            _%$%hd256762256907%_
                                                            _%$%tl256763256909%_
                                                            _%$%e256764256912%_
                                                            _%$%hd256765256915%_
                                                            _%$%tl256766256917%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g256676256786%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256676256786%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g256676256786%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl256686257180%_))
                                           (let ((_%$%e256776256807%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl256686257180%_))))
                                             (let ((_%$%tl256778256812%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e256776256807%_)))
                                                   (_%$%hd256777256810%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e256776256807%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl256778256812%_))
                                                   (let ((_%$%e256779256815%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl256778256812%_))))
                                                     (let ((_%$%tl256781256820%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e256779256815%_)))
                                                           (_%$%hd256780256818%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e256779256815%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl256781256820%_))
                                                           (_%__kont261890261891%_
                                                            _%$%hd256780256818%_
                                                            _%$%hd256777256810%_
                                                            _%$%hd256685257178%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g256676256786%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256676256786%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g256676256786%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl256723257009%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl256686257180%_))
                                       (let ((_%$%e256761256904%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl256686257180%_))))
                                         (let ((_%$%tl256763256909%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e256761256904%_)))
                                               (_%$%hd256762256907%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e256761256904%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl256763256909%_))
                                               (let ((_%$%e256764256912%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl256763256909%_))))
                                                 (let ((_%$%tl256766256917%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e256764256912%_)))
                                                       (_%$%hd256765256915%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e256764256912%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl256766256917%_))
                                                       (_%__match262089262090%_
                                                        _%$%e256681257167%_
                                                        _%$%hd256682257170%_
                                                        _%$%tl256683257172%_
                                                        _%$%e256684257175%_
                                                        _%$%hd256685257178%_
                                                        _%$%tl256686257180%_
                                                        _%$%e256687257183%_
                                                        _%$%hd256688257186%_
                                                        _%$%tl256689257188%_
                                                        _%$%e256712256980%_
                                                        _%$%hd256713256983%_
                                                        _%$%tl256714256985%_
                                                        _%$%e256715256988%_
                                                        _%$%hd256716256991%_
                                                        _%$%tl256717256993%_
                                                        _%$%e256718256996%_
                                                        _%$%hd256719256999%_
                                                        _%$%tl256720257001%_
                                                        _%$%e256721257004%_
                                                        _%$%hd256722257007%_
                                                        _%$%tl256723257009%_
                                                        _%$%e256761256904%_
                                                        _%$%hd256762256907%_
                                                        _%$%tl256763256909%_
                                                        _%$%e256764256912%_
                                                        _%$%hd256765256915%_
                                                        _%$%tl256766256917%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g256676256786%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g256676256786%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g256676256786%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl256686257180%_))
                                       (let ((_%$%e256776256807%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl256686257180%_))))
                                         (let ((_%$%tl256778256812%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e256776256807%_)))
                                               (_%$%hd256777256810%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e256776256807%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl256778256812%_))
                                               (let ((_%$%e256779256815%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl256778256812%_))))
                                                 (let ((_%$%tl256781256820%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e256779256815%_)))
                                                       (_%$%hd256780256818%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e256779256815%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl256781256820%_))
                                                       (_%__kont261890261891%_
                                                        _%$%hd256780256818%_
                                                        _%$%hd256777256810%_
                                                        _%$%hd256685257178%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g256676256786%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g256676256786%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g256676256786%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl256723257009%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl256686257180%_))
                                   (let ((_%$%e256761256904%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl256686257180%_))))
                                     (let ((_%$%tl256763256909%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e256761256904%_)))
                                           (_%$%hd256762256907%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e256761256904%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl256763256909%_))
                                           (let ((_%$%e256764256912%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl256763256909%_))))
                                             (let ((_%$%tl256766256917%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e256764256912%_)))
                                                   (_%$%hd256765256915%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e256764256912%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl256766256917%_))
                                                   (_%__match262089262090%_
                                                    _%$%e256681257167%_
                                                    _%$%hd256682257170%_
                                                    _%$%tl256683257172%_
                                                    _%$%e256684257175%_
                                                    _%$%hd256685257178%_
                                                    _%$%tl256686257180%_
                                                    _%$%e256687257183%_
                                                    _%$%hd256688257186%_
                                                    _%$%tl256689257188%_
                                                    _%$%e256712256980%_
                                                    _%$%hd256713256983%_
                                                    _%$%tl256714256985%_
                                                    _%$%e256715256988%_
                                                    _%$%hd256716256991%_
                                                    _%$%tl256717256993%_
                                                    _%$%e256718256996%_
                                                    _%$%hd256719256999%_
                                                    _%$%tl256720257001%_
                                                    _%$%e256721257004%_
                                                    _%$%hd256722257007%_
                                                    _%$%tl256723257009%_
                                                    _%$%e256761256904%_
                                                    _%$%hd256762256907%_
                                                    _%$%tl256763256909%_
                                                    _%$%e256764256912%_
                                                    _%$%hd256765256915%_
                                                    _%$%tl256766256917%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256676256786%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g256676256786%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g256676256786%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl256686257180%_))
                                   (let ((_%$%e256776256807%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl256686257180%_))))
                                     (let ((_%$%tl256778256812%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e256776256807%_)))
                                           (_%$%hd256777256810%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e256776256807%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl256778256812%_))
                                           (let ((_%$%e256779256815%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl256778256812%_))))
                                             (let ((_%$%tl256781256820%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e256779256815%_)))
                                                   (_%$%hd256780256818%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e256779256815%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl256781256820%_))
                                                   (_%__kont261890261891%_
                                                    _%$%hd256780256818%_
                                                    _%$%hd256777256810%_
                                                    _%$%hd256685257178%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256676256786%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g256676256786%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g256676256786%_)))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl256723257009%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl256686257180%_))
                           (let ((_%$%e256761256904%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl256686257180%_))))
                             (let ((_%$%tl256763256909%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e256761256904%_)))
                                   (_%$%hd256762256907%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e256761256904%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl256763256909%_))
                                   (let ((_%$%e256764256912%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl256763256909%_))))
                                     (let ((_%$%tl256766256917%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e256764256912%_)))
                                           (_%$%hd256765256915%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e256764256912%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl256766256917%_))
                                           (_%__match262089262090%_
                                            _%$%e256681257167%_
                                            _%$%hd256682257170%_
                                            _%$%tl256683257172%_
                                            _%$%e256684257175%_
                                            _%$%hd256685257178%_
                                            _%$%tl256686257180%_
                                            _%$%e256687257183%_
                                            _%$%hd256688257186%_
                                            _%$%tl256689257188%_
                                            _%$%e256712256980%_
                                            _%$%hd256713256983%_
                                            _%$%tl256714256985%_
                                            _%$%e256715256988%_
                                            _%$%hd256716256991%_
                                            _%$%tl256717256993%_
                                            _%$%e256718256996%_
                                            _%$%hd256719256999%_
                                            _%$%tl256720257001%_
                                            _%$%e256721257004%_
                                            _%$%hd256722257007%_
                                            _%$%tl256723257009%_
                                            _%$%e256761256904%_
                                            _%$%hd256762256907%_
                                            _%$%tl256763256909%_
                                            _%$%e256764256912%_
                                            _%$%hd256765256915%_
                                            _%$%tl256766256917%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g256676256786%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g256676256786%_)))))
                           (let () (declare (not safe)) (_%$%g256676256786%_)))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl256686257180%_))
                           (let ((_%$%e256776256807%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl256686257180%_))))
                             (let ((_%$%tl256778256812%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e256776256807%_)))
                                   (_%$%hd256777256810%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e256776256807%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl256778256812%_))
                                   (let ((_%$%e256779256815%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl256778256812%_))))
                                     (let ((_%$%tl256781256820%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e256779256815%_)))
                                           (_%$%hd256780256818%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e256779256815%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl256781256820%_))
                                           (_%__kont261890261891%_
                                            _%$%hd256780256818%_
                                            _%$%hd256777256810%_
                                            _%$%hd256685257178%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g256676256786%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g256676256786%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g256676256786%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl256686257180%_))
                                                       (let ((_%$%e256776256807%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl256686257180%_))))
                 (let ((_%$%tl256778256812%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e256776256807%_)))
                       (_%$%hd256777256810%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e256776256807%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl256778256812%_))
                       (let ((_%$%e256779256815%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl256778256812%_))))
                         (let ((_%$%tl256781256820%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e256779256815%_)))
                               (_%$%hd256780256818%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e256779256815%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl256781256820%_))
                               (_%__kont261890261891%_
                                _%$%hd256780256818%_
                                _%$%hd256777256810%_
                                _%$%hd256685257178%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g256676256786%_)))))
                       (let () (declare (not safe)) (_%$%g256676256786%_)))))
               (let () (declare (not safe)) (_%$%g256676256786%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl256686257180%_))
                                                   (let ((_%$%e256776256807%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl256686257180%_))))
                                                     (let ((_%$%tl256778256812%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e256776256807%_)))
                                                           (_%$%hd256777256810%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e256776256807%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl256778256812%_))
                                                           (let ((_%$%e256779256815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl256778256812%_))))
                     (let ((_%$%tl256781256820%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e256779256815%_)))
                           (_%$%hd256780256818%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e256779256815%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl256781256820%_))
                           (_%__kont261890261891%_
                            _%$%hd256780256818%_
                            _%$%hd256777256810%_
                            _%$%hd256685257178%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g256676256786%_)))))
                   (let () (declare (not safe)) (_%$%g256676256786%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256676256786%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl256686257180%_))
                                           (let ((_%$%e256776256807%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl256686257180%_))))
                                             (let ((_%$%tl256778256812%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e256776256807%_)))
                                                   (_%$%hd256777256810%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e256776256807%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl256778256812%_))
                                                   (let ((_%$%e256779256815%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl256778256812%_))))
                                                     (let ((_%$%tl256781256820%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e256779256815%_)))
                                                           (_%$%hd256780256818%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e256779256815%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl256781256820%_))
                                                           (_%__kont261890261891%_
                                                            _%$%hd256780256818%_
                                                            _%$%hd256777256810%_
                                                            _%$%hd256685257178%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g256676256786%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256676256786%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g256676256786%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl256686257180%_))
                                       (let ((_%$%e256776256807%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl256686257180%_))))
                                         (let ((_%$%tl256778256812%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e256776256807%_)))
                                               (_%$%hd256777256810%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e256776256807%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl256778256812%_))
                                               (let ((_%$%e256779256815%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl256778256812%_))))
                                                 (let ((_%$%tl256781256820%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e256779256815%_)))
                                                       (_%$%hd256780256818%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e256779256815%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl256781256820%_))
                                                       (_%__kont261890261891%_
                                                        _%$%hd256780256818%_
                                                        _%$%hd256777256810%_
                                                        _%$%hd256685257178%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g256676256786%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g256676256786%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g256676256786%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl256686257180%_))
                                   (let ((_%$%e256776256807%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl256686257180%_))))
                                     (let ((_%$%tl256778256812%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e256776256807%_)))
                                           (_%$%hd256777256810%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e256776256807%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl256778256812%_))
                                           (let ((_%$%e256779256815%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl256778256812%_))))
                                             (let ((_%$%tl256781256820%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e256779256815%_)))
                                                   (_%$%hd256780256818%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e256779256815%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl256781256820%_))
                                                   (_%__kont261890261891%_
                                                    _%$%hd256780256818%_
                                                    _%$%hd256777256810%_
                                                    _%$%hd256685257178%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256676256786%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g256676256786%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g256676256786%_))))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl256686257180%_))
                           (let ((_%$%e256776256807%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl256686257180%_))))
                             (let ((_%$%tl256778256812%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e256776256807%_)))
                                   (_%$%hd256777256810%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e256776256807%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl256778256812%_))
                                   (let ((_%$%e256779256815%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl256778256812%_))))
                                     (let ((_%$%tl256781256820%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e256779256815%_)))
                                           (_%$%hd256780256818%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e256779256815%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl256781256820%_))
                                           (_%__kont261890261891%_
                                            _%$%hd256780256818%_
                                            _%$%hd256777256810%_
                                            _%$%hd256685257178%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g256676256786%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g256676256786%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g256676256786%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%$%tl256686257180%_))
                   (let ((_%$%e256776256807%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl256686257180%_))))
                     (let ((_%$%tl256778256812%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e256776256807%_)))
                           (_%$%hd256777256810%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e256776256807%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl256778256812%_))
                           (let ((_%$%e256779256815%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl256778256812%_))))
                             (let ((_%$%tl256781256820%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e256779256815%_)))
                                   (_%$%hd256780256818%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e256779256815%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl256781256820%_))
                                   (_%__kont261890261891%_
                                    _%$%hd256780256818%_
                                    _%$%hd256777256810%_
                                    _%$%hd256685257178%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g256676256786%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g256676256786%_)))))
                   (let () (declare (not safe)) (_%$%g256676256786%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl256686257180%_))
                                                       (let ((_%$%e256776256807%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl256686257180%_))))
                 (let ((_%$%tl256778256812%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e256776256807%_)))
                       (_%$%hd256777256810%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e256776256807%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl256778256812%_))
                       (let ((_%$%e256779256815%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl256778256812%_))))
                         (let ((_%$%tl256781256820%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e256779256815%_)))
                               (_%$%hd256780256818%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e256779256815%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl256781256820%_))
                               (_%__kont261890261891%_
                                _%$%hd256780256818%_
                                _%$%hd256777256810%_
                                _%$%hd256685257178%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g256676256786%_)))))
                       (let () (declare (not safe)) (_%$%g256676256786%_)))))
               (let () (declare (not safe)) (_%$%g256676256786%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl256686257180%_))
                                               (let ((_%$%e256776256807%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl256686257180%_))))
                                                 (let ((_%$%tl256778256812%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e256776256807%_)))
                                                       (_%$%hd256777256810%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e256776256807%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl256778256812%_))
                                                       (let ((_%$%e256779256815%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl256778256812%_))))
                 (let ((_%$%tl256781256820%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e256779256815%_)))
                       (_%$%hd256780256818%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e256779256815%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl256781256820%_))
                       (_%__kont261890261891%_
                        _%$%hd256780256818%_
                        _%$%hd256777256810%_
                        _%$%hd256685257178%_)
                       (let () (declare (not safe)) (_%$%g256676256786%_)))))
               (let () (declare (not safe)) (_%$%g256676256786%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g256676256786%_))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl256686257180%_))
                                       (let ((_%$%e256776256807%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl256686257180%_))))
                                         (let ((_%$%tl256778256812%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e256776256807%_)))
                                               (_%$%hd256777256810%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e256776256807%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl256778256812%_))
                                               (let ((_%$%e256779256815%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl256778256812%_))))
                                                 (let ((_%$%tl256781256820%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e256779256815%_)))
                                                       (_%$%hd256780256818%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e256779256815%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl256781256820%_))
                                                       (_%__kont261890261891%_
                                                        _%$%hd256780256818%_
                                                        _%$%hd256777256810%_
                                                        _%$%hd256685257178%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g256676256786%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g256676256786%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g256676256786%_))))))
                           (let ()
                             (declare (not safe))
                             (_%$%g256676256786%_)))))
                   (let () (declare (not safe)) (_%$%g256676256786%_)))))))))
    (define gxc#check-contract-violation!
      (lambda (_%stx256538%_ _%expr256539%_)
        (let* ((_%__stx262118262119%_ _%expr256539%_)
               (_%$%g256542256572%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx262118262119%_)))))
          (let ((_%__kont262120262121%_
                 (lambda (_%$%g256544256640%_
                          _%$%g256545256641%_
                          _%$%g256546256642%_)
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"contract violation"
                      _%stx256538%_
                      _%$%g256546256642%_
                      _%$%g256545256641%_
                      _%$%g256544256640%_))))
                (_%__kont262122262123%_ (lambda () _%expr256539%_)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx262118262119%_))
                (let ((_%$%e256547256584%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx262118262119%_))))
                  (let ((_%$%tl256549256589%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e256547256584%_)))
                        (_%$%hd256548256587%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e256547256584%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd256548256587%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq?
                               '%#begin-annotation
                               _%$%hd256548256587%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl256549256589%_))
                                (let ((_%$%e256550256592%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl256549256589%_))))
                                  (let ((_%$%tl256552256597%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e256550256592%_)))
                                        (_%$%hd256551256595%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e256550256592%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd256551256595%_))
                                        (let ((_%$%e256553256600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd256551256595%_))))
                                          (let ((_%$%tl256555256605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e256553256600%_)))
                                                (_%$%hd256554256603%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e256553256600%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd256554256603%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '@contract-violation
                                                       _%$%hd256554256603%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl256555256605%_))
                                                        (let ((_%$%e256556256608%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl256555256605%_))))
                  (let ((_%$%tl256558256613%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e256556256608%_)))
                        (_%$%hd256557256611%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e256556256608%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl256558256613%_))
                        (let ((_%$%e256559256616%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl256558256613%_))))
                          (let ((_%$%tl256561256621%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e256559256616%_)))
                                (_%$%hd256560256619%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e256559256616%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl256561256621%_))
                                (let ((_%$%e256562256624%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl256561256621%_))))
                                  (let ((_%$%tl256564256629%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e256562256624%_)))
                                        (_%$%hd256563256627%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e256562256624%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl256564256629%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl256552256597%_))
                                            (let ((_%$%e256565256632%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl256552256597%_))))
                                              (let ((_%$%tl256567256637%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e256565256632%_)))
                                                    (_%$%hd256566256635%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e256565256632%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl256567256637%_))
                                                    (_%__kont262120262121%_
                                                     _%$%hd256563256627%_
                                                     _%$%hd256560256619%_
                                                     _%$%hd256557256611%_)
                                                    (_%__kont262122262123%_))))
                                            (_%__kont262122262123%_))
                                        (_%__kont262122262123%_))))
                                (_%__kont262122262123%_))))
                        (_%__kont262122262123%_))))
                (_%__kont262122262123%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont262122262123%_))
                                                (_%__kont262122262123%_))))
                                        (_%__kont262122262123%_))))
                                (_%__kont262122262123%_))
                            (_%__kont262122262123%_))
                        (_%__kont262122262123%_))))
                (_%__kont262122262123%_))))))))
