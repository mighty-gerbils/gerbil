(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1784471409)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp265112 (list gxc#::basic-xform::t))
            (__tmp265111 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp265112
         '()
         __tmp265111
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args264209%_
        (apply make-instance gxc#::optimize-call::t _%$args264209%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp265113
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
        (__make-atomic-promise __tmp265113)))
    (define gxc#apply-optimize-call
      (lambda (_%stx264201%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self264204%_
                (let ((__obj265103
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj265103))
               (__tmp265114
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self264204%_ _%stx264201%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp265114
           gxc#current-compile-method
           _%self264204%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp265116 (list gxc#::void::t))
            (__tmp265115 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp265116
         '()
         __tmp265115
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args264198%_
        (apply make-instance gxc#::check-return-type::t _%$args264198%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp265117
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
        (__make-atomic-promise __tmp265117)))
    (define gxc#apply-check-return-type
      (lambda (_%stx264190%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self264193%_
                (let ((__obj265105
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj265105))
               (__tmp265118
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self264193%_ _%stx264190%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp265118
           gxc#current-compile-method
           _%self264193%_))))
    (define gxc#optimize-call%
      (lambda (_%self263338%_ _%stx263339%_)
        (let* ((_%__stx264350264351%_ _%stx263339%_)
               (_%$%g263343263425%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx264350264351%_)))))
          (let ((_%__kont264352264353%_
                 (lambda (_%$%g263345263986%_ _%$%g263346263987%_)
                   (let* ((_%rator-id264007%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%$%g263346263987%_)))
                          (_%rator-type264009%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id264007%_))))
                     (if (or (not _%rator-type264009%_)
                             (eq? (##structure-ref
                                   _%rator-type264009%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self263338%_ _%stx263339%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type264009%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp265119
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type264009%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id264007%_
                                  '" => "
                                  _%rator-type264009%_
                                  '" "
                                  __tmp265119))
                               (let* ((_%optimized264024%_
                                       (let ((__method265106
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type264009%_
                                                 'optimize-call))))
                                         (if __method265106
                                             (let ((__tmp265120
                                                    (let ((__tmp265121
                                                           (lambda (_%$%g264016264019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g264017264021%_)
                     (cons _%$%g264016264019%_ _%$%g264017264021%_))))
              (declare (not safe))
              (foldr__0 __tmp265121 '() _%$%g263345263986%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method265106
                                                _%rator-type264009%_
                                                _%self263338%_
                                                _%stx263339%_
                                                __tmp265120))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type264009%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx264298264299%_
                                       _%optimized264024%_)
                                      (_%$%g264027264056%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx264298264299%_)))))
                                 (let ((_%__kont264300264301%_
                                        (lambda (_%$%g264029264122%_
                                                 _%$%g264030264123%_)
                                          (let* ((_%optimized-rator-id264150%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%$%g264030264123%_)))
                                                 (_%rator-type264155%_
                                                  (let ((_%$e264152%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id264150%_))))
                                                    (if _%$e264152%_
                                                        _%$e264152%_
                                                        _%rator-type264009%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type264155%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id264150%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type264155%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type264155%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized264024%_
                                                (let ((__tmp265122
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%$%g264030264123%_ '()))
                           (let ((__tmp265123
                                  (lambda (_%$%g264163264166%_
                                           _%$%g264164264168%_)
                                    (cons _%$%g264163264166%_
                                          _%$%g264164264168%_))))
                             (declare (not safe))
                             (foldr__0
                              __tmp265123
                              '()
                              _%$%g264029264122%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp265122
                                                   _%stx263339%_))))))
                                       (_%__kont264304264305%_
                                        (lambda () _%optimized264024%_)))
                                   (let ((_%__match264347264348%_
                                          (lambda (_%$%e264031264068%_
                                                   _%$%hd264032264071%_
                                                   _%$%tl264033264073%_
                                                   _%$%e264034264076%_
                                                   _%$%hd264035264079%_
                                                   _%$%tl264036264081%_
                                                   _%$%e264037264084%_
                                                   _%$%hd264038264087%_
                                                   _%$%tl264039264089%_
                                                   _%$%e264040264092%_
                                                   _%$%hd264041264095%_
                                                   _%$%tl264042264097%_
                                                   _%__splice264302264303%_
                                                   _%$%target264043264100%_
                                                   _%$%tl264045264102%_)
                                            (letrec ((_%$%loop264046264105%_
                                                      (lambda (_%$%hd264044264108%_
                                                               _%$%arg264050264110%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd264044264108%_))
                                                            (let ((_%$%e264047264112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd264044264108%_))))
                      (let ((_%$%lp-tl264049264117%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e264047264112%_)))
                            (_%$%lp-hd264048264115%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e264047264112%_))))
                        (_%$%loop264046264105%_
                         _%$%lp-tl264049264117%_
                         (cons _%$%lp-hd264048264115%_
                               _%$%arg264050264110%_))))
                    (let ((_%$%arg264051264120%_
                           (reverse _%$%arg264050264110%_)))
                      (_%__kont264300264301%_
                       _%$%arg264051264120%_
                       _%$%hd264041264095%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop264046264105%_
                                               _%$%target264043264100%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx264298264299%_))
                                         (let ((_%$%e264031264068%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx264298264299%_))))
                                           (let ((_%$%tl264033264073%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e264031264068%_)))
                                                 (_%$%hd264032264071%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e264031264068%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%$%hd264032264071%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%$%hd264032264071%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl264033264073%_))
                                                         (let ((_%$%e264034264076%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl264033264073%_))))
                   (let ((_%$%tl264036264081%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e264034264076%_)))
                         (_%$%hd264035264079%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e264034264076%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%hd264035264079%_))
                         (let ((_%$%e264037264084%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%hd264035264079%_))))
                           (let ((_%$%tl264039264089%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e264037264084%_)))
                                 (_%$%hd264038264087%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e264037264084%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%hd264038264087%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq?
                                        '%#ref
                                        _%$%hd264038264087%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%tl264039264089%_))
                                         (let ((_%$%e264040264092%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%tl264039264089%_))))
                                           (let ((_%$%tl264042264097%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e264040264092%_)))
                                                 (_%$%hd264041264095%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e264040264092%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%$%tl264042264097%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%$%tl264036264081%_))
                                                     (let ((_%__splice264302264303%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%$%tl264036264081%_
                                                               '0))))
                                                       (let ((_%$%tl264045264102%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice264302264303%_ '1)))
                     (_%$%target264043264100%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice264302264303%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl264045264102%_))
                     (_%__match264347264348%_
                      _%$%e264031264068%_
                      _%$%hd264032264071%_
                      _%$%tl264033264073%_
                      _%$%e264034264076%_
                      _%$%hd264035264079%_
                      _%$%tl264036264081%_
                      _%$%e264037264084%_
                      _%$%hd264038264087%_
                      _%$%tl264039264089%_
                      _%$%e264040264092%_
                      _%$%hd264041264095%_
                      _%$%tl264042264097%_
                      _%__splice264302264303%_
                      _%$%target264043264100%_
                      _%$%tl264045264102%_)
                     (_%__kont264304264305%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont264304264305%_))
                                                 (_%__kont264304264305%_))))
                                         (_%__kont264304264305%_))
                                     (_%__kont264304264305%_))
                                 (_%__kont264304264305%_))))
                         (_%__kont264304264305%_))))
                 (_%__kont264304264305%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont264304264305%_))
                                                 (_%__kont264304264305%_))))
                                         (_%__kont264304264305%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type264009%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type264009%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp265124
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%$%g263346263987%_
                                                                '()))
                                                    (map (lambda (_%$%g264174264176%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self263338%_
                                                              _%$%g264174264176%_)))
                                                         (let ((__tmp265125
                                                                (lambda (_%$%g264178264181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g264179264183%_)
                          (cons _%$%g264178264181%_ _%$%g264179264183%_))))
                   (declare (not safe))
                   (foldr__0 __tmp265125 '() _%$%g263345263986%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp265124
                                    _%stx263339%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx263339%_
                                    _%rator-type264009%_))))))))
                (_%__kont264356264357%_
                 (lambda (_%$%g263368263594%_
                          _%$%g263369263595%_
                          _%$%g263370263596%_)
                   (let _%loop263714%_ ((_%rest-arg263716%_
                                         (let ((__tmp265132
                                                (lambda (_%$%g263912263915%_
                                                         _%$%g263913263917%_)
                                                  (cons _%$%g263912263915%_
                                                        _%$%g263913263917%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp265132
                                            '()
                                            _%$%g263370263596%_)))
                                        (_%rest-rand263717%_
                                         (let ((__tmp265133
                                                (lambda (_%$%g263919263922%_
                                                         _%$%g263920263924%_)
                                                  (cons _%$%g263919263922%_
                                                        _%$%g263920263924%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp265133
                                            '()
                                            _%$%g263368263594%_)))
                                        (_%bind263718%_ '())
                                        (_%subst263719%_ '()))
                     (let* ((_%$%rest-arg263720263728%_ _%rest-arg263716%_)
                            (_%$%else263722263741%_
                             (lambda ()
                               (let* ((_%body263736%_
                                       (if (null? _%subst263719%_)
                                           _%$%g263369263595%_
                                           (let ((__tmp265126
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-inline-subst__%
                                                     '#f
                                                     _%subst263719%_
                                                     _%$%g263369263595%_))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp265126
                                              _%stx263339%_))))
                                      (_%expr263738%_
                                       (let ((__tmp265127
                                              (cons '%#let-values
                                                    (cons _%bind263718%_
                                                          (cons _%body263736%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp265127
                                          _%stx263339%_))))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-refine-type-info _%expr263738%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self263338%_
                                    _%expr263738%_)))))
                            (_%$%K263724263901%_
                             (lambda (_%rest-arg263744%_ _%arg-id263745%_)
                               (let* ((_%$%rest-rand263746263754%_
                                       _%rest-rand263717%_)
                                      (_%$%else263748263776%_
                                       (lambda ()
                                         (let ((__tmp265130
                                                (let ((__tmp265131
                                                       (lambda (_%$%g263761263764%_
                                                                _%$%g263762263766%_)
                                                         (cons _%$%g263761263764%_
                                                               _%$%g263762263766%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp265131
                                                   '()
                                                   _%$%g263370263596%_)))
                                               (__tmp265128
                                                (let ((__tmp265129
                                                       (lambda (_%$%g263768263771%_
                                                                _%$%g263769263773%_)
                                                         (cons _%$%g263768263771%_
                                                               _%$%g263769263773%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp265129
                                                   '()
                                                   _%$%g263368263594%_))))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"inline lambda arity mismatch"
                                            _%stx263339%_
                                            __tmp265130
                                            __tmp265128))))
                                      (_%$%K263750263889%_
                                       (lambda (_%rest-rand263779%_
                                                _%rand263780%_)
                                         (let* ((_%__stx264252264253%_
                                                 _%rand263780%_)
                                                (_%$%g263784263804%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx264252264253%_)))))
                                           (let ((_%__kont264254264255%_
                                                  (lambda (_%$%g263786263875%_)
                                                    (_%loop263714%_
                                                     _%rest-arg263744%_
                                                     _%rest-rand263779%_
                                                     _%bind263718%_
                                                     (cons (cons _%arg-id263745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand263780%_)
                   _%subst263719%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont264256264257%_
                                                  (lambda (_%$%g263793263832%_)
                                                    (_%loop263714%_
                                                     _%rest-arg263744%_
                                                     _%rest-rand263779%_
                                                     _%bind263718%_
                                                     (cons (cons _%arg-id263745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand263780%_)
                   _%subst263719%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont264258264259%_
                                                  (lambda ()
                                                    (_%loop263714%_
                                                     _%rest-arg263744%_
                                                     _%rest-rand263779%_
                                                     (cons (cons (cons _%arg-id263745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _%rand263780%_ '()))
                   _%bind263718%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%subst263719%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx264252264253%_))
                                                 (let ((_%$%e263787263859%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx264252264253%_))))
                                                   (let ((_%$%tl263789263864%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e263787263859%_)))
                                                         (_%$%hd263788263862%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e263787263859%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%$%hd263788263862%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#quote _%$%hd263788263862%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl263789263864%_))
                         (let ((_%$%e263790263867%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl263789263864%_))))
                           (let ((_%$%tl263792263872%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e263790263867%_)))
                                 (_%$%hd263791263870%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e263790263867%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl263792263872%_))
                                 (_%__kont264254264255%_ _%$%hd263791263870%_)
                                 (_%__kont264258264259%_))))
                         (_%__kont264258264259%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#ref _%$%hd263788263862%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl263789263864%_))
                             (let ((_%$%e263797263824%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl263789263864%_))))
                               (let ((_%$%tl263799263829%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e263797263824%_)))
                                     (_%$%hd263798263827%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e263797263824%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl263799263829%_))
                                     (_%__kont264256264257%_
                                      _%$%hd263798263827%_)
                                     (_%__kont264258264259%_))))
                             (_%__kont264258264259%_))
                         (_%__kont264258264259%_)))
                 (_%__kont264258264259%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont264258264259%_)))))))
                                 (if (pair? _%$%rest-rand263746263754%_)
                                     (let ((_%$%hd263751263892%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%rest-rand263746263754%_)))
                                           (_%$%tl263752263894%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%rest-rand263746263754%_))))
                                       (let* ((_%rand263897%_
                                               _%$%hd263751263892%_)
                                              (_%rest-rand263899%_
                                               _%$%tl263752263894%_))
                                         (_%$%K263750263889%_
                                          _%rest-rand263899%_
                                          _%rand263897%_)))
                                     (_%$%else263748263776%_))))))
                       (if (pair? _%$%rest-arg263720263728%_)
                           (let ((_%$%hd263725263904%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest-arg263720263728%_)))
                                 (_%$%tl263726263906%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest-arg263720263728%_))))
                             (let* ((_%arg-id263909%_ _%$%hd263725263904%_)
                                    (_%rest-arg263911%_ _%$%tl263726263906%_))
                               (_%$%K263724263901%_
                                _%rest-arg263911%_
                                _%arg-id263909%_)))
                           (_%$%else263722263741%_))))))
                (_%__kont264362264363%_
                 (lambda (_%$%g263404263468%_ _%$%g263405263469%_)
                   (let ((_%rator-type263486%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%$%g263405263469%_))))
                     (if (and _%rator-type263486%_
                              (eq? (##structure-ref
                                    _%rator-type263486%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type263486%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type263486%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type263486%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp265134
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self263338%_
                                               _%$%g263405263469%_))
                                            (map (lambda (_%$%g263488263490%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self263338%_
                                                      _%$%g263488263490%_)))
                                                 (let ((__tmp265135
                                                        (lambda (_%$%g263492263495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g263493263497%_)
                  (cons _%$%g263492263495%_ _%$%g263493263497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp265135
                                                    '()
                                                    _%$%g263404263468%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp265134 _%stx263339%_))
                         (if (or (not _%rator-type263486%_)
                                 (let ((__tmp265136
                                        (##structure-ref
                                         _%rator-type263486%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp265136 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self263338%_ _%stx263339%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx263339%_
                                _%rator-type263486%_))))))))
            (let* ((_%__match264459264460%_
                    (lambda (_%$%e263406263430%_
                             _%$%hd263407263433%_
                             _%$%tl263408263435%_
                             _%$%e263409263438%_
                             _%$%hd263410263441%_
                             _%$%tl263411263443%_
                             _%__splice264364264365%_
                             _%$%target263412263446%_
                             _%$%tl263414263448%_)
                      (letrec ((_%$%loop263415263451%_
                                (lambda (_%$%hd263413263454%_
                                         _%$%rand263419263456%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd263413263454%_))
                                      (let ((_%$%e263416263458%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd263413263454%_))))
                                        (let ((_%$%lp-tl263418263463%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e263416263458%_)))
                                              (_%$%lp-hd263417263461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e263416263458%_))))
                                          (_%$%loop263415263451%_
                                           _%$%lp-tl263418263463%_
                                           (cons _%$%lp-hd263417263461%_
                                                 _%$%rand263419263456%_))))
                                      (let ((_%$%rand263420263466%_
                                             (reverse _%$%rand263419263456%_)))
                                        (_%__kont264362264363%_
                                         _%$%rand263420263466%_
                                         _%$%hd263410263441%_))))))
                        (_%$%loop263415263451%_
                         _%$%target263412263446%_
                         '()))))
                   (_%__match264451264452%_
                    (lambda (_%$%e263406263430%_
                             _%$%hd263407263433%_
                             _%$%tl263408263435%_
                             _%$%e263409263438%_
                             _%$%hd263410263441%_
                             _%$%tl263411263443%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl263411263443%_))
                          (let ((_%__splice264364264365%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl263411263443%_
                                    '0))))
                            (let ((_%$%tl263414263448%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice264364264365%_
                                      '1)))
                                  (_%$%target263412263446%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice264364264365%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl263414263448%_))
                                  (_%__match264459264460%_
                                   _%$%e263406263430%_
                                   _%$%hd263407263433%_
                                   _%$%tl263408263435%_
                                   _%$%e263409263438%_
                                   _%$%hd263410263441%_
                                   _%$%tl263411263443%_
                                   _%__splice264364264365%_
                                   _%$%target263412263446%_
                                   _%$%tl263414263448%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g263343263425%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g263343263425%_)))))
                   (_%__match264439264440%_
                    (lambda (_%$%e263371263510%_
                             _%$%hd263372263513%_
                             _%$%tl263373263515%_
                             _%$%e263374263518%_
                             _%$%hd263375263521%_
                             _%$%tl263376263523%_
                             _%$%e263377263526%_
                             _%$%hd263378263529%_
                             _%$%tl263379263531%_
                             _%$%e263380263534%_
                             _%$%hd263381263537%_
                             _%$%tl263382263539%_
                             _%__splice264358264359%_
                             _%$%target263383263542%_
                             _%$%tl263385263544%_)
                      (letrec ((_%$%loop263386263547%_
                                (lambda (_%$%hd263384263550%_
                                         _%$%arg263390263552%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd263384263550%_))
                                      (let ((_%$%e263387263554%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd263384263550%_))))
                                        (let ((_%$%lp-tl263389263559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e263387263554%_)))
                                              (_%$%lp-hd263388263557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e263387263554%_))))
                                          (_%$%loop263386263547%_
                                           _%$%lp-tl263389263559%_
                                           (cons _%$%lp-hd263388263557%_
                                                 _%$%arg263390263552%_))))
                                      (let ((_%$%arg263391263562%_
                                             (reverse _%$%arg263390263552%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl263382263539%_))
                                            (let ((_%$%e263392263564%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl263382263539%_))))
                                              (let ((_%$%tl263394263569%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e263392263564%_)))
                                                    (_%$%hd263393263567%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e263392263564%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl263394263569%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl263376263523%_))
                                                        (let ((_%__splice264360264361%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl263376263523%_
                          '0))))
                  (let ((_%$%tl263397263574%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice264360264361%_ '1)))
                        (_%$%target263395263572%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice264360264361%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl263397263574%_))
                        (letrec ((_%$%loop263398263577%_
                                  (lambda (_%$%hd263396263580%_
                                           _%$%rand263402263582%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd263396263580%_))
                                        (let ((_%$%e263399263584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd263396263580%_))))
                                          (let ((_%$%lp-tl263401263589%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e263399263584%_)))
                                                (_%$%lp-hd263400263587%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e263399263584%_))))
                                            (_%$%loop263398263577%_
                                             _%$%lp-tl263401263589%_
                                             (cons _%$%lp-hd263400263587%_
                                                   _%$%rand263402263582%_))))
                                        (let ((_%$%rand263403263592%_
                                               (reverse _%$%rand263402263582%_)))
                                          (let ((_%$%g263368263594%_
                                                 _%$%rand263403263592%_)
                                                (_%$%g263369263595%_
                                                 _%$%hd263393263567%_)
                                                (_%$%g263370263596%_
                                                 _%$%arg263391263562%_))
                                            (if (and (= (length (let ((__tmp265137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%$%g263622263625%_
                                        _%$%g263623263627%_)
                                 (cons _%$%g263622263625%_
                                       _%$%g263623263627%_))))
                          (declare (not safe))
                          (foldr__0 __tmp265137 '() _%$%g263370263596%_)))
                (length (let ((__tmp265138
                               (lambda (_%$%g263629263632%_
                                        _%$%g263630263634%_)
                                 (cons _%$%g263629263632%_
                                       _%$%g263630263634%_))))
                          (declare (not safe))
                          (foldr__0 __tmp265138 '() _%$%g263368263594%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp265141
                                                            (lambda (_%id263637%_)
                                                              (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gxc#mutable-binding? _%id263637%_)))))
                   (__tmp265139
                    (let ((__tmp265140
                           (lambda (_%$%g263638263641%_ _%$%g263639263643%_)
                             (cons _%$%g263638263641%_ _%$%g263639263643%_))))
                      (declare (not safe))
                      (foldr__0 __tmp265140 '() _%$%g263370263596%_))))
               (declare (not safe))
               (andmap__0 __tmp265141 __tmp265139))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp265144
                                                            (lambda (_%rand263646%_)
                                                              (let* ((_%__stx264226264227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%rand263646%_)
                             (_%$%g263649263662%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx264226264227%_)))))
                        (let ((_%__kont264228264229%_
                               (lambda (_%$%g263651263690%_)
                                 (not (let ()
                                        (declare (not safe))
                                        (gxc#mutable-binding?
                                         _%$%g263651263690%_)))))
                              (_%__kont264230264231%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx264226264227%_))
                              (let ((_%$%e263652263674%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx264226264227%_))))
                                (let ((_%$%tl263654263679%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e263652263674%_)))
                                      (_%$%hd263653263677%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e263652263674%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd263653263677%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd263653263677%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl263654263679%_))
                                              (let ((_%$%e263655263682%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl263654263679%_))))
                                                (let ((_%$%tl263657263687%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e263655263682%_)))
                                                      (_%$%hd263656263685%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e263655263682%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl263657263687%_))
                                                      (_%__kont264228264229%_
                                                       _%$%hd263656263685%_)
                                                      (_%__kont264230264231%_))))
                                              (_%__kont264230264231%_))
                                          (_%__kont264230264231%_))
                                      (_%__kont264230264231%_))))
                              (_%__kont264230264231%_))))))
                   (__tmp265142
                    (let ((__tmp265143
                           (lambda (_%$%g263706263709%_ _%$%g263707263711%_)
                             (cons _%$%g263706263709%_ _%$%g263707263711%_))))
                      (declare (not safe))
                      (foldr__0 __tmp265143 '() _%$%g263368263594%_))))
               (declare (not safe))
               (andmap__0 __tmp265144 __tmp265142)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont264356264357%_
                                                 _%$%g263368263594%_
                                                 _%$%g263369263595%_
                                                 _%$%g263370263596%_)
                                                (_%__match264459264460%_
                                                 _%$%e263371263510%_
                                                 _%$%hd263372263513%_
                                                 _%$%tl263373263515%_
                                                 _%$%e263374263518%_
                                                 _%$%hd263375263521%_
                                                 _%$%tl263376263523%_
                                                 _%__splice264360264361%_
                                                 _%$%target263395263572%_
                                                 _%$%tl263397263574%_))))))))
                          (_%$%loop263398263577%_
                           _%$%target263395263572%_
                           '()))
                        (let () (declare (not safe)) (_%$%g263343263425%_)))))
                (let () (declare (not safe)) (_%$%g263343263425%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match264451264452%_
                                                     _%$%e263371263510%_
                                                     _%$%hd263372263513%_
                                                     _%$%tl263373263515%_
                                                     _%$%e263374263518%_
                                                     _%$%hd263375263521%_
                                                     _%$%tl263376263523%_))))
                                            (_%__match264451264452%_
                                             _%$%e263371263510%_
                                             _%$%hd263372263513%_
                                             _%$%tl263373263515%_
                                             _%$%e263374263518%_
                                             _%$%hd263375263521%_
                                             _%$%tl263376263523%_)))))))
                        (_%$%loop263386263547%_
                         _%$%target263383263542%_
                         '()))))
                   (_%__match264403264404%_
                    (lambda (_%$%e263347263932%_
                             _%$%hd263348263935%_
                             _%$%tl263349263937%_
                             _%$%e263350263940%_
                             _%$%hd263351263943%_
                             _%$%tl263352263945%_
                             _%$%e263353263948%_
                             _%$%hd263354263951%_
                             _%$%tl263355263953%_
                             _%$%e263356263956%_
                             _%$%hd263357263959%_
                             _%$%tl263358263961%_
                             _%__splice264354264355%_
                             _%$%target263359263964%_
                             _%$%tl263361263966%_)
                      (letrec ((_%$%loop263362263969%_
                                (lambda (_%$%hd263360263972%_
                                         _%$%rand263366263974%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd263360263972%_))
                                      (let ((_%$%e263363263976%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd263360263972%_))))
                                        (let ((_%$%lp-tl263365263981%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e263363263976%_)))
                                              (_%$%lp-hd263364263979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e263363263976%_))))
                                          (_%$%loop263362263969%_
                                           _%$%lp-tl263365263981%_
                                           (cons _%$%lp-hd263364263979%_
                                                 _%$%rand263366263974%_))))
                                      (let ((_%$%rand263367263984%_
                                             (reverse _%$%rand263366263974%_)))
                                        (_%__kont264352264353%_
                                         _%$%rand263367263984%_
                                         _%$%hd263357263959%_))))))
                        (_%$%loop263362263969%_
                         _%$%target263359263964%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx264350264351%_))
                  (let ((_%$%e263347263932%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx264350264351%_))))
                    (let ((_%$%tl263349263937%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e263347263932%_)))
                          (_%$%hd263348263935%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e263347263932%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl263349263937%_))
                          (let ((_%$%e263350263940%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl263349263937%_))))
                            (let ((_%$%tl263352263945%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e263350263940%_)))
                                  (_%$%hd263351263943%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e263350263940%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd263351263943%_))
                                  (let ((_%$%e263353263948%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd263351263943%_))))
                                    (let ((_%$%tl263355263953%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e263353263948%_)))
                                          (_%$%hd263354263951%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e263353263948%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd263354263951%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd263354263951%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl263355263953%_))
                                                  (let ((_%$%e263356263956%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl263355263953%_))))
                                                    (let ((_%$%tl263358263961%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e263356263956%_)))
                                                          (_%$%hd263357263959%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e263356263956%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl263358263961%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl263352263945%_))
                      (let ((_%__splice264354264355%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl263352263945%_
                                '0))))
                        (let ((_%$%tl263361263966%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice264354264355%_ '1)))
                              (_%$%target263359263964%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice264354264355%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl263361263966%_))
                              (_%__match264403264404%_
                               _%$%e263347263932%_
                               _%$%hd263348263935%_
                               _%$%tl263349263937%_
                               _%$%e263350263940%_
                               _%$%hd263351263943%_
                               _%$%tl263352263945%_
                               _%$%e263353263948%_
                               _%$%hd263354263951%_
                               _%$%tl263355263953%_
                               _%$%e263356263956%_
                               _%$%hd263357263959%_
                               _%$%tl263358263961%_
                               _%__splice264354264355%_
                               _%$%target263359263964%_
                               _%$%tl263361263966%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g263343263425%_)))))
                      (let () (declare (not safe)) (_%$%g263343263425%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl263352263945%_))
                      (let ((_%__splice264364264365%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl263352263945%_
                                '0))))
                        (let ((_%$%tl263414263448%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice264364264365%_ '1)))
                              (_%$%target263412263446%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice264364264365%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl263414263448%_))
                              (_%__match264459264460%_
                               _%$%e263347263932%_
                               _%$%hd263348263935%_
                               _%$%tl263349263937%_
                               _%$%e263350263940%_
                               _%$%hd263351263943%_
                               _%$%tl263352263945%_
                               _%__splice264364264365%_
                               _%$%target263412263446%_
                               _%$%tl263414263448%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g263343263425%_)))))
                      (let () (declare (not safe)) (_%$%g263343263425%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl263352263945%_))
                                                      (let ((_%__splice264364264365%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl263352263945%_
                        '0))))
                (let ((_%$%tl263414263448%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice264364264365%_ '1)))
                      (_%$%target263412263446%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice264364264365%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl263414263448%_))
                      (_%__match264459264460%_
                       _%$%e263347263932%_
                       _%$%hd263348263935%_
                       _%$%tl263349263937%_
                       _%$%e263350263940%_
                       _%$%hd263351263943%_
                       _%$%tl263352263945%_
                       _%__splice264364264365%_
                       _%$%target263412263446%_
                       _%$%tl263414263448%_)
                      (let () (declare (not safe)) (_%$%g263343263425%_)))))
              (let () (declare (not safe)) (_%$%g263343263425%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#lambda
                                                     _%$%hd263354263951%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl263355263953%_))
                                                      (let ((_%$%e263380263534%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl263355263953%_))))
                (let ((_%$%tl263382263539%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e263380263534%_)))
                      (_%$%hd263381263537%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e263380263534%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%hd263381263537%_))
                      (let ((_%__splice264358264359%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%hd263381263537%_
                                '0))))
                        (let ((_%$%tl263385263544%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice264358264359%_ '1)))
                              (_%$%target263383263542%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice264358264359%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl263385263544%_))
                              (_%__match264439264440%_
                               _%$%e263347263932%_
                               _%$%hd263348263935%_
                               _%$%tl263349263937%_
                               _%$%e263350263940%_
                               _%$%hd263351263943%_
                               _%$%tl263352263945%_
                               _%$%e263353263948%_
                               _%$%hd263354263951%_
                               _%$%tl263355263953%_
                               _%$%e263380263534%_
                               _%$%hd263381263537%_
                               _%$%tl263382263539%_
                               _%__splice264358264359%_
                               _%$%target263383263542%_
                               _%$%tl263385263544%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _%$%tl263352263945%_))
                                  (let ((_%__splice264364264365%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice->vector
                                            _%$%tl263352263945%_
                                            '0))))
                                    (let ((_%$%tl263414263448%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice264364264365%_
                                              '1)))
                                          (_%$%target263412263446%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice264364264365%_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl263414263448%_))
                                          (_%__match264459264460%_
                                           _%$%e263347263932%_
                                           _%$%hd263348263935%_
                                           _%$%tl263349263937%_
                                           _%$%e263350263940%_
                                           _%$%hd263351263943%_
                                           _%$%tl263352263945%_
                                           _%__splice264364264365%_
                                           _%$%target263412263446%_
                                           _%$%tl263414263448%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g263343263425%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g263343263425%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl263352263945%_))
                          (let ((_%__splice264364264365%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl263352263945%_
                                    '0))))
                            (let ((_%$%tl263414263448%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice264364264365%_
                                      '1)))
                                  (_%$%target263412263446%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice264364264365%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl263414263448%_))
                                  (_%__match264459264460%_
                                   _%$%e263347263932%_
                                   _%$%hd263348263935%_
                                   _%$%tl263349263937%_
                                   _%$%e263350263940%_
                                   _%$%hd263351263943%_
                                   _%$%tl263352263945%_
                                   _%__splice264364264365%_
                                   _%$%target263412263446%_
                                   _%$%tl263414263448%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g263343263425%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g263343263425%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl263352263945%_))
                  (let ((_%__splice264364264365%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl263352263945%_
                            '0))))
                    (let ((_%$%tl263414263448%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice264364264365%_ '1)))
                          (_%$%target263412263446%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice264364264365%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl263414263448%_))
                          (_%__match264459264460%_
                           _%$%e263347263932%_
                           _%$%hd263348263935%_
                           _%$%tl263349263937%_
                           _%$%e263350263940%_
                           _%$%hd263351263943%_
                           _%$%tl263352263945%_
                           _%__splice264364264365%_
                           _%$%target263412263446%_
                           _%$%tl263414263448%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g263343263425%_)))))
                  (let () (declare (not safe)) (_%$%g263343263425%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl263352263945%_))
                                                      (let ((_%__splice264364264365%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl263352263945%_
                        '0))))
                (let ((_%$%tl263414263448%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice264364264365%_ '1)))
                      (_%$%target263412263446%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice264364264365%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl263414263448%_))
                      (_%__match264459264460%_
                       _%$%e263347263932%_
                       _%$%hd263348263935%_
                       _%$%tl263349263937%_
                       _%$%e263350263940%_
                       _%$%hd263351263943%_
                       _%$%tl263352263945%_
                       _%__splice264364264365%_
                       _%$%target263412263446%_
                       _%$%tl263414263448%_)
                      (let () (declare (not safe)) (_%$%g263343263425%_)))))
              (let () (declare (not safe)) (_%$%g263343263425%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl263352263945%_))
                                              (let ((_%__splice264364264365%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl263352263945%_
                                                        '0))))
                                                (let ((_%$%tl263414263448%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice264364264365%_
                                                          '1)))
                                                      (_%$%target263412263446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice264364264365%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl263414263448%_))
                                                      (_%__match264459264460%_
                                                       _%$%e263347263932%_
                                                       _%$%hd263348263935%_
                                                       _%$%tl263349263937%_
                                                       _%$%e263350263940%_
                                                       _%$%hd263351263943%_
                                                       _%$%tl263352263945%_
                                                       _%__splice264364264365%_
                                                       _%$%target263412263446%_
                                                       _%$%tl263414263448%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g263343263425%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g263343263425%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl263352263945%_))
                                      (let ((_%__splice264364264365%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl263352263945%_
                                                '0))))
                                        (let ((_%$%tl263414263448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice264364264365%_
                                                  '1)))
                                              (_%$%target263412263446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice264364264365%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl263414263448%_))
                                              (_%__match264459264460%_
                                               _%$%e263347263932%_
                                               _%$%hd263348263935%_
                                               _%$%tl263349263937%_
                                               _%$%e263350263940%_
                                               _%$%hd263351263943%_
                                               _%$%tl263352263945%_
                                               _%__splice264364264365%_
                                               _%$%target263412263446%_
                                               _%$%tl263414263448%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g263343263425%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g263343263425%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g263343263425%_)))))
                  (let () (declare (not safe)) (_%$%g263343263425%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self263300%_ _%ctx263301%_ _%stx263302%_ _%args263303%_)
        (let ((_%self263306%_ _%self263300%_))
          (if (let ((__method265107
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self263306%_ 'check-arguments))))
                (if __method265107
                    (let ()
                      (declare (not safe))
                      (__method265107
                       _%self263306%_
                       _%ctx263301%_
                       _%stx263302%_
                       _%args263303%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self263306%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature263316%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self263306%_ '2 '#f '#f)))
                     (_%signature263318%_ _%signature263316%_)
                     (_%$e263328%_
                      (if _%signature263318%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature263318%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e263328%_
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%$e263328%_))
                        (let ((__tmp265145
                               (cons '%#call
                                     (cons (cons '%#ref
                                                 (cons _%$e263328%_ '()))
                                           (map (lambda (_%$%g263332263334%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx263301%_
                                                     _%$%g263332263334%_)))
                                                _%args263303%_)))))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp265145
                           _%stx263302%_
                           _%ctx263301%_))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx263301%_ _%stx263302%_)))
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx263301%_ _%stx263302%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx263301%_ _%stx263302%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass264211 __method-table264212)
        (let ((__check-arguments264213
               (let ((__tmp265146
                      (lambda ()
                        (let ((__method264214
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table264212
                                  'check-arguments
                                  '#f))))
                          (if __method264214
                              __method264214
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp265146))))
          (lambda (_%self263300%_ _%ctx263301%_ _%stx263302%_ _%args263303%_)
            (let ((_%self263306%_ _%self263300%_))
              (if ((force __check-arguments264213)
                   _%self263306%_
                   _%ctx263301%_
                   _%stx263302%_
                   _%args263303%_)
                  (let* ((_%signature263316%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self263306%_
                             '2
                             '#f
                             '#f)))
                         (_%signature263318%_ _%signature263316%_)
                         (_%$e263328%_
                          (if _%signature263318%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature263318%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e263328%_
                        (if (let ()
                              (declare (not safe))
                              (gxc#symbol-in-local-scope? _%$e263328%_))
                            (let ((__tmp265147
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%$e263328%_ '()))
                                               (map (lambda (_%$%g263332263334%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%ctx263301%_
                                                         _%$%g263332263334%_)))
                                                    _%args263303%_)))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp265147
                               _%stx263302%_
                               _%ctx263301%_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _%ctx263301%_ _%stx263302%_)))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx263301%_ _%stx263302%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx263301%_ _%stx263302%_))))))))
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
      (lambda (_%self263053%_ _%ctx263054%_ _%stx263055%_ _%args263056%_)
        (let* ((_%self263059%_ _%self263053%_)
               (_%$%signature263068263070%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self263059%_ '2 '#f '#f))))
          (if _%$%signature263068263070%_
              (let* ((_%signature263072%_ _%$%signature263068263070%_)
                     (_%$%argument-types263073263075%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature263072%_
                         '3
                         '#f
                         '#f))))
                (if _%$%argument-types263073263075%_
                    (let* ((_%argument-types263077%_
                            _%$%argument-types263073263075%_)
                           (_%argument-types263082%_
                            (let ((__tmp265148
                                   (lambda (_%t263080%_)
                                     (if _%t263080%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx263055%_
                                            _%t263080%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp265148
                               _%argument-types263077%_))))
                      (let _%loop263084%_ ((_%rest-args263086%_ _%args263056%_)
                                           (_%rest-types263087%_
                                            _%argument-types263082%_)
                                           (_%result263088%_ '#t))
                        (let* ((_%$%rest-args263089263097%_
                                _%rest-args263086%_)
                               (_%$%else263091263105%_
                                (lambda () _%result263088%_))
                               (_%$%K263093263166%_
                                (lambda (_%rest-args263108%_ _%arg263109%_)
                                  (let* ((_%$%rest-types263110263121%_
                                          _%rest-types263087%_)
                                         (_%$%E263114263125%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-types263110263121%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%$%K263117263154%_
                                           (lambda (_%rest-types263151%_
                                                    _%type263152%_)
                                             (_%loop263084%_
                                              _%rest-args263108%_
                                              _%rest-types263151%_
                                              (if (gxc#check-expression-type!
                                                   _%stx263055%_
                                                   _%arg263109%_
                                                   _%type263152%_)
                                                  _%result263088%_
                                                  '#f))))
                                          (_%$%K263116263145%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx263055%_
                                                _%argument-types263082%_))))
                                          (_%$%K263115263135%_
                                           (lambda (_%tail-type263129%_)
                                             (if (let ((__tmp265149
                                                        (lambda (_%$%g263130263132%_)
                                                          (gxc#check-expression-type!
                                                           _%stx263055%_
                                                           _%$%g263130263132%_
                                                           _%tail-type263129%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp265149
                                                    _%rest-args263108%_))
                                                 _%result263088%_
                                                 '#f))))
                                      (let ((_%$%try-match263112263148%_
                                             (lambda ()
                                               (if (null? _%$%rest-types263110263121%_)
                                                   (_%$%K263116263145%_)
                                                   (let ((_%tail-type263138%_
                                                          _%$%rest-types263110263121%_))
                                                     (_%$%K263115263135%_
                                                      _%tail-type263138%_))))))
                                        (if (pair? _%$%rest-types263110263121%_)
                                            (let ((_%$%tl263119263159%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%rest-types263110263121%_)))
                                                  (_%$%hd263118263157%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%rest-types263110263121%_))))
                                              (let ((_%type263162%_
                                                     _%$%hd263118263157%_)
                                                    (_%rest-types263164%_
                                                     _%$%tl263119263159%_))
                                                (_%$%K263117263154%_
                                                 _%rest-types263164%_
                                                 _%type263162%_)))
                                            (_%$%try-match263112263148%_))))))))
                          (if (pair? _%$%rest-args263089263097%_)
                              (let ((_%$%hd263094263169%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest-args263089263097%_)))
                                    (_%$%tl263095263171%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest-args263089263097%_))))
                                (let* ((_%arg263174%_ _%$%hd263094263169%_)
                                       (_%rest-args263176%_
                                        _%$%tl263095263171%_))
                                  (_%$%K263093263166%_
                                   _%rest-args263176%_
                                   _%arg263174%_)))
                              (_%$%else263091263105%_)))))
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
      (lambda (_%self262856%_ _%ctx262857%_ _%stx262858%_ _%args262859%_)
        (let* ((_%self262862%_ _%self262856%_)
               (_%$%g262872262882%_
                (lambda (_%$%g262873262879%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g262873262879%_))))
               (_%$%g262871262928%_
                (lambda (_%$%g262873262885%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g262873262885%_))
                      (let ((_%$%e262875262887%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g262873262885%_))))
                        (let ((_%$%hd262876262890%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e262875262887%_)))
                              (_%$%tl262877262892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e262875262887%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl262877262892%_))
                              (let* ((_%klass262907%_
                                      (let ((__tmp265150
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self262862%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx262858%_
                                         __tmp265150)))
                                     (_%object262909%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx262857%_
                                         _%$%hd262876262890%_)))
                                     (_%instance?262914%_
                                      (let ((_%$e262911%_
                                             (gxc#expression-type?
                                              _%object262909%_
                                              _%klass262907%_)))
                                        (if _%$e262911%_
                                            _%$e262911%_
                                            (gxc#expression-type?
                                             _%$%hd262876262890%_
                                             _%klass262907%_))))
                                     (_%incompatible?262919%_
                                      (let ((_%$e262916%_
                                             (gxc#incompatible-type?
                                              _%object262909%_
                                              _%klass262907%_)))
                                        (if _%$e262916%_
                                            _%$e262916%_
                                            (gxc#incompatible-type?
                                             _%$%hd262876262890%_
                                             _%klass262907%_)))))
                                (if _%instance?262914%_
                                    (let ((__tmp265151
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object262909%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd262876262890%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object262909%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp265151
                                       _%stx262858%_))
                                    (if _%incompatible?262919%_
                                        (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#xform-call%
                                           _%ctx262857%_
                                           _%stx262858%_)))))
                              (_%$%g262872262882%_ _%$%g262873262885%_))))
                      (_%$%g262872262882%_ _%$%g262873262885%_)))))
          (_%$%g262871262928%_ _%args262859%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self262645%_ _%ctx262646%_ _%stx262647%_ _%args262648%_)
        (let* ((_%self262651%_ _%self262645%_)
               (_%$%g262661262671%_
                (lambda (_%$%g262662262668%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g262662262668%_))))
               (_%$%g262660262731%_
                (lambda (_%$%g262662262674%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g262662262674%_))
                      (let ((_%$%e262664262676%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g262662262674%_))))
                        (let ((_%$%hd262665262679%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e262664262676%_)))
                              (_%$%tl262666262681%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e262664262676%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl262666262681%_))
                              (let* ((_%klass262696%_
                                      (let ((__tmp265152
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self262651%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx262647%_
                                         __tmp265152)))
                                     (_%object262698%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx262646%_
                                         _%$%hd262665262679%_)))
                                     (_%instance?262703%_
                                      (let ((_%$e262700%_
                                             (gxc#expression-type?
                                              _%object262698%_
                                              _%klass262696%_)))
                                        (if _%$e262700%_
                                            _%$e262700%_
                                            (gxc#expression-type?
                                             _%$%hd262665262679%_
                                             _%klass262696%_))))
                                     (_%incompatible?262708%_
                                      (let ((_%$e262705%_
                                             (gxc#incompatible-type?
                                              _%object262698%_
                                              _%klass262696%_)))
                                        (if _%$e262705%_
                                            _%$e262705%_
                                            (gxc#incompatible-type?
                                             _%$%hd262665262679%_
                                             _%klass262696%_))))
                                     (_%klass262711%_ _%klass262696%_))
                                (if _%instance?262703%_
                                    (let ((__tmp265153
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object262698%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd262665262679%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object262698%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp265153
                                       _%stx262647%_))
                                    (if _%incompatible?262708%_
                                        (cons '%#quote (cons '#f '()))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass262711%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp265154
                                                   (cons '%#struct-direct-instance?
                                                         (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass262711%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%object262698%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp265154
                                               _%stx262647%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass262711%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp265155
                                                       (cons '%#struct-instance?
                                                             (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass262711%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%object262698%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp265155
                                                   _%stx262647%_))
                                                (let ((__tmp265156
                                                       (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons 'class-instance? '()))
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self262651%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons _%object262698%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp265156
                                                   _%stx262647%_)))))))
                              (_%$%g262661262671%_ _%$%g262662262674%_))))
                      (_%$%g262661262671%_ _%$%g262662262674%_)))))
          (_%$%g262660262731%_ _%args262648%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx262313%_)
        (let* ((_%__stx264469264470%_ _%stx262313%_)
               (_%$%g262318262359%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx264469264470%_)))))
          (let ((_%__kont264471264472%_ (lambda () '#t))
                (_%__kont264473264474%_ (lambda () '#t))
                (_%__kont264475264476%_
                 (lambda (_%$%g262332262425%_ _%$%g262333262426%_)
                   (let ((_%$%rator-type262447262449%_
                          (let ((__tmp265157
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol
                                    _%$%g262333262426%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp265157))))
                     (if _%$%rator-type262447262449%_
                         (let* ((_%rator-type262451%_
                                 _%$%rator-type262447262449%_)
                                (_%$%rator-signature262452262454%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type262451%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type262451%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%$%rator-signature262452262454%_
                               (let* ((_%rator-signature262456%_
                                       _%$%rator-signature262452262454%_)
                                      (_%$%rator-effect262457262459%_
                                       (if _%rator-signature262456%_
                                           (##direct-structure-ref
                                            _%rator-signature262456%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%$%rator-effect262457262459%_
                                     (let ((_%rator-effect262461%_
                                            _%$%rator-effect262457262459%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect262461%_)
                                               (equal? '(alloc)
                                                       _%rator-effect262461%_))
                                           (let ((__tmp265158
                                                  (let ((__tmp265159
                                                         (lambda (_%$%g262466262469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g262467262471%_)
                   (cons _%$%g262466262469%_ _%$%g262467262471%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp265159
                                                     '()
                                                     _%$%g262332262425%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp265158))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont264479264480%_ (lambda () '#f)))
            (let ((_%__match264558264559%_
                   (lambda (_%$%e262334262371%_
                            _%$%hd262335262374%_
                            _%$%tl262336262376%_
                            _%$%e262337262379%_
                            _%$%hd262338262382%_
                            _%$%tl262339262384%_
                            _%$%e262340262387%_
                            _%$%hd262341262390%_
                            _%$%tl262342262392%_
                            _%$%e262343262395%_
                            _%$%hd262344262398%_
                            _%$%tl262345262400%_
                            _%__splice264477264478%_
                            _%$%target262346262403%_
                            _%$%tl262348262405%_)
                     (letrec ((_%$%loop262349262408%_
                               (lambda (_%$%hd262347262411%_
                                        _%$%rand262353262413%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd262347262411%_))
                                     (let ((_%$%e262350262415%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd262347262411%_))))
                                       (let ((_%$%lp-tl262352262420%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e262350262415%_)))
                                             (_%$%lp-hd262351262418%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e262350262415%_))))
                                         (_%$%loop262349262408%_
                                          _%$%lp-tl262352262420%_
                                          (cons _%$%lp-hd262351262418%_
                                                _%$%rand262353262413%_))))
                                     (let ((_%$%rand262354262423%_
                                            (reverse _%$%rand262353262413%_)))
                                       (_%__kont264475264476%_
                                        _%$%rand262354262423%_
                                        _%$%hd262344262398%_))))))
                       (_%$%loop262349262408%_
                        _%$%target262346262403%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx264469264470%_))
                  (let ((_%$%e262320262502%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx264469264470%_))))
                    (let ((_%$%tl262322262507%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e262320262502%_)))
                          (_%$%hd262321262505%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e262320262502%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd262321262505%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd262321262505%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl262322262507%_))
                                  (let ((_%$%e262323262510%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl262322262507%_))))
                                    (let ((_%$%tl262325262515%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e262323262510%_)))
                                          (_%$%hd262324262513%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e262323262510%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl262325262515%_))
                                          (_%__kont264471264472%_)
                                          (_%__kont264479264480%_))))
                                  (_%__kont264479264480%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd262321262505%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl262322262507%_))
                                      (let ((_%$%e262329262487%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl262322262507%_))))
                                        (let ((_%$%tl262331262492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e262329262487%_)))
                                              (_%$%hd262330262490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e262329262487%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl262331262492%_))
                                              (_%__kont264473264474%_)
                                              (_%__kont264479264480%_))))
                                      (_%__kont264479264480%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%$%hd262321262505%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl262322262507%_))
                                          (let ((_%$%e262337262379%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl262322262507%_))))
                                            (let ((_%$%tl262339262384%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e262337262379%_)))
                                                  (_%$%hd262338262382%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e262337262379%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd262338262382%_))
                                                  (let ((_%$%e262340262387%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd262338262382%_))))
                                                    (let ((_%$%tl262342262392%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e262340262387%_)))
                                                          (_%$%hd262341262390%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e262340262387%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd262341262390%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%$%hd262341262390%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl262342262392%_))
                          (let ((_%$%e262343262395%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl262342262392%_))))
                            (let ((_%$%tl262345262400%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e262343262395%_)))
                                  (_%$%hd262344262398%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e262343262395%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl262345262400%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl262339262384%_))
                                      (let ((_%__splice264477264478%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl262339262384%_
                                                '0))))
                                        (let ((_%$%tl262348262405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice264477264478%_
                                                  '1)))
                                              (_%$%target262346262403%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice264477264478%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl262348262405%_))
                                              (_%__match264558264559%_
                                               _%$%e262320262502%_
                                               _%$%hd262321262505%_
                                               _%$%tl262322262507%_
                                               _%$%e262337262379%_
                                               _%$%hd262338262382%_
                                               _%$%tl262339262384%_
                                               _%$%e262340262387%_
                                               _%$%hd262341262390%_
                                               _%$%tl262342262392%_
                                               _%$%e262343262395%_
                                               _%$%hd262344262398%_
                                               _%$%tl262345262400%_
                                               _%__splice264477264478%_
                                               _%$%target262346262403%_
                                               _%$%tl262348262405%_)
                                              (_%__kont264479264480%_))))
                                      (_%__kont264479264480%_))
                                  (_%__kont264479264480%_))))
                          (_%__kont264479264480%_))
                      (_%__kont264479264480%_))
                  (_%__kont264479264480%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont264479264480%_))))
                                          (_%__kont264479264480%_))
                                      (_%__kont264479264480%_))))
                          (_%__kont264479264480%_))))
                  (_%__kont264479264480%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx262308%_ _%klass262309%_)
        (let ((_%expr-type262311%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx262308%_))))
          (if _%expr-type262311%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type262311%_ _%klass262309%_))
              '#f))))
    (define gxc#incompatible-type?
      (lambda (_%expr262292%_ _%type262293%_)
        (if (not _%type262293%_)
            '#f
            (if (eq? (##structure-ref _%type262293%_ '1 gxc#!type::t '#f) 't)
                '#f
                (if (eq? (##structure-ref _%type262293%_ '1 gxc#!type::t '#f)
                         'false)
                    '#f
                    (let ((_%expr-type262299%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr262292%_))))
                      (if (not _%expr-type262299%_)
                          '#f
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type262299%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              '#f
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%expr-type262299%_
                                     'gxc#!abort::t))
                                  '#f
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#!type-subtype?
                                         _%expr-type262299%_
                                         _%type262293%_))
                                      '#f
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#!interface-instance?
                                             _%type262293%_))
                                          '#f
                                          (if (let ()
                                                (declare (not safe))
                                                (gxc#!type-subtype?
                                                 _%type262293%_
                                                 _%expr-type262299%_))
                                              '#f
                                              '#t))))))))))))
    (define gxc#check-expression-type!
      (lambda (_%stx262270%_ _%expr262271%_ _%type262272%_)
        (if (not _%type262272%_)
            '#f
            (let ((_%$e262275%_
                   (eq? (##structure-ref _%type262272%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e262275%_
                  _%$e262275%_
                  (let ((_%expr-type262279%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr262271%_))))
                    (if (not _%expr-type262279%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type262279%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e262283%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type262279%_
                                      'gxc#!abort::t))))
                              (if _%$e262283%_
                                  _%$e262283%_
                                  (let ((_%$e262286%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type262279%_
                                            _%type262272%_))))
                                    (if _%$e262286%_
                                        _%$e262286%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type262272%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type262272%_
                                                   _%expr-type262279%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx262270%_
                                                   _%expr262271%_
                                                   _%expr-type262279%_
                                                   _%type262272%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self262084%_ _%ctx262085%_ _%stx262086%_ _%args262087%_)
        (let* ((_%self262090%_ _%self262084%_)
               (_%klass262100%_
                (let ((__tmp265160
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self262090%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx262086%_ __tmp265160)))
               (_%fields262102%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass262100%_
                           '5
                           '#f
                           '#f))))
               (_%args262108%_
                (map (lambda (_%$%g262103262105%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx262085%_ _%$%g262103262105%_)))
                     _%args262087%_))
               (_%inline-make-object262110%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self262090%_
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
                           _%self262090%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields262102%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass262113%_ _%klass262100%_)
               (_%$e262127%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass262113%_ '6 '#f '#f))))
          (if _%$e262127%_
              (let ((_%$obj262132%_
                     (let ((__tmp265161
                            (let () (declare (not safe)) (##gensym '__obj))))
                       (declare (not safe))
                       (make-symbol__0 __tmp265161)))
                    (_%ctor-impl262133%_
                     (let ()
                       (declare (not safe))
                       (gxc#!class-lookup-method
                        _%klass262113%_
                        _%$e262127%_))))
                (let ((__tmp265162
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj262132%_ '())
                                               (cons _%inline-make-object262110%_
                                                     '()))
                                         '())
                                   (cons (cons '%#begin
                                               (cons (if _%ctor-impl262133%_
                                                         (let ((__tmp265163
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl262133%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj262132%_ '()))
                                          _%args262108%_)))))
                   (declare (not safe))
                   (gxc#xform-wrap-apply
                    __tmp265163
                    _%stx262086%_
                    _%ctx262085%_))
                 (let ((_%$ctor262135%_
                        (let ((__tmp265164
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__constructor))))
                          (declare (not safe))
                          (make-symbol__0 __tmp265164))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$ctor262135%_ '())
                                           (cons (cons '%#call
                                                       (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'direct-method-ref '()))
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self262090%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#ref (cons _%$obj262132%_ '()))
                                 (cons (cons '%#quote (cons _%$e262127%_ '()))
                                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#ref
                                                       (cons _%$ctor262135%_
                                                             '()))
                                                 (cons (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$ctor262135%_ '()))
                           (cons (cons '%#ref (cons _%$obj262132%_ '()))
                                 _%args262108%_)))
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
                         (##unchecked-structure-ref _%self262090%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#quote
                                                               (cons 'method:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _%$e262127%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$obj262132%_ '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp265162 _%stx262086%_)))
              (let ((_%$e262137%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass262113%_
                        '10
                        '#f
                        '#f))))
                (if _%$e262137%_
                    (let* ((_%$obj262142%_
                            (let ((__tmp265165
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp265165)))
                           (_%metakons262144%_
                            (let ((__tmp265166
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx262086%_
                                      _%$e262137%_))))
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               __tmp265166
                               'instance-init!)))
                           (__tmp265167
                            (cons '%#let-values
                                  (cons (cons (cons (cons _%$obj262142%_ '())
                                                    (cons _%inline-make-object262110%_
                                                          '()))
                                              '())
                                        (cons (cons '%#begin
                                                    (cons (if _%metakons262144%_
                                                              (let ((__tmp265168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons262144%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self262090%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj262142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args262108%_))))))
                        (declare (not safe))
                        (gxc#xform-wrap-apply
                         __tmp265168
                         _%stx262086%_
                         _%ctx262085%_))
                      (cons '%#call
                            (cons (cons '%#ref (cons 'call-method '()))
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self262090%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons 'instance-init! '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj262142%_
                                                                '()))
                                                    _%args262108%_))))))
                  (cons (cons '%#ref (cons _%$obj262142%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp265167 _%stx262086%_))
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass262113%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp265169
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args262108%_))))
                              (declare (not safe))
                              (##fx= __tmp265169 _%fields262102%_))
                            (let ((__tmp265170
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self262090%_
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
                                              _%self262090%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args262108%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp265170
                               _%stx262086%_))
                            (let ((__tmp265172
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self262090%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp265171
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass262113%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx262086%_
                               __tmp265172
                               __tmp265171)))
                        (let ((_%$obj262149%_
                               (let ((__tmp265173
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp265173))))
                          (let _%lp262151%_ ((_%rest262153%_ _%args262108%_)
                                             (_%initializers262154%_ '()))
                            (let* ((_%__stx264561264562%_ _%rest262153%_)
                                   (_%$%g262158262179%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx264561264562%_)))))
                              (let ((_%__kont264563264564%_
                                     (lambda (_%$%g262160262233%_
                                              _%$%g262161262234%_
                                              _%$%g262162262235%_)
                                       (let* ((_%slot262262%_
                                               (let ((__tmp265174
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g262162262235%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp265174)))
                                              (_%off262264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass262113%_
                                                  _%slot262262%_))))
                                         (if _%off262264%_
                                             (_%lp262151%_
                                              _%$%g262160262233%_
                                              (cons (cons _%off262264%_
                                                          _%$%g262161262234%_)
                                                    _%initializers262154%_))
                                             (let ((__tmp265175
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self262090%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx262086%_
                                                __tmp265175
                                                _%slot262262%_))))))
                                    (_%__kont264565264566%_
                                     (lambda ()
                                       (let ((__tmp265176
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj262149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object262110%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp265178
                                     (let ((__tmp265179
                                            (lambda (_%i262193%_ _%r262194%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self262090%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i262193%_) '()))
                              (cons (cons '%#ref (cons _%$obj262149%_ '()))
                                    (cons (cdr _%i262193%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r262194%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp265179
                                        '()
                                        _%initializers262154%_)))
                                    (__tmp265177
                                     (cons (cons '%#ref
                                                 (cons _%$obj262149%_ '()))
                                           '())))
                                (declare (not safe))
                                (##append __tmp265178 __tmp265177)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp265176
                                          _%stx262086%_))))
                                    (_%__kont264567264568%_
                                     (lambda ()
                                       (let ((__tmp265180
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj262149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object262110%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj262149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args262108%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj262149%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp265180
                                          _%stx262086%_)))))
                                (let* ((_%$%g262156262196%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx264561264562%_))
                                              (_%__kont264565264566%_)
                                              (_%__kont264567264568%_))))
                                       (_%__match264598264599%_
                                        (lambda (_%$%e262163262201%_
                                                 _%$%hd262164262204%_
                                                 _%$%tl262165262206%_
                                                 _%$%e262166262209%_
                                                 _%$%hd262167262212%_
                                                 _%$%tl262168262214%_
                                                 _%$%e262169262217%_
                                                 _%$%hd262170262220%_
                                                 _%$%tl262171262222%_
                                                 _%$%e262172262225%_
                                                 _%$%hd262173262228%_
                                                 _%$%tl262174262230%_)
                                          (let ((_%$%g262160262233%_
                                                 _%$%tl262174262230%_)
                                                (_%$%g262161262234%_
                                                 _%$%hd262173262228%_)
                                                (_%$%g262162262235%_
                                                 _%$%hd262170262220%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%$%g262162262235%_))
                                                (_%__kont264563264564%_
                                                 _%$%g262160262233%_
                                                 _%$%g262161262234%_
                                                 _%$%g262162262235%_)
                                                (_%__kont264567264568%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx264561264562%_))
                                      (let ((_%$%e262163262201%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx264561264562%_))))
                                        (let ((_%$%tl262165262206%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e262163262201%_)))
                                              (_%$%hd262164262204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e262163262201%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd262164262204%_))
                                              (let ((_%$%e262166262209%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd262164262204%_))))
                                                (let ((_%$%tl262168262214%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e262166262209%_)))
                                                      (_%$%hd262167262212%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e262166262209%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd262167262212%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%$%hd262167262212%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl262168262214%_))
                      (let ((_%$%e262169262217%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl262168262214%_))))
                        (let ((_%$%tl262171262222%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e262169262217%_)))
                              (_%$%hd262170262220%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e262169262217%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl262171262222%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl262165262206%_))
                                  (let ((_%$%e262172262225%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl262165262206%_))))
                                    (let ((_%$%tl262174262230%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e262172262225%_)))
                                          (_%$%hd262173262228%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e262172262225%_))))
                                      (_%__match264598264599%_
                                       _%$%e262163262201%_
                                       _%$%hd262164262204%_
                                       _%$%tl262165262206%_
                                       _%$%e262166262209%_
                                       _%$%hd262167262212%_
                                       _%$%tl262168262214%_
                                       _%$%e262169262217%_
                                       _%$%hd262170262220%_
                                       _%$%tl262171262222%_
                                       _%$%e262172262225%_
                                       _%$%hd262173262228%_
                                       _%$%tl262174262230%_)))
                                  (_%__kont264567264568%_))
                              (_%__kont264567264568%_))))
                      (_%__kont264567264568%_))
                  (_%__kont264567264568%_))
              (_%__kont264567264568%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont264567264568%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g262156262196%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::check-arguments
      (lambda (_%self261946%_ _%ctx261947%_ _%stx261948%_ _%args261949%_)
        (let ((_%self261952%_ _%self261946%_))
          (if (let ()
                (declare (not safe))
                (##unchecked-structure-ref _%self261952%_ '4 '#f '#f))
              (gxc#!procedure::check-arguments
               _%self261952%_
               _%ctx261947%_
               _%stx261948%_
               _%args261949%_)
              '#t))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'check-arguments
       gxc#!accessor::check-arguments
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self261729%_ _%ctx261730%_ _%stx261731%_ _%args261732%_)
        (let* ((_%self261735%_ _%self261729%_)
               (_%arguments-ok?261745%_
                (let ((__method265108
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self261735%_ 'check-arguments))))
                  (if __method265108
                      (let ()
                        (declare (not safe))
                        (__method265108
                         _%self261735%_
                         _%ctx261730%_
                         _%stx261731%_
                         _%args261732%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self261735%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g261747261757%_
                (lambda (_%$%g261748261754%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g261748261754%_))))
               (_%$%g261746261821%_
                (lambda (_%$%g261748261760%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g261748261760%_))
                      (let ((_%$%e261750261762%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g261748261760%_))))
                        (let ((_%$%hd261751261765%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e261750261762%_)))
                              (_%$%tl261752261767%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e261750261762%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl261752261767%_))
                              (let* ((_%klass261783%_
                                      (let ((__tmp265181
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self261735%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx261731%_
                                         __tmp265181)))
                                     (_%field261785%_
                                      (let ((__tmp265182
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self261735%_
                                                '3
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#!class-slot->field-offset
                                         _%klass261783%_
                                         __tmp265182)))
                                     (_%object261787%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx261730%_
                                         _%$%hd261751261765%_)))
                                     (_%klass261790%_ _%klass261783%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass261790%_
                                       '8
                                       '#f
                                       '#f))
                                    (let ((__tmp265183
                                           (cons (if (or _%arguments-ok?261745%_
                                                         (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self261735%_
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
                              _%self261735%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#quote (cons _%field261785%_ '()))
                     (cons _%object261787%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp265183
                                       _%stx261731%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass261790%_
                                           '7
                                           '#f
                                           '#f))
                                        (let ((__tmp265184
                                               (cons (if (or _%arguments-ok?261745%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self261735%_
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
                                  _%self261735%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field261785%_ '()))
                         (cons _%object261787%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp265184
                                           _%stx261731%_))
                                        (let ((_%$e261809%_
                                               (let ((__tmp265185
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self261735%_
                                                         '3
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#!class-slot-find-struct
                                                  _%klass261790%_
                                                  __tmp265185))))
                                          (if _%$e261809%_
                                              (let ((__tmp265186
                                                     (cons (if (or _%arguments-ok?261745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (not (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self261735%_
                                   '4
                                   '#f
                                   '#f))))
                       '%#struct-unchecked-ref
                       '%#struct-ref)
                   (cons (cons '%#ref
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self261735%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#quote (cons _%field261785%_ '()))
                               (cons _%object261787%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp265186
                                                 _%stx261731%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self261735%_
                                                     '4
                                                     '#f
                                                     '#f))
                                                  (let ((__tmp265187
                                                         (let ((_%$obj261818%_
                                                                (let ((__tmp265188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp265188))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$obj261818%_ '())
                                           (cons _%object261787%_ '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#struct-direct-instance?
                                                       (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass261790%_
                                    '1
                                    '#f
                                    '#f))
                                 '()))
                     (cons (cons '%#ref (cons _%$obj261818%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#struct-unchecked-ref
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self261735%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field261785%_ '()))
                                 (cons (cons '%#ref (cons _%$obj261818%_ '()))
                                       '()))))
               (cons (if _%arguments-ok?261745%_
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj261818%_ '()))
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self261735%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'class-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self261735%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj261818%_
                                                             '()))
                                                 (cons (cons '%#quote
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self261735%_
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
                                                     __tmp265187
                                                     _%stx261731%_))
                                                  (let ((__tmp265189
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'unchecked-slot-ref '()))
                             (cons _%object261787%_
                                   (cons (cons '%#quote
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self261735%_
                                                        '3
                                                        '#f
                                                        '#f))
                                                     '()))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp265189
                                                     _%stx261731%_))))))))
                              (_%$%g261747261757%_ _%$%g261748261760%_))))
                      (_%$%g261747261757%_ _%$%g261748261760%_)))))
          (_%$%g261746261821%_ _%args261732%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass264215 __method-table264216)
        (let ((__check-arguments264217
               (let ((__tmp265190
                      (lambda ()
                        (let ((__method264218
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table264216
                                  'check-arguments
                                  '#f))))
                          (if __method264218
                              __method264218
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp265190)))
              (__slot264219
               (let ((__slot264220
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass264215 'slot))))
                 (if __slot264220
                     __slot264220
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self261729%_ _%ctx261730%_ _%stx261731%_ _%args261732%_)
            (let* ((_%self261735%_ _%self261729%_)
                   (_%arguments-ok?261745%_
                    ((force __check-arguments264217)
                     _%self261735%_
                     _%ctx261730%_
                     _%stx261731%_
                     _%args261732%_))
                   (_%$%g261747261757%_
                    (lambda (_%$%g261748261754%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g261748261754%_))))
                   (_%$%g261746261821%_
                    (lambda (_%$%g261748261760%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g261748261760%_))
                          (let ((_%$%e261750261762%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g261748261760%_))))
                            (let ((_%$%hd261751261765%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e261750261762%_)))
                                  (_%$%tl261752261767%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e261750261762%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl261752261767%_))
                                  (let* ((_%klass261783%_
                                          (let ((__tmp265191
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self261735%_
                                                    '1
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx261731%_
                                             __tmp265191)))
                                         (_%field261785%_
                                          (let ((__tmp265192
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self261735%_
                                                    '3
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#!class-slot->field-offset
                                             _%klass261783%_
                                             __tmp265192)))
                                         (_%object261787%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%ctx261730%_
                                             _%$%hd261751261765%_)))
                                         (_%klass261790%_ _%klass261783%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass261790%_
                                           '8
                                           '#f
                                           '#f))
                                        (let ((__tmp265193
                                               (cons (if (or _%arguments-ok?261745%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self261735%_
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
                                  _%self261735%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field261785%_ '()))
                         (cons _%object261787%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp265193
                                           _%stx261731%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass261790%_
                                               '7
                                               '#f
                                               '#f))
                                            (let ((__tmp265194
                                                   (cons (if (or _%arguments-ok?261745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self261735%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-ref
                     '%#struct-ref)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self261735%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field261785%_ '()))
                             (cons _%object261787%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp265194
                                               _%stx261731%_))
                                            (let ((_%$e261809%_
                                                   (let ((__tmp265195
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self261735%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot-find-struct
                                                      _%klass261790%_
                                                      __tmp265195))))
                                              (if _%$e261809%_
                                                  (let ((__tmp265196
                                                         (cons (if (or _%arguments-ok?261745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (not (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self261735%_
                                       '4
                                       '#f
                                       '#f))))
                           '%#struct-unchecked-ref
                           '%#struct-ref)
                       (cons (cons '%#ref
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self261735%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#quote (cons _%field261785%_ '()))
                                   (cons _%object261787%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp265196
                                                     _%stx261731%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self261735%_
                                                         '4
                                                         '#f
                                                         '#f))
                                                      (let ((__tmp265197
                                                             (let ((_%$obj261818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp265198
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp265198))))
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj261818%_ '())
                                               (cons _%object261787%_ '()))
                                         '())
                                   (cons (cons '%#if
                                               (cons (cons '%#struct-direct-instance?
                                                           (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%klass261790%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#ref (cons _%$obj261818%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#struct-unchecked-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self261735%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field261785%_ '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj261818%_ '()))
                                           '()))))
                   (cons (if _%arguments-ok?261745%_
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-ref '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj261818%_ '()))
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self261735%_
                            __slot264219
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
                                                              _%self261735%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj261818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self261735%_
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
                (gxc#xform-wrap-source __tmp265197 _%stx261731%_))
              (let ((__tmp265199
                     (cons '%#call
                           (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                 (cons _%object261787%_
                                       (cons (cons '%#quote
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self261735%_
                                                            '3
                                                            '#f
                                                            '#f))
                                                         '()))
                                             '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp265199 _%stx261731%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g261747261757%_ _%$%g261748261760%_))))
                          (_%$%g261747261757%_ _%$%g261748261760%_)))))
              (_%$%g261746261821%_ _%args261732%_))))))
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
      (lambda (_%self261493%_ _%ctx261494%_ _%stx261495%_ _%args261496%_)
        (let* ((_%self261499%_ _%self261493%_)
               (_%arguments-ok?261509%_
                (let ((__method265109
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self261499%_ 'check-arguments))))
                  (if __method265109
                      (let ()
                        (declare (not safe))
                        (__method265109
                         _%self261499%_
                         _%ctx261494%_
                         _%stx261495%_
                         _%args261496%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self261499%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g261511261525%_
                (lambda (_%$%g261512261522%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g261512261522%_))))
               (_%$%g261510261604%_
                (lambda (_%$%g261512261528%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g261512261528%_))
                      (let ((_%$%e261515261530%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g261512261528%_))))
                        (let ((_%$%hd261516261533%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e261515261530%_)))
                              (_%$%tl261517261535%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e261515261530%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl261517261535%_))
                              (let ((_%$%e261518261538%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl261517261535%_))))
                                (let ((_%$%hd261519261541%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e261518261538%_)))
                                      (_%$%tl261520261543%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e261518261538%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl261520261543%_))
                                      (let* ((_%klass261563%_
                                              (let ((__tmp265200
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self261499%_
                                                        '1
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#optimizer-resolve-class
                                                 _%stx261495%_
                                                 __tmp265200)))
                                             (_%field261565%_
                                              (let ((__tmp265201
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self261499%_
                                                        '3
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#!class-slot->field-offset
                                                 _%klass261563%_
                                                 __tmp265201)))
                                             (_%object261567%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx261494%_
                                                 _%$%hd261516261533%_)))
                                             (_%value261569%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx261494%_
                                                 _%$%hd261519261541%_)))
                                             (_%klass261572%_ _%klass261563%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass261572%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp265202
                                                   (cons (if (or _%arguments-ok?261509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self261499%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-set!
                     '%#struct-direct-set!)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self261499%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field261565%_ '()))
                             (cons _%object261567%_
                                   (cons _%value261569%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp265202
                                               _%stx261495%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass261572%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp265203
                                                       (cons (if (or _%arguments-ok?261509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self261499%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self261499%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field261565%_ '()))
                                 (cons _%object261567%_
                                       (cons _%value261569%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp265203
                                                   _%stx261495%_))
                                                (let ((_%$e261592%_
                                                       (let ((__tmp265204
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self261499%_
                         '3
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#!class-slot-find-struct _%klass261572%_ __tmp265204))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%$e261592%_
                                                      (let ((__tmp265205
                                                             (cons (if (or _%arguments-ok?261509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (not (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self261499%_
                                           '3
                                           '#f
                                           '#f))))
                               '%#struct-unchecked-set!
                               '%#struct-set!)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self261499%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field261565%_ '()))
                                       (cons _%object261567%_
                                             (cons _%value261569%_ '())))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp265205 _%stx261495%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self261499%_ '4 '#f '#f))
                  (let ((__tmp265206
                         (let ((_%$obj261601%_
                                (let ((__tmp265207
                                       (let ()
                                         (declare (not safe))
                                         (##gensym '__obj))))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp265207))))
                           (cons '%#let-values
                                 (cons (cons (cons (cons _%$obj261601%_ '())
                                                   (cons _%object261567%_ '()))
                                             '())
                                       (cons (cons '%#if
                                                   (cons (cons '%#struct-direct-instance?
                                                               (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass261572%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#ref (cons _%$obj261601%_ '()))
                                   '())))
                 (cons (cons '%#struct-unchecked-set!
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self261499%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field261565%_ '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj261601%_ '()))
                                               (cons _%value261569%_ '())))))
                       (cons (if _%arguments-ok?261509%_
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'unchecked-slot-set!
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj261601%_
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self261499%_
                                '3
                                '#f
                                '#f))
                             '()))
                 (cons _%value261569%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'class-slot-set! '()))
                                             (cons (cons '%#ref
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%self261499%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#ref
                                                               (cons _%$obj261601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self261499%_
                                      '3
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%value261569%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp265206 _%stx261495%_))
                  (let ((__tmp265208
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-set! '()))
                                     (cons _%object261567%_
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self261499%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%value261569%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp265208 _%stx261495%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g261511261525%_
                                       _%$%g261512261528%_))))
                              (_%$%g261511261525%_ _%$%g261512261528%_))))
                      (_%$%g261511261525%_ _%$%g261512261528%_)))))
          (_%$%g261510261604%_ _%args261496%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass264221 __method-table264222)
        (let ((__check-arguments264223
               (let ((__tmp265209
                      (lambda ()
                        (let ((__method264224
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table264222
                                  'check-arguments
                                  '#f))))
                          (if __method264224
                              __method264224
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp265209))))
          (lambda (_%self261493%_ _%ctx261494%_ _%stx261495%_ _%args261496%_)
            (let* ((_%self261499%_ _%self261493%_)
                   (_%arguments-ok?261509%_
                    ((force __check-arguments264223)
                     _%self261499%_
                     _%ctx261494%_
                     _%stx261495%_
                     _%args261496%_))
                   (_%$%g261511261525%_
                    (lambda (_%$%g261512261522%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g261512261522%_))))
                   (_%$%g261510261604%_
                    (lambda (_%$%g261512261528%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g261512261528%_))
                          (let ((_%$%e261515261530%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g261512261528%_))))
                            (let ((_%$%hd261516261533%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e261515261530%_)))
                                  (_%$%tl261517261535%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e261515261530%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl261517261535%_))
                                  (let ((_%$%e261518261538%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl261517261535%_))))
                                    (let ((_%$%hd261519261541%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e261518261538%_)))
                                          (_%$%tl261520261543%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e261518261538%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl261520261543%_))
                                          (let* ((_%klass261563%_
                                                  (let ((__tmp265210
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self261499%_
                                                            '1
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#optimizer-resolve-class
                                                     _%stx261495%_
                                                     __tmp265210)))
                                                 (_%field261565%_
                                                  (let ((__tmp265211
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self261499%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot->field-offset
                                                     _%klass261563%_
                                                     __tmp265211)))
                                                 (_%object261567%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx261494%_
                                                     _%$%hd261516261533%_)))
                                                 (_%value261569%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx261494%_
                                                     _%$%hd261519261541%_)))
                                                 (_%klass261572%_
                                                  _%klass261563%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass261572%_
                                                   '8
                                                   '#f
                                                   '#f))
                                                (let ((__tmp265212
                                                       (cons (if (or _%arguments-ok?261509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self261499%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-direct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self261499%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field261565%_ '()))
                                 (cons _%object261567%_
                                       (cons _%value261569%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp265212
                                                   _%stx261495%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%klass261572%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp265213
                                                           (cons (if (or _%arguments-ok?261509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self261499%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-set!
                             '%#struct-set!)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self261499%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field261565%_ '()))
                                     (cons _%object261567%_
                                           (cons _%value261569%_ '())))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp265213 _%stx261495%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$e261592%_
                                                           (let ((__tmp265214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self261499%_
                             '3
                             '#f
                             '#f))))
                     (declare (not safe))
                     (gxc#!class-slot-find-struct
                      _%klass261572%_
                      __tmp265214))))
              (if _%$e261592%_
                  (let ((__tmp265215
                         (cons (if (or _%arguments-ok?261509%_
                                       (not (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self261499%_
                                               '3
                                               '#f
                                               '#f))))
                                   '%#struct-unchecked-set!
                                   '%#struct-set!)
                               (cons (cons '%#ref
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self261499%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     (cons (cons '%#quote
                                                 (cons _%field261565%_ '()))
                                           (cons _%object261567%_
                                                 (cons _%value261569%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp265215 _%stx261495%_))
                  (if (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self261499%_ '4 '#f '#f))
                      (let ((__tmp265216
                             (let ((_%$obj261601%_
                                    (let ((__tmp265217
                                           (let ()
                                             (declare (not safe))
                                             (##gensym '__obj))))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp265217))))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj261601%_
                                                             '())
                                                       (cons _%object261567%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#if
                                                       (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass261572%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#ref (cons _%$obj261601%_ '()))
                                       '())))
                     (cons (cons '%#struct-unchecked-set!
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self261499%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field261565%_ '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj261601%_
                                                               '()))
                                                   (cons _%value261569%_
                                                         '())))))
                           (cons (if _%arguments-ok?261509%_
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'unchecked-slot-set!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj261601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#quote
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self261499%_
                                    '3
                                    '#f
                                    '#f))
                                 '()))
                     (cons _%value261569%_ '())))))
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
                              _%self261499%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#ref (cons _%$obj261601%_ '()))
                     (cons (cons '%#quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self261499%_
                                          '3
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%value261569%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp265216 _%stx261495%_))
                      (let ((__tmp265218
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-set! '()))
                                         (cons _%object261567%_
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self261499%_
                            '3
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%value261569%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source
                         __tmp265218
                         _%stx261495%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g261511261525%_
                                           _%$%g261512261528%_))))
                                  (_%$%g261511261525%_ _%$%g261512261528%_))))
                          (_%$%g261511261525%_ _%$%g261512261528%_)))))
              (_%$%g261510261604%_ _%args261496%_))))))
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
      (lambda (_%self261309%_ _%ctx261310%_ _%stx261311%_ _%args261312%_)
        (let* ((_%self261315%_ _%self261309%_)
               (_%$%self261324261334%_ _%self261315%_)
               (_%$%E261326261337%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self261324261334%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%$%K261327261347%_
                (lambda (_%inline261340%_ _%dispatch261341%_ _%arity261342%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self261315%_
                         _%args261312%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx261311%_
                         _%arity261342%_)))
                  (if _%inline261340%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp265219 (_%inline261340%_ _%stx261311%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp265219
                           _%stx261311%_
                           _%ctx261310%_)))
                      (if (and _%dispatch261341%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch261341%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch261341%_))
                            (let ((__tmp265220
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch261341%_
                                                           '()))
                                               _%args261312%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp265220
                               _%stx261311%_
                               _%ctx261310%_)))
                          (gxc#!procedure::optimize-call
                           _%self261315%_
                           _%ctx261310%_
                           _%stx261311%_
                           _%args261312%_)))))
               (_%$%e261328261350%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self261324261334%_
                   '1
                   '#f
                   '#f)))
               (_%$%e261329261353%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self261324261334%_
                   '2
                   '#f
                   '#f)))
               (_%$%e261330261356%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self261324261334%_
                   '3
                   '#f
                   '#f)))
               (_%arity261359%_ _%$%e261330261356%_)
               (_%$%e261331261361%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self261324261334%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch261364%_ _%$%e261331261361%_)
               (_%$%e261332261366%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self261324261334%_
                   '5
                   '#f
                   '#f)))
               (_%inline261369%_ _%$%e261332261366%_))
          (_%$%K261327261347%_
           _%inline261369%_
           _%dispatch261364%_
           _%arity261359%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self261161%_ _%ctx261162%_ _%stx261163%_ _%args261164%_)
        (let* ((_%self261167%_ _%self261161%_)
               (_%$e261181%_
                (let ((__tmp265222
                       (lambda (_%$%g261176261178%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%$%g261176261178%_
                            _%args261164%_))))
                      (__tmp265221
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self261167%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp265222 __tmp265221))))
          (if _%$e261181%_
              (let ((__method265110
                     (let ()
                       (declare (not safe))
                       (__method-ref _%$e261181%_ 'optimize-call))))
                (if __method265110
                    (let ()
                      (declare (not safe))
                      (__method265110
                       _%$e261181%_
                       _%ctx261162%_
                       _%stx261163%_
                       _%args261164%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method" _%$e261181%_ 'optimize-call))
                      '#!void)))
              (let ((__tmp265223
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self261167%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx261163%_
                 __tmp265223))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self260902%_ _%ctx260903%_ _%stx260904%_ _%args260905%_)
        (let* ((_%self260908%_ _%self260902%_)
               (_%$%self260917260926%_ _%self260908%_)
               (_%$%E260919260929%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self260917260926%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%$%K260920261020%_
                (lambda (_%dispatch260932%_ _%table260933%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch260932%_))
                      (let* ((_%$%g260934260944%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch260932%_)))
                             (_%$%else260936260952%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch260932%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx260903%_
                                   _%stx260904%_))))
                             (_%$%K260938261001%_
                              (lambda (_%main260955%_ _%keys260956%_)
                                (let ((_g265224_
                                       (gxc#!kw-lambda-split-args
                                        _%stx260904%_
                                        _%args260905%_)))
                                  (begin
                                    (let ((_g265225_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g265224_)
                                                 (##values-length _g265224_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g265225_ 2)))
                                          (error "Context expects 2 values"
                                                 _g265225_)))
                                    (let ((_%pargs260958%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g265224_ 0)))
                                          (_%kwargs260959%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g265224_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main260955%_))
                                        (if _%table260933%_
                                            (let ((_%xargs260967%_
                                                   (map (lambda (_%key260961%_)
                                                          (let ((_%$e260963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key260961%_ _%kwargs260959%_))))
                    (if _%$e260963%_ _%$e260963%_ '(%#ref absent-value))))
                _%keys260956%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw260969%_)
                                                 (if (memq (car _%kw260969%_)
                                                           _%keys260956%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx260904%_
                                                        _%keys260956%_
                                                        _%kw260969%_))))
                                               _%kwargs260959%_)
                                              (let ((__tmp265226
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main260955%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (append _%xargs260967%_ _%pargs260958%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp265226
                                                 _%stx260904%_
                                                 _%ctx260903%_)))
                                            (let* ((_%kwt260971%_
                                                    (let ((__tmp265227
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp265227)))
                                                   (_%kwvars260975%_
                                                    (map (lambda (_%_260973%_)
                                                           (let ((__tmp265228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp265228)))
                 _%kwargs260959%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind260980%_
                                                    (map (lambda (_%kw260977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar260978%_)
                   (cons (cons _%kwvar260978%_ '())
                         (cons (cdr _%kw260977%_) '())))
                 _%kwargs260959%_
                 _%kwvars260975%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset260985%_
                                                    (map (lambda (_%kw260982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar260983%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt260971%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw260982%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar260983%_
                                                             '()))
                                                 '()))))))
                 _%kwargs260959%_
                 _%kwvars260975%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs260990%_
                                                    (map (lambda (_%kw260987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar260988%_)
                   (cons (car _%kw260987%_)
                         (cons '%#ref (cons _%kwvar260988%_ '()))))
                 _%kwargs260959%_
                 _%kwvars260975%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs260998%_
                                                    (map (lambda (_%key260992%_)
                                                           (let ((_%$e260994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key260992%_ _%xkwargs260990%_))))
                     (if _%$e260994%_ _%$e260994%_ '(%#ref absent-value))))
                 _%keys260956%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp265229
                                                    (cons '%#let-values
                                                          (cons _%kwbind260980%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt260971%_ '())
                                                      (cons (let ((__tmp265230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs260959%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp265230 _%stx260904%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp265231
                                                             (cons (let ((__tmp265232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main260955%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt260971%_
                                                                '()))
                                                    (append _%xargs260998%_
                                                            _%pargs260958%_))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp265232 _%stx260904%_))
                           '())))
                (declare (not safe))
                (##append _%kwset260985%_ __tmp265231)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp265229
                                               _%stx260904%_
                                               _%ctx260903%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%g260934260944%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%$%e260939261004%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g260934260944%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%$%e260940261007%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g260934260944%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%$%e260941261010%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g260934260944%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys261013%_ _%$%e260941261010%_)
                                   (_%$%e260942261015%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g260934260944%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main261018%_ _%$%e260942261015%_))
                              (_%$%K260938261001%_
                               _%main261018%_
                               _%keys261013%_))
                            (_%$%else260936260952%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx260903%_ _%stx260904%_)))))
               (_%$%e260921261023%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self260917260926%_
                   '1
                   '#f
                   '#f)))
               (_%$%e260922261026%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self260917260926%_
                   '2
                   '#f
                   '#f)))
               (_%$%e260923261029%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self260917260926%_
                   '3
                   '#f
                   '#f)))
               (_%table261032%_ _%$%e260923261029%_)
               (_%$%e260924261034%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self260917260926%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch261037%_ _%$%e260924261034%_))
          (_%$%K260920261020%_ _%dispatch261037%_ _%table261032%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx260515%_ _%args260516%_)
        (let _%lp260518%_ ((_%rest260520%_ _%args260516%_)
                           (_%pargs260521%_ '())
                           (_%kwargs260522%_ '()))
          (let* ((_%__stx264603264604%_ _%rest260520%_)
                 (_%$%g260528260580%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx264603264604%_)))))
            (let ((_%__kont264605264606%_
                   (lambda (_%$%g260530260759%_ _%$%g260531260760%_)
                     (_%lp260518%_
                      _%$%g260530260759%_
                      (cons _%$%g260531260760%_ _%pargs260521%_)
                      _%kwargs260522%_)))
                  (_%__kont264607264608%_
                   (lambda (_%$%g260545260705%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%$%g260545260705%_
                                _%pargs260521%_))
                             (reverse _%kwargs260522%_))))
                  (_%__kont264609264610%_
                   (lambda (_%$%g260556260652%_
                            _%$%g260557260653%_
                            _%$%g260558260654%_)
                     (let ((_%kw260671%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g260558260654%_))))
                       (if (assq _%kw260671%_ _%kwargs260522%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx260515%_
                              _%kw260671%_))
                           (_%lp260518%_
                            _%$%g260556260652%_
                            _%pargs260521%_
                            (cons (cons _%kw260671%_ _%$%g260557260653%_)
                                  _%kwargs260522%_))))))
                  (_%__kont264611264612%_
                   (lambda (_%$%g260571260600%_ _%$%g260572260601%_)
                     (_%lp260518%_
                      _%$%g260571260600%_
                      (cons _%$%g260572260601%_ _%pargs260521%_)
                      _%kwargs260522%_)))
                  (_%__kont264613264614%_
                   (lambda ()
                     (values (reverse _%pargs260521%_)
                             (reverse _%kwargs260522%_)))))
              (let ((_%__match264710264711%_
                     (lambda (_%$%e260559260620%_
                              _%$%hd260560260623%_
                              _%$%tl260561260625%_
                              _%$%e260562260628%_
                              _%$%hd260563260631%_
                              _%$%tl260564260633%_
                              _%$%e260565260636%_
                              _%$%hd260566260639%_
                              _%$%tl260567260641%_
                              _%$%e260568260644%_
                              _%$%hd260569260647%_
                              _%$%tl260570260649%_)
                       (let ((_%$%g260556260652%_ _%$%tl260570260649%_)
                             (_%$%g260557260653%_ _%$%hd260569260647%_)
                             (_%$%g260558260654%_ _%$%hd260566260639%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%$%g260558260654%_))
                             (_%__kont264609264610%_
                              _%$%g260556260652%_
                              _%$%g260557260653%_
                              _%$%g260558260654%_)
                             (_%__kont264611264612%_
                              _%$%tl260561260625%_
                              _%$%hd260560260623%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx264603264604%_))
                    (let ((_%$%e260532260724%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx264603264604%_))))
                      (let ((_%$%tl260534260729%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e260532260724%_)))
                            (_%$%hd260533260727%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e260532260724%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd260533260727%_))
                            (let ((_%$%e260535260732%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd260533260727%_))))
                              (let ((_%$%tl260537260737%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e260535260732%_)))
                                    (_%$%hd260536260735%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e260535260732%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd260536260735%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd260536260735%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl260537260737%_))
                                            (let ((_%$%e260538260740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl260537260737%_))))
                                              (let ((_%$%tl260540260745%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e260538260740%_)))
                                                    (_%$%hd260539260743%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e260538260740%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd260539260743%_))
                                                    (let ((_%$%e260541260748%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd260539260743%_))))
                                                      (if (equal? _%$%e260541260748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl260540260745%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl260534260729%_))
                          (let ((_%$%e260542260751%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl260534260729%_))))
                            (let ((_%$%tl260544260756%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e260542260751%_)))
                                  (_%$%hd260543260754%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e260542260751%_))))
                              (_%__kont264605264606%_
                               _%$%tl260544260756%_
                               _%$%hd260543260754%_)))
                          (_%__kont264611264612%_
                           _%$%tl260534260729%_
                           _%$%hd260533260727%_))
                      (_%__kont264611264612%_
                       _%$%tl260534260729%_
                       _%$%hd260533260727%_))
                  (if (equal? _%$%e260541260748%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl260540260745%_))
                          (_%__kont264607264608%_ _%$%tl260534260729%_)
                          (_%__kont264611264612%_
                           _%$%tl260534260729%_
                           _%$%hd260533260727%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl260540260745%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl260534260729%_))
                              (let ((_%$%e260568260644%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl260534260729%_))))
                                (let ((_%$%tl260570260649%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e260568260644%_)))
                                      (_%$%hd260569260647%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e260568260644%_))))
                                  (_%__match264710264711%_
                                   _%$%e260532260724%_
                                   _%$%hd260533260727%_
                                   _%$%tl260534260729%_
                                   _%$%e260535260732%_
                                   _%$%hd260536260735%_
                                   _%$%tl260537260737%_
                                   _%$%e260538260740%_
                                   _%$%hd260539260743%_
                                   _%$%tl260540260745%_
                                   _%$%e260568260644%_
                                   _%$%hd260569260647%_
                                   _%$%tl260570260649%_)))
                              (_%__kont264611264612%_
                               _%$%tl260534260729%_
                               _%$%hd260533260727%_))
                          (_%__kont264611264612%_
                           _%$%tl260534260729%_
                           _%$%hd260533260727%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl260540260745%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl260534260729%_))
                                                            (let ((_%$%e260568260644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl260534260729%_))))
                      (let ((_%$%tl260570260649%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e260568260644%_)))
                            (_%$%hd260569260647%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e260568260644%_))))
                        (_%__match264710264711%_
                         _%$%e260532260724%_
                         _%$%hd260533260727%_
                         _%$%tl260534260729%_
                         _%$%e260535260732%_
                         _%$%hd260536260735%_
                         _%$%tl260537260737%_
                         _%$%e260538260740%_
                         _%$%hd260539260743%_
                         _%$%tl260540260745%_
                         _%$%e260568260644%_
                         _%$%hd260569260647%_
                         _%$%tl260570260649%_)))
                    (_%__kont264611264612%_
                     _%$%tl260534260729%_
                     _%$%hd260533260727%_))
                (_%__kont264611264612%_
                 _%$%tl260534260729%_
                 _%$%hd260533260727%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont264611264612%_
                                             _%$%tl260534260729%_
                                             _%$%hd260533260727%_))
                                        (_%__kont264611264612%_
                                         _%$%tl260534260729%_
                                         _%$%hd260533260727%_))
                                    (_%__kont264611264612%_
                                     _%$%tl260534260729%_
                                     _%$%hd260533260727%_))))
                            (_%__kont264611264612%_
                             _%$%tl260534260729%_
                             _%$%hd260533260727%_))))
                    (_%__kont264613264614%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self260499%_ _%ctx260500%_ _%stx260501%_ _%args260502%_)
        (let ((_%self260505%_ _%self260499%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx260500%_ _%stx260501%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self260189%_ _%stx260190%_)
        (let* ((_%__stx264719264720%_ _%stx260190%_)
               (_%$%g260193260233%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx264719264720%_)))))
          (let ((_%__kont264721264722%_
                 (lambda (_%$%g260195260337%_ _%$%g260196260338%_)
                   (let ((_%$e260365%_
                          (member 'return:
                                  (let ((__tmp265233
                                         (lambda (_%$%g260357260360%_
                                                  _%$%g260358260362%_)
                                           (cons _%$%g260357260360%_
                                                 _%$%g260358260362%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp265233
                                     '()
                                     _%$%g260196260338%_))
                                  gx#stx-eq?)))
                     (if _%$e260365%_
                         (let ((_%type260370%_
                                (let ((__tmp265234
                                       (let ((__tmp265235 (cadr _%$e260365%_)))
                                         (declare (not safe))
                                         (gxc#identifier-symbol __tmp265235))))
                                  (declare (not safe))
                                  (gxc#optimizer-resolve-class
                                   _%stx260190%_
                                   __tmp265234))))
                           (gxc#check-return-type!
                            _%stx260190%_
                            _%$%g260195260337%_
                            _%type260370%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self260189%_
                              _%$%g260195260337%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self260189%_
                            _%$%g260195260337%_))))))
                (_%__kont264725264726%_
                 (lambda (_%$%g260218260262%_ _%$%g260219260263%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self260189%_ _%$%g260218260262%_)))))
            (let ((_%__match264756264757%_
                   (lambda (_%$%e260197260283%_
                            _%$%hd260198260286%_
                            _%$%tl260199260288%_
                            _%$%e260200260291%_
                            _%$%hd260201260294%_
                            _%$%tl260202260296%_
                            _%$%e260203260299%_
                            _%$%hd260204260302%_
                            _%$%tl260205260304%_
                            _%__splice264723264724%_
                            _%$%target260206260307%_
                            _%$%tl260208260309%_)
                     (letrec ((_%$%loop260209260312%_
                               (lambda (_%$%hd260207260315%_
                                        _%$%signature260213260317%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd260207260315%_))
                                     (let ((_%$%e260210260319%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd260207260315%_))))
                                       (let ((_%$%lp-tl260212260324%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e260210260319%_)))
                                             (_%$%lp-hd260211260322%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e260210260319%_))))
                                         (_%$%loop260209260312%_
                                          _%$%lp-tl260212260324%_
                                          (cons _%$%lp-hd260211260322%_
                                                _%$%signature260213260317%_))))
                                     (let ((_%$%signature260214260327%_
                                            (reverse _%$%signature260213260317%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl260202260296%_))
                                           (let ((_%$%e260215260329%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl260202260296%_))))
                                             (let ((_%$%tl260217260334%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e260215260329%_)))
                                                   (_%$%hd260216260332%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e260215260329%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl260217260334%_))
                                                   (_%__kont264721264722%_
                                                    _%$%hd260216260332%_
                                                    _%$%signature260214260327%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g260193260233%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g260193260233%_))))))))
                       (_%$%loop260209260312%_
                        _%$%target260206260307%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx264719264720%_))
                  (let ((_%$%e260197260283%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx264719264720%_))))
                    (let ((_%$%tl260199260288%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e260197260283%_)))
                          (_%$%hd260198260286%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e260197260283%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl260199260288%_))
                          (let ((_%$%e260200260291%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl260199260288%_))))
                            (let ((_%$%tl260202260296%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e260200260291%_)))
                                  (_%$%hd260201260294%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e260200260291%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd260201260294%_))
                                  (let ((_%$%e260203260299%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd260201260294%_))))
                                    (let ((_%$%tl260205260304%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e260203260299%_)))
                                          (_%$%hd260204260302%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e260203260299%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd260204260302%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%$%hd260204260302%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%$%tl260205260304%_))
                                                  (let ((_%__splice264723264724%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl260205260304%_
                                                            '0))))
                                                    (let ((_%$%tl260208260309%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice264723264724%_
                                                              '1)))
                                                          (_%$%target260206260307%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice264723264724%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl260208260309%_))
                                                          (_%__match264756264757%_
                                                           _%$%e260197260283%_
                                                           _%$%hd260198260286%_
                                                           _%$%tl260199260288%_
                                                           _%$%e260200260291%_
                                                           _%$%hd260201260294%_
                                                           _%$%tl260202260296%_
                                                           _%$%e260203260299%_
                                                           _%$%hd260204260302%_
                                                           _%$%tl260205260304%_
                                                           _%__splice264723264724%_
                                                           _%$%target260206260307%_
                                                           _%$%tl260208260309%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl260202260296%_))
                      (let ((_%$%e260226260254%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl260202260296%_))))
                        (let ((_%$%tl260228260259%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e260226260254%_)))
                              (_%$%hd260227260257%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e260226260254%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl260228260259%_))
                              (_%__kont264725264726%_
                               _%$%hd260227260257%_
                               _%$%hd260201260294%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g260193260233%_)))))
                      (let () (declare (not safe)) (_%$%g260193260233%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl260202260296%_))
                                                      (let ((_%$%e260226260254%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl260202260296%_))))
                (let ((_%$%tl260228260259%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e260226260254%_)))
                      (_%$%hd260227260257%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e260226260254%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl260228260259%_))
                      (_%__kont264725264726%_
                       _%$%hd260227260257%_
                       _%$%hd260201260294%_)
                      (let () (declare (not safe)) (_%$%g260193260233%_)))))
              (let () (declare (not safe)) (_%$%g260193260233%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl260202260296%_))
                                                  (let ((_%$%e260226260254%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl260202260296%_))))
                                                    (let ((_%$%tl260228260259%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e260226260254%_)))
                                                          (_%$%hd260227260257%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e260226260254%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl260228260259%_))
                                                          (_%__kont264725264726%_
                                                           _%$%hd260227260257%_
                                                           _%$%hd260201260294%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g260193260233%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g260193260233%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl260202260296%_))
                                              (let ((_%$%e260226260254%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl260202260296%_))))
                                                (let ((_%$%tl260228260259%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e260226260254%_)))
                                                      (_%$%hd260227260257%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e260226260254%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl260228260259%_))
                                                      (_%__kont264725264726%_
                                                       _%$%hd260227260257%_
                                                       _%$%hd260201260294%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g260193260233%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g260193260233%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl260202260296%_))
                                      (let ((_%$%e260226260254%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl260202260296%_))))
                                        (let ((_%$%tl260228260259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e260226260254%_)))
                                              (_%$%hd260227260257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e260226260254%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl260228260259%_))
                                              (_%__kont264725264726%_
                                               _%$%hd260227260257%_
                                               _%$%hd260201260294%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g260193260233%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g260193260233%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g260193260233%_)))))
                  (let () (declare (not safe)) (_%$%g260193260233%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx260164%_ _%expr260165%_ _%type260166%_)
        (let ((_%$e260168%_ (not _%type260166%_)))
          (if _%$e260168%_
              _%$e260168%_
              (let ((_%$e260171%_
                     (eq? (##structure-ref _%type260166%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e260171%_
                    _%$e260171%_
                    (let ((_%$e260174%_
                           (eq? (##structure-ref
                                 _%type260166%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e260174%_
                          _%$e260174%_
                          (let ((_%expr-type260178%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr260165%_))))
                            (if (not _%expr-type260178%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx260164%_
                                   _%type260166%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type260178%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx260164%_
                                       _%type260166%_
                                       _%expr-type260178%_))
                                    (let ((_%$e260182%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type260178%_
                                              'gxc#!abort::t))))
                                      (if _%$e260182%_
                                          _%$e260182%_
                                          (let ((_%$e260185%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type260178%_
                                                    _%type260166%_))))
                                            (if _%$e260185%_
                                                _%$e260185%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx260164%_
                                                   _%type260166%_
                                                   _%expr-type260178%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self259593%_ _%stx259594%_)
        (gxc#check-contract-violation!
         _%stx259594%_
         (let* ((_%__stx264805264806%_ _%stx259594%_)
                (_%$%g259599259709%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; invalid match target"
                      _%__stx264805264806%_)))))
           (let ((_%__kont264807264808%_
                  (lambda (_%$%g259601260138%_
                           _%$%g259602260139%_
                           _%$%g259603260140%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-e _%$%g259603260140%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self259593%_
                           _%$%g259602260139%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self259593%_
                           _%$%g259601260138%_)))))
                 (_%__kont264809264810%_
                  (lambda (_%$%g259622259967%_
                           _%$%g259623259968%_
                           _%$%g259624259969%_
                           _%$%g259625259970%_)
                    (let ((_%$e260002%_
                           (let ((__tmp265236
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g259625259970%_))))
                             (declare (not safe))
                             (gxc#optimizer-lookup-type __tmp265236))))
                      (if _%$e260002%_
                          (if (or (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e260002%_
                                     'gxc#!predicate::t))
                                  (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e260002%_
                                     'gxc#!primitive-predicate::t)))
                              (let* ((_%test260010%_
                                      (let ((__tmp265237
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '%#call))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '%#ref))
                       (cons _%$%g259625259970%_ '()))
                 (cons (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#ref))
                             (cons _%$%g259624259969%_ '()))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-apply
                                         __tmp265237
                                         _%stx259594%_
                                         _%self259593%_)))
                                     (_%K260014%_
                                      (let ((__tmp265238
                                             (lambda ()
                                               (let ((__tmp265241
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self259593%_
                                                           _%$%g259623259968%_))))
                                                     (__tmp265239
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#identifier-symbol _%$%g259624259969%_))
                          (let ((__tmp265240
                                 (##structure-ref
                                  _%$e260002%_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             _%stx259594%_
                             __tmp265240)))
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp265241
                                                  gxc#current-compile-path-type
                                                  __tmp265239)))))
                                        (declare (not safe))
                                        (__make-promise __tmp265238)))
                                     (_%E260017%_
                                      (let ((__tmp265242
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self259593%_
                                                  _%$%g259622259967%_)))))
                                        (declare (not safe))
                                        (__make-promise __tmp265242)))
                                     (_%__stx264779264780%_ _%test260010%_)
                                     (_%$%g260021260034%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx264779264780%_)))))
                                (let ((_%__kont264781264782%_
                                       (lambda (_%$%g260023260062%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%$%g260023260062%_))
                                             (force _%K260014%_)
                                             (force _%E260017%_))))
                                      (_%__kont264783264784%_
                                       (lambda ()
                                         (let ((__tmp265243
                                                (cons '%#if
                                                      (cons _%test260010%_
                                                            (cons (force _%K260014%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (force _%E260017%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp265243
                                            _%stx259594%_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx264779264780%_))
                                      (let ((_%$%e260024260046%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx264779264780%_))))
                                        (let ((_%$%tl260026260051%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e260024260046%_)))
                                              (_%$%hd260025260049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e260024260046%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%hd260025260049%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#quote
                                                     _%$%hd260025260049%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl260026260051%_))
                                                      (let ((_%$%e260027260054%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl260026260051%_))))
                (let ((_%$%tl260029260059%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e260027260054%_)))
                      (_%$%hd260028260057%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e260027260054%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl260029260059%_))
                      (_%__kont264781264782%_ _%$%hd260028260057%_)
                      (_%__kont264783264784%_))))
              (_%__kont264783264784%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont264783264784%_))
                                              (_%__kont264783264784%_))))
                                      (_%__kont264783264784%_))))
                              (let ()
                                (declare (not safe))
                                (gxc#xform-operands
                                 _%self259593%_
                                 _%stx259594%_)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-operands
                             _%self259593%_
                             _%stx259594%_))))))
                 (_%__kont264811264812%_
                  (lambda (_%$%g259659259843%_
                           _%$%g259660259844%_
                           _%$%g259661259845%_
                           _%$%g259662259846%_)
                    (gxc#optimize-if%
                     _%self259593%_
                     (let ((__tmp265244
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#if))
                                  (cons _%$%g259661259845%_
                                        (cons _%$%g259659259843%_
                                              (cons _%$%g259660259844%_
                                                    '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp265244 _%stx259594%_)))))
                 (_%__kont264813264814%_
                  (lambda (_%$%g259690259746%_
                           _%$%g259691259747%_
                           _%$%g259692259748%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-operands _%self259593%_ _%stx259594%_)))))
             (let ((_%__match265012265013%_
                    (lambda (_%$%e259663259771%_
                             _%$%hd259664259774%_
                             _%$%tl259665259776%_
                             _%$%e259666259779%_
                             _%$%hd259667259782%_
                             _%$%tl259668259784%_
                             _%$%e259669259787%_
                             _%$%hd259670259790%_
                             _%$%tl259671259792%_
                             _%$%e259672259795%_
                             _%$%hd259673259798%_
                             _%$%tl259674259800%_
                             _%$%e259675259803%_
                             _%$%hd259676259806%_
                             _%$%tl259677259808%_
                             _%$%e259678259811%_
                             _%$%hd259679259814%_
                             _%$%tl259680259816%_
                             _%$%e259681259819%_
                             _%$%hd259682259822%_
                             _%$%tl259683259824%_
                             _%$%e259684259827%_
                             _%$%hd259685259830%_
                             _%$%tl259686259832%_
                             _%$%e259687259835%_
                             _%$%hd259688259838%_
                             _%$%tl259689259840%_)
                      (let ((_%$%g259659259843%_ _%$%hd259688259838%_)
                            (_%$%g259660259844%_ _%$%hd259685259830%_)
                            (_%$%g259661259845%_ _%$%hd259682259822%_)
                            (_%$%g259662259846%_ _%$%hd259679259814%_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _%$%g259662259846%_
                               'not))
                            (_%__kont264811264812%_
                             _%$%g259659259843%_
                             _%$%g259660259844%_
                             _%$%g259661259845%_
                             _%$%g259662259846%_)
                            (_%__kont264813264814%_
                             _%$%hd259688259838%_
                             _%$%hd259685259830%_
                             _%$%hd259667259782%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx264805264806%_))
                   (let ((_%$%e259604260090%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx264805264806%_))))
                     (let ((_%$%tl259606260095%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e259604260090%_)))
                           (_%$%hd259605260093%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e259604260090%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl259606260095%_))
                           (let ((_%$%e259607260098%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl259606260095%_))))
                             (let ((_%$%tl259609260103%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e259607260098%_)))
                                   (_%$%hd259608260101%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e259607260098%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd259608260101%_))
                                   (let ((_%$%e259610260106%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd259608260101%_))))
                                     (let ((_%$%tl259612260111%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e259610260106%_)))
                                           (_%$%hd259611260109%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e259610260106%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd259611260109%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#quote
                                                  _%$%hd259611260109%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl259612260111%_))
                                                   (let ((_%$%e259613260114%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl259612260111%_))))
                                                     (let ((_%$%tl259615260119%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e259613260114%_)))
                                                           (_%$%hd259614260117%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e259613260114%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl259615260119%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl259609260103%_))
                       (let ((_%$%e259616260122%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl259609260103%_))))
                         (let ((_%$%tl259618260127%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e259616260122%_)))
                               (_%$%hd259617260125%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e259616260122%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl259618260127%_))
                               (let ((_%$%e259619260130%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl259618260127%_))))
                                 (let ((_%$%tl259621260135%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e259619260130%_)))
                                       (_%$%hd259620260133%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e259619260130%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl259621260135%_))
                                       (_%__kont264807264808%_
                                        _%$%hd259620260133%_
                                        _%$%hd259617260125%_
                                        _%$%hd259614260117%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g259599259709%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g259599259709%_)))))
                       (let () (declare (not safe)) (_%$%g259599259709%_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl259609260103%_))
                       (let ((_%$%e259699259730%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl259609260103%_))))
                         (let ((_%$%tl259701259735%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e259699259730%_)))
                               (_%$%hd259700259733%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e259699259730%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl259701259735%_))
                               (let ((_%$%e259702259738%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl259701259735%_))))
                                 (let ((_%$%tl259704259743%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e259702259738%_)))
                                       (_%$%hd259703259741%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e259702259738%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl259704259743%_))
                                       (_%__kont264813264814%_
                                        _%$%hd259703259741%_
                                        _%$%hd259700259733%_
                                        _%$%hd259608260101%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g259599259709%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g259599259709%_)))))
                       (let () (declare (not safe)) (_%$%g259599259709%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl259609260103%_))
                                                       (let ((_%$%e259699259730%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl259609260103%_))))
                 (let ((_%$%tl259701259735%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e259699259730%_)))
                       (_%$%hd259700259733%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e259699259730%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl259701259735%_))
                       (let ((_%$%e259702259738%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl259701259735%_))))
                         (let ((_%$%tl259704259743%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e259702259738%_)))
                               (_%$%hd259703259741%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e259702259738%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl259704259743%_))
                               (_%__kont264813264814%_
                                _%$%hd259703259741%_
                                _%$%hd259700259733%_
                                _%$%hd259608260101%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g259599259709%_)))))
                       (let () (declare (not safe)) (_%$%g259599259709%_)))))
               (let () (declare (not safe)) (_%$%g259599259709%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-eq?
                                                      '%#call
                                                      _%$%hd259611260109%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl259612260111%_))
                                                       (let ((_%$%e259635259903%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl259612260111%_))))
                 (let ((_%$%tl259637259908%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e259635259903%_)))
                       (_%$%hd259636259906%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e259635259903%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%hd259636259906%_))
                       (let ((_%$%e259638259911%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%hd259636259906%_))))
                         (let ((_%$%tl259640259916%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e259638259911%_)))
                               (_%$%hd259639259914%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e259638259911%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%$%hd259639259914%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-eq? '%#ref _%$%hd259639259914%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl259640259916%_))
                                       (let ((_%$%e259641259919%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl259640259916%_))))
                                         (let ((_%$%tl259643259924%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e259641259919%_)))
                                               (_%$%hd259642259922%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e259641259919%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl259643259924%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl259637259908%_))
                                                   (let ((_%$%e259644259927%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl259637259908%_))))
                                                     (let ((_%$%tl259646259932%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e259644259927%_)))
                                                           (_%$%hd259645259930%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e259644259927%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd259645259930%_))
                                                           (let ((_%$%e259647259935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd259645259930%_))))
                     (let ((_%$%tl259649259940%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e259647259935%_)))
                           (_%$%hd259648259938%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e259647259935%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%$%hd259648259938%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-eq? '%#ref _%$%hd259648259938%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl259649259940%_))
                                   (let ((_%$%e259650259943%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl259649259940%_))))
                                     (let ((_%$%tl259652259948%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e259650259943%_)))
                                           (_%$%hd259651259946%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e259650259943%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl259652259948%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl259646259932%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl259609260103%_))
                                                   (let ((_%$%e259653259951%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl259609260103%_))))
                                                     (let ((_%$%tl259655259956%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e259653259951%_)))
                                                           (_%$%hd259654259954%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e259653259951%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl259655259956%_))
                                                           (let ((_%$%e259656259959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl259655259956%_))))
                     (let ((_%$%tl259658259964%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e259656259959%_)))
                           (_%$%hd259657259962%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e259656259959%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl259658259964%_))
                           (_%__kont264809264810%_
                            _%$%hd259657259962%_
                            _%$%hd259654259954%_
                            _%$%hd259651259946%_
                            _%$%hd259642259922%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g259599259709%_)))))
                   (let () (declare (not safe)) (_%$%g259599259709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259599259709%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl259609260103%_))
                                                   (let ((_%$%e259699259730%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl259609260103%_))))
                                                     (let ((_%$%tl259701259735%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e259699259730%_)))
                                                           (_%$%hd259700259733%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e259699259730%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl259701259735%_))
                                                           (let ((_%$%e259702259738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl259701259735%_))))
                     (let ((_%$%tl259704259743%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e259702259738%_)))
                           (_%$%hd259703259741%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e259702259738%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl259704259743%_))
                           (_%__kont264813264814%_
                            _%$%hd259703259741%_
                            _%$%hd259700259733%_
                            _%$%hd259608260101%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g259599259709%_)))))
                   (let () (declare (not safe)) (_%$%g259599259709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259599259709%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl259646259932%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl259609260103%_))
                                                   (let ((_%$%e259684259827%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl259609260103%_))))
                                                     (let ((_%$%tl259686259832%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e259684259827%_)))
                                                           (_%$%hd259685259830%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e259684259827%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl259686259832%_))
                                                           (let ((_%$%e259687259835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl259686259832%_))))
                     (let ((_%$%tl259689259840%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e259687259835%_)))
                           (_%$%hd259688259838%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e259687259835%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl259689259840%_))
                           (_%__match265012265013%_
                            _%$%e259604260090%_
                            _%$%hd259605260093%_
                            _%$%tl259606260095%_
                            _%$%e259607260098%_
                            _%$%hd259608260101%_
                            _%$%tl259609260103%_
                            _%$%e259610260106%_
                            _%$%hd259611260109%_
                            _%$%tl259612260111%_
                            _%$%e259635259903%_
                            _%$%hd259636259906%_
                            _%$%tl259637259908%_
                            _%$%e259638259911%_
                            _%$%hd259639259914%_
                            _%$%tl259640259916%_
                            _%$%e259641259919%_
                            _%$%hd259642259922%_
                            _%$%tl259643259924%_
                            _%$%e259644259927%_
                            _%$%hd259645259930%_
                            _%$%tl259646259932%_
                            _%$%e259684259827%_
                            _%$%hd259685259830%_
                            _%$%tl259686259832%_
                            _%$%e259687259835%_
                            _%$%hd259688259838%_
                            _%$%tl259689259840%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g259599259709%_)))))
                   (let () (declare (not safe)) (_%$%g259599259709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259599259709%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl259609260103%_))
                                                   (let ((_%$%e259699259730%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl259609260103%_))))
                                                     (let ((_%$%tl259701259735%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e259699259730%_)))
                                                           (_%$%hd259700259733%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e259699259730%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl259701259735%_))
                                                           (let ((_%$%e259702259738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl259701259735%_))))
                     (let ((_%$%tl259704259743%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e259702259738%_)))
                           (_%$%hd259703259741%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e259702259738%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl259704259743%_))
                           (_%__kont264813264814%_
                            _%$%hd259703259741%_
                            _%$%hd259700259733%_
                            _%$%hd259608260101%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g259599259709%_)))))
                   (let () (declare (not safe)) (_%$%g259599259709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259599259709%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl259646259932%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl259609260103%_))
                                           (let ((_%$%e259684259827%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl259609260103%_))))
                                             (let ((_%$%tl259686259832%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e259684259827%_)))
                                                   (_%$%hd259685259830%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e259684259827%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl259686259832%_))
                                                   (let ((_%$%e259687259835%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl259686259832%_))))
                                                     (let ((_%$%tl259689259840%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e259687259835%_)))
                                                           (_%$%hd259688259838%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e259687259835%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl259689259840%_))
                                                           (_%__match265012265013%_
                                                            _%$%e259604260090%_
                                                            _%$%hd259605260093%_
                                                            _%$%tl259606260095%_
                                                            _%$%e259607260098%_
                                                            _%$%hd259608260101%_
                                                            _%$%tl259609260103%_
                                                            _%$%e259610260106%_
                                                            _%$%hd259611260109%_
                                                            _%$%tl259612260111%_
                                                            _%$%e259635259903%_
                                                            _%$%hd259636259906%_
                                                            _%$%tl259637259908%_
                                                            _%$%e259638259911%_
                                                            _%$%hd259639259914%_
                                                            _%$%tl259640259916%_
                                                            _%$%e259641259919%_
                                                            _%$%hd259642259922%_
                                                            _%$%tl259643259924%_
                                                            _%$%e259644259927%_
                                                            _%$%hd259645259930%_
                                                            _%$%tl259646259932%_
                                                            _%$%e259684259827%_
                                                            _%$%hd259685259830%_
                                                            _%$%tl259686259832%_
                                                            _%$%e259687259835%_
                                                            _%$%hd259688259838%_
                                                            _%$%tl259689259840%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g259599259709%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259599259709%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g259599259709%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl259609260103%_))
                                           (let ((_%$%e259699259730%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl259609260103%_))))
                                             (let ((_%$%tl259701259735%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e259699259730%_)))
                                                   (_%$%hd259700259733%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e259699259730%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl259701259735%_))
                                                   (let ((_%$%e259702259738%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl259701259735%_))))
                                                     (let ((_%$%tl259704259743%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e259702259738%_)))
                                                           (_%$%hd259703259741%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e259702259738%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl259704259743%_))
                                                           (_%__kont264813264814%_
                                                            _%$%hd259703259741%_
                                                            _%$%hd259700259733%_
                                                            _%$%hd259608260101%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g259599259709%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259599259709%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g259599259709%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl259646259932%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl259609260103%_))
                                       (let ((_%$%e259684259827%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl259609260103%_))))
                                         (let ((_%$%tl259686259832%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e259684259827%_)))
                                               (_%$%hd259685259830%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e259684259827%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl259686259832%_))
                                               (let ((_%$%e259687259835%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl259686259832%_))))
                                                 (let ((_%$%tl259689259840%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e259687259835%_)))
                                                       (_%$%hd259688259838%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e259687259835%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl259689259840%_))
                                                       (_%__match265012265013%_
                                                        _%$%e259604260090%_
                                                        _%$%hd259605260093%_
                                                        _%$%tl259606260095%_
                                                        _%$%e259607260098%_
                                                        _%$%hd259608260101%_
                                                        _%$%tl259609260103%_
                                                        _%$%e259610260106%_
                                                        _%$%hd259611260109%_
                                                        _%$%tl259612260111%_
                                                        _%$%e259635259903%_
                                                        _%$%hd259636259906%_
                                                        _%$%tl259637259908%_
                                                        _%$%e259638259911%_
                                                        _%$%hd259639259914%_
                                                        _%$%tl259640259916%_
                                                        _%$%e259641259919%_
                                                        _%$%hd259642259922%_
                                                        _%$%tl259643259924%_
                                                        _%$%e259644259927%_
                                                        _%$%hd259645259930%_
                                                        _%$%tl259646259932%_
                                                        _%$%e259684259827%_
                                                        _%$%hd259685259830%_
                                                        _%$%tl259686259832%_
                                                        _%$%e259687259835%_
                                                        _%$%hd259688259838%_
                                                        _%$%tl259689259840%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g259599259709%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g259599259709%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g259599259709%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl259609260103%_))
                                       (let ((_%$%e259699259730%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl259609260103%_))))
                                         (let ((_%$%tl259701259735%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e259699259730%_)))
                                               (_%$%hd259700259733%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e259699259730%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl259701259735%_))
                                               (let ((_%$%e259702259738%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl259701259735%_))))
                                                 (let ((_%$%tl259704259743%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e259702259738%_)))
                                                       (_%$%hd259703259741%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e259702259738%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl259704259743%_))
                                                       (_%__kont264813264814%_
                                                        _%$%hd259703259741%_
                                                        _%$%hd259700259733%_
                                                        _%$%hd259608260101%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g259599259709%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g259599259709%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g259599259709%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl259646259932%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl259609260103%_))
                                   (let ((_%$%e259684259827%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl259609260103%_))))
                                     (let ((_%$%tl259686259832%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e259684259827%_)))
                                           (_%$%hd259685259830%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e259684259827%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl259686259832%_))
                                           (let ((_%$%e259687259835%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl259686259832%_))))
                                             (let ((_%$%tl259689259840%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e259687259835%_)))
                                                   (_%$%hd259688259838%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e259687259835%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl259689259840%_))
                                                   (_%__match265012265013%_
                                                    _%$%e259604260090%_
                                                    _%$%hd259605260093%_
                                                    _%$%tl259606260095%_
                                                    _%$%e259607260098%_
                                                    _%$%hd259608260101%_
                                                    _%$%tl259609260103%_
                                                    _%$%e259610260106%_
                                                    _%$%hd259611260109%_
                                                    _%$%tl259612260111%_
                                                    _%$%e259635259903%_
                                                    _%$%hd259636259906%_
                                                    _%$%tl259637259908%_
                                                    _%$%e259638259911%_
                                                    _%$%hd259639259914%_
                                                    _%$%tl259640259916%_
                                                    _%$%e259641259919%_
                                                    _%$%hd259642259922%_
                                                    _%$%tl259643259924%_
                                                    _%$%e259644259927%_
                                                    _%$%hd259645259930%_
                                                    _%$%tl259646259932%_
                                                    _%$%e259684259827%_
                                                    _%$%hd259685259830%_
                                                    _%$%tl259686259832%_
                                                    _%$%e259687259835%_
                                                    _%$%hd259688259838%_
                                                    _%$%tl259689259840%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259599259709%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g259599259709%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g259599259709%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl259609260103%_))
                                   (let ((_%$%e259699259730%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl259609260103%_))))
                                     (let ((_%$%tl259701259735%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e259699259730%_)))
                                           (_%$%hd259700259733%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e259699259730%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl259701259735%_))
                                           (let ((_%$%e259702259738%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl259701259735%_))))
                                             (let ((_%$%tl259704259743%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e259702259738%_)))
                                                   (_%$%hd259703259741%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e259702259738%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl259704259743%_))
                                                   (_%__kont264813264814%_
                                                    _%$%hd259703259741%_
                                                    _%$%hd259700259733%_
                                                    _%$%hd259608260101%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259599259709%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g259599259709%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g259599259709%_)))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl259646259932%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl259609260103%_))
                           (let ((_%$%e259684259827%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl259609260103%_))))
                             (let ((_%$%tl259686259832%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e259684259827%_)))
                                   (_%$%hd259685259830%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e259684259827%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl259686259832%_))
                                   (let ((_%$%e259687259835%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl259686259832%_))))
                                     (let ((_%$%tl259689259840%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e259687259835%_)))
                                           (_%$%hd259688259838%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e259687259835%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl259689259840%_))
                                           (_%__match265012265013%_
                                            _%$%e259604260090%_
                                            _%$%hd259605260093%_
                                            _%$%tl259606260095%_
                                            _%$%e259607260098%_
                                            _%$%hd259608260101%_
                                            _%$%tl259609260103%_
                                            _%$%e259610260106%_
                                            _%$%hd259611260109%_
                                            _%$%tl259612260111%_
                                            _%$%e259635259903%_
                                            _%$%hd259636259906%_
                                            _%$%tl259637259908%_
                                            _%$%e259638259911%_
                                            _%$%hd259639259914%_
                                            _%$%tl259640259916%_
                                            _%$%e259641259919%_
                                            _%$%hd259642259922%_
                                            _%$%tl259643259924%_
                                            _%$%e259644259927%_
                                            _%$%hd259645259930%_
                                            _%$%tl259646259932%_
                                            _%$%e259684259827%_
                                            _%$%hd259685259830%_
                                            _%$%tl259686259832%_
                                            _%$%e259687259835%_
                                            _%$%hd259688259838%_
                                            _%$%tl259689259840%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g259599259709%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g259599259709%_)))))
                           (let () (declare (not safe)) (_%$%g259599259709%_)))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl259609260103%_))
                           (let ((_%$%e259699259730%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl259609260103%_))))
                             (let ((_%$%tl259701259735%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e259699259730%_)))
                                   (_%$%hd259700259733%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e259699259730%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl259701259735%_))
                                   (let ((_%$%e259702259738%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl259701259735%_))))
                                     (let ((_%$%tl259704259743%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e259702259738%_)))
                                           (_%$%hd259703259741%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e259702259738%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl259704259743%_))
                                           (_%__kont264813264814%_
                                            _%$%hd259703259741%_
                                            _%$%hd259700259733%_
                                            _%$%hd259608260101%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g259599259709%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g259599259709%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g259599259709%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl259609260103%_))
                                                       (let ((_%$%e259699259730%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl259609260103%_))))
                 (let ((_%$%tl259701259735%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e259699259730%_)))
                       (_%$%hd259700259733%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e259699259730%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl259701259735%_))
                       (let ((_%$%e259702259738%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl259701259735%_))))
                         (let ((_%$%tl259704259743%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e259702259738%_)))
                               (_%$%hd259703259741%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e259702259738%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl259704259743%_))
                               (_%__kont264813264814%_
                                _%$%hd259703259741%_
                                _%$%hd259700259733%_
                                _%$%hd259608260101%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g259599259709%_)))))
                       (let () (declare (not safe)) (_%$%g259599259709%_)))))
               (let () (declare (not safe)) (_%$%g259599259709%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl259609260103%_))
                                                   (let ((_%$%e259699259730%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl259609260103%_))))
                                                     (let ((_%$%tl259701259735%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e259699259730%_)))
                                                           (_%$%hd259700259733%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e259699259730%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl259701259735%_))
                                                           (let ((_%$%e259702259738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl259701259735%_))))
                     (let ((_%$%tl259704259743%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e259702259738%_)))
                           (_%$%hd259703259741%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e259702259738%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl259704259743%_))
                           (_%__kont264813264814%_
                            _%$%hd259703259741%_
                            _%$%hd259700259733%_
                            _%$%hd259608260101%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g259599259709%_)))))
                   (let () (declare (not safe)) (_%$%g259599259709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259599259709%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl259609260103%_))
                                           (let ((_%$%e259699259730%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl259609260103%_))))
                                             (let ((_%$%tl259701259735%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e259699259730%_)))
                                                   (_%$%hd259700259733%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e259699259730%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl259701259735%_))
                                                   (let ((_%$%e259702259738%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl259701259735%_))))
                                                     (let ((_%$%tl259704259743%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e259702259738%_)))
                                                           (_%$%hd259703259741%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e259702259738%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl259704259743%_))
                                                           (_%__kont264813264814%_
                                                            _%$%hd259703259741%_
                                                            _%$%hd259700259733%_
                                                            _%$%hd259608260101%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g259599259709%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259599259709%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g259599259709%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl259609260103%_))
                                       (let ((_%$%e259699259730%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl259609260103%_))))
                                         (let ((_%$%tl259701259735%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e259699259730%_)))
                                               (_%$%hd259700259733%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e259699259730%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl259701259735%_))
                                               (let ((_%$%e259702259738%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl259701259735%_))))
                                                 (let ((_%$%tl259704259743%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e259702259738%_)))
                                                       (_%$%hd259703259741%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e259702259738%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl259704259743%_))
                                                       (_%__kont264813264814%_
                                                        _%$%hd259703259741%_
                                                        _%$%hd259700259733%_
                                                        _%$%hd259608260101%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g259599259709%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g259599259709%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g259599259709%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl259609260103%_))
                                   (let ((_%$%e259699259730%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl259609260103%_))))
                                     (let ((_%$%tl259701259735%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e259699259730%_)))
                                           (_%$%hd259700259733%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e259699259730%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl259701259735%_))
                                           (let ((_%$%e259702259738%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl259701259735%_))))
                                             (let ((_%$%tl259704259743%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e259702259738%_)))
                                                   (_%$%hd259703259741%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e259702259738%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl259704259743%_))
                                                   (_%__kont264813264814%_
                                                    _%$%hd259703259741%_
                                                    _%$%hd259700259733%_
                                                    _%$%hd259608260101%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259599259709%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g259599259709%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g259599259709%_))))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl259609260103%_))
                           (let ((_%$%e259699259730%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl259609260103%_))))
                             (let ((_%$%tl259701259735%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e259699259730%_)))
                                   (_%$%hd259700259733%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e259699259730%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl259701259735%_))
                                   (let ((_%$%e259702259738%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl259701259735%_))))
                                     (let ((_%$%tl259704259743%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e259702259738%_)))
                                           (_%$%hd259703259741%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e259702259738%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl259704259743%_))
                                           (_%__kont264813264814%_
                                            _%$%hd259703259741%_
                                            _%$%hd259700259733%_
                                            _%$%hd259608260101%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g259599259709%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g259599259709%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g259599259709%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%$%tl259609260103%_))
                   (let ((_%$%e259699259730%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl259609260103%_))))
                     (let ((_%$%tl259701259735%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e259699259730%_)))
                           (_%$%hd259700259733%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e259699259730%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl259701259735%_))
                           (let ((_%$%e259702259738%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl259701259735%_))))
                             (let ((_%$%tl259704259743%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e259702259738%_)))
                                   (_%$%hd259703259741%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e259702259738%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl259704259743%_))
                                   (_%__kont264813264814%_
                                    _%$%hd259703259741%_
                                    _%$%hd259700259733%_
                                    _%$%hd259608260101%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g259599259709%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g259599259709%_)))))
                   (let () (declare (not safe)) (_%$%g259599259709%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl259609260103%_))
                                                       (let ((_%$%e259699259730%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl259609260103%_))))
                 (let ((_%$%tl259701259735%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e259699259730%_)))
                       (_%$%hd259700259733%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e259699259730%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl259701259735%_))
                       (let ((_%$%e259702259738%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl259701259735%_))))
                         (let ((_%$%tl259704259743%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e259702259738%_)))
                               (_%$%hd259703259741%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e259702259738%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl259704259743%_))
                               (_%__kont264813264814%_
                                _%$%hd259703259741%_
                                _%$%hd259700259733%_
                                _%$%hd259608260101%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g259599259709%_)))))
                       (let () (declare (not safe)) (_%$%g259599259709%_)))))
               (let () (declare (not safe)) (_%$%g259599259709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl259609260103%_))
                                               (let ((_%$%e259699259730%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl259609260103%_))))
                                                 (let ((_%$%tl259701259735%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e259699259730%_)))
                                                       (_%$%hd259700259733%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e259699259730%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl259701259735%_))
                                                       (let ((_%$%e259702259738%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl259701259735%_))))
                 (let ((_%$%tl259704259743%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e259702259738%_)))
                       (_%$%hd259703259741%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e259702259738%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl259704259743%_))
                       (_%__kont264813264814%_
                        _%$%hd259703259741%_
                        _%$%hd259700259733%_
                        _%$%hd259608260101%_)
                       (let () (declare (not safe)) (_%$%g259599259709%_)))))
               (let () (declare (not safe)) (_%$%g259599259709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g259599259709%_))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl259609260103%_))
                                       (let ((_%$%e259699259730%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl259609260103%_))))
                                         (let ((_%$%tl259701259735%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e259699259730%_)))
                                               (_%$%hd259700259733%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e259699259730%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl259701259735%_))
                                               (let ((_%$%e259702259738%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl259701259735%_))))
                                                 (let ((_%$%tl259704259743%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e259702259738%_)))
                                                       (_%$%hd259703259741%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e259702259738%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl259704259743%_))
                                                       (_%__kont264813264814%_
                                                        _%$%hd259703259741%_
                                                        _%$%hd259700259733%_
                                                        _%$%hd259608260101%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g259599259709%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g259599259709%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g259599259709%_))))))
                           (let ()
                             (declare (not safe))
                             (_%$%g259599259709%_)))))
                   (let () (declare (not safe)) (_%$%g259599259709%_)))))))))
    (define gxc#check-contract-violation!
      (lambda (_%stx259461%_ _%expr259462%_)
        (let* ((_%__stx265041265042%_ _%expr259462%_)
               (_%$%g259465259495%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265041265042%_)))))
          (let ((_%__kont265043265044%_
                 (lambda (_%$%g259467259563%_
                          _%$%g259468259564%_
                          _%$%g259469259565%_)
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"contract violation"
                      _%stx259461%_
                      _%$%g259469259565%_
                      _%$%g259468259564%_
                      _%$%g259467259563%_))))
                (_%__kont265045265046%_ (lambda () _%expr259462%_)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx265041265042%_))
                (let ((_%$%e259470259507%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx265041265042%_))))
                  (let ((_%$%tl259472259512%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e259470259507%_)))
                        (_%$%hd259471259510%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e259470259507%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd259471259510%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq?
                               '%#begin-annotation
                               _%$%hd259471259510%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl259472259512%_))
                                (let ((_%$%e259473259515%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl259472259512%_))))
                                  (let ((_%$%tl259475259520%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e259473259515%_)))
                                        (_%$%hd259474259518%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e259473259515%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd259474259518%_))
                                        (let ((_%$%e259476259523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd259474259518%_))))
                                          (let ((_%$%tl259478259528%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e259476259523%_)))
                                                (_%$%hd259477259526%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e259476259523%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd259477259526%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '@contract-violation
                                                       _%$%hd259477259526%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl259478259528%_))
                                                        (let ((_%$%e259479259531%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl259478259528%_))))
                  (let ((_%$%tl259481259536%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e259479259531%_)))
                        (_%$%hd259480259534%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e259479259531%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl259481259536%_))
                        (let ((_%$%e259482259539%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl259481259536%_))))
                          (let ((_%$%tl259484259544%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e259482259539%_)))
                                (_%$%hd259483259542%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e259482259539%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl259484259544%_))
                                (let ((_%$%e259485259547%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl259484259544%_))))
                                  (let ((_%$%tl259487259552%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e259485259547%_)))
                                        (_%$%hd259486259550%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e259485259547%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl259487259552%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl259475259520%_))
                                            (let ((_%$%e259488259555%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl259475259520%_))))
                                              (let ((_%$%tl259490259560%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e259488259555%_)))
                                                    (_%$%hd259489259558%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e259488259555%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl259490259560%_))
                                                    (_%__kont265043265044%_
                                                     _%$%hd259486259550%_
                                                     _%$%hd259483259542%_
                                                     _%$%hd259480259534%_)
                                                    (_%__kont265045265046%_))))
                                            (_%__kont265045265046%_))
                                        (_%__kont265045265046%_))))
                                (_%__kont265045265046%_))))
                        (_%__kont265045265046%_))))
                (_%__kont265045265046%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont265045265046%_))
                                                (_%__kont265045265046%_))))
                                        (_%__kont265045265046%_))))
                                (_%__kont265045265046%_))
                            (_%__kont265045265046%_))
                        (_%__kont265045265046%_))))
                (_%__kont265045265046%_))))))))
