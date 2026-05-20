(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1779289650)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp257410 (list gxc#::basic-xform::t))
            (__tmp257409 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp257410
         '()
         __tmp257409
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args256511%_
        (apply make-instance gxc#::optimize-call::t _%$args256511%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp257411
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
        (__make-atomic-promise __tmp257411)))
    (define gxc#apply-optimize-call
      (lambda (_%stx256503%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self256506%_
                (let ((__obj257401
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj257401))
               (__tmp257412
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self256506%_ _%stx256503%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp257412
           gxc#current-compile-method
           _%self256506%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp257414 (list gxc#::void::t))
            (__tmp257413 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp257414
         '()
         __tmp257413
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args256500%_
        (apply make-instance gxc#::check-return-type::t _%$args256500%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp257415
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
        (__make-atomic-promise __tmp257415)))
    (define gxc#apply-check-return-type
      (lambda (_%stx256492%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self256495%_
                (let ((__obj257403
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj257403))
               (__tmp257416
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self256495%_ _%stx256492%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp257416
           gxc#current-compile-method
           _%self256495%_))))
    (define gxc#optimize-call%
      (lambda (_%self255640%_ _%stx255641%_)
        (let* ((_%__stx256652256653%_ _%stx255641%_)
               (_%g255645255727%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx256652256653%_)))))
          (let ((_%__kont256654256655%_
                 (lambda (_%g255647256288%_ _%g255648256289%_)
                   (let* ((_%rator-id256309%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g255648256289%_)))
                          (_%rator-type256311%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id256309%_))))
                     (if (or (not _%rator-type256311%_)
                             (eq? (##structure-ref
                                   _%rator-type256311%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self255640%_ _%stx255641%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type256311%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp257417
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type256311%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id256309%_
                                  '" => "
                                  _%rator-type256311%_
                                  '" "
                                  __tmp257417))
                               (let* ((_%optimized256326%_
                                       (let ((__method257404
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type256311%_
                                                 'optimize-call))))
                                         (if __method257404
                                             (let ((__tmp257418
                                                    (let ((__tmp257419
                                                           (lambda (_%g256318256321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g256319256323%_)
                     (cons _%g256318256321%_ _%g256319256323%_))))
              (declare (not safe))
              (foldr__0 __tmp257419 '() _%g255647256288%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method257404
                                                _%rator-type256311%_
                                                _%self255640%_
                                                _%stx255641%_
                                                __tmp257418))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type256311%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx256600256601%_
                                       _%optimized256326%_)
                                      (_%g256329256358%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx256600256601%_)))))
                                 (let ((_%__kont256602256603%_
                                        (lambda (_%g256331256424%_
                                                 _%g256332256425%_)
                                          (let* ((_%optimized-rator-id256452%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g256332256425%_)))
                                                 (_%rator-type256457%_
                                                  (let ((_%$e256454%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id256452%_))))
                                                    (if _%$e256454%_
                                                        _%$e256454%_
                                                        _%rator-type256311%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type256457%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id256452%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type256457%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type256457%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized256326%_
                                                (let ((__tmp257420
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g256332256425%_ '()))
                           (let ((__tmp257421
                                  (lambda (_%g256465256468%_ _%g256466256470%_)
                                    (cons _%g256465256468%_
                                          _%g256466256470%_))))
                             (declare (not safe))
                             (foldr__0 __tmp257421 '() _%g256331256424%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp257420
                                                   _%stx255641%_))))))
                                       (_%__kont256606256607%_
                                        (lambda () _%optimized256326%_)))
                                   (let ((_%__match256649256650%_
                                          (lambda (_%e256333256370%_
                                                   _%hd256334256373%_
                                                   _%tl256335256375%_
                                                   _%e256336256378%_
                                                   _%hd256337256381%_
                                                   _%tl256338256383%_
                                                   _%e256339256386%_
                                                   _%hd256340256389%_
                                                   _%tl256341256391%_
                                                   _%e256342256394%_
                                                   _%hd256343256397%_
                                                   _%tl256344256399%_
                                                   _%__splice256604256605%_
                                                   _%target256345256402%_
                                                   _%tl256347256404%_)
                                            (letrec ((_%loop256348256407%_
                                                      (lambda (_%hd256346256410%_
                                                               _%arg256352256412%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd256346256410%_))
                                                            (let ((_%e256349256414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd256346256410%_))))
                      (let ((_%lp-tl256351256419%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e256349256414%_)))
                            (_%lp-hd256350256417%_
                             (let ()
                               (declare (not safe))
                               (##car _%e256349256414%_))))
                        (_%loop256348256407%_
                         _%lp-tl256351256419%_
                         (cons _%lp-hd256350256417%_ _%arg256352256412%_))))
                    (let ((_%arg256353256422%_ (reverse _%arg256352256412%_)))
                      (_%__kont256602256603%_
                       _%arg256353256422%_
                       _%hd256343256397%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop256348256407%_
                                               _%target256345256402%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx256600256601%_))
                                         (let ((_%e256333256370%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx256600256601%_))))
                                           (let ((_%tl256335256375%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e256333256370%_)))
                                                 (_%hd256334256373%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e256333256370%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd256334256373%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd256334256373%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl256335256375%_))
                                                         (let ((_%e256336256378%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl256335256375%_))))
                   (let ((_%tl256338256383%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e256336256378%_)))
                         (_%hd256337256381%_
                          (let ()
                            (declare (not safe))
                            (##car _%e256336256378%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd256337256381%_))
                         (let ((_%e256339256386%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd256337256381%_))))
                           (let ((_%tl256341256391%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e256339256386%_)))
                                 (_%hd256340256389%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e256339256386%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd256340256389%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd256340256389%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl256341256391%_))
                                         (let ((_%e256342256394%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl256341256391%_))))
                                           (let ((_%tl256344256399%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e256342256394%_)))
                                                 (_%hd256343256397%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e256342256394%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl256344256399%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl256338256383%_))
                                                     (let ((_%__splice256604256605%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl256338256383%_
                                                               '0))))
                                                       (let ((_%tl256347256404%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice256604256605%_ '1)))
                     (_%target256345256402%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice256604256605%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl256347256404%_))
                     (_%__match256649256650%_
                      _%e256333256370%_
                      _%hd256334256373%_
                      _%tl256335256375%_
                      _%e256336256378%_
                      _%hd256337256381%_
                      _%tl256338256383%_
                      _%e256339256386%_
                      _%hd256340256389%_
                      _%tl256341256391%_
                      _%e256342256394%_
                      _%hd256343256397%_
                      _%tl256344256399%_
                      _%__splice256604256605%_
                      _%target256345256402%_
                      _%tl256347256404%_)
                     (_%__kont256606256607%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont256606256607%_))
                                                 (_%__kont256606256607%_))))
                                         (_%__kont256606256607%_))
                                     (_%__kont256606256607%_))
                                 (_%__kont256606256607%_))))
                         (_%__kont256606256607%_))))
                 (_%__kont256606256607%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont256606256607%_))
                                                 (_%__kont256606256607%_))))
                                         (_%__kont256606256607%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type256311%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type256311%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp257422
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g255648256289%_
                                                                '()))
                                                    (map (lambda (_%g256476256478%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self255640%_
                                                              _%g256476256478%_)))
                                                         (let ((__tmp257423
                                                                (lambda (_%g256480256483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g256481256485%_)
                          (cons _%g256480256483%_ _%g256481256485%_))))
                   (declare (not safe))
                   (foldr__0 __tmp257423 '() _%g255647256288%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp257422
                                    _%stx255641%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx255641%_
                                    _%rator-type256311%_))))))))
                (_%__kont256658256659%_
                 (lambda (_%g255670255896%_
                          _%g255671255897%_
                          _%g255672255898%_)
                   (let _%loop256016%_ ((_%rest-arg256018%_
                                         (let ((__tmp257430
                                                (lambda (_%g256214256217%_
                                                         _%g256215256219%_)
                                                  (cons _%g256214256217%_
                                                        _%g256215256219%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp257430
                                            '()
                                            _%g255672255898%_)))
                                        (_%rest-rand256019%_
                                         (let ((__tmp257431
                                                (lambda (_%g256221256224%_
                                                         _%g256222256226%_)
                                                  (cons _%g256221256224%_
                                                        _%g256222256226%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp257431
                                            '()
                                            _%g255670255896%_)))
                                        (_%bind256020%_ '())
                                        (_%subst256021%_ '()))
                     (let* ((_%rest-arg256022256030%_ _%rest-arg256018%_)
                            (_%else256024256043%_
                             (lambda ()
                               (let* ((_%body256038%_
                                       (if (null? _%subst256021%_)
                                           _%g255671255897%_
                                           (let ((__tmp257424
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-inline-subst__%
                                                     '#f
                                                     _%subst256021%_
                                                     _%g255671255897%_))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp257424
                                              _%stx255641%_))))
                                      (_%expr256040%_
                                       (let ((__tmp257425
                                              (cons '%#let-values
                                                    (cons _%bind256020%_
                                                          (cons _%body256038%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp257425
                                          _%stx255641%_))))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-refine-type-info _%expr256040%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self255640%_
                                    _%expr256040%_)))))
                            (_%K256026256203%_
                             (lambda (_%rest-arg256046%_ _%arg-id256047%_)
                               (let* ((_%rest-rand256048256056%_
                                       _%rest-rand256019%_)
                                      (_%else256050256078%_
                                       (lambda ()
                                         (let ((__tmp257428
                                                (let ((__tmp257429
                                                       (lambda (_%g256063256066%_
                                                                _%g256064256068%_)
                                                         (cons _%g256063256066%_
                                                               _%g256064256068%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp257429
                                                   '()
                                                   _%g255672255898%_)))
                                               (__tmp257426
                                                (let ((__tmp257427
                                                       (lambda (_%g256070256073%_
                                                                _%g256071256075%_)
                                                         (cons _%g256070256073%_
                                                               _%g256071256075%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp257427
                                                   '()
                                                   _%g255670255896%_))))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"inline lambda arity mismatch"
                                            _%stx255641%_
                                            __tmp257428
                                            __tmp257426))))
                                      (_%K256052256191%_
                                       (lambda (_%rest-rand256081%_
                                                _%rand256082%_)
                                         (let* ((_%__stx256554256555%_
                                                 _%rand256082%_)
                                                (_%g256086256106%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx256554256555%_)))))
                                           (let ((_%__kont256556256557%_
                                                  (lambda (_%g256088256177%_)
                                                    (_%loop256016%_
                                                     _%rest-arg256046%_
                                                     _%rest-rand256081%_
                                                     _%bind256020%_
                                                     (cons (cons _%arg-id256047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand256082%_)
                   _%subst256021%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont256558256559%_
                                                  (lambda (_%g256095256134%_)
                                                    (_%loop256016%_
                                                     _%rest-arg256046%_
                                                     _%rest-rand256081%_
                                                     _%bind256020%_
                                                     (cons (cons _%arg-id256047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand256082%_)
                   _%subst256021%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont256560256561%_
                                                  (lambda ()
                                                    (_%loop256016%_
                                                     _%rest-arg256046%_
                                                     _%rest-rand256081%_
                                                     (cons (cons (cons _%arg-id256047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _%rand256082%_ '()))
                   _%bind256020%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%subst256021%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx256554256555%_))
                                                 (let ((_%e256089256161%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx256554256555%_))))
                                                   (let ((_%tl256091256166%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e256089256161%_)))
                                                         (_%hd256090256164%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e256089256161%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd256090256164%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#quote _%hd256090256164%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl256091256166%_))
                         (let ((_%e256092256169%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl256091256166%_))))
                           (let ((_%tl256094256174%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e256092256169%_)))
                                 (_%hd256093256172%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e256092256169%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl256094256174%_))
                                 (_%__kont256556256557%_ _%hd256093256172%_)
                                 (_%__kont256560256561%_))))
                         (_%__kont256560256561%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#ref _%hd256090256164%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl256091256166%_))
                             (let ((_%e256099256126%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl256091256166%_))))
                               (let ((_%tl256101256131%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e256099256126%_)))
                                     (_%hd256100256129%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e256099256126%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl256101256131%_))
                                     (_%__kont256558256559%_
                                      _%hd256100256129%_)
                                     (_%__kont256560256561%_))))
                             (_%__kont256560256561%_))
                         (_%__kont256560256561%_)))
                 (_%__kont256560256561%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont256560256561%_)))))))
                                 (if (pair? _%rest-rand256048256056%_)
                                     (let ((_%hd256053256194%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest-rand256048256056%_)))
                                           (_%tl256054256196%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest-rand256048256056%_))))
                                       (let* ((_%rand256199%_
                                               _%hd256053256194%_)
                                              (_%rest-rand256201%_
                                               _%tl256054256196%_))
                                         (_%K256052256191%_
                                          _%rest-rand256201%_
                                          _%rand256199%_)))
                                     (_%else256050256078%_))))))
                       (if (pair? _%rest-arg256022256030%_)
                           (let ((_%hd256027256206%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest-arg256022256030%_)))
                                 (_%tl256028256208%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest-arg256022256030%_))))
                             (let* ((_%arg-id256211%_ _%hd256027256206%_)
                                    (_%rest-arg256213%_ _%tl256028256208%_))
                               (_%K256026256203%_
                                _%rest-arg256213%_
                                _%arg-id256211%_)))
                           (_%else256024256043%_))))))
                (_%__kont256664256665%_
                 (lambda (_%g255706255770%_ _%g255707255771%_)
                   (let ((_%rator-type255788%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g255707255771%_))))
                     (if (and _%rator-type255788%_
                              (eq? (##structure-ref
                                    _%rator-type255788%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type255788%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type255788%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type255788%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp257432
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self255640%_
                                               _%g255707255771%_))
                                            (map (lambda (_%g255790255792%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self255640%_
                                                      _%g255790255792%_)))
                                                 (let ((__tmp257433
                                                        (lambda (_%g255794255797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g255795255799%_)
                  (cons _%g255794255797%_ _%g255795255799%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp257433
                                                    '()
                                                    _%g255706255770%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp257432 _%stx255641%_))
                         (if (or (not _%rator-type255788%_)
                                 (let ((__tmp257434
                                        (##structure-ref
                                         _%rator-type255788%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp257434 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self255640%_ _%stx255641%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx255641%_
                                _%rator-type255788%_))))))))
            (let* ((_%__match256761256762%_
                    (lambda (_%e255708255732%_
                             _%hd255709255735%_
                             _%tl255710255737%_
                             _%e255711255740%_
                             _%hd255712255743%_
                             _%tl255713255745%_
                             _%__splice256666256667%_
                             _%target255714255748%_
                             _%tl255716255750%_)
                      (letrec ((_%loop255717255753%_
                                (lambda (_%hd255715255756%_
                                         _%rand255721255758%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd255715255756%_))
                                      (let ((_%e255718255760%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd255715255756%_))))
                                        (let ((_%lp-tl255720255765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e255718255760%_)))
                                              (_%lp-hd255719255763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e255718255760%_))))
                                          (_%loop255717255753%_
                                           _%lp-tl255720255765%_
                                           (cons _%lp-hd255719255763%_
                                                 _%rand255721255758%_))))
                                      (let ((_%rand255722255768%_
                                             (reverse _%rand255721255758%_)))
                                        (_%__kont256664256665%_
                                         _%rand255722255768%_
                                         _%hd255712255743%_))))))
                        (_%loop255717255753%_ _%target255714255748%_ '()))))
                   (_%__match256753256754%_
                    (lambda (_%e255708255732%_
                             _%hd255709255735%_
                             _%tl255710255737%_
                             _%e255711255740%_
                             _%hd255712255743%_
                             _%tl255713255745%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl255713255745%_))
                          (let ((_%__splice256666256667%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl255713255745%_
                                    '0))))
                            (let ((_%tl255716255750%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice256666256667%_
                                      '1)))
                                  (_%target255714255748%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice256666256667%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl255716255750%_))
                                  (_%__match256761256762%_
                                   _%e255708255732%_
                                   _%hd255709255735%_
                                   _%tl255710255737%_
                                   _%e255711255740%_
                                   _%hd255712255743%_
                                   _%tl255713255745%_
                                   _%__splice256666256667%_
                                   _%target255714255748%_
                                   _%tl255716255750%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g255645255727%_)))))
                          (let () (declare (not safe)) (_%g255645255727%_)))))
                   (_%__match256741256742%_
                    (lambda (_%e255673255812%_
                             _%hd255674255815%_
                             _%tl255675255817%_
                             _%e255676255820%_
                             _%hd255677255823%_
                             _%tl255678255825%_
                             _%e255679255828%_
                             _%hd255680255831%_
                             _%tl255681255833%_
                             _%e255682255836%_
                             _%hd255683255839%_
                             _%tl255684255841%_
                             _%__splice256660256661%_
                             _%target255685255844%_
                             _%tl255687255846%_)
                      (letrec ((_%loop255688255849%_
                                (lambda (_%hd255686255852%_
                                         _%arg255692255854%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd255686255852%_))
                                      (let ((_%e255689255856%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd255686255852%_))))
                                        (let ((_%lp-tl255691255861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e255689255856%_)))
                                              (_%lp-hd255690255859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e255689255856%_))))
                                          (_%loop255688255849%_
                                           _%lp-tl255691255861%_
                                           (cons _%lp-hd255690255859%_
                                                 _%arg255692255854%_))))
                                      (let ((_%arg255693255864%_
                                             (reverse _%arg255692255854%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl255684255841%_))
                                            (let ((_%e255694255866%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl255684255841%_))))
                                              (let ((_%tl255696255871%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e255694255866%_)))
                                                    (_%hd255695255869%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e255694255866%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl255696255871%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl255678255825%_))
                                                        (let ((_%__splice256662256663%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl255678255825%_
                          '0))))
                  (let ((_%tl255699255876%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice256662256663%_ '1)))
                        (_%target255697255874%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice256662256663%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl255699255876%_))
                        (letrec ((_%loop255700255879%_
                                  (lambda (_%hd255698255882%_
                                           _%rand255704255884%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd255698255882%_))
                                        (let ((_%e255701255886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd255698255882%_))))
                                          (let ((_%lp-tl255703255891%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e255701255886%_)))
                                                (_%lp-hd255702255889%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e255701255886%_))))
                                            (_%loop255700255879%_
                                             _%lp-tl255703255891%_
                                             (cons _%lp-hd255702255889%_
                                                   _%rand255704255884%_))))
                                        (let ((_%rand255705255894%_
                                               (reverse _%rand255704255884%_)))
                                          (let ((_%g255670255896%_
                                                 _%rand255705255894%_)
                                                (_%g255671255897%_
                                                 _%hd255695255869%_)
                                                (_%g255672255898%_
                                                 _%arg255693255864%_))
                                            (if (and (= (length (let ((__tmp257435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g255924255927%_ _%g255925255929%_)
                                 (cons _%g255924255927%_ _%g255925255929%_))))
                          (declare (not safe))
                          (foldr__0 __tmp257435 '() _%g255672255898%_)))
                (length (let ((__tmp257436
                               (lambda (_%g255931255934%_ _%g255932255936%_)
                                 (cons _%g255931255934%_ _%g255932255936%_))))
                          (declare (not safe))
                          (foldr__0 __tmp257436 '() _%g255670255896%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp257439
                                                            (lambda (_%id255939%_)
                                                              (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gxc#mutable-binding? _%id255939%_)))))
                   (__tmp257437
                    (let ((__tmp257438
                           (lambda (_%g255940255943%_ _%g255941255945%_)
                             (cons _%g255940255943%_ _%g255941255945%_))))
                      (declare (not safe))
                      (foldr__0 __tmp257438 '() _%g255672255898%_))))
               (declare (not safe))
               (andmap__0 __tmp257439 __tmp257437))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp257442
                                                            (lambda (_%rand255948%_)
                                                              (let* ((_%__stx256528256529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%rand255948%_)
                             (_%g255951255964%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx256528256529%_)))))
                        (let ((_%__kont256530256531%_
                               (lambda (_%g255953255992%_)
                                 (not (let ()
                                        (declare (not safe))
                                        (gxc#mutable-binding?
                                         _%g255953255992%_)))))
                              (_%__kont256532256533%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx256528256529%_))
                              (let ((_%e255954255976%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx256528256529%_))))
                                (let ((_%tl255956255981%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e255954255976%_)))
                                      (_%hd255955255979%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e255954255976%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd255955255979%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd255955255979%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl255956255981%_))
                                              (let ((_%e255957255984%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl255956255981%_))))
                                                (let ((_%tl255959255989%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e255957255984%_)))
                                                      (_%hd255958255987%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e255957255984%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl255959255989%_))
                                                      (_%__kont256530256531%_
                                                       _%hd255958255987%_)
                                                      (_%__kont256532256533%_))))
                                              (_%__kont256532256533%_))
                                          (_%__kont256532256533%_))
                                      (_%__kont256532256533%_))))
                              (_%__kont256532256533%_))))))
                   (__tmp257440
                    (let ((__tmp257441
                           (lambda (_%g256008256011%_ _%g256009256013%_)
                             (cons _%g256008256011%_ _%g256009256013%_))))
                      (declare (not safe))
                      (foldr__0 __tmp257441 '() _%g255670255896%_))))
               (declare (not safe))
               (andmap__0 __tmp257442 __tmp257440)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont256658256659%_
                                                 _%g255670255896%_
                                                 _%g255671255897%_
                                                 _%g255672255898%_)
                                                (_%__match256761256762%_
                                                 _%e255673255812%_
                                                 _%hd255674255815%_
                                                 _%tl255675255817%_
                                                 _%e255676255820%_
                                                 _%hd255677255823%_
                                                 _%tl255678255825%_
                                                 _%__splice256662256663%_
                                                 _%target255697255874%_
                                                 _%tl255699255876%_))))))))
                          (_%loop255700255879%_ _%target255697255874%_ '()))
                        (let () (declare (not safe)) (_%g255645255727%_)))))
                (let () (declare (not safe)) (_%g255645255727%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match256753256754%_
                                                     _%e255673255812%_
                                                     _%hd255674255815%_
                                                     _%tl255675255817%_
                                                     _%e255676255820%_
                                                     _%hd255677255823%_
                                                     _%tl255678255825%_))))
                                            (_%__match256753256754%_
                                             _%e255673255812%_
                                             _%hd255674255815%_
                                             _%tl255675255817%_
                                             _%e255676255820%_
                                             _%hd255677255823%_
                                             _%tl255678255825%_)))))))
                        (_%loop255688255849%_ _%target255685255844%_ '()))))
                   (_%__match256705256706%_
                    (lambda (_%e255649256234%_
                             _%hd255650256237%_
                             _%tl255651256239%_
                             _%e255652256242%_
                             _%hd255653256245%_
                             _%tl255654256247%_
                             _%e255655256250%_
                             _%hd255656256253%_
                             _%tl255657256255%_
                             _%e255658256258%_
                             _%hd255659256261%_
                             _%tl255660256263%_
                             _%__splice256656256657%_
                             _%target255661256266%_
                             _%tl255663256268%_)
                      (letrec ((_%loop255664256271%_
                                (lambda (_%hd255662256274%_
                                         _%rand255668256276%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd255662256274%_))
                                      (let ((_%e255665256278%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd255662256274%_))))
                                        (let ((_%lp-tl255667256283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e255665256278%_)))
                                              (_%lp-hd255666256281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e255665256278%_))))
                                          (_%loop255664256271%_
                                           _%lp-tl255667256283%_
                                           (cons _%lp-hd255666256281%_
                                                 _%rand255668256276%_))))
                                      (let ((_%rand255669256286%_
                                             (reverse _%rand255668256276%_)))
                                        (_%__kont256654256655%_
                                         _%rand255669256286%_
                                         _%hd255659256261%_))))))
                        (_%loop255664256271%_ _%target255661256266%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx256652256653%_))
                  (let ((_%e255649256234%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx256652256653%_))))
                    (let ((_%tl255651256239%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e255649256234%_)))
                          (_%hd255650256237%_
                           (let ()
                             (declare (not safe))
                             (##car _%e255649256234%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl255651256239%_))
                          (let ((_%e255652256242%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl255651256239%_))))
                            (let ((_%tl255654256247%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e255652256242%_)))
                                  (_%hd255653256245%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e255652256242%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd255653256245%_))
                                  (let ((_%e255655256250%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd255653256245%_))))
                                    (let ((_%tl255657256255%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e255655256250%_)))
                                          (_%hd255656256253%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e255655256250%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd255656256253%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd255656256253%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl255657256255%_))
                                                  (let ((_%e255658256258%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl255657256255%_))))
                                                    (let ((_%tl255660256263%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e255658256258%_)))
                                                          (_%hd255659256261%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e255658256258%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl255660256263%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl255654256247%_))
                      (let ((_%__splice256656256657%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl255654256247%_
                                '0))))
                        (let ((_%tl255663256268%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice256656256657%_ '1)))
                              (_%target255661256266%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice256656256657%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl255663256268%_))
                              (_%__match256705256706%_
                               _%e255649256234%_
                               _%hd255650256237%_
                               _%tl255651256239%_
                               _%e255652256242%_
                               _%hd255653256245%_
                               _%tl255654256247%_
                               _%e255655256250%_
                               _%hd255656256253%_
                               _%tl255657256255%_
                               _%e255658256258%_
                               _%hd255659256261%_
                               _%tl255660256263%_
                               _%__splice256656256657%_
                               _%target255661256266%_
                               _%tl255663256268%_)
                              (let ()
                                (declare (not safe))
                                (_%g255645255727%_)))))
                      (let () (declare (not safe)) (_%g255645255727%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl255654256247%_))
                      (let ((_%__splice256666256667%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl255654256247%_
                                '0))))
                        (let ((_%tl255716255750%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice256666256667%_ '1)))
                              (_%target255714255748%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice256666256667%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl255716255750%_))
                              (_%__match256761256762%_
                               _%e255649256234%_
                               _%hd255650256237%_
                               _%tl255651256239%_
                               _%e255652256242%_
                               _%hd255653256245%_
                               _%tl255654256247%_
                               _%__splice256666256667%_
                               _%target255714255748%_
                               _%tl255716255750%_)
                              (let ()
                                (declare (not safe))
                                (_%g255645255727%_)))))
                      (let () (declare (not safe)) (_%g255645255727%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl255654256247%_))
                                                      (let ((_%__splice256666256667%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl255654256247%_
                        '0))))
                (let ((_%tl255716255750%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice256666256667%_ '1)))
                      (_%target255714255748%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice256666256667%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl255716255750%_))
                      (_%__match256761256762%_
                       _%e255649256234%_
                       _%hd255650256237%_
                       _%tl255651256239%_
                       _%e255652256242%_
                       _%hd255653256245%_
                       _%tl255654256247%_
                       _%__splice256666256667%_
                       _%target255714255748%_
                       _%tl255716255750%_)
                      (let () (declare (not safe)) (_%g255645255727%_)))))
              (let () (declare (not safe)) (_%g255645255727%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#lambda
                                                     _%hd255656256253%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl255657256255%_))
                                                      (let ((_%e255682255836%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl255657256255%_))))
                (let ((_%tl255684255841%_
                       (let () (declare (not safe)) (##cdr _%e255682255836%_)))
                      (_%hd255683255839%_
                       (let ()
                         (declare (not safe))
                         (##car _%e255682255836%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%hd255683255839%_))
                      (let ((_%__splice256660256661%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%hd255683255839%_
                                '0))))
                        (let ((_%tl255687255846%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice256660256661%_ '1)))
                              (_%target255685255844%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice256660256661%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl255687255846%_))
                              (_%__match256741256742%_
                               _%e255649256234%_
                               _%hd255650256237%_
                               _%tl255651256239%_
                               _%e255652256242%_
                               _%hd255653256245%_
                               _%tl255654256247%_
                               _%e255655256250%_
                               _%hd255656256253%_
                               _%tl255657256255%_
                               _%e255682255836%_
                               _%hd255683255839%_
                               _%tl255684255841%_
                               _%__splice256660256661%_
                               _%target255685255844%_
                               _%tl255687255846%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _%tl255654256247%_))
                                  (let ((_%__splice256666256667%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice->vector
                                            _%tl255654256247%_
                                            '0))))
                                    (let ((_%tl255716255750%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice256666256667%_
                                              '1)))
                                          (_%target255714255748%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice256666256667%_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl255716255750%_))
                                          (_%__match256761256762%_
                                           _%e255649256234%_
                                           _%hd255650256237%_
                                           _%tl255651256239%_
                                           _%e255652256242%_
                                           _%hd255653256245%_
                                           _%tl255654256247%_
                                           _%__splice256666256667%_
                                           _%target255714255748%_
                                           _%tl255716255750%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g255645255727%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g255645255727%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl255654256247%_))
                          (let ((_%__splice256666256667%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl255654256247%_
                                    '0))))
                            (let ((_%tl255716255750%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice256666256667%_
                                      '1)))
                                  (_%target255714255748%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice256666256667%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl255716255750%_))
                                  (_%__match256761256762%_
                                   _%e255649256234%_
                                   _%hd255650256237%_
                                   _%tl255651256239%_
                                   _%e255652256242%_
                                   _%hd255653256245%_
                                   _%tl255654256247%_
                                   _%__splice256666256667%_
                                   _%target255714255748%_
                                   _%tl255716255750%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g255645255727%_)))))
                          (let () (declare (not safe)) (_%g255645255727%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl255654256247%_))
                  (let ((_%__splice256666256667%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl255654256247%_
                            '0))))
                    (let ((_%tl255716255750%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice256666256667%_ '1)))
                          (_%target255714255748%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice256666256667%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl255716255750%_))
                          (_%__match256761256762%_
                           _%e255649256234%_
                           _%hd255650256237%_
                           _%tl255651256239%_
                           _%e255652256242%_
                           _%hd255653256245%_
                           _%tl255654256247%_
                           _%__splice256666256667%_
                           _%target255714255748%_
                           _%tl255716255750%_)
                          (let () (declare (not safe)) (_%g255645255727%_)))))
                  (let () (declare (not safe)) (_%g255645255727%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl255654256247%_))
                                                      (let ((_%__splice256666256667%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl255654256247%_
                        '0))))
                (let ((_%tl255716255750%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice256666256667%_ '1)))
                      (_%target255714255748%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice256666256667%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl255716255750%_))
                      (_%__match256761256762%_
                       _%e255649256234%_
                       _%hd255650256237%_
                       _%tl255651256239%_
                       _%e255652256242%_
                       _%hd255653256245%_
                       _%tl255654256247%_
                       _%__splice256666256667%_
                       _%target255714255748%_
                       _%tl255716255750%_)
                      (let () (declare (not safe)) (_%g255645255727%_)))))
              (let () (declare (not safe)) (_%g255645255727%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl255654256247%_))
                                              (let ((_%__splice256666256667%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl255654256247%_
                                                        '0))))
                                                (let ((_%tl255716255750%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice256666256667%_
                                                          '1)))
                                                      (_%target255714255748%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice256666256667%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl255716255750%_))
                                                      (_%__match256761256762%_
                                                       _%e255649256234%_
                                                       _%hd255650256237%_
                                                       _%tl255651256239%_
                                                       _%e255652256242%_
                                                       _%hd255653256245%_
                                                       _%tl255654256247%_
                                                       _%__splice256666256667%_
                                                       _%target255714255748%_
                                                       _%tl255716255750%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g255645255727%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g255645255727%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl255654256247%_))
                                      (let ((_%__splice256666256667%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl255654256247%_
                                                '0))))
                                        (let ((_%tl255716255750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice256666256667%_
                                                  '1)))
                                              (_%target255714255748%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice256666256667%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl255716255750%_))
                                              (_%__match256761256762%_
                                               _%e255649256234%_
                                               _%hd255650256237%_
                                               _%tl255651256239%_
                                               _%e255652256242%_
                                               _%hd255653256245%_
                                               _%tl255654256247%_
                                               _%__splice256666256667%_
                                               _%target255714255748%_
                                               _%tl255716255750%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g255645255727%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g255645255727%_))))))
                          (let () (declare (not safe)) (_%g255645255727%_)))))
                  (let () (declare (not safe)) (_%g255645255727%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self255602%_ _%ctx255603%_ _%stx255604%_ _%args255605%_)
        (let ((_%self255608%_ _%self255602%_))
          (if (let ((__method257405
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self255608%_ 'check-arguments))))
                (if __method257405
                    (let ()
                      (declare (not safe))
                      (__method257405
                       _%self255608%_
                       _%ctx255603%_
                       _%stx255604%_
                       _%args255605%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self255608%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature255618%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255608%_ '2 '#f '#f)))
                     (_%signature255620%_ _%signature255618%_)
                     (_%$e255630%_
                      (if _%signature255620%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature255620%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e255630%_
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%$e255630%_))
                        (let ((__tmp257443
                               (cons '%#call
                                     (cons (cons '%#ref
                                                 (cons _%$e255630%_ '()))
                                           (map (lambda (_%g255634255636%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx255603%_
                                                     _%g255634255636%_)))
                                                _%args255605%_)))))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp257443
                           _%stx255604%_
                           _%ctx255603%_))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx255603%_ _%stx255604%_)))
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx255603%_ _%stx255604%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx255603%_ _%stx255604%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass256513 __method-table256514)
        (let ((__check-arguments256515
               (let ((__tmp257444
                      (lambda ()
                        (let ((__method256516
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table256514
                                  'check-arguments
                                  '#f))))
                          (if __method256516
                              __method256516
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp257444))))
          (lambda (_%self255602%_ _%ctx255603%_ _%stx255604%_ _%args255605%_)
            (let ((_%self255608%_ _%self255602%_))
              (if ((force __check-arguments256515)
                   _%self255608%_
                   _%ctx255603%_
                   _%stx255604%_
                   _%args255605%_)
                  (let* ((_%signature255618%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self255608%_
                             '2
                             '#f
                             '#f)))
                         (_%signature255620%_ _%signature255618%_)
                         (_%$e255630%_
                          (if _%signature255620%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature255620%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e255630%_
                        (if (let ()
                              (declare (not safe))
                              (gxc#symbol-in-local-scope? _%$e255630%_))
                            (let ((__tmp257445
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%$e255630%_ '()))
                                               (map (lambda (_%g255634255636%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%ctx255603%_
                                                         _%g255634255636%_)))
                                                    _%args255605%_)))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp257445
                               _%stx255604%_
                               _%ctx255603%_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _%ctx255603%_ _%stx255604%_)))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx255603%_ _%stx255604%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx255603%_ _%stx255604%_))))))))
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
      (lambda (_%self255355%_ _%ctx255356%_ _%stx255357%_ _%args255358%_)
        (let* ((_%self255361%_ _%self255355%_)
               (_%signature255370255372%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255361%_ '2 '#f '#f))))
          (if _%signature255370255372%_
              (let* ((_%signature255374%_ _%signature255370255372%_)
                     (_%argument-types255375255377%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature255374%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types255375255377%_
                    (let* ((_%argument-types255379%_
                            _%argument-types255375255377%_)
                           (_%argument-types255384%_
                            (let ((__tmp257446
                                   (lambda (_%t255382%_)
                                     (if _%t255382%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx255357%_
                                            _%t255382%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp257446
                               _%argument-types255379%_))))
                      (let _%loop255386%_ ((_%rest-args255388%_ _%args255358%_)
                                           (_%rest-types255389%_
                                            _%argument-types255384%_)
                                           (_%result255390%_ '#t))
                        (let* ((_%rest-args255391255399%_ _%rest-args255388%_)
                               (_%else255393255407%_
                                (lambda () _%result255390%_))
                               (_%K255395255468%_
                                (lambda (_%rest-args255410%_ _%arg255411%_)
                                  (let* ((_%rest-types255412255423%_
                                          _%rest-types255389%_)
                                         (_%E255416255427%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types255412255423%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K255419255456%_
                                           (lambda (_%rest-types255453%_
                                                    _%type255454%_)
                                             (_%loop255386%_
                                              _%rest-args255410%_
                                              _%rest-types255453%_
                                              (if (gxc#check-expression-type!
                                                   _%stx255357%_
                                                   _%arg255411%_
                                                   _%type255454%_)
                                                  _%result255390%_
                                                  '#f))))
                                          (_%K255418255447%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx255357%_
                                                _%argument-types255384%_))))
                                          (_%K255417255437%_
                                           (lambda (_%tail-type255431%_)
                                             (if (let ((__tmp257447
                                                        (lambda (_%g255432255434%_)
                                                          (gxc#check-expression-type!
                                                           _%stx255357%_
                                                           _%g255432255434%_
                                                           _%tail-type255431%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp257447
                                                    _%rest-args255410%_))
                                                 _%result255390%_
                                                 '#f))))
                                      (let ((_%try-match255414255450%_
                                             (lambda ()
                                               (if (null? _%rest-types255412255423%_)
                                                   (_%K255418255447%_)
                                                   (let ((_%tail-type255440%_
                                                          _%rest-types255412255423%_))
                                                     (_%K255417255437%_
                                                      _%tail-type255440%_))))))
                                        (if (pair? _%rest-types255412255423%_)
                                            (let ((_%tl255421255461%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types255412255423%_)))
                                                  (_%hd255420255459%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types255412255423%_))))
                                              (let ((_%type255464%_
                                                     _%hd255420255459%_)
                                                    (_%rest-types255466%_
                                                     _%tl255421255461%_))
                                                (_%K255419255456%_
                                                 _%rest-types255466%_
                                                 _%type255464%_)))
                                            (_%try-match255414255450%_))))))))
                          (if (pair? _%rest-args255391255399%_)
                              (let ((_%hd255396255471%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args255391255399%_)))
                                    (_%tl255397255473%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args255391255399%_))))
                                (let* ((_%arg255476%_ _%hd255396255471%_)
                                       (_%rest-args255478%_
                                        _%tl255397255473%_))
                                  (_%K255395255468%_
                                   _%rest-args255478%_
                                   _%arg255476%_)))
                              (_%else255393255407%_)))))
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
      (lambda (_%self255158%_ _%ctx255159%_ _%stx255160%_ _%args255161%_)
        (let* ((_%self255164%_ _%self255158%_)
               (_%g255174255184%_
                (lambda (_%g255175255181%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g255175255181%_))))
               (_%g255173255230%_
                (lambda (_%g255175255187%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g255175255187%_))
                      (let ((_%e255177255189%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g255175255187%_))))
                        (let ((_%hd255178255192%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e255177255189%_)))
                              (_%tl255179255194%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e255177255189%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl255179255194%_))
                              (let* ((_%klass255209%_
                                      (let ((__tmp257448
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self255164%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx255160%_
                                         __tmp257448)))
                                     (_%object255211%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx255159%_
                                         _%hd255178255192%_)))
                                     (_%instance?255216%_
                                      (let ((_%$e255213%_
                                             (gxc#expression-type?
                                              _%object255211%_
                                              _%klass255209%_)))
                                        (if _%$e255213%_
                                            _%$e255213%_
                                            (gxc#expression-type?
                                             _%hd255178255192%_
                                             _%klass255209%_))))
                                     (_%incompatible?255221%_
                                      (let ((_%$e255218%_
                                             (gxc#incompatible-type?
                                              _%object255211%_
                                              _%klass255209%_)))
                                        (if _%$e255218%_
                                            _%$e255218%_
                                            (gxc#incompatible-type?
                                             _%hd255178255192%_
                                             _%klass255209%_)))))
                                (if _%instance?255216%_
                                    (let ((__tmp257449
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object255211%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%hd255178255192%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object255211%_
                                                           (cons '#t '()))))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp257449
                                       _%stx255160%_))
                                    (if _%incompatible?255221%_
                                        (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#xform-call%
                                           _%ctx255159%_
                                           _%stx255160%_)))))
                              (_%g255174255184%_ _%g255175255187%_))))
                      (_%g255174255184%_ _%g255175255187%_)))))
          (_%g255173255230%_ _%args255161%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self254947%_ _%ctx254948%_ _%stx254949%_ _%args254950%_)
        (let* ((_%self254953%_ _%self254947%_)
               (_%g254963254973%_
                (lambda (_%g254964254970%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g254964254970%_))))
               (_%g254962255033%_
                (lambda (_%g254964254976%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g254964254976%_))
                      (let ((_%e254966254978%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g254964254976%_))))
                        (let ((_%hd254967254981%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254966254978%_)))
                              (_%tl254968254983%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254966254978%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl254968254983%_))
                              (let* ((_%klass254998%_
                                      (let ((__tmp257450
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self254953%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx254949%_
                                         __tmp257450)))
                                     (_%object255000%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx254948%_
                                         _%hd254967254981%_)))
                                     (_%instance?255005%_
                                      (let ((_%$e255002%_
                                             (gxc#expression-type?
                                              _%object255000%_
                                              _%klass254998%_)))
                                        (if _%$e255002%_
                                            _%$e255002%_
                                            (gxc#expression-type?
                                             _%hd254967254981%_
                                             _%klass254998%_))))
                                     (_%incompatible?255010%_
                                      (let ((_%$e255007%_
                                             (gxc#incompatible-type?
                                              _%object255000%_
                                              _%klass254998%_)))
                                        (if _%$e255007%_
                                            _%$e255007%_
                                            (gxc#incompatible-type?
                                             _%hd254967254981%_
                                             _%klass254998%_))))
                                     (_%klass255013%_ _%klass254998%_))
                                (if _%instance?255005%_
                                    (let ((__tmp257451
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object255000%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%hd254967254981%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object255000%_
                                                           (cons '#t '()))))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp257451
                                       _%stx254949%_))
                                    (if _%incompatible?255010%_
                                        (cons '%#quote (cons '#f '()))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass255013%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp257452
                                                   (cons '%#struct-direct-instance?
                                                         (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass255013%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%object255000%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp257452
                                               _%stx254949%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass255013%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp257453
                                                       (cons '%#struct-instance?
                                                             (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass255013%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%object255000%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp257453
                                                   _%stx254949%_))
                                                (let ((__tmp257454
                                                       (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons 'class-instance? '()))
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self254953%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons _%object255000%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp257454
                                                   _%stx254949%_)))))))
                              (_%g254963254973%_ _%g254964254976%_))))
                      (_%g254963254973%_ _%g254964254976%_)))))
          (_%g254962255033%_ _%args254950%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx254615%_)
        (let* ((_%__stx256771256772%_ _%stx254615%_)
               (_%g254620254661%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx256771256772%_)))))
          (let ((_%__kont256773256774%_ (lambda () '#t))
                (_%__kont256775256776%_ (lambda () '#t))
                (_%__kont256777256778%_
                 (lambda (_%g254634254727%_ _%g254635254728%_)
                   (let ((_%rator-type254749254751%_
                          (let ((__tmp257455
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g254635254728%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp257455))))
                     (if _%rator-type254749254751%_
                         (let* ((_%rator-type254753%_
                                 _%rator-type254749254751%_)
                                (_%rator-signature254754254756%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type254753%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type254753%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature254754254756%_
                               (let* ((_%rator-signature254758%_
                                       _%rator-signature254754254756%_)
                                      (_%rator-effect254759254761%_
                                       (if _%rator-signature254758%_
                                           (##direct-structure-ref
                                            _%rator-signature254758%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect254759254761%_
                                     (let ((_%rator-effect254763%_
                                            _%rator-effect254759254761%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect254763%_)
                                               (equal? '(alloc)
                                                       _%rator-effect254763%_))
                                           (let ((__tmp257456
                                                  (let ((__tmp257457
                                                         (lambda (_%g254768254771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g254769254773%_)
                   (cons _%g254768254771%_ _%g254769254773%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp257457
                                                     '()
                                                     _%g254634254727%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp257456))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont256781256782%_ (lambda () '#f)))
            (let ((_%__match256860256861%_
                   (lambda (_%e254636254673%_
                            _%hd254637254676%_
                            _%tl254638254678%_
                            _%e254639254681%_
                            _%hd254640254684%_
                            _%tl254641254686%_
                            _%e254642254689%_
                            _%hd254643254692%_
                            _%tl254644254694%_
                            _%e254645254697%_
                            _%hd254646254700%_
                            _%tl254647254702%_
                            _%__splice256779256780%_
                            _%target254648254705%_
                            _%tl254650254707%_)
                     (letrec ((_%loop254651254710%_
                               (lambda (_%hd254649254713%_
                                        _%rand254655254715%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd254649254713%_))
                                     (let ((_%e254652254717%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd254649254713%_))))
                                       (let ((_%lp-tl254654254722%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e254652254717%_)))
                                             (_%lp-hd254653254720%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e254652254717%_))))
                                         (_%loop254651254710%_
                                          _%lp-tl254654254722%_
                                          (cons _%lp-hd254653254720%_
                                                _%rand254655254715%_))))
                                     (let ((_%rand254656254725%_
                                            (reverse _%rand254655254715%_)))
                                       (_%__kont256777256778%_
                                        _%rand254656254725%_
                                        _%hd254646254700%_))))))
                       (_%loop254651254710%_ _%target254648254705%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx256771256772%_))
                  (let ((_%e254622254804%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx256771256772%_))))
                    (let ((_%tl254624254809%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e254622254804%_)))
                          (_%hd254623254807%_
                           (let ()
                             (declare (not safe))
                             (##car _%e254622254804%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd254623254807%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd254623254807%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl254624254809%_))
                                  (let ((_%e254625254812%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl254624254809%_))))
                                    (let ((_%tl254627254817%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e254625254812%_)))
                                          (_%hd254626254815%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e254625254812%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl254627254817%_))
                                          (_%__kont256773256774%_)
                                          (_%__kont256781256782%_))))
                                  (_%__kont256781256782%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd254623254807%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl254624254809%_))
                                      (let ((_%e254631254789%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl254624254809%_))))
                                        (let ((_%tl254633254794%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e254631254789%_)))
                                              (_%hd254632254792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e254631254789%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl254633254794%_))
                                              (_%__kont256775256776%_)
                                              (_%__kont256781256782%_))))
                                      (_%__kont256781256782%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd254623254807%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl254624254809%_))
                                          (let ((_%e254639254681%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl254624254809%_))))
                                            (let ((_%tl254641254686%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e254639254681%_)))
                                                  (_%hd254640254684%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e254639254681%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd254640254684%_))
                                                  (let ((_%e254642254689%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd254640254684%_))))
                                                    (let ((_%tl254644254694%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e254642254689%_)))
                                                          (_%hd254643254692%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e254642254689%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd254643254692%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd254643254692%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl254644254694%_))
                          (let ((_%e254645254697%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl254644254694%_))))
                            (let ((_%tl254647254702%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e254645254697%_)))
                                  (_%hd254646254700%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e254645254697%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl254647254702%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl254641254686%_))
                                      (let ((_%__splice256779256780%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl254641254686%_
                                                '0))))
                                        (let ((_%tl254650254707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice256779256780%_
                                                  '1)))
                                              (_%target254648254705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice256779256780%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl254650254707%_))
                                              (_%__match256860256861%_
                                               _%e254622254804%_
                                               _%hd254623254807%_
                                               _%tl254624254809%_
                                               _%e254639254681%_
                                               _%hd254640254684%_
                                               _%tl254641254686%_
                                               _%e254642254689%_
                                               _%hd254643254692%_
                                               _%tl254644254694%_
                                               _%e254645254697%_
                                               _%hd254646254700%_
                                               _%tl254647254702%_
                                               _%__splice256779256780%_
                                               _%target254648254705%_
                                               _%tl254650254707%_)
                                              (_%__kont256781256782%_))))
                                      (_%__kont256781256782%_))
                                  (_%__kont256781256782%_))))
                          (_%__kont256781256782%_))
                      (_%__kont256781256782%_))
                  (_%__kont256781256782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont256781256782%_))))
                                          (_%__kont256781256782%_))
                                      (_%__kont256781256782%_))))
                          (_%__kont256781256782%_))))
                  (_%__kont256781256782%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx254610%_ _%klass254611%_)
        (let ((_%expr-type254613%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx254610%_))))
          (if _%expr-type254613%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type254613%_ _%klass254611%_))
              '#f))))
    (define gxc#incompatible-type?
      (lambda (_%expr254595%_ _%type254596%_)
        (if (not _%type254596%_)
            '#f
            (if (eq? (##structure-ref _%type254596%_ '1 gxc#!type::t '#f) 't)
                '#f
                (let ((_%expr-type254601%_
                       (let ()
                         (declare (not safe))
                         (gxc#apply-basic-expression-type _%expr254595%_))))
                  (if (not _%expr-type254601%_)
                      '#f
                      (if (eq? 't
                               (##structure-ref
                                _%expr-type254601%_
                                '1
                                gxc#!type::t
                                '#f))
                          '#f
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%expr-type254601%_
                                 'gxc#!abort::t))
                              '#f
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#!type-subtype?
                                     _%expr-type254601%_
                                     _%type254596%_))
                                  '#f
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#!interface-instance?
                                         _%type254596%_))
                                      '#f
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#!type-subtype?
                                             _%type254596%_
                                             _%expr-type254601%_))
                                          '#f
                                          '#t)))))))))))
    (define gxc#check-expression-type!
      (lambda (_%stx254573%_ _%expr254574%_ _%type254575%_)
        (if (not _%type254575%_)
            '#f
            (let ((_%$e254578%_
                   (eq? (##structure-ref _%type254575%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e254578%_
                  _%$e254578%_
                  (let ((_%expr-type254582%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr254574%_))))
                    (if (not _%expr-type254582%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type254582%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e254586%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type254582%_
                                      'gxc#!abort::t))))
                              (if _%$e254586%_
                                  _%$e254586%_
                                  (let ((_%$e254589%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type254582%_
                                            _%type254575%_))))
                                    (if _%$e254589%_
                                        _%$e254589%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type254575%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type254575%_
                                                   _%expr-type254582%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx254573%_
                                                   _%expr254574%_
                                                   _%expr-type254582%_
                                                   _%type254575%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self254387%_ _%ctx254388%_ _%stx254389%_ _%args254390%_)
        (let* ((_%self254393%_ _%self254387%_)
               (_%klass254403%_
                (let ((__tmp257458
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self254393%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx254389%_ __tmp257458)))
               (_%fields254405%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass254403%_
                           '5
                           '#f
                           '#f))))
               (_%args254411%_
                (map (lambda (_%g254406254408%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx254388%_ _%g254406254408%_)))
                     _%args254390%_))
               (_%inline-make-object254413%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self254393%_
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
                           _%self254393%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields254405%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass254416%_ _%klass254403%_)
               (_%$e254430%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass254416%_ '6 '#f '#f))))
          (if _%$e254430%_
              (let ((_%$obj254435%_
                     (let ((__tmp257459
                            (let () (declare (not safe)) (##gensym '__obj))))
                       (declare (not safe))
                       (make-symbol__0 __tmp257459)))
                    (_%ctor-impl254436%_
                     (let ()
                       (declare (not safe))
                       (gxc#!class-lookup-method
                        _%klass254416%_
                        _%$e254430%_))))
                (let ((__tmp257460
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj254435%_ '())
                                               (cons _%inline-make-object254413%_
                                                     '()))
                                         '())
                                   (cons (cons '%#begin
                                               (cons (if _%ctor-impl254436%_
                                                         (let ((__tmp257461
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl254436%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj254435%_ '()))
                                          _%args254411%_)))))
                   (declare (not safe))
                   (gxc#xform-wrap-apply
                    __tmp257461
                    _%stx254389%_
                    _%ctx254388%_))
                 (let ((_%$ctor254438%_
                        (let ((__tmp257462
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__constructor))))
                          (declare (not safe))
                          (make-symbol__0 __tmp257462))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$ctor254438%_ '())
                                           (cons (cons '%#call
                                                       (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'direct-method-ref '()))
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self254393%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#ref (cons _%$obj254435%_ '()))
                                 (cons (cons '%#quote (cons _%$e254430%_ '()))
                                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#ref
                                                       (cons _%$ctor254438%_
                                                             '()))
                                                 (cons (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$ctor254438%_ '()))
                           (cons (cons '%#ref (cons _%$obj254435%_ '()))
                                 _%args254411%_)))
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
                         (##unchecked-structure-ref _%self254393%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#quote
                                                               (cons 'method:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _%$e254430%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$obj254435%_ '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp257460 _%stx254389%_)))
              (let ((_%$e254440%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass254416%_
                        '10
                        '#f
                        '#f))))
                (if _%$e254440%_
                    (let* ((_%$obj254445%_
                            (let ((__tmp257463
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp257463)))
                           (_%metakons254447%_
                            (let ((__tmp257464
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx254389%_
                                      _%$e254440%_))))
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               __tmp257464
                               'instance-init!)))
                           (__tmp257465
                            (cons '%#let-values
                                  (cons (cons (cons (cons _%$obj254445%_ '())
                                                    (cons _%inline-make-object254413%_
                                                          '()))
                                              '())
                                        (cons (cons '%#begin
                                                    (cons (if _%metakons254447%_
                                                              (let ((__tmp257466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons254447%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self254393%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj254445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args254411%_))))))
                        (declare (not safe))
                        (gxc#xform-wrap-apply
                         __tmp257466
                         _%stx254389%_
                         _%ctx254388%_))
                      (cons '%#call
                            (cons (cons '%#ref (cons 'call-method '()))
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self254393%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons 'instance-init! '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj254445%_
                                                                '()))
                                                    _%args254411%_))))))
                  (cons (cons '%#ref (cons _%$obj254445%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp257465 _%stx254389%_))
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass254416%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp257467
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args254411%_))))
                              (declare (not safe))
                              (##fx= __tmp257467 _%fields254405%_))
                            (let ((__tmp257468
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self254393%_
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
                                              _%self254393%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args254411%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp257468
                               _%stx254389%_))
                            (let ((__tmp257470
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self254393%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp257469
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass254416%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx254389%_
                               __tmp257470
                               __tmp257469)))
                        (let ((_%$obj254452%_
                               (let ((__tmp257471
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp257471))))
                          (let _%lp254454%_ ((_%rest254456%_ _%args254411%_)
                                             (_%initializers254457%_ '()))
                            (let* ((_%__stx256863256864%_ _%rest254456%_)
                                   (_%g254461254482%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx256863256864%_)))))
                              (let ((_%__kont256865256866%_
                                     (lambda (_%g254463254536%_
                                              _%g254464254537%_
                                              _%g254465254538%_)
                                       (let* ((_%slot254565%_
                                               (let ((__tmp257472
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g254465254538%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp257472)))
                                              (_%off254567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass254416%_
                                                  _%slot254565%_))))
                                         (if _%off254567%_
                                             (_%lp254454%_
                                              _%g254463254536%_
                                              (cons (cons _%off254567%_
                                                          _%g254464254537%_)
                                                    _%initializers254457%_))
                                             (let ((__tmp257473
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self254393%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx254389%_
                                                __tmp257473
                                                _%slot254565%_))))))
                                    (_%__kont256867256868%_
                                     (lambda ()
                                       (let ((__tmp257474
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj254452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object254413%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp257477
                                     (cons (cons '%#ref
                                                 (cons _%$obj254452%_ '()))
                                           '()))
                                    (__tmp257475
                                     (let ((__tmp257476
                                            (lambda (_%i254496%_ _%r254497%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self254393%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i254496%_) '()))
                              (cons (cons '%#ref (cons _%$obj254452%_ '()))
                                    (cons (cdr _%i254496%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r254497%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp257476
                                        '()
                                        _%initializers254457%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp257477 __tmp257475)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp257474
                                          _%stx254389%_))))
                                    (_%__kont256869256870%_
                                     (lambda ()
                                       (let ((__tmp257478
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj254452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object254413%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj254452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args254411%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj254452%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp257478
                                          _%stx254389%_)))))
                                (let* ((_%g254459254499%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx256863256864%_))
                                              (_%__kont256867256868%_)
                                              (_%__kont256869256870%_))))
                                       (_%__match256900256901%_
                                        (lambda (_%e254466254504%_
                                                 _%hd254467254507%_
                                                 _%tl254468254509%_
                                                 _%e254469254512%_
                                                 _%hd254470254515%_
                                                 _%tl254471254517%_
                                                 _%e254472254520%_
                                                 _%hd254473254523%_
                                                 _%tl254474254525%_
                                                 _%e254475254528%_
                                                 _%hd254476254531%_
                                                 _%tl254477254533%_)
                                          (let ((_%g254463254536%_
                                                 _%tl254477254533%_)
                                                (_%g254464254537%_
                                                 _%hd254476254531%_)
                                                (_%g254465254538%_
                                                 _%hd254473254523%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g254465254538%_))
                                                (_%__kont256865256866%_
                                                 _%g254463254536%_
                                                 _%g254464254537%_
                                                 _%g254465254538%_)
                                                (_%__kont256869256870%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx256863256864%_))
                                      (let ((_%e254466254504%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx256863256864%_))))
                                        (let ((_%tl254468254509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e254466254504%_)))
                                              (_%hd254467254507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e254466254504%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd254467254507%_))
                                              (let ((_%e254469254512%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd254467254507%_))))
                                                (let ((_%tl254471254517%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e254469254512%_)))
                                                      (_%hd254470254515%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e254469254512%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd254470254515%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd254470254515%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl254471254517%_))
                      (let ((_%e254472254520%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl254471254517%_))))
                        (let ((_%tl254474254525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254472254520%_)))
                              (_%hd254473254523%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254472254520%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl254474254525%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl254468254509%_))
                                  (let ((_%e254475254528%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl254468254509%_))))
                                    (let ((_%tl254477254533%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e254475254528%_)))
                                          (_%hd254476254531%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e254475254528%_))))
                                      (_%__match256900256901%_
                                       _%e254466254504%_
                                       _%hd254467254507%_
                                       _%tl254468254509%_
                                       _%e254469254512%_
                                       _%hd254470254515%_
                                       _%tl254471254517%_
                                       _%e254472254520%_
                                       _%hd254473254523%_
                                       _%tl254474254525%_
                                       _%e254475254528%_
                                       _%hd254476254531%_
                                       _%tl254477254533%_)))
                                  (_%__kont256869256870%_))
                              (_%__kont256869256870%_))))
                      (_%__kont256869256870%_))
                  (_%__kont256869256870%_))
              (_%__kont256869256870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont256869256870%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g254459254499%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::check-arguments
      (lambda (_%self254249%_ _%ctx254250%_ _%stx254251%_ _%args254252%_)
        (let ((_%self254255%_ _%self254249%_))
          (if (let ()
                (declare (not safe))
                (##unchecked-structure-ref _%self254255%_ '4 '#f '#f))
              (gxc#!procedure::check-arguments
               _%self254255%_
               _%ctx254250%_
               _%stx254251%_
               _%args254252%_)
              '#t))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'check-arguments
       gxc#!accessor::check-arguments
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self254032%_ _%ctx254033%_ _%stx254034%_ _%args254035%_)
        (let* ((_%self254038%_ _%self254032%_)
               (_%arguments-ok?254048%_
                (let ((__method257406
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self254038%_ 'check-arguments))))
                  (if __method257406
                      (let ()
                        (declare (not safe))
                        (__method257406
                         _%self254038%_
                         _%ctx254033%_
                         _%stx254034%_
                         _%args254035%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self254038%_
                                 'check-arguments))
                        '#!void))))
               (_%g254050254060%_
                (lambda (_%g254051254057%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g254051254057%_))))
               (_%g254049254124%_
                (lambda (_%g254051254063%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g254051254063%_))
                      (let ((_%e254053254065%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g254051254063%_))))
                        (let ((_%hd254054254068%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254053254065%_)))
                              (_%tl254055254070%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254053254065%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl254055254070%_))
                              (let* ((_%klass254086%_
                                      (let ((__tmp257479
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self254038%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx254034%_
                                         __tmp257479)))
                                     (_%field254088%_
                                      (let ((__tmp257480
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self254038%_
                                                '3
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#!class-slot->field-offset
                                         _%klass254086%_
                                         __tmp257480)))
                                     (_%object254090%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx254033%_
                                         _%hd254054254068%_)))
                                     (_%klass254093%_ _%klass254086%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass254093%_
                                       '8
                                       '#f
                                       '#f))
                                    (let ((__tmp257481
                                           (cons (if (or _%arguments-ok?254048%_
                                                         (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self254038%_
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
                              _%self254038%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#quote (cons _%field254088%_ '()))
                     (cons _%object254090%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp257481
                                       _%stx254034%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass254093%_
                                           '7
                                           '#f
                                           '#f))
                                        (let ((__tmp257482
                                               (cons (if (or _%arguments-ok?254048%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self254038%_
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
                                  _%self254038%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field254088%_ '()))
                         (cons _%object254090%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp257482
                                           _%stx254034%_))
                                        (let ((_%$e254112%_
                                               (let ((__tmp257483
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self254038%_
                                                         '3
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#!class-slot-find-struct
                                                  _%klass254093%_
                                                  __tmp257483))))
                                          (if _%$e254112%_
                                              (let ((__tmp257484
                                                     (cons (if (or _%arguments-ok?254048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (not (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self254038%_
                                   '4
                                   '#f
                                   '#f))))
                       '%#struct-unchecked-ref
                       '%#struct-ref)
                   (cons (cons '%#ref
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self254038%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#quote (cons _%field254088%_ '()))
                               (cons _%object254090%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp257484
                                                 _%stx254034%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self254038%_
                                                     '4
                                                     '#f
                                                     '#f))
                                                  (let ((__tmp257485
                                                         (let ((_%$obj254121%_
                                                                (let ((__tmp257486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp257486))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$obj254121%_ '())
                                           (cons _%object254090%_ '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#struct-direct-instance?
                                                       (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass254093%_
                                    '1
                                    '#f
                                    '#f))
                                 '()))
                     (cons (cons '%#ref (cons _%$obj254121%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#struct-unchecked-ref
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self254038%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field254088%_ '()))
                                 (cons (cons '%#ref (cons _%$obj254121%_ '()))
                                       '()))))
               (cons (if _%arguments-ok?254048%_
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj254121%_ '()))
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self254038%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'class-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self254038%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj254121%_
                                                             '()))
                                                 (cons (cons '%#quote
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self254038%_
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
                                                     __tmp257485
                                                     _%stx254034%_))
                                                  (let ((__tmp257487
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'unchecked-slot-ref '()))
                             (cons _%object254090%_
                                   (cons (cons '%#quote
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self254038%_
                                                        '3
                                                        '#f
                                                        '#f))
                                                     '()))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp257487
                                                     _%stx254034%_))))))))
                              (_%g254050254060%_ _%g254051254063%_))))
                      (_%g254050254060%_ _%g254051254063%_)))))
          (_%g254049254124%_ _%args254035%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass256517 __method-table256518)
        (let ((__check-arguments256519
               (let ((__tmp257488
                      (lambda ()
                        (let ((__method256520
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table256518
                                  'check-arguments
                                  '#f))))
                          (if __method256520
                              __method256520
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp257488)))
              (__slot256521
               (let ((__slot256522
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass256517 'slot))))
                 (if __slot256522
                     __slot256522
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self254032%_ _%ctx254033%_ _%stx254034%_ _%args254035%_)
            (let* ((_%self254038%_ _%self254032%_)
                   (_%arguments-ok?254048%_
                    ((force __check-arguments256519)
                     _%self254038%_
                     _%ctx254033%_
                     _%stx254034%_
                     _%args254035%_))
                   (_%g254050254060%_
                    (lambda (_%g254051254057%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g254051254057%_))))
                   (_%g254049254124%_
                    (lambda (_%g254051254063%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g254051254063%_))
                          (let ((_%e254053254065%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g254051254063%_))))
                            (let ((_%hd254054254068%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e254053254065%_)))
                                  (_%tl254055254070%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e254053254065%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl254055254070%_))
                                  (let* ((_%klass254086%_
                                          (let ((__tmp257489
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self254038%_
                                                    '1
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx254034%_
                                             __tmp257489)))
                                         (_%field254088%_
                                          (let ((__tmp257490
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self254038%_
                                                    '3
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#!class-slot->field-offset
                                             _%klass254086%_
                                             __tmp257490)))
                                         (_%object254090%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%ctx254033%_
                                             _%hd254054254068%_)))
                                         (_%klass254093%_ _%klass254086%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass254093%_
                                           '8
                                           '#f
                                           '#f))
                                        (let ((__tmp257491
                                               (cons (if (or _%arguments-ok?254048%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self254038%_
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
                                  _%self254038%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field254088%_ '()))
                         (cons _%object254090%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp257491
                                           _%stx254034%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass254093%_
                                               '7
                                               '#f
                                               '#f))
                                            (let ((__tmp257492
                                                   (cons (if (or _%arguments-ok?254048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self254038%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-ref
                     '%#struct-ref)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self254038%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field254088%_ '()))
                             (cons _%object254090%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp257492
                                               _%stx254034%_))
                                            (let ((_%$e254112%_
                                                   (let ((__tmp257493
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self254038%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot-find-struct
                                                      _%klass254093%_
                                                      __tmp257493))))
                                              (if _%$e254112%_
                                                  (let ((__tmp257494
                                                         (cons (if (or _%arguments-ok?254048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (not (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self254038%_
                                       '4
                                       '#f
                                       '#f))))
                           '%#struct-unchecked-ref
                           '%#struct-ref)
                       (cons (cons '%#ref
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self254038%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#quote (cons _%field254088%_ '()))
                                   (cons _%object254090%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp257494
                                                     _%stx254034%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self254038%_
                                                         '4
                                                         '#f
                                                         '#f))
                                                      (let ((__tmp257495
                                                             (let ((_%$obj254121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp257496
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp257496))))
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj254121%_ '())
                                               (cons _%object254090%_ '()))
                                         '())
                                   (cons (cons '%#if
                                               (cons (cons '%#struct-direct-instance?
                                                           (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%klass254093%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#ref (cons _%$obj254121%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#struct-unchecked-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self254038%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field254088%_ '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj254121%_ '()))
                                           '()))))
                   (cons (if _%arguments-ok?254048%_
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-ref '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj254121%_ '()))
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self254038%_
                            __slot256521
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
                                                              _%self254038%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj254121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self254038%_
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
                (gxc#xform-wrap-source __tmp257495 _%stx254034%_))
              (let ((__tmp257497
                     (cons '%#call
                           (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                 (cons _%object254090%_
                                       (cons (cons '%#quote
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self254038%_
                                                            '3
                                                            '#f
                                                            '#f))
                                                         '()))
                                             '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp257497 _%stx254034%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%g254050254060%_ _%g254051254063%_))))
                          (_%g254050254060%_ _%g254051254063%_)))))
              (_%g254049254124%_ _%args254035%_))))))
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
      (lambda (_%self253796%_ _%ctx253797%_ _%stx253798%_ _%args253799%_)
        (let* ((_%self253802%_ _%self253796%_)
               (_%arguments-ok?253812%_
                (let ((__method257407
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self253802%_ 'check-arguments))))
                  (if __method257407
                      (let ()
                        (declare (not safe))
                        (__method257407
                         _%self253802%_
                         _%ctx253797%_
                         _%stx253798%_
                         _%args253799%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self253802%_
                                 'check-arguments))
                        '#!void))))
               (_%g253814253828%_
                (lambda (_%g253815253825%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g253815253825%_))))
               (_%g253813253907%_
                (lambda (_%g253815253831%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g253815253831%_))
                      (let ((_%e253818253833%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g253815253831%_))))
                        (let ((_%hd253819253836%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253818253833%_)))
                              (_%tl253820253838%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253818253833%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl253820253838%_))
                              (let ((_%e253821253841%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl253820253838%_))))
                                (let ((_%hd253822253844%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e253821253841%_)))
                                      (_%tl253823253846%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e253821253841%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl253823253846%_))
                                      (let* ((_%klass253866%_
                                              (let ((__tmp257498
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self253802%_
                                                        '1
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#optimizer-resolve-class
                                                 _%stx253798%_
                                                 __tmp257498)))
                                             (_%field253868%_
                                              (let ((__tmp257499
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self253802%_
                                                        '3
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#!class-slot->field-offset
                                                 _%klass253866%_
                                                 __tmp257499)))
                                             (_%object253870%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx253797%_
                                                 _%hd253819253836%_)))
                                             (_%value253872%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx253797%_
                                                 _%hd253822253844%_)))
                                             (_%klass253875%_ _%klass253866%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass253875%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp257500
                                                   (cons (if (or _%arguments-ok?253812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self253802%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-set!
                     '%#struct-direct-set!)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self253802%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field253868%_ '()))
                             (cons _%object253870%_
                                   (cons _%value253872%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp257500
                                               _%stx253798%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass253875%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp257501
                                                       (cons (if (or _%arguments-ok?253812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self253802%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self253802%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field253868%_ '()))
                                 (cons _%object253870%_
                                       (cons _%value253872%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp257501
                                                   _%stx253798%_))
                                                (let ((_%$e253895%_
                                                       (let ((__tmp257502
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self253802%_
                         '3
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#!class-slot-find-struct _%klass253875%_ __tmp257502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%$e253895%_
                                                      (let ((__tmp257503
                                                             (cons (if (or _%arguments-ok?253812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (not (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self253802%_
                                           '3
                                           '#f
                                           '#f))))
                               '%#struct-unchecked-set!
                               '%#struct-set!)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self253802%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field253868%_ '()))
                                       (cons _%object253870%_
                                             (cons _%value253872%_ '())))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp257503 _%stx253798%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self253802%_ '4 '#f '#f))
                  (let ((__tmp257504
                         (let ((_%$obj253904%_
                                (let ((__tmp257505
                                       (let ()
                                         (declare (not safe))
                                         (##gensym '__obj))))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp257505))))
                           (cons '%#let-values
                                 (cons (cons (cons (cons _%$obj253904%_ '())
                                                   (cons _%object253870%_ '()))
                                             '())
                                       (cons (cons '%#if
                                                   (cons (cons '%#struct-direct-instance?
                                                               (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass253875%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#ref (cons _%$obj253904%_ '()))
                                   '())))
                 (cons (cons '%#struct-unchecked-set!
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self253802%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field253868%_ '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj253904%_ '()))
                                               (cons _%value253872%_ '())))))
                       (cons (if _%arguments-ok?253812%_
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'unchecked-slot-set!
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj253904%_
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self253802%_
                                '3
                                '#f
                                '#f))
                             '()))
                 (cons _%value253872%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'class-slot-set! '()))
                                             (cons (cons '%#ref
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%self253802%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#ref
                                                               (cons _%$obj253904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self253802%_
                                      '3
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%value253872%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp257504 _%stx253798%_))
                  (let ((__tmp257506
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-set! '()))
                                     (cons _%object253870%_
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self253802%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%value253872%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp257506 _%stx253798%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%g253814253828%_ _%g253815253831%_))))
                              (_%g253814253828%_ _%g253815253831%_))))
                      (_%g253814253828%_ _%g253815253831%_)))))
          (_%g253813253907%_ _%args253799%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass256523 __method-table256524)
        (let ((__check-arguments256525
               (let ((__tmp257507
                      (lambda ()
                        (let ((__method256526
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table256524
                                  'check-arguments
                                  '#f))))
                          (if __method256526
                              __method256526
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp257507))))
          (lambda (_%self253796%_ _%ctx253797%_ _%stx253798%_ _%args253799%_)
            (let* ((_%self253802%_ _%self253796%_)
                   (_%arguments-ok?253812%_
                    ((force __check-arguments256525)
                     _%self253802%_
                     _%ctx253797%_
                     _%stx253798%_
                     _%args253799%_))
                   (_%g253814253828%_
                    (lambda (_%g253815253825%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g253815253825%_))))
                   (_%g253813253907%_
                    (lambda (_%g253815253831%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g253815253831%_))
                          (let ((_%e253818253833%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g253815253831%_))))
                            (let ((_%hd253819253836%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e253818253833%_)))
                                  (_%tl253820253838%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e253818253833%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl253820253838%_))
                                  (let ((_%e253821253841%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl253820253838%_))))
                                    (let ((_%hd253822253844%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253821253841%_)))
                                          (_%tl253823253846%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253821253841%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl253823253846%_))
                                          (let* ((_%klass253866%_
                                                  (let ((__tmp257508
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self253802%_
                                                            '1
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#optimizer-resolve-class
                                                     _%stx253798%_
                                                     __tmp257508)))
                                                 (_%field253868%_
                                                  (let ((__tmp257509
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self253802%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot->field-offset
                                                     _%klass253866%_
                                                     __tmp257509)))
                                                 (_%object253870%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx253797%_
                                                     _%hd253819253836%_)))
                                                 (_%value253872%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx253797%_
                                                     _%hd253822253844%_)))
                                                 (_%klass253875%_
                                                  _%klass253866%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass253875%_
                                                   '8
                                                   '#f
                                                   '#f))
                                                (let ((__tmp257510
                                                       (cons (if (or _%arguments-ok?253812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self253802%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-direct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self253802%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field253868%_ '()))
                                 (cons _%object253870%_
                                       (cons _%value253872%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp257510
                                                   _%stx253798%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%klass253875%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp257511
                                                           (cons (if (or _%arguments-ok?253812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self253802%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-set!
                             '%#struct-set!)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self253802%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field253868%_ '()))
                                     (cons _%object253870%_
                                           (cons _%value253872%_ '())))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp257511 _%stx253798%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$e253895%_
                                                           (let ((__tmp257512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self253802%_
                             '3
                             '#f
                             '#f))))
                     (declare (not safe))
                     (gxc#!class-slot-find-struct
                      _%klass253875%_
                      __tmp257512))))
              (if _%$e253895%_
                  (let ((__tmp257513
                         (cons (if (or _%arguments-ok?253812%_
                                       (not (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self253802%_
                                               '3
                                               '#f
                                               '#f))))
                                   '%#struct-unchecked-set!
                                   '%#struct-set!)
                               (cons (cons '%#ref
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self253802%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     (cons (cons '%#quote
                                                 (cons _%field253868%_ '()))
                                           (cons _%object253870%_
                                                 (cons _%value253872%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp257513 _%stx253798%_))
                  (if (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253802%_ '4 '#f '#f))
                      (let ((__tmp257514
                             (let ((_%$obj253904%_
                                    (let ((__tmp257515
                                           (let ()
                                             (declare (not safe))
                                             (##gensym '__obj))))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp257515))))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj253904%_
                                                             '())
                                                       (cons _%object253870%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#if
                                                       (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass253875%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#ref (cons _%$obj253904%_ '()))
                                       '())))
                     (cons (cons '%#struct-unchecked-set!
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self253802%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field253868%_ '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj253904%_
                                                               '()))
                                                   (cons _%value253872%_
                                                         '())))))
                           (cons (if _%arguments-ok?253812%_
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'unchecked-slot-set!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj253904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#quote
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self253802%_
                                    '3
                                    '#f
                                    '#f))
                                 '()))
                     (cons _%value253872%_ '())))))
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
                              _%self253802%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#ref (cons _%$obj253904%_ '()))
                     (cons (cons '%#quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self253802%_
                                          '3
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%value253872%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp257514 _%stx253798%_))
                      (let ((__tmp257516
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-set! '()))
                                         (cons _%object253870%_
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self253802%_
                            '3
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%value253872%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source
                         __tmp257516
                         _%stx253798%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g253814253828%_
                                           _%g253815253831%_))))
                                  (_%g253814253828%_ _%g253815253831%_))))
                          (_%g253814253828%_ _%g253815253831%_)))))
              (_%g253813253907%_ _%args253799%_))))))
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
      (lambda (_%self253612%_ _%ctx253613%_ _%stx253614%_ _%args253615%_)
        (let* ((_%self253618%_ _%self253612%_)
               (_%self253627253637%_ _%self253618%_)
               (_%E253629253640%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self253627253637%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K253630253650%_
                (lambda (_%inline253643%_ _%dispatch253644%_ _%arity253645%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self253618%_
                         _%args253615%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx253614%_
                         _%arity253645%_)))
                  (if _%inline253643%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp257517 (_%inline253643%_ _%stx253614%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp257517
                           _%stx253614%_
                           _%ctx253613%_)))
                      (if (and _%dispatch253644%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch253644%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch253644%_))
                            (let ((__tmp257518
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch253644%_
                                                           '()))
                                               _%args253615%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp257518
                               _%stx253614%_
                               _%ctx253613%_)))
                          (gxc#!procedure::optimize-call
                           _%self253618%_
                           _%ctx253613%_
                           _%stx253614%_
                           _%args253615%_)))))
               (_%e253631253653%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253627253637%_ '1 '#f '#f)))
               (_%e253632253656%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253627253637%_ '2 '#f '#f)))
               (_%e253633253659%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253627253637%_ '3 '#f '#f)))
               (_%arity253662%_ _%e253633253659%_)
               (_%e253634253664%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253627253637%_ '4 '#f '#f)))
               (_%dispatch253667%_ _%e253634253664%_)
               (_%e253635253669%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253627253637%_ '5 '#f '#f)))
               (_%inline253672%_ _%e253635253669%_))
          (_%K253630253650%_
           _%inline253672%_
           _%dispatch253667%_
           _%arity253662%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self253464%_ _%ctx253465%_ _%stx253466%_ _%args253467%_)
        (let* ((_%self253470%_ _%self253464%_)
               (_%$e253484%_
                (let ((__tmp257520
                       (lambda (_%g253479253481%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g253479253481%_
                            _%args253467%_))))
                      (__tmp257519
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self253470%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp257520 __tmp257519))))
          (if _%$e253484%_
              (let ((__method257408
                     (let ()
                       (declare (not safe))
                       (__method-ref _%$e253484%_ 'optimize-call))))
                (if __method257408
                    (let ()
                      (declare (not safe))
                      (__method257408
                       _%$e253484%_
                       _%ctx253465%_
                       _%stx253466%_
                       _%args253467%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method" _%$e253484%_ 'optimize-call))
                      '#!void)))
              (let ((__tmp257521
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self253470%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx253466%_
                 __tmp257521))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self253205%_ _%ctx253206%_ _%stx253207%_ _%args253208%_)
        (let* ((_%self253211%_ _%self253205%_)
               (_%self253220253229%_ _%self253211%_)
               (_%E253222253232%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self253220253229%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K253223253323%_
                (lambda (_%dispatch253235%_ _%table253236%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch253235%_))
                      (let* ((_%g253237253247%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch253235%_)))
                             (_%else253239253255%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch253235%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx253206%_
                                   _%stx253207%_))))
                             (_%K253241253304%_
                              (lambda (_%main253258%_ _%keys253259%_)
                                (let ((_g257522_
                                       (gxc#!kw-lambda-split-args
                                        _%stx253207%_
                                        _%args253208%_)))
                                  (begin
                                    (let ((_g257523_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g257522_)
                                                 (##values-length _g257522_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g257523_ 2)))
                                          (error "Context expects 2 values"
                                                 _g257523_)))
                                    (let ((_%pargs253261%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g257522_ 0)))
                                          (_%kwargs253262%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g257522_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main253258%_))
                                        (if _%table253236%_
                                            (let ((_%xargs253270%_
                                                   (map (lambda (_%key253264%_)
                                                          (let ((_%$e253266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key253264%_ _%kwargs253262%_))))
                    (if _%$e253266%_ _%$e253266%_ '(%#ref absent-value))))
                _%keys253259%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw253272%_)
                                                 (if (memq (car _%kw253272%_)
                                                           _%keys253259%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx253207%_
                                                        _%keys253259%_
                                                        _%kw253272%_))))
                                               _%kwargs253262%_)
                                              (let ((__tmp257524
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main253258%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs253261%_
                                  _%xargs253270%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp257524
                                                 _%stx253207%_
                                                 _%ctx253206%_)))
                                            (let* ((_%kwt253274%_
                                                    (let ((__tmp257525
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp257525)))
                                                   (_%kwvars253278%_
                                                    (map (lambda (_%_253276%_)
                                                           (let ((__tmp257526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp257526)))
                 _%kwargs253262%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind253283%_
                                                    (map (lambda (_%kw253280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar253281%_)
                   (cons (cons _%kwvar253281%_ '())
                         (cons (cdr _%kw253280%_) '())))
                 _%kwargs253262%_
                 _%kwvars253278%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset253288%_
                                                    (map (lambda (_%kw253285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar253286%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt253274%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw253285%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar253286%_
                                                             '()))
                                                 '()))))))
                 _%kwargs253262%_
                 _%kwvars253278%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs253293%_
                                                    (map (lambda (_%kw253290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar253291%_)
                   (cons (car _%kw253290%_)
                         (cons '%#ref (cons _%kwvar253291%_ '()))))
                 _%kwargs253262%_
                 _%kwvars253278%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs253301%_
                                                    (map (lambda (_%key253295%_)
                                                           (let ((_%$e253297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key253295%_ _%xkwargs253293%_))))
                     (if _%$e253297%_ _%$e253297%_ '(%#ref absent-value))))
                 _%keys253259%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp257527
                                                    (cons '%#let-values
                                                          (cons _%kwbind253283%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt253274%_ '())
                                                      (cons (let ((__tmp257528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs253262%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp257528 _%stx253207%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp257529
                                                             (cons (let ((__tmp257530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main253258%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt253274%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs253261%_
                                                       _%xargs253301%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp257530 _%stx253207%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp257529 _%kwset253288%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp257527
                                               _%stx253207%_
                                               _%ctx253206%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g253237253247%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e253242253307%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g253237253247%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e253243253310%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g253237253247%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e253244253313%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g253237253247%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys253316%_ _%e253244253313%_)
                                   (_%e253245253318%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g253237253247%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main253321%_ _%e253245253318%_))
                              (_%K253241253304%_
                               _%main253321%_
                               _%keys253316%_))
                            (_%else253239253255%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx253206%_ _%stx253207%_)))))
               (_%e253224253326%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253220253229%_ '1 '#f '#f)))
               (_%e253225253329%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253220253229%_ '2 '#f '#f)))
               (_%e253226253332%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253220253229%_ '3 '#f '#f)))
               (_%table253335%_ _%e253226253332%_)
               (_%e253227253337%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253220253229%_ '4 '#f '#f)))
               (_%dispatch253340%_ _%e253227253337%_))
          (_%K253223253323%_ _%dispatch253340%_ _%table253335%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx252818%_ _%args252819%_)
        (let _%lp252821%_ ((_%rest252823%_ _%args252819%_)
                           (_%pargs252824%_ '())
                           (_%kwargs252825%_ '()))
          (let* ((_%__stx256905256906%_ _%rest252823%_)
                 (_%g252831252883%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx256905256906%_)))))
            (let ((_%__kont256907256908%_
                   (lambda (_%g252833253062%_ _%g252834253063%_)
                     (_%lp252821%_
                      _%g252833253062%_
                      (cons _%g252834253063%_ _%pargs252824%_)
                      _%kwargs252825%_)))
                  (_%__kont256909256910%_
                   (lambda (_%g252848253008%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%g252848253008%_
                                _%pargs252824%_))
                             (reverse _%kwargs252825%_))))
                  (_%__kont256911256912%_
                   (lambda (_%g252859252955%_
                            _%g252860252956%_
                            _%g252861252957%_)
                     (let ((_%kw252974%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g252861252957%_))))
                       (if (assq _%kw252974%_ _%kwargs252825%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx252818%_
                              _%kw252974%_))
                           (_%lp252821%_
                            _%g252859252955%_
                            _%pargs252824%_
                            (cons (cons _%kw252974%_ _%g252860252956%_)
                                  _%kwargs252825%_))))))
                  (_%__kont256913256914%_
                   (lambda (_%g252874252903%_ _%g252875252904%_)
                     (_%lp252821%_
                      _%g252874252903%_
                      (cons _%g252875252904%_ _%pargs252824%_)
                      _%kwargs252825%_)))
                  (_%__kont256915256916%_
                   (lambda ()
                     (values (reverse _%pargs252824%_)
                             (reverse _%kwargs252825%_)))))
              (let ((_%__match257012257013%_
                     (lambda (_%e252862252923%_
                              _%hd252863252926%_
                              _%tl252864252928%_
                              _%e252865252931%_
                              _%hd252866252934%_
                              _%tl252867252936%_
                              _%e252868252939%_
                              _%hd252869252942%_
                              _%tl252870252944%_
                              _%e252871252947%_
                              _%hd252872252950%_
                              _%tl252873252952%_)
                       (let ((_%g252859252955%_ _%tl252873252952%_)
                             (_%g252860252956%_ _%hd252872252950%_)
                             (_%g252861252957%_ _%hd252869252942%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g252861252957%_))
                             (_%__kont256911256912%_
                              _%g252859252955%_
                              _%g252860252956%_
                              _%g252861252957%_)
                             (_%__kont256913256914%_
                              _%tl252864252928%_
                              _%hd252863252926%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx256905256906%_))
                    (let ((_%e252835253027%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx256905256906%_))))
                      (let ((_%tl252837253032%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e252835253027%_)))
                            (_%hd252836253030%_
                             (let ()
                               (declare (not safe))
                               (##car _%e252835253027%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd252836253030%_))
                            (let ((_%e252838253035%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd252836253030%_))))
                              (let ((_%tl252840253040%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e252838253035%_)))
                                    (_%hd252839253038%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e252838253035%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd252839253038%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd252839253038%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl252840253040%_))
                                            (let ((_%e252841253043%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl252840253040%_))))
                                              (let ((_%tl252843253048%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e252841253043%_)))
                                                    (_%hd252842253046%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e252841253043%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd252842253046%_))
                                                    (let ((_%e252844253051%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd252842253046%_))))
                                                      (if (equal? _%e252844253051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl252843253048%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl252837253032%_))
                          (let ((_%e252845253054%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl252837253032%_))))
                            (let ((_%tl252847253059%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252845253054%_)))
                                  (_%hd252846253057%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252845253054%_))))
                              (_%__kont256907256908%_
                               _%tl252847253059%_
                               _%hd252846253057%_)))
                          (_%__kont256913256914%_
                           _%tl252837253032%_
                           _%hd252836253030%_))
                      (_%__kont256913256914%_
                       _%tl252837253032%_
                       _%hd252836253030%_))
                  (if (equal? _%e252844253051%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl252843253048%_))
                          (_%__kont256909256910%_ _%tl252837253032%_)
                          (_%__kont256913256914%_
                           _%tl252837253032%_
                           _%hd252836253030%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl252843253048%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl252837253032%_))
                              (let ((_%e252871252947%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl252837253032%_))))
                                (let ((_%tl252873252952%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e252871252947%_)))
                                      (_%hd252872252950%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e252871252947%_))))
                                  (_%__match257012257013%_
                                   _%e252835253027%_
                                   _%hd252836253030%_
                                   _%tl252837253032%_
                                   _%e252838253035%_
                                   _%hd252839253038%_
                                   _%tl252840253040%_
                                   _%e252841253043%_
                                   _%hd252842253046%_
                                   _%tl252843253048%_
                                   _%e252871252947%_
                                   _%hd252872252950%_
                                   _%tl252873252952%_)))
                              (_%__kont256913256914%_
                               _%tl252837253032%_
                               _%hd252836253030%_))
                          (_%__kont256913256914%_
                           _%tl252837253032%_
                           _%hd252836253030%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl252843253048%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl252837253032%_))
                                                            (let ((_%e252871252947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl252837253032%_))))
                      (let ((_%tl252873252952%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e252871252947%_)))
                            (_%hd252872252950%_
                             (let ()
                               (declare (not safe))
                               (##car _%e252871252947%_))))
                        (_%__match257012257013%_
                         _%e252835253027%_
                         _%hd252836253030%_
                         _%tl252837253032%_
                         _%e252838253035%_
                         _%hd252839253038%_
                         _%tl252840253040%_
                         _%e252841253043%_
                         _%hd252842253046%_
                         _%tl252843253048%_
                         _%e252871252947%_
                         _%hd252872252950%_
                         _%tl252873252952%_)))
                    (_%__kont256913256914%_
                     _%tl252837253032%_
                     _%hd252836253030%_))
                (_%__kont256913256914%_
                 _%tl252837253032%_
                 _%hd252836253030%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont256913256914%_
                                             _%tl252837253032%_
                                             _%hd252836253030%_))
                                        (_%__kont256913256914%_
                                         _%tl252837253032%_
                                         _%hd252836253030%_))
                                    (_%__kont256913256914%_
                                     _%tl252837253032%_
                                     _%hd252836253030%_))))
                            (_%__kont256913256914%_
                             _%tl252837253032%_
                             _%hd252836253030%_))))
                    (_%__kont256915256916%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self252802%_ _%ctx252803%_ _%stx252804%_ _%args252805%_)
        (let ((_%self252808%_ _%self252802%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx252803%_ _%stx252804%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self252492%_ _%stx252493%_)
        (let* ((_%__stx257021257022%_ _%stx252493%_)
               (_%g252496252536%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx257021257022%_)))))
          (let ((_%__kont257023257024%_
                 (lambda (_%g252498252640%_ _%g252499252641%_)
                   (let ((_%$e252668%_
                          (member 'return:
                                  (let ((__tmp257531
                                         (lambda (_%g252660252663%_
                                                  _%g252661252665%_)
                                           (cons _%g252660252663%_
                                                 _%g252661252665%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp257531
                                     '()
                                     _%g252499252641%_))
                                  gx#stx-eq?)))
                     (if _%$e252668%_
                         (let ((_%type252673%_
                                (let ((__tmp257532
                                       (let ((__tmp257533 (cadr _%$e252668%_)))
                                         (declare (not safe))
                                         (gxc#identifier-symbol __tmp257533))))
                                  (declare (not safe))
                                  (gxc#optimizer-resolve-class
                                   _%stx252493%_
                                   __tmp257532))))
                           (gxc#check-return-type!
                            _%stx252493%_
                            _%g252498252640%_
                            _%type252673%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self252492%_
                              _%g252498252640%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self252492%_
                            _%g252498252640%_))))))
                (_%__kont257027257028%_
                 (lambda (_%g252521252565%_ _%g252522252566%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self252492%_ _%g252521252565%_)))))
            (let ((_%__match257058257059%_
                   (lambda (_%e252500252586%_
                            _%hd252501252589%_
                            _%tl252502252591%_
                            _%e252503252594%_
                            _%hd252504252597%_
                            _%tl252505252599%_
                            _%e252506252602%_
                            _%hd252507252605%_
                            _%tl252508252607%_
                            _%__splice257025257026%_
                            _%target252509252610%_
                            _%tl252511252612%_)
                     (letrec ((_%loop252512252615%_
                               (lambda (_%hd252510252618%_
                                        _%signature252516252620%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd252510252618%_))
                                     (let ((_%e252513252622%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd252510252618%_))))
                                       (let ((_%lp-tl252515252627%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e252513252622%_)))
                                             (_%lp-hd252514252625%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e252513252622%_))))
                                         (_%loop252512252615%_
                                          _%lp-tl252515252627%_
                                          (cons _%lp-hd252514252625%_
                                                _%signature252516252620%_))))
                                     (let ((_%signature252517252630%_
                                            (reverse _%signature252516252620%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl252505252599%_))
                                           (let ((_%e252518252632%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl252505252599%_))))
                                             (let ((_%tl252520252637%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e252518252632%_)))
                                                   (_%hd252519252635%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e252518252632%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl252520252637%_))
                                                   (_%__kont257023257024%_
                                                    _%hd252519252635%_
                                                    _%signature252517252630%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g252496252536%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g252496252536%_))))))))
                       (_%loop252512252615%_ _%target252509252610%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx257021257022%_))
                  (let ((_%e252500252586%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx257021257022%_))))
                    (let ((_%tl252502252591%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e252500252586%_)))
                          (_%hd252501252589%_
                           (let ()
                             (declare (not safe))
                             (##car _%e252500252586%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl252502252591%_))
                          (let ((_%e252503252594%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl252502252591%_))))
                            (let ((_%tl252505252599%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252503252594%_)))
                                  (_%hd252504252597%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252503252594%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd252504252597%_))
                                  (let ((_%e252506252602%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd252504252597%_))))
                                    (let ((_%tl252508252607%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252506252602%_)))
                                          (_%hd252507252605%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252506252602%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd252507252605%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd252507252605%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl252508252607%_))
                                                  (let ((_%__splice257025257026%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl252508252607%_
                                                            '0))))
                                                    (let ((_%tl252511252612%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice257025257026%_
                                                              '1)))
                                                          (_%target252509252610%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice257025257026%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl252511252612%_))
                                                          (_%__match257058257059%_
                                                           _%e252500252586%_
                                                           _%hd252501252589%_
                                                           _%tl252502252591%_
                                                           _%e252503252594%_
                                                           _%hd252504252597%_
                                                           _%tl252505252599%_
                                                           _%e252506252602%_
                                                           _%hd252507252605%_
                                                           _%tl252508252607%_
                                                           _%__splice257025257026%_
                                                           _%target252509252610%_
                                                           _%tl252511252612%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl252505252599%_))
                      (let ((_%e252529252557%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl252505252599%_))))
                        (let ((_%tl252531252562%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252529252557%_)))
                              (_%hd252530252560%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252529252557%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252531252562%_))
                              (_%__kont257027257028%_
                               _%hd252530252560%_
                               _%hd252504252597%_)
                              (let ()
                                (declare (not safe))
                                (_%g252496252536%_)))))
                      (let () (declare (not safe)) (_%g252496252536%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl252505252599%_))
                                                      (let ((_%e252529252557%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl252505252599%_))))
                (let ((_%tl252531252562%_
                       (let () (declare (not safe)) (##cdr _%e252529252557%_)))
                      (_%hd252530252560%_
                       (let ()
                         (declare (not safe))
                         (##car _%e252529252557%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl252531252562%_))
                      (_%__kont257027257028%_
                       _%hd252530252560%_
                       _%hd252504252597%_)
                      (let () (declare (not safe)) (_%g252496252536%_)))))
              (let () (declare (not safe)) (_%g252496252536%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl252505252599%_))
                                                  (let ((_%e252529252557%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl252505252599%_))))
                                                    (let ((_%tl252531252562%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e252529252557%_)))
                                                          (_%hd252530252560%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e252529252557%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl252531252562%_))
                                                          (_%__kont257027257028%_
                                                           _%hd252530252560%_
                                                           _%hd252504252597%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g252496252536%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g252496252536%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl252505252599%_))
                                              (let ((_%e252529252557%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl252505252599%_))))
                                                (let ((_%tl252531252562%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e252529252557%_)))
                                                      (_%hd252530252560%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e252529252557%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl252531252562%_))
                                                      (_%__kont257027257028%_
                                                       _%hd252530252560%_
                                                       _%hd252504252597%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g252496252536%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g252496252536%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl252505252599%_))
                                      (let ((_%e252529252557%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl252505252599%_))))
                                        (let ((_%tl252531252562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252529252557%_)))
                                              (_%hd252530252560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252529252557%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl252531252562%_))
                                              (_%__kont257027257028%_
                                               _%hd252530252560%_
                                               _%hd252504252597%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g252496252536%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g252496252536%_))))))
                          (let () (declare (not safe)) (_%g252496252536%_)))))
                  (let () (declare (not safe)) (_%g252496252536%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx252467%_ _%expr252468%_ _%type252469%_)
        (let ((_%$e252471%_ (not _%type252469%_)))
          (if _%$e252471%_
              _%$e252471%_
              (let ((_%$e252474%_
                     (eq? (##structure-ref _%type252469%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e252474%_
                    _%$e252474%_
                    (let ((_%$e252477%_
                           (eq? (##structure-ref
                                 _%type252469%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e252477%_
                          _%$e252477%_
                          (let ((_%expr-type252481%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr252468%_))))
                            (if (not _%expr-type252481%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx252467%_
                                   _%type252469%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type252481%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx252467%_
                                       _%type252469%_
                                       _%expr-type252481%_))
                                    (let ((_%$e252485%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type252481%_
                                              'gxc#!abort::t))))
                                      (if _%$e252485%_
                                          _%$e252485%_
                                          (let ((_%$e252488%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type252481%_
                                                    _%type252469%_))))
                                            (if _%$e252488%_
                                                _%$e252488%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx252467%_
                                                   _%type252469%_
                                                   _%expr-type252481%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self251893%_ _%stx251894%_)
        (gxc#check-contract-violation!
         _%stx251894%_
         (let* ((_%__stx257103257104%_ _%stx251894%_)
                (_%g251899252009%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; invalid match target"
                      _%__stx257103257104%_)))))
           (let ((_%__kont257105257106%_
                  (lambda (_%g251901252441%_
                           _%g251902252442%_
                           _%g251903252443%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-e _%g251903252443%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self251893%_ _%g251902252442%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self251893%_
                           _%g251901252441%_)))))
                 (_%__kont257107257108%_
                  (lambda (_%g251922252267%_
                           _%g251923252268%_
                           _%g251924252269%_
                           _%g251925252270%_)
                    (let ((_%$e252302%_
                           (let ((__tmp257534
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g251925252270%_))))
                             (declare (not safe))
                             (gxc#optimizer-lookup-type __tmp257534))))
                      (if _%$e252302%_
                          (if (or (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e252302%_
                                     'gxc#!predicate::t))
                                  (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e252302%_
                                     'gxc#!primitive-predicate::t)))
                              (let* ((_%test252310%_
                                      (let ((__tmp257535
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '%#call))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '%#ref))
                       (cons _%g251925252270%_ '()))
                 (cons (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#ref))
                             (cons _%g251924252269%_ '()))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-apply
                                         __tmp257535
                                         _%stx251894%_
                                         _%self251893%_)))
                                     (_%K252314%_
                                      (let ((__tmp257536
                                             (lambda ()
                                               (let ((__tmp257539
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self251893%_
                                                           _%g251923252268%_))))
                                                     (__tmp257537
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#identifier-symbol _%g251924252269%_))
                          (let ((__tmp257538
                                 (##structure-ref
                                  _%$e252302%_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             _%stx251894%_
                             __tmp257538)))
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp257539
                                                  gxc#current-compile-path-type
                                                  __tmp257537)))))
                                        (declare (not safe))
                                        (__make-promise __tmp257536)))
                                     (_%E252317%_
                                      (let ((__tmp257540
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self251893%_
                                                  _%g251922252267%_)))))
                                        (declare (not safe))
                                        (__make-promise __tmp257540)))
                                     (_%__stx257081257082%_ _%test252310%_)
                                     (_%g252321252335%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx257081257082%_)))))
                                (let ((_%__kont257083257084%_
                                       (lambda (_%g252323252363%_
                                                _%g252324252364%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%g252323252363%_))
                                             (force _%K252314%_)
                                             (force _%E252317%_))))
                                      (_%__kont257085257086%_
                                       (lambda ()
                                         (let ((__tmp257541
                                                (cons '%#if
                                                      (cons _%test252310%_
                                                            (cons (force _%K252314%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (force _%E252317%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp257541
                                            _%stx251894%_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx257081257082%_))
                                      (let ((_%e252325252347%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx257081257082%_))))
                                        (let ((_%tl252327252352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252325252347%_)))
                                              (_%hd252326252350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252325252347%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl252327252352%_))
                                              (let ((_%e252328252355%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl252327252352%_))))
                                                (let ((_%tl252330252360%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e252328252355%_)))
                                                      (_%hd252329252358%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e252328252355%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl252330252360%_))
                                                      (_%__kont257083257084%_
                                                       _%hd252329252358%_
                                                       _%hd252326252350%_)
                                                      (_%__kont257085257086%_))))
                                              (_%__kont257085257086%_))))
                                      (_%__kont257085257086%_))))
                              (let ()
                                (declare (not safe))
                                (gxc#xform-operands
                                 _%self251893%_
                                 _%stx251894%_)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-operands
                             _%self251893%_
                             _%stx251894%_))))))
                 (_%__kont257109257110%_
                  (lambda (_%g251959252143%_
                           _%g251960252144%_
                           _%g251961252145%_
                           _%g251962252146%_)
                    (gxc#optimize-if%
                     _%self251893%_
                     (let ((__tmp257542
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#if))
                                  (cons _%g251961252145%_
                                        (cons _%g251959252143%_
                                              (cons _%g251960252144%_ '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp257542 _%stx251894%_)))))
                 (_%__kont257111257112%_
                  (lambda (_%g251990252046%_
                           _%g251991252047%_
                           _%g251992252048%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-operands _%self251893%_ _%stx251894%_)))))
             (let ((_%__match257310257311%_
                    (lambda (_%e251963252071%_
                             _%hd251964252074%_
                             _%tl251965252076%_
                             _%e251966252079%_
                             _%hd251967252082%_
                             _%tl251968252084%_
                             _%e251969252087%_
                             _%hd251970252090%_
                             _%tl251971252092%_
                             _%e251972252095%_
                             _%hd251973252098%_
                             _%tl251974252100%_
                             _%e251975252103%_
                             _%hd251976252106%_
                             _%tl251977252108%_
                             _%e251978252111%_
                             _%hd251979252114%_
                             _%tl251980252116%_
                             _%e251981252119%_
                             _%hd251982252122%_
                             _%tl251983252124%_
                             _%e251984252127%_
                             _%hd251985252130%_
                             _%tl251986252132%_
                             _%e251987252135%_
                             _%hd251988252138%_
                             _%tl251989252140%_)
                      (let ((_%g251959252143%_ _%hd251988252138%_)
                            (_%g251960252144%_ _%hd251985252130%_)
                            (_%g251961252145%_ _%hd251982252122%_)
                            (_%g251962252146%_ _%hd251979252114%_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _%g251962252146%_
                               'not))
                            (_%__kont257109257110%_
                             _%g251959252143%_
                             _%g251960252144%_
                             _%g251961252145%_
                             _%g251962252146%_)
                            (_%__kont257111257112%_
                             _%hd251988252138%_
                             _%hd251985252130%_
                             _%hd251967252082%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx257103257104%_))
                   (let ((_%e251904252393%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx257103257104%_))))
                     (let ((_%tl251906252398%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e251904252393%_)))
                           (_%hd251905252396%_
                            (let ()
                              (declare (not safe))
                              (##car _%e251904252393%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl251906252398%_))
                           (let ((_%e251907252401%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl251906252398%_))))
                             (let ((_%tl251909252406%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e251907252401%_)))
                                   (_%hd251908252404%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e251907252401%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd251908252404%_))
                                   (let ((_%e251910252409%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd251908252404%_))))
                                     (let ((_%tl251912252414%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e251910252409%_)))
                                           (_%hd251911252412%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e251910252409%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd251911252412%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#quote
                                                  _%hd251911252412%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl251912252414%_))
                                                   (let ((_%e251913252417%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl251912252414%_))))
                                                     (let ((_%tl251915252422%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e251913252417%_)))
                                                           (_%hd251914252420%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e251913252417%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl251915252422%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl251909252406%_))
                       (let ((_%e251916252425%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl251909252406%_))))
                         (let ((_%tl251918252430%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e251916252425%_)))
                               (_%hd251917252428%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e251916252425%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl251918252430%_))
                               (let ((_%e251919252433%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl251918252430%_))))
                                 (let ((_%tl251921252438%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e251919252433%_)))
                                       (_%hd251920252436%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e251919252433%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl251921252438%_))
                                       (_%__kont257105257106%_
                                        _%hd251920252436%_
                                        _%hd251917252428%_
                                        _%hd251914252420%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g251899252009%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g251899252009%_)))))
                       (let () (declare (not safe)) (_%g251899252009%_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl251909252406%_))
                       (let ((_%e251999252030%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl251909252406%_))))
                         (let ((_%tl252001252035%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e251999252030%_)))
                               (_%hd252000252033%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e251999252030%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl252001252035%_))
                               (let ((_%e252002252038%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl252001252035%_))))
                                 (let ((_%tl252004252043%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e252002252038%_)))
                                       (_%hd252003252041%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e252002252038%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl252004252043%_))
                                       (_%__kont257111257112%_
                                        _%hd252003252041%_
                                        _%hd252000252033%_
                                        _%hd251908252404%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g251899252009%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g251899252009%_)))))
                       (let () (declare (not safe)) (_%g251899252009%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl251909252406%_))
                                                       (let ((_%e251999252030%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl251909252406%_))))
                 (let ((_%tl252001252035%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e251999252030%_)))
                       (_%hd252000252033%_
                        (let ()
                          (declare (not safe))
                          (##car _%e251999252030%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl252001252035%_))
                       (let ((_%e252002252038%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl252001252035%_))))
                         (let ((_%tl252004252043%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e252002252038%_)))
                               (_%hd252003252041%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e252002252038%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl252004252043%_))
                               (_%__kont257111257112%_
                                _%hd252003252041%_
                                _%hd252000252033%_
                                _%hd251908252404%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g251899252009%_)))))
                       (let () (declare (not safe)) (_%g251899252009%_)))))
               (let () (declare (not safe)) (_%g251899252009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-eq?
                                                      '%#call
                                                      _%hd251911252412%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl251912252414%_))
                                                       (let ((_%e251935252203%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl251912252414%_))))
                 (let ((_%tl251937252208%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e251935252203%_)))
                       (_%hd251936252206%_
                        (let ()
                          (declare (not safe))
                          (##car _%e251935252203%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd251936252206%_))
                       (let ((_%e251938252211%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%hd251936252206%_))))
                         (let ((_%tl251940252216%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e251938252211%_)))
                               (_%hd251939252214%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e251938252211%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%hd251939252214%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-eq? '%#ref _%hd251939252214%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl251940252216%_))
                                       (let ((_%e251941252219%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl251940252216%_))))
                                         (let ((_%tl251943252224%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e251941252219%_)))
                                               (_%hd251942252222%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e251941252219%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl251943252224%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl251937252208%_))
                                                   (let ((_%e251944252227%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl251937252208%_))))
                                                     (let ((_%tl251946252232%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e251944252227%_)))
                                                           (_%hd251945252230%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e251944252227%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd251945252230%_))
                                                           (let ((_%e251947252235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd251945252230%_))))
                     (let ((_%tl251949252240%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e251947252235%_)))
                           (_%hd251948252238%_
                            (let ()
                              (declare (not safe))
                              (##car _%e251947252235%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd251948252238%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-eq? '%#ref _%hd251948252238%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl251949252240%_))
                                   (let ((_%e251950252243%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl251949252240%_))))
                                     (let ((_%tl251952252248%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e251950252243%_)))
                                           (_%hd251951252246%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e251950252243%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl251952252248%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl251946252232%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl251909252406%_))
                                                   (let ((_%e251953252251%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl251909252406%_))))
                                                     (let ((_%tl251955252256%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e251953252251%_)))
                                                           (_%hd251954252254%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e251953252251%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl251955252256%_))
                                                           (let ((_%e251956252259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl251955252256%_))))
                     (let ((_%tl251958252264%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e251956252259%_)))
                           (_%hd251957252262%_
                            (let ()
                              (declare (not safe))
                              (##car _%e251956252259%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl251958252264%_))
                           (_%__kont257107257108%_
                            _%hd251957252262%_
                            _%hd251954252254%_
                            _%hd251951252246%_
                            _%hd251942252222%_)
                           (let () (declare (not safe)) (_%g251899252009%_)))))
                   (let () (declare (not safe)) (_%g251899252009%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g251899252009%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl251909252406%_))
                                                   (let ((_%e251999252030%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl251909252406%_))))
                                                     (let ((_%tl252001252035%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e251999252030%_)))
                                                           (_%hd252000252033%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e251999252030%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl252001252035%_))
                                                           (let ((_%e252002252038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl252001252035%_))))
                     (let ((_%tl252004252043%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e252002252038%_)))
                           (_%hd252003252041%_
                            (let ()
                              (declare (not safe))
                              (##car _%e252002252038%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl252004252043%_))
                           (_%__kont257111257112%_
                            _%hd252003252041%_
                            _%hd252000252033%_
                            _%hd251908252404%_)
                           (let () (declare (not safe)) (_%g251899252009%_)))))
                   (let () (declare (not safe)) (_%g251899252009%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g251899252009%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl251946252232%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl251909252406%_))
                                                   (let ((_%e251984252127%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl251909252406%_))))
                                                     (let ((_%tl251986252132%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e251984252127%_)))
                                                           (_%hd251985252130%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e251984252127%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl251986252132%_))
                                                           (let ((_%e251987252135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl251986252132%_))))
                     (let ((_%tl251989252140%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e251987252135%_)))
                           (_%hd251988252138%_
                            (let ()
                              (declare (not safe))
                              (##car _%e251987252135%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl251989252140%_))
                           (_%__match257310257311%_
                            _%e251904252393%_
                            _%hd251905252396%_
                            _%tl251906252398%_
                            _%e251907252401%_
                            _%hd251908252404%_
                            _%tl251909252406%_
                            _%e251910252409%_
                            _%hd251911252412%_
                            _%tl251912252414%_
                            _%e251935252203%_
                            _%hd251936252206%_
                            _%tl251937252208%_
                            _%e251938252211%_
                            _%hd251939252214%_
                            _%tl251940252216%_
                            _%e251941252219%_
                            _%hd251942252222%_
                            _%tl251943252224%_
                            _%e251944252227%_
                            _%hd251945252230%_
                            _%tl251946252232%_
                            _%e251984252127%_
                            _%hd251985252130%_
                            _%tl251986252132%_
                            _%e251987252135%_
                            _%hd251988252138%_
                            _%tl251989252140%_)
                           (let () (declare (not safe)) (_%g251899252009%_)))))
                   (let () (declare (not safe)) (_%g251899252009%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g251899252009%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl251909252406%_))
                                                   (let ((_%e251999252030%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl251909252406%_))))
                                                     (let ((_%tl252001252035%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e251999252030%_)))
                                                           (_%hd252000252033%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e251999252030%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl252001252035%_))
                                                           (let ((_%e252002252038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl252001252035%_))))
                     (let ((_%tl252004252043%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e252002252038%_)))
                           (_%hd252003252041%_
                            (let ()
                              (declare (not safe))
                              (##car _%e252002252038%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl252004252043%_))
                           (_%__kont257111257112%_
                            _%hd252003252041%_
                            _%hd252000252033%_
                            _%hd251908252404%_)
                           (let () (declare (not safe)) (_%g251899252009%_)))))
                   (let () (declare (not safe)) (_%g251899252009%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g251899252009%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl251946252232%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl251909252406%_))
                                           (let ((_%e251984252127%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl251909252406%_))))
                                             (let ((_%tl251986252132%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e251984252127%_)))
                                                   (_%hd251985252130%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e251984252127%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl251986252132%_))
                                                   (let ((_%e251987252135%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl251986252132%_))))
                                                     (let ((_%tl251989252140%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e251987252135%_)))
                                                           (_%hd251988252138%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e251987252135%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl251989252140%_))
                                                           (_%__match257310257311%_
                                                            _%e251904252393%_
                                                            _%hd251905252396%_
                                                            _%tl251906252398%_
                                                            _%e251907252401%_
                                                            _%hd251908252404%_
                                                            _%tl251909252406%_
                                                            _%e251910252409%_
                                                            _%hd251911252412%_
                                                            _%tl251912252414%_
                                                            _%e251935252203%_
                                                            _%hd251936252206%_
                                                            _%tl251937252208%_
                                                            _%e251938252211%_
                                                            _%hd251939252214%_
                                                            _%tl251940252216%_
                                                            _%e251941252219%_
                                                            _%hd251942252222%_
                                                            _%tl251943252224%_
                                                            _%e251944252227%_
                                                            _%hd251945252230%_
                                                            _%tl251946252232%_
                                                            _%e251984252127%_
                                                            _%hd251985252130%_
                                                            _%tl251986252132%_
                                                            _%e251987252135%_
                                                            _%hd251988252138%_
                                                            _%tl251989252140%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g251899252009%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g251899252009%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g251899252009%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl251909252406%_))
                                           (let ((_%e251999252030%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl251909252406%_))))
                                             (let ((_%tl252001252035%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e251999252030%_)))
                                                   (_%hd252000252033%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e251999252030%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl252001252035%_))
                                                   (let ((_%e252002252038%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl252001252035%_))))
                                                     (let ((_%tl252004252043%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e252002252038%_)))
                                                           (_%hd252003252041%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e252002252038%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl252004252043%_))
                                                           (_%__kont257111257112%_
                                                            _%hd252003252041%_
                                                            _%hd252000252033%_
                                                            _%hd251908252404%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g251899252009%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g251899252009%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g251899252009%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl251946252232%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl251909252406%_))
                                       (let ((_%e251984252127%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl251909252406%_))))
                                         (let ((_%tl251986252132%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e251984252127%_)))
                                               (_%hd251985252130%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e251984252127%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl251986252132%_))
                                               (let ((_%e251987252135%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl251986252132%_))))
                                                 (let ((_%tl251989252140%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e251987252135%_)))
                                                       (_%hd251988252138%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e251987252135%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl251989252140%_))
                                                       (_%__match257310257311%_
                                                        _%e251904252393%_
                                                        _%hd251905252396%_
                                                        _%tl251906252398%_
                                                        _%e251907252401%_
                                                        _%hd251908252404%_
                                                        _%tl251909252406%_
                                                        _%e251910252409%_
                                                        _%hd251911252412%_
                                                        _%tl251912252414%_
                                                        _%e251935252203%_
                                                        _%hd251936252206%_
                                                        _%tl251937252208%_
                                                        _%e251938252211%_
                                                        _%hd251939252214%_
                                                        _%tl251940252216%_
                                                        _%e251941252219%_
                                                        _%hd251942252222%_
                                                        _%tl251943252224%_
                                                        _%e251944252227%_
                                                        _%hd251945252230%_
                                                        _%tl251946252232%_
                                                        _%e251984252127%_
                                                        _%hd251985252130%_
                                                        _%tl251986252132%_
                                                        _%e251987252135%_
                                                        _%hd251988252138%_
                                                        _%tl251989252140%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g251899252009%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g251899252009%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g251899252009%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl251909252406%_))
                                       (let ((_%e251999252030%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl251909252406%_))))
                                         (let ((_%tl252001252035%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e251999252030%_)))
                                               (_%hd252000252033%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e251999252030%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl252001252035%_))
                                               (let ((_%e252002252038%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl252001252035%_))))
                                                 (let ((_%tl252004252043%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e252002252038%_)))
                                                       (_%hd252003252041%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e252002252038%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl252004252043%_))
                                                       (_%__kont257111257112%_
                                                        _%hd252003252041%_
                                                        _%hd252000252033%_
                                                        _%hd251908252404%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g251899252009%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g251899252009%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g251899252009%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl251946252232%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl251909252406%_))
                                   (let ((_%e251984252127%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl251909252406%_))))
                                     (let ((_%tl251986252132%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e251984252127%_)))
                                           (_%hd251985252130%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e251984252127%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl251986252132%_))
                                           (let ((_%e251987252135%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl251986252132%_))))
                                             (let ((_%tl251989252140%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e251987252135%_)))
                                                   (_%hd251988252138%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e251987252135%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl251989252140%_))
                                                   (_%__match257310257311%_
                                                    _%e251904252393%_
                                                    _%hd251905252396%_
                                                    _%tl251906252398%_
                                                    _%e251907252401%_
                                                    _%hd251908252404%_
                                                    _%tl251909252406%_
                                                    _%e251910252409%_
                                                    _%hd251911252412%_
                                                    _%tl251912252414%_
                                                    _%e251935252203%_
                                                    _%hd251936252206%_
                                                    _%tl251937252208%_
                                                    _%e251938252211%_
                                                    _%hd251939252214%_
                                                    _%tl251940252216%_
                                                    _%e251941252219%_
                                                    _%hd251942252222%_
                                                    _%tl251943252224%_
                                                    _%e251944252227%_
                                                    _%hd251945252230%_
                                                    _%tl251946252232%_
                                                    _%e251984252127%_
                                                    _%hd251985252130%_
                                                    _%tl251986252132%_
                                                    _%e251987252135%_
                                                    _%hd251988252138%_
                                                    _%tl251989252140%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g251899252009%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g251899252009%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g251899252009%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl251909252406%_))
                                   (let ((_%e251999252030%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl251909252406%_))))
                                     (let ((_%tl252001252035%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e251999252030%_)))
                                           (_%hd252000252033%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e251999252030%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl252001252035%_))
                                           (let ((_%e252002252038%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl252001252035%_))))
                                             (let ((_%tl252004252043%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e252002252038%_)))
                                                   (_%hd252003252041%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e252002252038%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl252004252043%_))
                                                   (_%__kont257111257112%_
                                                    _%hd252003252041%_
                                                    _%hd252000252033%_
                                                    _%hd251908252404%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g251899252009%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g251899252009%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g251899252009%_)))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl251946252232%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl251909252406%_))
                           (let ((_%e251984252127%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl251909252406%_))))
                             (let ((_%tl251986252132%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e251984252127%_)))
                                   (_%hd251985252130%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e251984252127%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl251986252132%_))
                                   (let ((_%e251987252135%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl251986252132%_))))
                                     (let ((_%tl251989252140%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e251987252135%_)))
                                           (_%hd251988252138%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e251987252135%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl251989252140%_))
                                           (_%__match257310257311%_
                                            _%e251904252393%_
                                            _%hd251905252396%_
                                            _%tl251906252398%_
                                            _%e251907252401%_
                                            _%hd251908252404%_
                                            _%tl251909252406%_
                                            _%e251910252409%_
                                            _%hd251911252412%_
                                            _%tl251912252414%_
                                            _%e251935252203%_
                                            _%hd251936252206%_
                                            _%tl251937252208%_
                                            _%e251938252211%_
                                            _%hd251939252214%_
                                            _%tl251940252216%_
                                            _%e251941252219%_
                                            _%hd251942252222%_
                                            _%tl251943252224%_
                                            _%e251944252227%_
                                            _%hd251945252230%_
                                            _%tl251946252232%_
                                            _%e251984252127%_
                                            _%hd251985252130%_
                                            _%tl251986252132%_
                                            _%e251987252135%_
                                            _%hd251988252138%_
                                            _%tl251989252140%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g251899252009%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g251899252009%_)))))
                           (let () (declare (not safe)) (_%g251899252009%_)))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl251909252406%_))
                           (let ((_%e251999252030%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl251909252406%_))))
                             (let ((_%tl252001252035%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e251999252030%_)))
                                   (_%hd252000252033%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e251999252030%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl252001252035%_))
                                   (let ((_%e252002252038%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl252001252035%_))))
                                     (let ((_%tl252004252043%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e252002252038%_)))
                                           (_%hd252003252041%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e252002252038%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl252004252043%_))
                                           (_%__kont257111257112%_
                                            _%hd252003252041%_
                                            _%hd252000252033%_
                                            _%hd251908252404%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g251899252009%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g251899252009%_)))))
                           (let ()
                             (declare (not safe))
                             (_%g251899252009%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl251909252406%_))
                                                       (let ((_%e251999252030%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl251909252406%_))))
                 (let ((_%tl252001252035%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e251999252030%_)))
                       (_%hd252000252033%_
                        (let ()
                          (declare (not safe))
                          (##car _%e251999252030%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl252001252035%_))
                       (let ((_%e252002252038%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl252001252035%_))))
                         (let ((_%tl252004252043%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e252002252038%_)))
                               (_%hd252003252041%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e252002252038%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl252004252043%_))
                               (_%__kont257111257112%_
                                _%hd252003252041%_
                                _%hd252000252033%_
                                _%hd251908252404%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g251899252009%_)))))
                       (let () (declare (not safe)) (_%g251899252009%_)))))
               (let () (declare (not safe)) (_%g251899252009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl251909252406%_))
                                                   (let ((_%e251999252030%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl251909252406%_))))
                                                     (let ((_%tl252001252035%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e251999252030%_)))
                                                           (_%hd252000252033%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e251999252030%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl252001252035%_))
                                                           (let ((_%e252002252038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl252001252035%_))))
                     (let ((_%tl252004252043%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e252002252038%_)))
                           (_%hd252003252041%_
                            (let ()
                              (declare (not safe))
                              (##car _%e252002252038%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl252004252043%_))
                           (_%__kont257111257112%_
                            _%hd252003252041%_
                            _%hd252000252033%_
                            _%hd251908252404%_)
                           (let () (declare (not safe)) (_%g251899252009%_)))))
                   (let () (declare (not safe)) (_%g251899252009%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g251899252009%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl251909252406%_))
                                           (let ((_%e251999252030%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl251909252406%_))))
                                             (let ((_%tl252001252035%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e251999252030%_)))
                                                   (_%hd252000252033%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e251999252030%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl252001252035%_))
                                                   (let ((_%e252002252038%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl252001252035%_))))
                                                     (let ((_%tl252004252043%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e252002252038%_)))
                                                           (_%hd252003252041%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e252002252038%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl252004252043%_))
                                                           (_%__kont257111257112%_
                                                            _%hd252003252041%_
                                                            _%hd252000252033%_
                                                            _%hd251908252404%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g251899252009%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g251899252009%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g251899252009%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl251909252406%_))
                                       (let ((_%e251999252030%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl251909252406%_))))
                                         (let ((_%tl252001252035%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e251999252030%_)))
                                               (_%hd252000252033%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e251999252030%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl252001252035%_))
                                               (let ((_%e252002252038%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl252001252035%_))))
                                                 (let ((_%tl252004252043%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e252002252038%_)))
                                                       (_%hd252003252041%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e252002252038%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl252004252043%_))
                                                       (_%__kont257111257112%_
                                                        _%hd252003252041%_
                                                        _%hd252000252033%_
                                                        _%hd251908252404%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g251899252009%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g251899252009%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g251899252009%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl251909252406%_))
                                   (let ((_%e251999252030%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl251909252406%_))))
                                     (let ((_%tl252001252035%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e251999252030%_)))
                                           (_%hd252000252033%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e251999252030%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl252001252035%_))
                                           (let ((_%e252002252038%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl252001252035%_))))
                                             (let ((_%tl252004252043%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e252002252038%_)))
                                                   (_%hd252003252041%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e252002252038%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl252004252043%_))
                                                   (_%__kont257111257112%_
                                                    _%hd252003252041%_
                                                    _%hd252000252033%_
                                                    _%hd251908252404%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g251899252009%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g251899252009%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g251899252009%_))))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl251909252406%_))
                           (let ((_%e251999252030%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl251909252406%_))))
                             (let ((_%tl252001252035%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e251999252030%_)))
                                   (_%hd252000252033%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e251999252030%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl252001252035%_))
                                   (let ((_%e252002252038%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl252001252035%_))))
                                     (let ((_%tl252004252043%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e252002252038%_)))
                                           (_%hd252003252041%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e252002252038%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl252004252043%_))
                                           (_%__kont257111257112%_
                                            _%hd252003252041%_
                                            _%hd252000252033%_
                                            _%hd251908252404%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g251899252009%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g251899252009%_)))))
                           (let ()
                             (declare (not safe))
                             (_%g251899252009%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%tl251909252406%_))
                   (let ((_%e251999252030%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl251909252406%_))))
                     (let ((_%tl252001252035%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e251999252030%_)))
                           (_%hd252000252033%_
                            (let ()
                              (declare (not safe))
                              (##car _%e251999252030%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl252001252035%_))
                           (let ((_%e252002252038%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl252001252035%_))))
                             (let ((_%tl252004252043%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e252002252038%_)))
                                   (_%hd252003252041%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e252002252038%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl252004252043%_))
                                   (_%__kont257111257112%_
                                    _%hd252003252041%_
                                    _%hd252000252033%_
                                    _%hd251908252404%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g251899252009%_)))))
                           (let () (declare (not safe)) (_%g251899252009%_)))))
                   (let () (declare (not safe)) (_%g251899252009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl251909252406%_))
                                                       (let ((_%e251999252030%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl251909252406%_))))
                 (let ((_%tl252001252035%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e251999252030%_)))
                       (_%hd252000252033%_
                        (let ()
                          (declare (not safe))
                          (##car _%e251999252030%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl252001252035%_))
                       (let ((_%e252002252038%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl252001252035%_))))
                         (let ((_%tl252004252043%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e252002252038%_)))
                               (_%hd252003252041%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e252002252038%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl252004252043%_))
                               (_%__kont257111257112%_
                                _%hd252003252041%_
                                _%hd252000252033%_
                                _%hd251908252404%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g251899252009%_)))))
                       (let () (declare (not safe)) (_%g251899252009%_)))))
               (let () (declare (not safe)) (_%g251899252009%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl251909252406%_))
                                               (let ((_%e251999252030%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl251909252406%_))))
                                                 (let ((_%tl252001252035%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e251999252030%_)))
                                                       (_%hd252000252033%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e251999252030%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl252001252035%_))
                                                       (let ((_%e252002252038%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl252001252035%_))))
                 (let ((_%tl252004252043%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e252002252038%_)))
                       (_%hd252003252041%_
                        (let ()
                          (declare (not safe))
                          (##car _%e252002252038%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl252004252043%_))
                       (_%__kont257111257112%_
                        _%hd252003252041%_
                        _%hd252000252033%_
                        _%hd251908252404%_)
                       (let () (declare (not safe)) (_%g251899252009%_)))))
               (let () (declare (not safe)) (_%g251899252009%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g251899252009%_))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl251909252406%_))
                                       (let ((_%e251999252030%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl251909252406%_))))
                                         (let ((_%tl252001252035%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e251999252030%_)))
                                               (_%hd252000252033%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e251999252030%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl252001252035%_))
                                               (let ((_%e252002252038%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl252001252035%_))))
                                                 (let ((_%tl252004252043%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e252002252038%_)))
                                                       (_%hd252003252041%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e252002252038%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl252004252043%_))
                                                       (_%__kont257111257112%_
                                                        _%hd252003252041%_
                                                        _%hd252000252033%_
                                                        _%hd251908252404%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g251899252009%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g251899252009%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g251899252009%_))))))
                           (let () (declare (not safe)) (_%g251899252009%_)))))
                   (let () (declare (not safe)) (_%g251899252009%_)))))))))
    (define gxc#check-contract-violation!
      (lambda (_%stx251761%_ _%expr251762%_)
        (let* ((_%__stx257339257340%_ _%expr251762%_)
               (_%g251765251795%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx257339257340%_)))))
          (let ((_%__kont257341257342%_
                 (lambda (_%g251767251863%_
                          _%g251768251864%_
                          _%g251769251865%_)
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"contract violation"
                      _%stx251761%_
                      _%g251769251865%_
                      _%g251768251864%_
                      _%g251767251863%_))))
                (_%__kont257343257344%_ (lambda () _%expr251762%_)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx257339257340%_))
                (let ((_%e251770251807%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx257339257340%_))))
                  (let ((_%tl251772251812%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e251770251807%_)))
                        (_%hd251771251810%_
                         (let ()
                           (declare (not safe))
                           (##car _%e251770251807%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd251771251810%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq?
                               '%#begin-annotation
                               _%hd251771251810%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl251772251812%_))
                                (let ((_%e251773251815%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl251772251812%_))))
                                  (let ((_%tl251775251820%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e251773251815%_)))
                                        (_%hd251774251818%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e251773251815%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd251774251818%_))
                                        (let ((_%e251776251823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd251774251818%_))))
                                          (let ((_%tl251778251828%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e251776251823%_)))
                                                (_%hd251777251826%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e251776251823%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd251777251826%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '@contract-violation
                                                       _%hd251777251826%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl251778251828%_))
                                                        (let ((_%e251779251831%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl251778251828%_))))
                  (let ((_%tl251781251836%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e251779251831%_)))
                        (_%hd251780251834%_
                         (let ()
                           (declare (not safe))
                           (##car _%e251779251831%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl251781251836%_))
                        (let ((_%e251782251839%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl251781251836%_))))
                          (let ((_%tl251784251844%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e251782251839%_)))
                                (_%hd251783251842%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e251782251839%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl251784251844%_))
                                (let ((_%e251785251847%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl251784251844%_))))
                                  (let ((_%tl251787251852%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e251785251847%_)))
                                        (_%hd251786251850%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e251785251847%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl251787251852%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl251775251820%_))
                                            (let ((_%e251788251855%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl251775251820%_))))
                                              (let ((_%tl251790251860%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e251788251855%_)))
                                                    (_%hd251789251858%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e251788251855%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl251790251860%_))
                                                    (_%__kont257341257342%_
                                                     _%hd251786251850%_
                                                     _%hd251783251842%_
                                                     _%hd251780251834%_)
                                                    (_%__kont257343257344%_))))
                                            (_%__kont257343257344%_))
                                        (_%__kont257343257344%_))))
                                (_%__kont257343257344%_))))
                        (_%__kont257343257344%_))))
                (_%__kont257343257344%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont257343257344%_))
                                                (_%__kont257343257344%_))))
                                        (_%__kont257343257344%_))))
                                (_%__kont257343257344%_))
                            (_%__kont257343257344%_))
                        (_%__kont257343257344%_))))
                (_%__kont257343257344%_))))))))
