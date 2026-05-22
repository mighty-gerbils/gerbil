(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1779435591)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp257412 (list gxc#::basic-xform::t))
            (__tmp257411 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp257412
         '()
         __tmp257411
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args256509%_
        (apply make-instance gxc#::optimize-call::t _%$args256509%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp257413
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
        (__make-atomic-promise __tmp257413)))
    (define gxc#apply-optimize-call
      (lambda (_%stx256501%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self256504%_
                (let ((__obj257403
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj257403))
               (__tmp257414
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self256504%_ _%stx256501%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp257414
           gxc#current-compile-method
           _%self256504%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp257416 (list gxc#::void::t))
            (__tmp257415 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp257416
         '()
         __tmp257415
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args256498%_
        (apply make-instance gxc#::check-return-type::t _%$args256498%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp257417
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
        (__make-atomic-promise __tmp257417)))
    (define gxc#apply-check-return-type
      (lambda (_%stx256490%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self256493%_
                (let ((__obj257405
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj257405))
               (__tmp257418
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self256493%_ _%stx256490%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp257418
           gxc#current-compile-method
           _%self256493%_))))
    (define gxc#optimize-call%
      (lambda (_%self255638%_ _%stx255639%_)
        (let* ((_%__stx256650256651%_ _%stx255639%_)
               (_%g255643255725%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx256650256651%_)))))
          (let ((_%__kont256652256653%_
                 (lambda (_%g255645256286%_ _%g255646256287%_)
                   (let* ((_%rator-id256307%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g255646256287%_)))
                          (_%rator-type256309%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id256307%_))))
                     (if (or (not _%rator-type256309%_)
                             (eq? (##structure-ref
                                   _%rator-type256309%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self255638%_ _%stx255639%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type256309%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp257419
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type256309%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id256307%_
                                  '" => "
                                  _%rator-type256309%_
                                  '" "
                                  __tmp257419))
                               (let* ((_%optimized256324%_
                                       (let ((__method257406
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type256309%_
                                                 'optimize-call))))
                                         (if __method257406
                                             (let ((__tmp257420
                                                    (let ((__tmp257421
                                                           (lambda (_%g256316256319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g256317256321%_)
                     (cons _%g256316256319%_ _%g256317256321%_))))
              (declare (not safe))
              (foldr__0 __tmp257421 '() _%g255645256286%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method257406
                                                _%rator-type256309%_
                                                _%self255638%_
                                                _%stx255639%_
                                                __tmp257420))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type256309%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx256598256599%_
                                       _%optimized256324%_)
                                      (_%g256327256356%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx256598256599%_)))))
                                 (let ((_%__kont256600256601%_
                                        (lambda (_%g256329256422%_
                                                 _%g256330256423%_)
                                          (let* ((_%optimized-rator-id256450%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g256330256423%_)))
                                                 (_%rator-type256455%_
                                                  (let ((_%$e256452%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id256450%_))))
                                                    (if _%$e256452%_
                                                        _%$e256452%_
                                                        _%rator-type256309%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type256455%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id256450%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type256455%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type256455%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized256324%_
                                                (let ((__tmp257422
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g256330256423%_ '()))
                           (let ((__tmp257423
                                  (lambda (_%g256463256466%_ _%g256464256468%_)
                                    (cons _%g256463256466%_
                                          _%g256464256468%_))))
                             (declare (not safe))
                             (foldr__0 __tmp257423 '() _%g256329256422%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp257422
                                                   _%stx255639%_))))))
                                       (_%__kont256604256605%_
                                        (lambda () _%optimized256324%_)))
                                   (let ((_%__match256647256648%_
                                          (lambda (_%e256331256368%_
                                                   _%hd256332256371%_
                                                   _%tl256333256373%_
                                                   _%e256334256376%_
                                                   _%hd256335256379%_
                                                   _%tl256336256381%_
                                                   _%e256337256384%_
                                                   _%hd256338256387%_
                                                   _%tl256339256389%_
                                                   _%e256340256392%_
                                                   _%hd256341256395%_
                                                   _%tl256342256397%_
                                                   _%__splice256602256603%_
                                                   _%target256343256400%_
                                                   _%tl256345256402%_)
                                            (letrec ((_%loop256346256405%_
                                                      (lambda (_%hd256344256408%_
                                                               _%arg256350256410%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd256344256408%_))
                                                            (let ((_%e256347256412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd256344256408%_))))
                      (let ((_%lp-tl256349256417%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e256347256412%_)))
                            (_%lp-hd256348256415%_
                             (let ()
                               (declare (not safe))
                               (##car _%e256347256412%_))))
                        (_%loop256346256405%_
                         _%lp-tl256349256417%_
                         (cons _%lp-hd256348256415%_ _%arg256350256410%_))))
                    (let ((_%arg256351256420%_ (reverse _%arg256350256410%_)))
                      (_%__kont256600256601%_
                       _%arg256351256420%_
                       _%hd256341256395%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop256346256405%_
                                               _%target256343256400%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx256598256599%_))
                                         (let ((_%e256331256368%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx256598256599%_))))
                                           (let ((_%tl256333256373%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e256331256368%_)))
                                                 (_%hd256332256371%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e256331256368%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd256332256371%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd256332256371%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl256333256373%_))
                                                         (let ((_%e256334256376%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl256333256373%_))))
                   (let ((_%tl256336256381%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e256334256376%_)))
                         (_%hd256335256379%_
                          (let ()
                            (declare (not safe))
                            (##car _%e256334256376%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd256335256379%_))
                         (let ((_%e256337256384%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd256335256379%_))))
                           (let ((_%tl256339256389%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e256337256384%_)))
                                 (_%hd256338256387%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e256337256384%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd256338256387%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd256338256387%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl256339256389%_))
                                         (let ((_%e256340256392%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl256339256389%_))))
                                           (let ((_%tl256342256397%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e256340256392%_)))
                                                 (_%hd256341256395%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e256340256392%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl256342256397%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl256336256381%_))
                                                     (let ((_%__splice256602256603%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl256336256381%_
                                                               '0))))
                                                       (let ((_%tl256345256402%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice256602256603%_ '1)))
                     (_%target256343256400%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice256602256603%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl256345256402%_))
                     (_%__match256647256648%_
                      _%e256331256368%_
                      _%hd256332256371%_
                      _%tl256333256373%_
                      _%e256334256376%_
                      _%hd256335256379%_
                      _%tl256336256381%_
                      _%e256337256384%_
                      _%hd256338256387%_
                      _%tl256339256389%_
                      _%e256340256392%_
                      _%hd256341256395%_
                      _%tl256342256397%_
                      _%__splice256602256603%_
                      _%target256343256400%_
                      _%tl256345256402%_)
                     (_%__kont256604256605%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont256604256605%_))
                                                 (_%__kont256604256605%_))))
                                         (_%__kont256604256605%_))
                                     (_%__kont256604256605%_))
                                 (_%__kont256604256605%_))))
                         (_%__kont256604256605%_))))
                 (_%__kont256604256605%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont256604256605%_))
                                                 (_%__kont256604256605%_))))
                                         (_%__kont256604256605%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type256309%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type256309%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp257424
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g255646256287%_
                                                                '()))
                                                    (map (lambda (_%g256474256476%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self255638%_
                                                              _%g256474256476%_)))
                                                         (let ((__tmp257425
                                                                (lambda (_%g256478256481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g256479256483%_)
                          (cons _%g256478256481%_ _%g256479256483%_))))
                   (declare (not safe))
                   (foldr__0 __tmp257425 '() _%g255645256286%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp257424
                                    _%stx255639%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx255639%_
                                    _%rator-type256309%_))))))))
                (_%__kont256656256657%_
                 (lambda (_%g255668255894%_
                          _%g255669255895%_
                          _%g255670255896%_)
                   (let _%loop256014%_ ((_%rest-arg256016%_
                                         (let ((__tmp257432
                                                (lambda (_%g256212256215%_
                                                         _%g256213256217%_)
                                                  (cons _%g256212256215%_
                                                        _%g256213256217%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp257432
                                            '()
                                            _%g255670255896%_)))
                                        (_%rest-rand256017%_
                                         (let ((__tmp257433
                                                (lambda (_%g256219256222%_
                                                         _%g256220256224%_)
                                                  (cons _%g256219256222%_
                                                        _%g256220256224%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp257433
                                            '()
                                            _%g255668255894%_)))
                                        (_%bind256018%_ '())
                                        (_%subst256019%_ '()))
                     (let* ((_%rest-arg256020256028%_ _%rest-arg256016%_)
                            (_%else256022256041%_
                             (lambda ()
                               (let* ((_%body256036%_
                                       (if (null? _%subst256019%_)
                                           _%g255669255895%_
                                           (let ((__tmp257426
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-inline-subst__%
                                                     '#f
                                                     _%subst256019%_
                                                     _%g255669255895%_))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp257426
                                              _%stx255639%_))))
                                      (_%expr256038%_
                                       (let ((__tmp257427
                                              (cons '%#let-values
                                                    (cons _%bind256018%_
                                                          (cons _%body256036%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp257427
                                          _%stx255639%_))))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-refine-type-info _%expr256038%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self255638%_
                                    _%expr256038%_)))))
                            (_%K256024256201%_
                             (lambda (_%rest-arg256044%_ _%arg-id256045%_)
                               (let* ((_%rest-rand256046256054%_
                                       _%rest-rand256017%_)
                                      (_%else256048256076%_
                                       (lambda ()
                                         (let ((__tmp257430
                                                (let ((__tmp257431
                                                       (lambda (_%g256061256064%_
                                                                _%g256062256066%_)
                                                         (cons _%g256061256064%_
                                                               _%g256062256066%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp257431
                                                   '()
                                                   _%g255670255896%_)))
                                               (__tmp257428
                                                (let ((__tmp257429
                                                       (lambda (_%g256068256071%_
                                                                _%g256069256073%_)
                                                         (cons _%g256068256071%_
                                                               _%g256069256073%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp257429
                                                   '()
                                                   _%g255668255894%_))))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"inline lambda arity mismatch"
                                            _%stx255639%_
                                            __tmp257430
                                            __tmp257428))))
                                      (_%K256050256189%_
                                       (lambda (_%rest-rand256079%_
                                                _%rand256080%_)
                                         (let* ((_%__stx256552256553%_
                                                 _%rand256080%_)
                                                (_%g256084256104%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx256552256553%_)))))
                                           (let ((_%__kont256554256555%_
                                                  (lambda (_%g256086256175%_)
                                                    (_%loop256014%_
                                                     _%rest-arg256044%_
                                                     _%rest-rand256079%_
                                                     _%bind256018%_
                                                     (cons (cons _%arg-id256045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand256080%_)
                   _%subst256019%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont256556256557%_
                                                  (lambda (_%g256093256132%_)
                                                    (_%loop256014%_
                                                     _%rest-arg256044%_
                                                     _%rest-rand256079%_
                                                     _%bind256018%_
                                                     (cons (cons _%arg-id256045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand256080%_)
                   _%subst256019%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont256558256559%_
                                                  (lambda ()
                                                    (_%loop256014%_
                                                     _%rest-arg256044%_
                                                     _%rest-rand256079%_
                                                     (cons (cons (cons _%arg-id256045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _%rand256080%_ '()))
                   _%bind256018%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%subst256019%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx256552256553%_))
                                                 (let ((_%e256087256159%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx256552256553%_))))
                                                   (let ((_%tl256089256164%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e256087256159%_)))
                                                         (_%hd256088256162%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e256087256159%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd256088256162%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#quote _%hd256088256162%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl256089256164%_))
                         (let ((_%e256090256167%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl256089256164%_))))
                           (let ((_%tl256092256172%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e256090256167%_)))
                                 (_%hd256091256170%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e256090256167%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl256092256172%_))
                                 (_%__kont256554256555%_ _%hd256091256170%_)
                                 (_%__kont256558256559%_))))
                         (_%__kont256558256559%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#ref _%hd256088256162%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl256089256164%_))
                             (let ((_%e256097256124%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl256089256164%_))))
                               (let ((_%tl256099256129%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e256097256124%_)))
                                     (_%hd256098256127%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e256097256124%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl256099256129%_))
                                     (_%__kont256556256557%_
                                      _%hd256098256127%_)
                                     (_%__kont256558256559%_))))
                             (_%__kont256558256559%_))
                         (_%__kont256558256559%_)))
                 (_%__kont256558256559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont256558256559%_)))))))
                                 (if (pair? _%rest-rand256046256054%_)
                                     (let ((_%hd256051256192%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest-rand256046256054%_)))
                                           (_%tl256052256194%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest-rand256046256054%_))))
                                       (let* ((_%rand256197%_
                                               _%hd256051256192%_)
                                              (_%rest-rand256199%_
                                               _%tl256052256194%_))
                                         (_%K256050256189%_
                                          _%rest-rand256199%_
                                          _%rand256197%_)))
                                     (_%else256048256076%_))))))
                       (if (pair? _%rest-arg256020256028%_)
                           (let ((_%hd256025256204%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest-arg256020256028%_)))
                                 (_%tl256026256206%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest-arg256020256028%_))))
                             (let* ((_%arg-id256209%_ _%hd256025256204%_)
                                    (_%rest-arg256211%_ _%tl256026256206%_))
                               (_%K256024256201%_
                                _%rest-arg256211%_
                                _%arg-id256209%_)))
                           (_%else256022256041%_))))))
                (_%__kont256662256663%_
                 (lambda (_%g255704255768%_ _%g255705255769%_)
                   (let ((_%rator-type255786%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g255705255769%_))))
                     (if (and _%rator-type255786%_
                              (eq? (##structure-ref
                                    _%rator-type255786%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type255786%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type255786%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type255786%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp257434
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self255638%_
                                               _%g255705255769%_))
                                            (map (lambda (_%g255788255790%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self255638%_
                                                      _%g255788255790%_)))
                                                 (let ((__tmp257435
                                                        (lambda (_%g255792255795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g255793255797%_)
                  (cons _%g255792255795%_ _%g255793255797%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp257435
                                                    '()
                                                    _%g255704255768%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp257434 _%stx255639%_))
                         (if (or (not _%rator-type255786%_)
                                 (let ((__tmp257436
                                        (##structure-ref
                                         _%rator-type255786%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp257436 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self255638%_ _%stx255639%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx255639%_
                                _%rator-type255786%_))))))))
            (let* ((_%__match256759256760%_
                    (lambda (_%e255706255730%_
                             _%hd255707255733%_
                             _%tl255708255735%_
                             _%e255709255738%_
                             _%hd255710255741%_
                             _%tl255711255743%_
                             _%__splice256664256665%_
                             _%target255712255746%_
                             _%tl255714255748%_)
                      (letrec ((_%loop255715255751%_
                                (lambda (_%hd255713255754%_
                                         _%rand255719255756%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd255713255754%_))
                                      (let ((_%e255716255758%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd255713255754%_))))
                                        (let ((_%lp-tl255718255763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e255716255758%_)))
                                              (_%lp-hd255717255761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e255716255758%_))))
                                          (_%loop255715255751%_
                                           _%lp-tl255718255763%_
                                           (cons _%lp-hd255717255761%_
                                                 _%rand255719255756%_))))
                                      (let ((_%rand255720255766%_
                                             (reverse _%rand255719255756%_)))
                                        (_%__kont256662256663%_
                                         _%rand255720255766%_
                                         _%hd255710255741%_))))))
                        (_%loop255715255751%_ _%target255712255746%_ '()))))
                   (_%__match256751256752%_
                    (lambda (_%e255706255730%_
                             _%hd255707255733%_
                             _%tl255708255735%_
                             _%e255709255738%_
                             _%hd255710255741%_
                             _%tl255711255743%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl255711255743%_))
                          (let ((_%__splice256664256665%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl255711255743%_
                                    '0))))
                            (let ((_%tl255714255748%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice256664256665%_
                                      '1)))
                                  (_%target255712255746%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice256664256665%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl255714255748%_))
                                  (_%__match256759256760%_
                                   _%e255706255730%_
                                   _%hd255707255733%_
                                   _%tl255708255735%_
                                   _%e255709255738%_
                                   _%hd255710255741%_
                                   _%tl255711255743%_
                                   _%__splice256664256665%_
                                   _%target255712255746%_
                                   _%tl255714255748%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g255643255725%_)))))
                          (let () (declare (not safe)) (_%g255643255725%_)))))
                   (_%__match256739256740%_
                    (lambda (_%e255671255810%_
                             _%hd255672255813%_
                             _%tl255673255815%_
                             _%e255674255818%_
                             _%hd255675255821%_
                             _%tl255676255823%_
                             _%e255677255826%_
                             _%hd255678255829%_
                             _%tl255679255831%_
                             _%e255680255834%_
                             _%hd255681255837%_
                             _%tl255682255839%_
                             _%__splice256658256659%_
                             _%target255683255842%_
                             _%tl255685255844%_)
                      (letrec ((_%loop255686255847%_
                                (lambda (_%hd255684255850%_
                                         _%arg255690255852%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd255684255850%_))
                                      (let ((_%e255687255854%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd255684255850%_))))
                                        (let ((_%lp-tl255689255859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e255687255854%_)))
                                              (_%lp-hd255688255857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e255687255854%_))))
                                          (_%loop255686255847%_
                                           _%lp-tl255689255859%_
                                           (cons _%lp-hd255688255857%_
                                                 _%arg255690255852%_))))
                                      (let ((_%arg255691255862%_
                                             (reverse _%arg255690255852%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl255682255839%_))
                                            (let ((_%e255692255864%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl255682255839%_))))
                                              (let ((_%tl255694255869%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e255692255864%_)))
                                                    (_%hd255693255867%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e255692255864%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl255694255869%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl255676255823%_))
                                                        (let ((_%__splice256660256661%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl255676255823%_
                          '0))))
                  (let ((_%tl255697255874%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice256660256661%_ '1)))
                        (_%target255695255872%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice256660256661%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl255697255874%_))
                        (letrec ((_%loop255698255877%_
                                  (lambda (_%hd255696255880%_
                                           _%rand255702255882%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd255696255880%_))
                                        (let ((_%e255699255884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd255696255880%_))))
                                          (let ((_%lp-tl255701255889%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e255699255884%_)))
                                                (_%lp-hd255700255887%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e255699255884%_))))
                                            (_%loop255698255877%_
                                             _%lp-tl255701255889%_
                                             (cons _%lp-hd255700255887%_
                                                   _%rand255702255882%_))))
                                        (let ((_%rand255703255892%_
                                               (reverse _%rand255702255882%_)))
                                          (let ((_%g255668255894%_
                                                 _%rand255703255892%_)
                                                (_%g255669255895%_
                                                 _%hd255693255867%_)
                                                (_%g255670255896%_
                                                 _%arg255691255862%_))
                                            (if (and (= (length (let ((__tmp257437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g255922255925%_ _%g255923255927%_)
                                 (cons _%g255922255925%_ _%g255923255927%_))))
                          (declare (not safe))
                          (foldr__0 __tmp257437 '() _%g255670255896%_)))
                (length (let ((__tmp257438
                               (lambda (_%g255929255932%_ _%g255930255934%_)
                                 (cons _%g255929255932%_ _%g255930255934%_))))
                          (declare (not safe))
                          (foldr__0 __tmp257438 '() _%g255668255894%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp257441
                                                            (lambda (_%id255937%_)
                                                              (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gxc#mutable-binding? _%id255937%_)))))
                   (__tmp257439
                    (let ((__tmp257440
                           (lambda (_%g255938255941%_ _%g255939255943%_)
                             (cons _%g255938255941%_ _%g255939255943%_))))
                      (declare (not safe))
                      (foldr__0 __tmp257440 '() _%g255670255896%_))))
               (declare (not safe))
               (andmap__0 __tmp257441 __tmp257439))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp257444
                                                            (lambda (_%rand255946%_)
                                                              (let* ((_%__stx256526256527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%rand255946%_)
                             (_%g255949255962%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx256526256527%_)))))
                        (let ((_%__kont256528256529%_
                               (lambda (_%g255951255990%_)
                                 (not (let ()
                                        (declare (not safe))
                                        (gxc#mutable-binding?
                                         _%g255951255990%_)))))
                              (_%__kont256530256531%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx256526256527%_))
                              (let ((_%e255952255974%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx256526256527%_))))
                                (let ((_%tl255954255979%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e255952255974%_)))
                                      (_%hd255953255977%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e255952255974%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd255953255977%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd255953255977%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl255954255979%_))
                                              (let ((_%e255955255982%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl255954255979%_))))
                                                (let ((_%tl255957255987%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e255955255982%_)))
                                                      (_%hd255956255985%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e255955255982%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl255957255987%_))
                                                      (_%__kont256528256529%_
                                                       _%hd255956255985%_)
                                                      (_%__kont256530256531%_))))
                                              (_%__kont256530256531%_))
                                          (_%__kont256530256531%_))
                                      (_%__kont256530256531%_))))
                              (_%__kont256530256531%_))))))
                   (__tmp257442
                    (let ((__tmp257443
                           (lambda (_%g256006256009%_ _%g256007256011%_)
                             (cons _%g256006256009%_ _%g256007256011%_))))
                      (declare (not safe))
                      (foldr__0 __tmp257443 '() _%g255668255894%_))))
               (declare (not safe))
               (andmap__0 __tmp257444 __tmp257442)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont256656256657%_
                                                 _%g255668255894%_
                                                 _%g255669255895%_
                                                 _%g255670255896%_)
                                                (_%__match256759256760%_
                                                 _%e255671255810%_
                                                 _%hd255672255813%_
                                                 _%tl255673255815%_
                                                 _%e255674255818%_
                                                 _%hd255675255821%_
                                                 _%tl255676255823%_
                                                 _%__splice256660256661%_
                                                 _%target255695255872%_
                                                 _%tl255697255874%_))))))))
                          (_%loop255698255877%_ _%target255695255872%_ '()))
                        (let () (declare (not safe)) (_%g255643255725%_)))))
                (let () (declare (not safe)) (_%g255643255725%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match256751256752%_
                                                     _%e255671255810%_
                                                     _%hd255672255813%_
                                                     _%tl255673255815%_
                                                     _%e255674255818%_
                                                     _%hd255675255821%_
                                                     _%tl255676255823%_))))
                                            (_%__match256751256752%_
                                             _%e255671255810%_
                                             _%hd255672255813%_
                                             _%tl255673255815%_
                                             _%e255674255818%_
                                             _%hd255675255821%_
                                             _%tl255676255823%_)))))))
                        (_%loop255686255847%_ _%target255683255842%_ '()))))
                   (_%__match256703256704%_
                    (lambda (_%e255647256232%_
                             _%hd255648256235%_
                             _%tl255649256237%_
                             _%e255650256240%_
                             _%hd255651256243%_
                             _%tl255652256245%_
                             _%e255653256248%_
                             _%hd255654256251%_
                             _%tl255655256253%_
                             _%e255656256256%_
                             _%hd255657256259%_
                             _%tl255658256261%_
                             _%__splice256654256655%_
                             _%target255659256264%_
                             _%tl255661256266%_)
                      (letrec ((_%loop255662256269%_
                                (lambda (_%hd255660256272%_
                                         _%rand255666256274%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd255660256272%_))
                                      (let ((_%e255663256276%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd255660256272%_))))
                                        (let ((_%lp-tl255665256281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e255663256276%_)))
                                              (_%lp-hd255664256279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e255663256276%_))))
                                          (_%loop255662256269%_
                                           _%lp-tl255665256281%_
                                           (cons _%lp-hd255664256279%_
                                                 _%rand255666256274%_))))
                                      (let ((_%rand255667256284%_
                                             (reverse _%rand255666256274%_)))
                                        (_%__kont256652256653%_
                                         _%rand255667256284%_
                                         _%hd255657256259%_))))))
                        (_%loop255662256269%_ _%target255659256264%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx256650256651%_))
                  (let ((_%e255647256232%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx256650256651%_))))
                    (let ((_%tl255649256237%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e255647256232%_)))
                          (_%hd255648256235%_
                           (let ()
                             (declare (not safe))
                             (##car _%e255647256232%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl255649256237%_))
                          (let ((_%e255650256240%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl255649256237%_))))
                            (let ((_%tl255652256245%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e255650256240%_)))
                                  (_%hd255651256243%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e255650256240%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd255651256243%_))
                                  (let ((_%e255653256248%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd255651256243%_))))
                                    (let ((_%tl255655256253%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e255653256248%_)))
                                          (_%hd255654256251%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e255653256248%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd255654256251%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd255654256251%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl255655256253%_))
                                                  (let ((_%e255656256256%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl255655256253%_))))
                                                    (let ((_%tl255658256261%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e255656256256%_)))
                                                          (_%hd255657256259%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e255656256256%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl255658256261%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl255652256245%_))
                      (let ((_%__splice256654256655%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl255652256245%_
                                '0))))
                        (let ((_%tl255661256266%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice256654256655%_ '1)))
                              (_%target255659256264%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice256654256655%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl255661256266%_))
                              (_%__match256703256704%_
                               _%e255647256232%_
                               _%hd255648256235%_
                               _%tl255649256237%_
                               _%e255650256240%_
                               _%hd255651256243%_
                               _%tl255652256245%_
                               _%e255653256248%_
                               _%hd255654256251%_
                               _%tl255655256253%_
                               _%e255656256256%_
                               _%hd255657256259%_
                               _%tl255658256261%_
                               _%__splice256654256655%_
                               _%target255659256264%_
                               _%tl255661256266%_)
                              (let ()
                                (declare (not safe))
                                (_%g255643255725%_)))))
                      (let () (declare (not safe)) (_%g255643255725%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl255652256245%_))
                      (let ((_%__splice256664256665%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl255652256245%_
                                '0))))
                        (let ((_%tl255714255748%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice256664256665%_ '1)))
                              (_%target255712255746%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice256664256665%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl255714255748%_))
                              (_%__match256759256760%_
                               _%e255647256232%_
                               _%hd255648256235%_
                               _%tl255649256237%_
                               _%e255650256240%_
                               _%hd255651256243%_
                               _%tl255652256245%_
                               _%__splice256664256665%_
                               _%target255712255746%_
                               _%tl255714255748%_)
                              (let ()
                                (declare (not safe))
                                (_%g255643255725%_)))))
                      (let () (declare (not safe)) (_%g255643255725%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl255652256245%_))
                                                      (let ((_%__splice256664256665%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl255652256245%_
                        '0))))
                (let ((_%tl255714255748%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice256664256665%_ '1)))
                      (_%target255712255746%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice256664256665%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl255714255748%_))
                      (_%__match256759256760%_
                       _%e255647256232%_
                       _%hd255648256235%_
                       _%tl255649256237%_
                       _%e255650256240%_
                       _%hd255651256243%_
                       _%tl255652256245%_
                       _%__splice256664256665%_
                       _%target255712255746%_
                       _%tl255714255748%_)
                      (let () (declare (not safe)) (_%g255643255725%_)))))
              (let () (declare (not safe)) (_%g255643255725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#lambda
                                                     _%hd255654256251%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl255655256253%_))
                                                      (let ((_%e255680255834%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl255655256253%_))))
                (let ((_%tl255682255839%_
                       (let () (declare (not safe)) (##cdr _%e255680255834%_)))
                      (_%hd255681255837%_
                       (let ()
                         (declare (not safe))
                         (##car _%e255680255834%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%hd255681255837%_))
                      (let ((_%__splice256658256659%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%hd255681255837%_
                                '0))))
                        (let ((_%tl255685255844%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice256658256659%_ '1)))
                              (_%target255683255842%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice256658256659%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl255685255844%_))
                              (_%__match256739256740%_
                               _%e255647256232%_
                               _%hd255648256235%_
                               _%tl255649256237%_
                               _%e255650256240%_
                               _%hd255651256243%_
                               _%tl255652256245%_
                               _%e255653256248%_
                               _%hd255654256251%_
                               _%tl255655256253%_
                               _%e255680255834%_
                               _%hd255681255837%_
                               _%tl255682255839%_
                               _%__splice256658256659%_
                               _%target255683255842%_
                               _%tl255685255844%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _%tl255652256245%_))
                                  (let ((_%__splice256664256665%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice->vector
                                            _%tl255652256245%_
                                            '0))))
                                    (let ((_%tl255714255748%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice256664256665%_
                                              '1)))
                                          (_%target255712255746%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice256664256665%_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl255714255748%_))
                                          (_%__match256759256760%_
                                           _%e255647256232%_
                                           _%hd255648256235%_
                                           _%tl255649256237%_
                                           _%e255650256240%_
                                           _%hd255651256243%_
                                           _%tl255652256245%_
                                           _%__splice256664256665%_
                                           _%target255712255746%_
                                           _%tl255714255748%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g255643255725%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g255643255725%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl255652256245%_))
                          (let ((_%__splice256664256665%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl255652256245%_
                                    '0))))
                            (let ((_%tl255714255748%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice256664256665%_
                                      '1)))
                                  (_%target255712255746%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice256664256665%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl255714255748%_))
                                  (_%__match256759256760%_
                                   _%e255647256232%_
                                   _%hd255648256235%_
                                   _%tl255649256237%_
                                   _%e255650256240%_
                                   _%hd255651256243%_
                                   _%tl255652256245%_
                                   _%__splice256664256665%_
                                   _%target255712255746%_
                                   _%tl255714255748%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g255643255725%_)))))
                          (let () (declare (not safe)) (_%g255643255725%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl255652256245%_))
                  (let ((_%__splice256664256665%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl255652256245%_
                            '0))))
                    (let ((_%tl255714255748%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice256664256665%_ '1)))
                          (_%target255712255746%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice256664256665%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl255714255748%_))
                          (_%__match256759256760%_
                           _%e255647256232%_
                           _%hd255648256235%_
                           _%tl255649256237%_
                           _%e255650256240%_
                           _%hd255651256243%_
                           _%tl255652256245%_
                           _%__splice256664256665%_
                           _%target255712255746%_
                           _%tl255714255748%_)
                          (let () (declare (not safe)) (_%g255643255725%_)))))
                  (let () (declare (not safe)) (_%g255643255725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl255652256245%_))
                                                      (let ((_%__splice256664256665%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl255652256245%_
                        '0))))
                (let ((_%tl255714255748%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice256664256665%_ '1)))
                      (_%target255712255746%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice256664256665%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl255714255748%_))
                      (_%__match256759256760%_
                       _%e255647256232%_
                       _%hd255648256235%_
                       _%tl255649256237%_
                       _%e255650256240%_
                       _%hd255651256243%_
                       _%tl255652256245%_
                       _%__splice256664256665%_
                       _%target255712255746%_
                       _%tl255714255748%_)
                      (let () (declare (not safe)) (_%g255643255725%_)))))
              (let () (declare (not safe)) (_%g255643255725%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl255652256245%_))
                                              (let ((_%__splice256664256665%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl255652256245%_
                                                        '0))))
                                                (let ((_%tl255714255748%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice256664256665%_
                                                          '1)))
                                                      (_%target255712255746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice256664256665%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl255714255748%_))
                                                      (_%__match256759256760%_
                                                       _%e255647256232%_
                                                       _%hd255648256235%_
                                                       _%tl255649256237%_
                                                       _%e255650256240%_
                                                       _%hd255651256243%_
                                                       _%tl255652256245%_
                                                       _%__splice256664256665%_
                                                       _%target255712255746%_
                                                       _%tl255714255748%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g255643255725%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g255643255725%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl255652256245%_))
                                      (let ((_%__splice256664256665%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl255652256245%_
                                                '0))))
                                        (let ((_%tl255714255748%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice256664256665%_
                                                  '1)))
                                              (_%target255712255746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice256664256665%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl255714255748%_))
                                              (_%__match256759256760%_
                                               _%e255647256232%_
                                               _%hd255648256235%_
                                               _%tl255649256237%_
                                               _%e255650256240%_
                                               _%hd255651256243%_
                                               _%tl255652256245%_
                                               _%__splice256664256665%_
                                               _%target255712255746%_
                                               _%tl255714255748%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g255643255725%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g255643255725%_))))))
                          (let () (declare (not safe)) (_%g255643255725%_)))))
                  (let () (declare (not safe)) (_%g255643255725%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self255600%_ _%ctx255601%_ _%stx255602%_ _%args255603%_)
        (let ((_%self255606%_ _%self255600%_))
          (if (let ((__method257407
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self255606%_ 'check-arguments))))
                (if __method257407
                    (let ()
                      (declare (not safe))
                      (__method257407
                       _%self255606%_
                       _%ctx255601%_
                       _%stx255602%_
                       _%args255603%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self255606%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature255616%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255606%_ '2 '#f '#f)))
                     (_%signature255618%_ _%signature255616%_)
                     (_%$e255628%_
                      (if _%signature255618%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature255618%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e255628%_
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%$e255628%_))
                        (let ((__tmp257445
                               (cons '%#call
                                     (cons (cons '%#ref
                                                 (cons _%$e255628%_ '()))
                                           (map (lambda (_%g255632255634%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx255601%_
                                                     _%g255632255634%_)))
                                                _%args255603%_)))))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp257445
                           _%stx255602%_
                           _%ctx255601%_))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx255601%_ _%stx255602%_)))
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx255601%_ _%stx255602%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx255601%_ _%stx255602%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass256511 __method-table256512)
        (let ((__check-arguments256513
               (let ((__tmp257446
                      (lambda ()
                        (let ((__method256514
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table256512
                                  'check-arguments
                                  '#f))))
                          (if __method256514
                              __method256514
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp257446))))
          (lambda (_%self255600%_ _%ctx255601%_ _%stx255602%_ _%args255603%_)
            (let ((_%self255606%_ _%self255600%_))
              (if ((force __check-arguments256513)
                   _%self255606%_
                   _%ctx255601%_
                   _%stx255602%_
                   _%args255603%_)
                  (let* ((_%signature255616%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self255606%_
                             '2
                             '#f
                             '#f)))
                         (_%signature255618%_ _%signature255616%_)
                         (_%$e255628%_
                          (if _%signature255618%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature255618%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e255628%_
                        (if (let ()
                              (declare (not safe))
                              (gxc#symbol-in-local-scope? _%$e255628%_))
                            (let ((__tmp257447
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%$e255628%_ '()))
                                               (map (lambda (_%g255632255634%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%ctx255601%_
                                                         _%g255632255634%_)))
                                                    _%args255603%_)))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp257447
                               _%stx255602%_
                               _%ctx255601%_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _%ctx255601%_ _%stx255602%_)))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx255601%_ _%stx255602%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx255601%_ _%stx255602%_))))))))
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
      (lambda (_%self255353%_ _%ctx255354%_ _%stx255355%_ _%args255356%_)
        (let* ((_%self255359%_ _%self255353%_)
               (_%signature255368255370%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255359%_ '2 '#f '#f))))
          (if _%signature255368255370%_
              (let* ((_%signature255372%_ _%signature255368255370%_)
                     (_%argument-types255373255375%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature255372%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types255373255375%_
                    (let* ((_%argument-types255377%_
                            _%argument-types255373255375%_)
                           (_%argument-types255382%_
                            (let ((__tmp257448
                                   (lambda (_%t255380%_)
                                     (if _%t255380%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx255355%_
                                            _%t255380%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp257448
                               _%argument-types255377%_))))
                      (let _%loop255384%_ ((_%rest-args255386%_ _%args255356%_)
                                           (_%rest-types255387%_
                                            _%argument-types255382%_)
                                           (_%result255388%_ '#t))
                        (let* ((_%rest-args255389255397%_ _%rest-args255386%_)
                               (_%else255391255405%_
                                (lambda () _%result255388%_))
                               (_%K255393255466%_
                                (lambda (_%rest-args255408%_ _%arg255409%_)
                                  (let* ((_%rest-types255410255421%_
                                          _%rest-types255387%_)
                                         (_%E255414255425%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types255410255421%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K255417255454%_
                                           (lambda (_%rest-types255451%_
                                                    _%type255452%_)
                                             (_%loop255384%_
                                              _%rest-args255408%_
                                              _%rest-types255451%_
                                              (if (gxc#check-expression-type!
                                                   _%stx255355%_
                                                   _%arg255409%_
                                                   _%type255452%_)
                                                  _%result255388%_
                                                  '#f))))
                                          (_%K255416255445%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx255355%_
                                                _%argument-types255382%_))))
                                          (_%K255415255435%_
                                           (lambda (_%tail-type255429%_)
                                             (if (let ((__tmp257449
                                                        (lambda (_%g255430255432%_)
                                                          (gxc#check-expression-type!
                                                           _%stx255355%_
                                                           _%g255430255432%_
                                                           _%tail-type255429%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp257449
                                                    _%rest-args255408%_))
                                                 _%result255388%_
                                                 '#f))))
                                      (let ((_%try-match255412255448%_
                                             (lambda ()
                                               (if (null? _%rest-types255410255421%_)
                                                   (_%K255416255445%_)
                                                   (let ((_%tail-type255438%_
                                                          _%rest-types255410255421%_))
                                                     (_%K255415255435%_
                                                      _%tail-type255438%_))))))
                                        (if (pair? _%rest-types255410255421%_)
                                            (let ((_%tl255419255459%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types255410255421%_)))
                                                  (_%hd255418255457%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types255410255421%_))))
                                              (let ((_%type255462%_
                                                     _%hd255418255457%_)
                                                    (_%rest-types255464%_
                                                     _%tl255419255459%_))
                                                (_%K255417255454%_
                                                 _%rest-types255464%_
                                                 _%type255462%_)))
                                            (_%try-match255412255448%_))))))))
                          (if (pair? _%rest-args255389255397%_)
                              (let ((_%hd255394255469%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args255389255397%_)))
                                    (_%tl255395255471%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args255389255397%_))))
                                (let* ((_%arg255474%_ _%hd255394255469%_)
                                       (_%rest-args255476%_
                                        _%tl255395255471%_))
                                  (_%K255393255466%_
                                   _%rest-args255476%_
                                   _%arg255474%_)))
                              (_%else255391255405%_)))))
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
      (lambda (_%self255156%_ _%ctx255157%_ _%stx255158%_ _%args255159%_)
        (let* ((_%self255162%_ _%self255156%_)
               (_%g255172255182%_
                (lambda (_%g255173255179%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g255173255179%_))))
               (_%g255171255228%_
                (lambda (_%g255173255185%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g255173255185%_))
                      (let ((_%e255175255187%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g255173255185%_))))
                        (let ((_%hd255176255190%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e255175255187%_)))
                              (_%tl255177255192%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e255175255187%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl255177255192%_))
                              (let* ((_%klass255207%_
                                      (let ((__tmp257450
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self255162%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx255158%_
                                         __tmp257450)))
                                     (_%object255209%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx255157%_
                                         _%hd255176255190%_)))
                                     (_%instance?255214%_
                                      (let ((_%$e255211%_
                                             (gxc#expression-type?
                                              _%object255209%_
                                              _%klass255207%_)))
                                        (if _%$e255211%_
                                            _%$e255211%_
                                            (gxc#expression-type?
                                             _%hd255176255190%_
                                             _%klass255207%_))))
                                     (_%incompatible?255219%_
                                      (let ((_%$e255216%_
                                             (gxc#incompatible-type?
                                              _%object255209%_
                                              _%klass255207%_)))
                                        (if _%$e255216%_
                                            _%$e255216%_
                                            (gxc#incompatible-type?
                                             _%hd255176255190%_
                                             _%klass255207%_)))))
                                (if _%instance?255214%_
                                    (let ((__tmp257451
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object255209%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%hd255176255190%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object255209%_
                                                           (cons '#t '()))))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp257451
                                       _%stx255158%_))
                                    (if _%incompatible?255219%_
                                        (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#xform-call%
                                           _%ctx255157%_
                                           _%stx255158%_)))))
                              (_%g255172255182%_ _%g255173255185%_))))
                      (_%g255172255182%_ _%g255173255185%_)))))
          (_%g255171255228%_ _%args255159%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self254945%_ _%ctx254946%_ _%stx254947%_ _%args254948%_)
        (let* ((_%self254951%_ _%self254945%_)
               (_%g254961254971%_
                (lambda (_%g254962254968%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g254962254968%_))))
               (_%g254960255031%_
                (lambda (_%g254962254974%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g254962254974%_))
                      (let ((_%e254964254976%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g254962254974%_))))
                        (let ((_%hd254965254979%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254964254976%_)))
                              (_%tl254966254981%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254964254976%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl254966254981%_))
                              (let* ((_%klass254996%_
                                      (let ((__tmp257452
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self254951%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx254947%_
                                         __tmp257452)))
                                     (_%object254998%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx254946%_
                                         _%hd254965254979%_)))
                                     (_%instance?255003%_
                                      (let ((_%$e255000%_
                                             (gxc#expression-type?
                                              _%object254998%_
                                              _%klass254996%_)))
                                        (if _%$e255000%_
                                            _%$e255000%_
                                            (gxc#expression-type?
                                             _%hd254965254979%_
                                             _%klass254996%_))))
                                     (_%incompatible?255008%_
                                      (let ((_%$e255005%_
                                             (gxc#incompatible-type?
                                              _%object254998%_
                                              _%klass254996%_)))
                                        (if _%$e255005%_
                                            _%$e255005%_
                                            (gxc#incompatible-type?
                                             _%hd254965254979%_
                                             _%klass254996%_))))
                                     (_%klass255011%_ _%klass254996%_))
                                (if _%instance?255003%_
                                    (let ((__tmp257453
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object254998%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%hd254965254979%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object254998%_
                                                           (cons '#t '()))))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp257453
                                       _%stx254947%_))
                                    (if _%incompatible?255008%_
                                        (cons '%#quote (cons '#f '()))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass255011%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp257454
                                                   (cons '%#struct-direct-instance?
                                                         (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass255011%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%object254998%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp257454
                                               _%stx254947%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass255011%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp257455
                                                       (cons '%#struct-instance?
                                                             (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass255011%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%object254998%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp257455
                                                   _%stx254947%_))
                                                (let ((__tmp257456
                                                       (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons 'class-instance? '()))
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self254951%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons _%object254998%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp257456
                                                   _%stx254947%_)))))))
                              (_%g254961254971%_ _%g254962254974%_))))
                      (_%g254961254971%_ _%g254962254974%_)))))
          (_%g254960255031%_ _%args254948%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx254613%_)
        (let* ((_%__stx256769256770%_ _%stx254613%_)
               (_%g254618254659%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx256769256770%_)))))
          (let ((_%__kont256771256772%_ (lambda () '#t))
                (_%__kont256773256774%_ (lambda () '#t))
                (_%__kont256775256776%_
                 (lambda (_%g254632254725%_ _%g254633254726%_)
                   (let ((_%rator-type254747254749%_
                          (let ((__tmp257457
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g254633254726%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp257457))))
                     (if _%rator-type254747254749%_
                         (let* ((_%rator-type254751%_
                                 _%rator-type254747254749%_)
                                (_%rator-signature254752254754%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type254751%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type254751%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature254752254754%_
                               (let* ((_%rator-signature254756%_
                                       _%rator-signature254752254754%_)
                                      (_%rator-effect254757254759%_
                                       (if _%rator-signature254756%_
                                           (##direct-structure-ref
                                            _%rator-signature254756%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect254757254759%_
                                     (let ((_%rator-effect254761%_
                                            _%rator-effect254757254759%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect254761%_)
                                               (equal? '(alloc)
                                                       _%rator-effect254761%_))
                                           (let ((__tmp257458
                                                  (let ((__tmp257459
                                                         (lambda (_%g254766254769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g254767254771%_)
                   (cons _%g254766254769%_ _%g254767254771%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp257459
                                                     '()
                                                     _%g254632254725%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp257458))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont256779256780%_ (lambda () '#f)))
            (let ((_%__match256858256859%_
                   (lambda (_%e254634254671%_
                            _%hd254635254674%_
                            _%tl254636254676%_
                            _%e254637254679%_
                            _%hd254638254682%_
                            _%tl254639254684%_
                            _%e254640254687%_
                            _%hd254641254690%_
                            _%tl254642254692%_
                            _%e254643254695%_
                            _%hd254644254698%_
                            _%tl254645254700%_
                            _%__splice256777256778%_
                            _%target254646254703%_
                            _%tl254648254705%_)
                     (letrec ((_%loop254649254708%_
                               (lambda (_%hd254647254711%_
                                        _%rand254653254713%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd254647254711%_))
                                     (let ((_%e254650254715%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd254647254711%_))))
                                       (let ((_%lp-tl254652254720%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e254650254715%_)))
                                             (_%lp-hd254651254718%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e254650254715%_))))
                                         (_%loop254649254708%_
                                          _%lp-tl254652254720%_
                                          (cons _%lp-hd254651254718%_
                                                _%rand254653254713%_))))
                                     (let ((_%rand254654254723%_
                                            (reverse _%rand254653254713%_)))
                                       (_%__kont256775256776%_
                                        _%rand254654254723%_
                                        _%hd254644254698%_))))))
                       (_%loop254649254708%_ _%target254646254703%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx256769256770%_))
                  (let ((_%e254620254802%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx256769256770%_))))
                    (let ((_%tl254622254807%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e254620254802%_)))
                          (_%hd254621254805%_
                           (let ()
                             (declare (not safe))
                             (##car _%e254620254802%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd254621254805%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd254621254805%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl254622254807%_))
                                  (let ((_%e254623254810%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl254622254807%_))))
                                    (let ((_%tl254625254815%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e254623254810%_)))
                                          (_%hd254624254813%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e254623254810%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl254625254815%_))
                                          (_%__kont256771256772%_)
                                          (_%__kont256779256780%_))))
                                  (_%__kont256779256780%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd254621254805%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl254622254807%_))
                                      (let ((_%e254629254787%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl254622254807%_))))
                                        (let ((_%tl254631254792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e254629254787%_)))
                                              (_%hd254630254790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e254629254787%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl254631254792%_))
                                              (_%__kont256773256774%_)
                                              (_%__kont256779256780%_))))
                                      (_%__kont256779256780%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd254621254805%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl254622254807%_))
                                          (let ((_%e254637254679%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl254622254807%_))))
                                            (let ((_%tl254639254684%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e254637254679%_)))
                                                  (_%hd254638254682%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e254637254679%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd254638254682%_))
                                                  (let ((_%e254640254687%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd254638254682%_))))
                                                    (let ((_%tl254642254692%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e254640254687%_)))
                                                          (_%hd254641254690%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e254640254687%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd254641254690%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd254641254690%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl254642254692%_))
                          (let ((_%e254643254695%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl254642254692%_))))
                            (let ((_%tl254645254700%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e254643254695%_)))
                                  (_%hd254644254698%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e254643254695%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl254645254700%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl254639254684%_))
                                      (let ((_%__splice256777256778%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl254639254684%_
                                                '0))))
                                        (let ((_%tl254648254705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice256777256778%_
                                                  '1)))
                                              (_%target254646254703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice256777256778%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl254648254705%_))
                                              (_%__match256858256859%_
                                               _%e254620254802%_
                                               _%hd254621254805%_
                                               _%tl254622254807%_
                                               _%e254637254679%_
                                               _%hd254638254682%_
                                               _%tl254639254684%_
                                               _%e254640254687%_
                                               _%hd254641254690%_
                                               _%tl254642254692%_
                                               _%e254643254695%_
                                               _%hd254644254698%_
                                               _%tl254645254700%_
                                               _%__splice256777256778%_
                                               _%target254646254703%_
                                               _%tl254648254705%_)
                                              (_%__kont256779256780%_))))
                                      (_%__kont256779256780%_))
                                  (_%__kont256779256780%_))))
                          (_%__kont256779256780%_))
                      (_%__kont256779256780%_))
                  (_%__kont256779256780%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont256779256780%_))))
                                          (_%__kont256779256780%_))
                                      (_%__kont256779256780%_))))
                          (_%__kont256779256780%_))))
                  (_%__kont256779256780%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx254608%_ _%klass254609%_)
        (let ((_%expr-type254611%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx254608%_))))
          (if _%expr-type254611%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type254611%_ _%klass254609%_))
              '#f))))
    (define gxc#incompatible-type?
      (lambda (_%expr254592%_ _%type254593%_)
        (if (not _%type254593%_)
            '#f
            (if (eq? (##structure-ref _%type254593%_ '1 gxc#!type::t '#f) 't)
                '#f
                (if (eq? (##structure-ref _%type254593%_ '1 gxc#!type::t '#f)
                         'false)
                    '#f
                    (let ((_%expr-type254599%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr254592%_))))
                      (if (not _%expr-type254599%_)
                          '#f
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type254599%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              '#f
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%expr-type254599%_
                                     'gxc#!abort::t))
                                  '#f
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#!type-subtype?
                                         _%expr-type254599%_
                                         _%type254593%_))
                                      '#f
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#!interface-instance?
                                             _%type254593%_))
                                          '#f
                                          (if (let ()
                                                (declare (not safe))
                                                (gxc#!type-subtype?
                                                 _%type254593%_
                                                 _%expr-type254599%_))
                                              '#f
                                              '#t))))))))))))
    (define gxc#check-expression-type!
      (lambda (_%stx254570%_ _%expr254571%_ _%type254572%_)
        (if (not _%type254572%_)
            '#f
            (let ((_%$e254575%_
                   (eq? (##structure-ref _%type254572%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e254575%_
                  _%$e254575%_
                  (let ((_%expr-type254579%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr254571%_))))
                    (if (not _%expr-type254579%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type254579%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e254583%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type254579%_
                                      'gxc#!abort::t))))
                              (if _%$e254583%_
                                  _%$e254583%_
                                  (let ((_%$e254586%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type254579%_
                                            _%type254572%_))))
                                    (if _%$e254586%_
                                        _%$e254586%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type254572%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type254572%_
                                                   _%expr-type254579%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx254570%_
                                                   _%expr254571%_
                                                   _%expr-type254579%_
                                                   _%type254572%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self254384%_ _%ctx254385%_ _%stx254386%_ _%args254387%_)
        (let* ((_%self254390%_ _%self254384%_)
               (_%klass254400%_
                (let ((__tmp257460
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self254390%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx254386%_ __tmp257460)))
               (_%fields254402%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass254400%_
                           '5
                           '#f
                           '#f))))
               (_%args254408%_
                (map (lambda (_%g254403254405%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx254385%_ _%g254403254405%_)))
                     _%args254387%_))
               (_%inline-make-object254410%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self254390%_
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
                           _%self254390%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields254402%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass254413%_ _%klass254400%_)
               (_%$e254427%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass254413%_ '6 '#f '#f))))
          (if _%$e254427%_
              (let ((_%$obj254432%_
                     (let ((__tmp257461
                            (let () (declare (not safe)) (##gensym '__obj))))
                       (declare (not safe))
                       (make-symbol__0 __tmp257461)))
                    (_%ctor-impl254433%_
                     (let ()
                       (declare (not safe))
                       (gxc#!class-lookup-method
                        _%klass254413%_
                        _%$e254427%_))))
                (let ((__tmp257462
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj254432%_ '())
                                               (cons _%inline-make-object254410%_
                                                     '()))
                                         '())
                                   (cons (cons '%#begin
                                               (cons (if _%ctor-impl254433%_
                                                         (let ((__tmp257463
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl254433%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj254432%_ '()))
                                          _%args254408%_)))))
                   (declare (not safe))
                   (gxc#xform-wrap-apply
                    __tmp257463
                    _%stx254386%_
                    _%ctx254385%_))
                 (let ((_%$ctor254435%_
                        (let ((__tmp257464
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__constructor))))
                          (declare (not safe))
                          (make-symbol__0 __tmp257464))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$ctor254435%_ '())
                                           (cons (cons '%#call
                                                       (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'direct-method-ref '()))
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self254390%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#ref (cons _%$obj254432%_ '()))
                                 (cons (cons '%#quote (cons _%$e254427%_ '()))
                                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#ref
                                                       (cons _%$ctor254435%_
                                                             '()))
                                                 (cons (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$ctor254435%_ '()))
                           (cons (cons '%#ref (cons _%$obj254432%_ '()))
                                 _%args254408%_)))
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
                         (##unchecked-structure-ref _%self254390%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#quote
                                                               (cons 'method:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _%$e254427%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$obj254432%_ '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp257462 _%stx254386%_)))
              (let ((_%$e254437%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass254413%_
                        '10
                        '#f
                        '#f))))
                (if _%$e254437%_
                    (let* ((_%$obj254442%_
                            (let ((__tmp257465
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp257465)))
                           (_%metakons254444%_
                            (let ((__tmp257466
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx254386%_
                                      _%$e254437%_))))
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               __tmp257466
                               'instance-init!)))
                           (__tmp257467
                            (cons '%#let-values
                                  (cons (cons (cons (cons _%$obj254442%_ '())
                                                    (cons _%inline-make-object254410%_
                                                          '()))
                                              '())
                                        (cons (cons '%#begin
                                                    (cons (if _%metakons254444%_
                                                              (let ((__tmp257468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons254444%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self254390%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj254442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args254408%_))))))
                        (declare (not safe))
                        (gxc#xform-wrap-apply
                         __tmp257468
                         _%stx254386%_
                         _%ctx254385%_))
                      (cons '%#call
                            (cons (cons '%#ref (cons 'call-method '()))
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self254390%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons 'instance-init! '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj254442%_
                                                                '()))
                                                    _%args254408%_))))))
                  (cons (cons '%#ref (cons _%$obj254442%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp257467 _%stx254386%_))
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass254413%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp257469
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args254408%_))))
                              (declare (not safe))
                              (##fx= __tmp257469 _%fields254402%_))
                            (let ((__tmp257470
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self254390%_
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
                                              _%self254390%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args254408%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp257470
                               _%stx254386%_))
                            (let ((__tmp257472
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self254390%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp257471
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass254413%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx254386%_
                               __tmp257472
                               __tmp257471)))
                        (let ((_%$obj254449%_
                               (let ((__tmp257473
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp257473))))
                          (let _%lp254451%_ ((_%rest254453%_ _%args254408%_)
                                             (_%initializers254454%_ '()))
                            (let* ((_%__stx256861256862%_ _%rest254453%_)
                                   (_%g254458254479%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx256861256862%_)))))
                              (let ((_%__kont256863256864%_
                                     (lambda (_%g254460254533%_
                                              _%g254461254534%_
                                              _%g254462254535%_)
                                       (let* ((_%slot254562%_
                                               (let ((__tmp257474
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g254462254535%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp257474)))
                                              (_%off254564%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass254413%_
                                                  _%slot254562%_))))
                                         (if _%off254564%_
                                             (_%lp254451%_
                                              _%g254460254533%_
                                              (cons (cons _%off254564%_
                                                          _%g254461254534%_)
                                                    _%initializers254454%_))
                                             (let ((__tmp257475
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self254390%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx254386%_
                                                __tmp257475
                                                _%slot254562%_))))))
                                    (_%__kont256865256866%_
                                     (lambda ()
                                       (let ((__tmp257476
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj254449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object254410%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp257479
                                     (cons (cons '%#ref
                                                 (cons _%$obj254449%_ '()))
                                           '()))
                                    (__tmp257477
                                     (let ((__tmp257478
                                            (lambda (_%i254493%_ _%r254494%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self254390%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i254493%_) '()))
                              (cons (cons '%#ref (cons _%$obj254449%_ '()))
                                    (cons (cdr _%i254493%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r254494%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp257478
                                        '()
                                        _%initializers254454%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp257479 __tmp257477)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp257476
                                          _%stx254386%_))))
                                    (_%__kont256867256868%_
                                     (lambda ()
                                       (let ((__tmp257480
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj254449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object254410%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj254449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args254408%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj254449%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp257480
                                          _%stx254386%_)))))
                                (let* ((_%g254456254496%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx256861256862%_))
                                              (_%__kont256865256866%_)
                                              (_%__kont256867256868%_))))
                                       (_%__match256898256899%_
                                        (lambda (_%e254463254501%_
                                                 _%hd254464254504%_
                                                 _%tl254465254506%_
                                                 _%e254466254509%_
                                                 _%hd254467254512%_
                                                 _%tl254468254514%_
                                                 _%e254469254517%_
                                                 _%hd254470254520%_
                                                 _%tl254471254522%_
                                                 _%e254472254525%_
                                                 _%hd254473254528%_
                                                 _%tl254474254530%_)
                                          (let ((_%g254460254533%_
                                                 _%tl254474254530%_)
                                                (_%g254461254534%_
                                                 _%hd254473254528%_)
                                                (_%g254462254535%_
                                                 _%hd254470254520%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g254462254535%_))
                                                (_%__kont256863256864%_
                                                 _%g254460254533%_
                                                 _%g254461254534%_
                                                 _%g254462254535%_)
                                                (_%__kont256867256868%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx256861256862%_))
                                      (let ((_%e254463254501%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx256861256862%_))))
                                        (let ((_%tl254465254506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e254463254501%_)))
                                              (_%hd254464254504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e254463254501%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd254464254504%_))
                                              (let ((_%e254466254509%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd254464254504%_))))
                                                (let ((_%tl254468254514%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e254466254509%_)))
                                                      (_%hd254467254512%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e254466254509%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd254467254512%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd254467254512%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl254468254514%_))
                      (let ((_%e254469254517%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl254468254514%_))))
                        (let ((_%tl254471254522%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254469254517%_)))
                              (_%hd254470254520%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254469254517%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl254471254522%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl254465254506%_))
                                  (let ((_%e254472254525%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl254465254506%_))))
                                    (let ((_%tl254474254530%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e254472254525%_)))
                                          (_%hd254473254528%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e254472254525%_))))
                                      (_%__match256898256899%_
                                       _%e254463254501%_
                                       _%hd254464254504%_
                                       _%tl254465254506%_
                                       _%e254466254509%_
                                       _%hd254467254512%_
                                       _%tl254468254514%_
                                       _%e254469254517%_
                                       _%hd254470254520%_
                                       _%tl254471254522%_
                                       _%e254472254525%_
                                       _%hd254473254528%_
                                       _%tl254474254530%_)))
                                  (_%__kont256867256868%_))
                              (_%__kont256867256868%_))))
                      (_%__kont256867256868%_))
                  (_%__kont256867256868%_))
              (_%__kont256867256868%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont256867256868%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g254456254496%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::check-arguments
      (lambda (_%self254246%_ _%ctx254247%_ _%stx254248%_ _%args254249%_)
        (let ((_%self254252%_ _%self254246%_))
          (if (let ()
                (declare (not safe))
                (##unchecked-structure-ref _%self254252%_ '4 '#f '#f))
              (gxc#!procedure::check-arguments
               _%self254252%_
               _%ctx254247%_
               _%stx254248%_
               _%args254249%_)
              '#t))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'check-arguments
       gxc#!accessor::check-arguments
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self254029%_ _%ctx254030%_ _%stx254031%_ _%args254032%_)
        (let* ((_%self254035%_ _%self254029%_)
               (_%arguments-ok?254045%_
                (let ((__method257408
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self254035%_ 'check-arguments))))
                  (if __method257408
                      (let ()
                        (declare (not safe))
                        (__method257408
                         _%self254035%_
                         _%ctx254030%_
                         _%stx254031%_
                         _%args254032%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self254035%_
                                 'check-arguments))
                        '#!void))))
               (_%g254047254057%_
                (lambda (_%g254048254054%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g254048254054%_))))
               (_%g254046254121%_
                (lambda (_%g254048254060%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g254048254060%_))
                      (let ((_%e254050254062%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g254048254060%_))))
                        (let ((_%hd254051254065%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254050254062%_)))
                              (_%tl254052254067%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254050254062%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl254052254067%_))
                              (let* ((_%klass254083%_
                                      (let ((__tmp257481
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self254035%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx254031%_
                                         __tmp257481)))
                                     (_%field254085%_
                                      (let ((__tmp257482
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self254035%_
                                                '3
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#!class-slot->field-offset
                                         _%klass254083%_
                                         __tmp257482)))
                                     (_%object254087%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx254030%_
                                         _%hd254051254065%_)))
                                     (_%klass254090%_ _%klass254083%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass254090%_
                                       '8
                                       '#f
                                       '#f))
                                    (let ((__tmp257483
                                           (cons (if (or _%arguments-ok?254045%_
                                                         (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self254035%_
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
                              _%self254035%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#quote (cons _%field254085%_ '()))
                     (cons _%object254087%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp257483
                                       _%stx254031%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass254090%_
                                           '7
                                           '#f
                                           '#f))
                                        (let ((__tmp257484
                                               (cons (if (or _%arguments-ok?254045%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self254035%_
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
                                  _%self254035%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field254085%_ '()))
                         (cons _%object254087%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp257484
                                           _%stx254031%_))
                                        (let ((_%$e254109%_
                                               (let ((__tmp257485
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self254035%_
                                                         '3
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#!class-slot-find-struct
                                                  _%klass254090%_
                                                  __tmp257485))))
                                          (if _%$e254109%_
                                              (let ((__tmp257486
                                                     (cons (if (or _%arguments-ok?254045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (not (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self254035%_
                                   '4
                                   '#f
                                   '#f))))
                       '%#struct-unchecked-ref
                       '%#struct-ref)
                   (cons (cons '%#ref
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self254035%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#quote (cons _%field254085%_ '()))
                               (cons _%object254087%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp257486
                                                 _%stx254031%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self254035%_
                                                     '4
                                                     '#f
                                                     '#f))
                                                  (let ((__tmp257487
                                                         (let ((_%$obj254118%_
                                                                (let ((__tmp257488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp257488))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$obj254118%_ '())
                                           (cons _%object254087%_ '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#struct-direct-instance?
                                                       (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass254090%_
                                    '1
                                    '#f
                                    '#f))
                                 '()))
                     (cons (cons '%#ref (cons _%$obj254118%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#struct-unchecked-ref
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self254035%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field254085%_ '()))
                                 (cons (cons '%#ref (cons _%$obj254118%_ '()))
                                       '()))))
               (cons (if _%arguments-ok?254045%_
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj254118%_ '()))
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self254035%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'class-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self254035%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj254118%_
                                                             '()))
                                                 (cons (cons '%#quote
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self254035%_
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
                                                     __tmp257487
                                                     _%stx254031%_))
                                                  (let ((__tmp257489
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'unchecked-slot-ref '()))
                             (cons _%object254087%_
                                   (cons (cons '%#quote
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self254035%_
                                                        '3
                                                        '#f
                                                        '#f))
                                                     '()))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp257489
                                                     _%stx254031%_))))))))
                              (_%g254047254057%_ _%g254048254060%_))))
                      (_%g254047254057%_ _%g254048254060%_)))))
          (_%g254046254121%_ _%args254032%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass256515 __method-table256516)
        (let ((__check-arguments256517
               (let ((__tmp257490
                      (lambda ()
                        (let ((__method256518
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table256516
                                  'check-arguments
                                  '#f))))
                          (if __method256518
                              __method256518
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp257490)))
              (__slot256519
               (let ((__slot256520
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass256515 'slot))))
                 (if __slot256520
                     __slot256520
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self254029%_ _%ctx254030%_ _%stx254031%_ _%args254032%_)
            (let* ((_%self254035%_ _%self254029%_)
                   (_%arguments-ok?254045%_
                    ((force __check-arguments256517)
                     _%self254035%_
                     _%ctx254030%_
                     _%stx254031%_
                     _%args254032%_))
                   (_%g254047254057%_
                    (lambda (_%g254048254054%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g254048254054%_))))
                   (_%g254046254121%_
                    (lambda (_%g254048254060%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g254048254060%_))
                          (let ((_%e254050254062%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g254048254060%_))))
                            (let ((_%hd254051254065%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e254050254062%_)))
                                  (_%tl254052254067%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e254050254062%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl254052254067%_))
                                  (let* ((_%klass254083%_
                                          (let ((__tmp257491
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self254035%_
                                                    '1
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx254031%_
                                             __tmp257491)))
                                         (_%field254085%_
                                          (let ((__tmp257492
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self254035%_
                                                    '3
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#!class-slot->field-offset
                                             _%klass254083%_
                                             __tmp257492)))
                                         (_%object254087%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%ctx254030%_
                                             _%hd254051254065%_)))
                                         (_%klass254090%_ _%klass254083%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass254090%_
                                           '8
                                           '#f
                                           '#f))
                                        (let ((__tmp257493
                                               (cons (if (or _%arguments-ok?254045%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self254035%_
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
                                  _%self254035%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field254085%_ '()))
                         (cons _%object254087%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp257493
                                           _%stx254031%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass254090%_
                                               '7
                                               '#f
                                               '#f))
                                            (let ((__tmp257494
                                                   (cons (if (or _%arguments-ok?254045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self254035%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-ref
                     '%#struct-ref)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self254035%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field254085%_ '()))
                             (cons _%object254087%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp257494
                                               _%stx254031%_))
                                            (let ((_%$e254109%_
                                                   (let ((__tmp257495
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self254035%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot-find-struct
                                                      _%klass254090%_
                                                      __tmp257495))))
                                              (if _%$e254109%_
                                                  (let ((__tmp257496
                                                         (cons (if (or _%arguments-ok?254045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (not (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self254035%_
                                       '4
                                       '#f
                                       '#f))))
                           '%#struct-unchecked-ref
                           '%#struct-ref)
                       (cons (cons '%#ref
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self254035%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#quote (cons _%field254085%_ '()))
                                   (cons _%object254087%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp257496
                                                     _%stx254031%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self254035%_
                                                         '4
                                                         '#f
                                                         '#f))
                                                      (let ((__tmp257497
                                                             (let ((_%$obj254118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp257498
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp257498))))
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj254118%_ '())
                                               (cons _%object254087%_ '()))
                                         '())
                                   (cons (cons '%#if
                                               (cons (cons '%#struct-direct-instance?
                                                           (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%klass254090%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#ref (cons _%$obj254118%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#struct-unchecked-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self254035%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field254085%_ '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj254118%_ '()))
                                           '()))))
                   (cons (if _%arguments-ok?254045%_
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-ref '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj254118%_ '()))
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self254035%_
                            __slot256519
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
                                                              _%self254035%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj254118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self254035%_
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
                (gxc#xform-wrap-source __tmp257497 _%stx254031%_))
              (let ((__tmp257499
                     (cons '%#call
                           (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                 (cons _%object254087%_
                                       (cons (cons '%#quote
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self254035%_
                                                            '3
                                                            '#f
                                                            '#f))
                                                         '()))
                                             '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp257499 _%stx254031%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%g254047254057%_ _%g254048254060%_))))
                          (_%g254047254057%_ _%g254048254060%_)))))
              (_%g254046254121%_ _%args254032%_))))))
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
      (lambda (_%self253793%_ _%ctx253794%_ _%stx253795%_ _%args253796%_)
        (let* ((_%self253799%_ _%self253793%_)
               (_%arguments-ok?253809%_
                (let ((__method257409
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self253799%_ 'check-arguments))))
                  (if __method257409
                      (let ()
                        (declare (not safe))
                        (__method257409
                         _%self253799%_
                         _%ctx253794%_
                         _%stx253795%_
                         _%args253796%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self253799%_
                                 'check-arguments))
                        '#!void))))
               (_%g253811253825%_
                (lambda (_%g253812253822%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g253812253822%_))))
               (_%g253810253904%_
                (lambda (_%g253812253828%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g253812253828%_))
                      (let ((_%e253815253830%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g253812253828%_))))
                        (let ((_%hd253816253833%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253815253830%_)))
                              (_%tl253817253835%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253815253830%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl253817253835%_))
                              (let ((_%e253818253838%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl253817253835%_))))
                                (let ((_%hd253819253841%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e253818253838%_)))
                                      (_%tl253820253843%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e253818253838%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl253820253843%_))
                                      (let* ((_%klass253863%_
                                              (let ((__tmp257500
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self253799%_
                                                        '1
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#optimizer-resolve-class
                                                 _%stx253795%_
                                                 __tmp257500)))
                                             (_%field253865%_
                                              (let ((__tmp257501
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self253799%_
                                                        '3
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#!class-slot->field-offset
                                                 _%klass253863%_
                                                 __tmp257501)))
                                             (_%object253867%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx253794%_
                                                 _%hd253816253833%_)))
                                             (_%value253869%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx253794%_
                                                 _%hd253819253841%_)))
                                             (_%klass253872%_ _%klass253863%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass253872%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp257502
                                                   (cons (if (or _%arguments-ok?253809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self253799%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-set!
                     '%#struct-direct-set!)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self253799%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field253865%_ '()))
                             (cons _%object253867%_
                                   (cons _%value253869%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp257502
                                               _%stx253795%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass253872%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp257503
                                                       (cons (if (or _%arguments-ok?253809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self253799%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self253799%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field253865%_ '()))
                                 (cons _%object253867%_
                                       (cons _%value253869%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp257503
                                                   _%stx253795%_))
                                                (let ((_%$e253892%_
                                                       (let ((__tmp257504
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self253799%_
                         '3
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#!class-slot-find-struct _%klass253872%_ __tmp257504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%$e253892%_
                                                      (let ((__tmp257505
                                                             (cons (if (or _%arguments-ok?253809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (not (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self253799%_
                                           '3
                                           '#f
                                           '#f))))
                               '%#struct-unchecked-set!
                               '%#struct-set!)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self253799%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field253865%_ '()))
                                       (cons _%object253867%_
                                             (cons _%value253869%_ '())))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp257505 _%stx253795%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self253799%_ '4 '#f '#f))
                  (let ((__tmp257506
                         (let ((_%$obj253901%_
                                (let ((__tmp257507
                                       (let ()
                                         (declare (not safe))
                                         (##gensym '__obj))))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp257507))))
                           (cons '%#let-values
                                 (cons (cons (cons (cons _%$obj253901%_ '())
                                                   (cons _%object253867%_ '()))
                                             '())
                                       (cons (cons '%#if
                                                   (cons (cons '%#struct-direct-instance?
                                                               (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass253872%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#ref (cons _%$obj253901%_ '()))
                                   '())))
                 (cons (cons '%#struct-unchecked-set!
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self253799%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field253865%_ '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj253901%_ '()))
                                               (cons _%value253869%_ '())))))
                       (cons (if _%arguments-ok?253809%_
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'unchecked-slot-set!
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj253901%_
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self253799%_
                                '3
                                '#f
                                '#f))
                             '()))
                 (cons _%value253869%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'class-slot-set! '()))
                                             (cons (cons '%#ref
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%self253799%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#ref
                                                               (cons _%$obj253901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self253799%_
                                      '3
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%value253869%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp257506 _%stx253795%_))
                  (let ((__tmp257508
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-set! '()))
                                     (cons _%object253867%_
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self253799%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%value253869%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp257508 _%stx253795%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%g253811253825%_ _%g253812253828%_))))
                              (_%g253811253825%_ _%g253812253828%_))))
                      (_%g253811253825%_ _%g253812253828%_)))))
          (_%g253810253904%_ _%args253796%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass256521 __method-table256522)
        (let ((__check-arguments256523
               (let ((__tmp257509
                      (lambda ()
                        (let ((__method256524
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table256522
                                  'check-arguments
                                  '#f))))
                          (if __method256524
                              __method256524
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp257509))))
          (lambda (_%self253793%_ _%ctx253794%_ _%stx253795%_ _%args253796%_)
            (let* ((_%self253799%_ _%self253793%_)
                   (_%arguments-ok?253809%_
                    ((force __check-arguments256523)
                     _%self253799%_
                     _%ctx253794%_
                     _%stx253795%_
                     _%args253796%_))
                   (_%g253811253825%_
                    (lambda (_%g253812253822%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g253812253822%_))))
                   (_%g253810253904%_
                    (lambda (_%g253812253828%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g253812253828%_))
                          (let ((_%e253815253830%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g253812253828%_))))
                            (let ((_%hd253816253833%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e253815253830%_)))
                                  (_%tl253817253835%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e253815253830%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl253817253835%_))
                                  (let ((_%e253818253838%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl253817253835%_))))
                                    (let ((_%hd253819253841%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253818253838%_)))
                                          (_%tl253820253843%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253818253838%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl253820253843%_))
                                          (let* ((_%klass253863%_
                                                  (let ((__tmp257510
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self253799%_
                                                            '1
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#optimizer-resolve-class
                                                     _%stx253795%_
                                                     __tmp257510)))
                                                 (_%field253865%_
                                                  (let ((__tmp257511
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self253799%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot->field-offset
                                                     _%klass253863%_
                                                     __tmp257511)))
                                                 (_%object253867%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx253794%_
                                                     _%hd253816253833%_)))
                                                 (_%value253869%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx253794%_
                                                     _%hd253819253841%_)))
                                                 (_%klass253872%_
                                                  _%klass253863%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass253872%_
                                                   '8
                                                   '#f
                                                   '#f))
                                                (let ((__tmp257512
                                                       (cons (if (or _%arguments-ok?253809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self253799%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-direct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self253799%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field253865%_ '()))
                                 (cons _%object253867%_
                                       (cons _%value253869%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp257512
                                                   _%stx253795%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%klass253872%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp257513
                                                           (cons (if (or _%arguments-ok?253809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self253799%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-set!
                             '%#struct-set!)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self253799%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field253865%_ '()))
                                     (cons _%object253867%_
                                           (cons _%value253869%_ '())))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp257513 _%stx253795%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$e253892%_
                                                           (let ((__tmp257514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self253799%_
                             '3
                             '#f
                             '#f))))
                     (declare (not safe))
                     (gxc#!class-slot-find-struct
                      _%klass253872%_
                      __tmp257514))))
              (if _%$e253892%_
                  (let ((__tmp257515
                         (cons (if (or _%arguments-ok?253809%_
                                       (not (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self253799%_
                                               '3
                                               '#f
                                               '#f))))
                                   '%#struct-unchecked-set!
                                   '%#struct-set!)
                               (cons (cons '%#ref
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self253799%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     (cons (cons '%#quote
                                                 (cons _%field253865%_ '()))
                                           (cons _%object253867%_
                                                 (cons _%value253869%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp257515 _%stx253795%_))
                  (if (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253799%_ '4 '#f '#f))
                      (let ((__tmp257516
                             (let ((_%$obj253901%_
                                    (let ((__tmp257517
                                           (let ()
                                             (declare (not safe))
                                             (##gensym '__obj))))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp257517))))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj253901%_
                                                             '())
                                                       (cons _%object253867%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#if
                                                       (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass253872%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#ref (cons _%$obj253901%_ '()))
                                       '())))
                     (cons (cons '%#struct-unchecked-set!
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self253799%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field253865%_ '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj253901%_
                                                               '()))
                                                   (cons _%value253869%_
                                                         '())))))
                           (cons (if _%arguments-ok?253809%_
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'unchecked-slot-set!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj253901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#quote
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self253799%_
                                    '3
                                    '#f
                                    '#f))
                                 '()))
                     (cons _%value253869%_ '())))))
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
                              _%self253799%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#ref (cons _%$obj253901%_ '()))
                     (cons (cons '%#quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self253799%_
                                          '3
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%value253869%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp257516 _%stx253795%_))
                      (let ((__tmp257518
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-set! '()))
                                         (cons _%object253867%_
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self253799%_
                            '3
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%value253869%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source
                         __tmp257518
                         _%stx253795%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g253811253825%_
                                           _%g253812253828%_))))
                                  (_%g253811253825%_ _%g253812253828%_))))
                          (_%g253811253825%_ _%g253812253828%_)))))
              (_%g253810253904%_ _%args253796%_))))))
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
      (lambda (_%self253609%_ _%ctx253610%_ _%stx253611%_ _%args253612%_)
        (let* ((_%self253615%_ _%self253609%_)
               (_%self253624253634%_ _%self253615%_)
               (_%E253626253637%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self253624253634%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K253627253647%_
                (lambda (_%inline253640%_ _%dispatch253641%_ _%arity253642%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self253615%_
                         _%args253612%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx253611%_
                         _%arity253642%_)))
                  (if _%inline253640%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp257519 (_%inline253640%_ _%stx253611%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp257519
                           _%stx253611%_
                           _%ctx253610%_)))
                      (if (and _%dispatch253641%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch253641%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch253641%_))
                            (let ((__tmp257520
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch253641%_
                                                           '()))
                                               _%args253612%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp257520
                               _%stx253611%_
                               _%ctx253610%_)))
                          (gxc#!procedure::optimize-call
                           _%self253615%_
                           _%ctx253610%_
                           _%stx253611%_
                           _%args253612%_)))))
               (_%e253628253650%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253624253634%_ '1 '#f '#f)))
               (_%e253629253653%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253624253634%_ '2 '#f '#f)))
               (_%e253630253656%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253624253634%_ '3 '#f '#f)))
               (_%arity253659%_ _%e253630253656%_)
               (_%e253631253661%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253624253634%_ '4 '#f '#f)))
               (_%dispatch253664%_ _%e253631253661%_)
               (_%e253632253666%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253624253634%_ '5 '#f '#f)))
               (_%inline253669%_ _%e253632253666%_))
          (_%K253627253647%_
           _%inline253669%_
           _%dispatch253664%_
           _%arity253659%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self253461%_ _%ctx253462%_ _%stx253463%_ _%args253464%_)
        (let* ((_%self253467%_ _%self253461%_)
               (_%$e253481%_
                (let ((__tmp257522
                       (lambda (_%g253476253478%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g253476253478%_
                            _%args253464%_))))
                      (__tmp257521
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self253467%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp257522 __tmp257521))))
          (if _%$e253481%_
              (let ((__method257410
                     (let ()
                       (declare (not safe))
                       (__method-ref _%$e253481%_ 'optimize-call))))
                (if __method257410
                    (let ()
                      (declare (not safe))
                      (__method257410
                       _%$e253481%_
                       _%ctx253462%_
                       _%stx253463%_
                       _%args253464%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method" _%$e253481%_ 'optimize-call))
                      '#!void)))
              (let ((__tmp257523
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self253467%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx253463%_
                 __tmp257523))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self253202%_ _%ctx253203%_ _%stx253204%_ _%args253205%_)
        (let* ((_%self253208%_ _%self253202%_)
               (_%self253217253226%_ _%self253208%_)
               (_%E253219253229%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self253217253226%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K253220253320%_
                (lambda (_%dispatch253232%_ _%table253233%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch253232%_))
                      (let* ((_%g253234253244%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch253232%_)))
                             (_%else253236253252%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch253232%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx253203%_
                                   _%stx253204%_))))
                             (_%K253238253301%_
                              (lambda (_%main253255%_ _%keys253256%_)
                                (let ((_g257524_
                                       (gxc#!kw-lambda-split-args
                                        _%stx253204%_
                                        _%args253205%_)))
                                  (begin
                                    (let ((_g257525_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g257524_)
                                                 (##values-length _g257524_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g257525_ 2)))
                                          (error "Context expects 2 values"
                                                 _g257525_)))
                                    (let ((_%pargs253258%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g257524_ 0)))
                                          (_%kwargs253259%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g257524_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main253255%_))
                                        (if _%table253233%_
                                            (let ((_%xargs253267%_
                                                   (map (lambda (_%key253261%_)
                                                          (let ((_%$e253263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key253261%_ _%kwargs253259%_))))
                    (if _%$e253263%_ _%$e253263%_ '(%#ref absent-value))))
                _%keys253256%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw253269%_)
                                                 (if (memq (car _%kw253269%_)
                                                           _%keys253256%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx253204%_
                                                        _%keys253256%_
                                                        _%kw253269%_))))
                                               _%kwargs253259%_)
                                              (let ((__tmp257526
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main253255%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs253258%_
                                  _%xargs253267%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp257526
                                                 _%stx253204%_
                                                 _%ctx253203%_)))
                                            (let* ((_%kwt253271%_
                                                    (let ((__tmp257527
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp257527)))
                                                   (_%kwvars253275%_
                                                    (map (lambda (_%_253273%_)
                                                           (let ((__tmp257528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp257528)))
                 _%kwargs253259%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind253280%_
                                                    (map (lambda (_%kw253277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar253278%_)
                   (cons (cons _%kwvar253278%_ '())
                         (cons (cdr _%kw253277%_) '())))
                 _%kwargs253259%_
                 _%kwvars253275%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset253285%_
                                                    (map (lambda (_%kw253282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar253283%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt253271%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw253282%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar253283%_
                                                             '()))
                                                 '()))))))
                 _%kwargs253259%_
                 _%kwvars253275%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs253290%_
                                                    (map (lambda (_%kw253287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar253288%_)
                   (cons (car _%kw253287%_)
                         (cons '%#ref (cons _%kwvar253288%_ '()))))
                 _%kwargs253259%_
                 _%kwvars253275%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs253298%_
                                                    (map (lambda (_%key253292%_)
                                                           (let ((_%$e253294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key253292%_ _%xkwargs253290%_))))
                     (if _%$e253294%_ _%$e253294%_ '(%#ref absent-value))))
                 _%keys253256%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp257529
                                                    (cons '%#let-values
                                                          (cons _%kwbind253280%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt253271%_ '())
                                                      (cons (let ((__tmp257530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs253259%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp257530 _%stx253204%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp257531
                                                             (cons (let ((__tmp257532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main253255%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt253271%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs253258%_
                                                       _%xargs253298%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp257532 _%stx253204%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp257531 _%kwset253285%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp257529
                                               _%stx253204%_
                                               _%ctx253203%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g253234253244%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e253239253304%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g253234253244%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e253240253307%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g253234253244%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e253241253310%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g253234253244%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys253313%_ _%e253241253310%_)
                                   (_%e253242253315%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g253234253244%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main253318%_ _%e253242253315%_))
                              (_%K253238253301%_
                               _%main253318%_
                               _%keys253313%_))
                            (_%else253236253252%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx253203%_ _%stx253204%_)))))
               (_%e253221253323%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253217253226%_ '1 '#f '#f)))
               (_%e253222253326%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253217253226%_ '2 '#f '#f)))
               (_%e253223253329%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253217253226%_ '3 '#f '#f)))
               (_%table253332%_ _%e253223253329%_)
               (_%e253224253334%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253217253226%_ '4 '#f '#f)))
               (_%dispatch253337%_ _%e253224253334%_))
          (_%K253220253320%_ _%dispatch253337%_ _%table253332%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx252815%_ _%args252816%_)
        (let _%lp252818%_ ((_%rest252820%_ _%args252816%_)
                           (_%pargs252821%_ '())
                           (_%kwargs252822%_ '()))
          (let* ((_%__stx256903256904%_ _%rest252820%_)
                 (_%g252828252880%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx256903256904%_)))))
            (let ((_%__kont256905256906%_
                   (lambda (_%g252830253059%_ _%g252831253060%_)
                     (_%lp252818%_
                      _%g252830253059%_
                      (cons _%g252831253060%_ _%pargs252821%_)
                      _%kwargs252822%_)))
                  (_%__kont256907256908%_
                   (lambda (_%g252845253005%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%g252845253005%_
                                _%pargs252821%_))
                             (reverse _%kwargs252822%_))))
                  (_%__kont256909256910%_
                   (lambda (_%g252856252952%_
                            _%g252857252953%_
                            _%g252858252954%_)
                     (let ((_%kw252971%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g252858252954%_))))
                       (if (assq _%kw252971%_ _%kwargs252822%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx252815%_
                              _%kw252971%_))
                           (_%lp252818%_
                            _%g252856252952%_
                            _%pargs252821%_
                            (cons (cons _%kw252971%_ _%g252857252953%_)
                                  _%kwargs252822%_))))))
                  (_%__kont256911256912%_
                   (lambda (_%g252871252900%_ _%g252872252901%_)
                     (_%lp252818%_
                      _%g252871252900%_
                      (cons _%g252872252901%_ _%pargs252821%_)
                      _%kwargs252822%_)))
                  (_%__kont256913256914%_
                   (lambda ()
                     (values (reverse _%pargs252821%_)
                             (reverse _%kwargs252822%_)))))
              (let ((_%__match257010257011%_
                     (lambda (_%e252859252920%_
                              _%hd252860252923%_
                              _%tl252861252925%_
                              _%e252862252928%_
                              _%hd252863252931%_
                              _%tl252864252933%_
                              _%e252865252936%_
                              _%hd252866252939%_
                              _%tl252867252941%_
                              _%e252868252944%_
                              _%hd252869252947%_
                              _%tl252870252949%_)
                       (let ((_%g252856252952%_ _%tl252870252949%_)
                             (_%g252857252953%_ _%hd252869252947%_)
                             (_%g252858252954%_ _%hd252866252939%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g252858252954%_))
                             (_%__kont256909256910%_
                              _%g252856252952%_
                              _%g252857252953%_
                              _%g252858252954%_)
                             (_%__kont256911256912%_
                              _%tl252861252925%_
                              _%hd252860252923%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx256903256904%_))
                    (let ((_%e252832253024%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx256903256904%_))))
                      (let ((_%tl252834253029%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e252832253024%_)))
                            (_%hd252833253027%_
                             (let ()
                               (declare (not safe))
                               (##car _%e252832253024%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd252833253027%_))
                            (let ((_%e252835253032%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd252833253027%_))))
                              (let ((_%tl252837253037%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e252835253032%_)))
                                    (_%hd252836253035%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e252835253032%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd252836253035%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd252836253035%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl252837253037%_))
                                            (let ((_%e252838253040%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl252837253037%_))))
                                              (let ((_%tl252840253045%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e252838253040%_)))
                                                    (_%hd252839253043%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e252838253040%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd252839253043%_))
                                                    (let ((_%e252841253048%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd252839253043%_))))
                                                      (if (equal? _%e252841253048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl252840253045%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl252834253029%_))
                          (let ((_%e252842253051%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl252834253029%_))))
                            (let ((_%tl252844253056%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252842253051%_)))
                                  (_%hd252843253054%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252842253051%_))))
                              (_%__kont256905256906%_
                               _%tl252844253056%_
                               _%hd252843253054%_)))
                          (_%__kont256911256912%_
                           _%tl252834253029%_
                           _%hd252833253027%_))
                      (_%__kont256911256912%_
                       _%tl252834253029%_
                       _%hd252833253027%_))
                  (if (equal? _%e252841253048%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl252840253045%_))
                          (_%__kont256907256908%_ _%tl252834253029%_)
                          (_%__kont256911256912%_
                           _%tl252834253029%_
                           _%hd252833253027%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl252840253045%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl252834253029%_))
                              (let ((_%e252868252944%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl252834253029%_))))
                                (let ((_%tl252870252949%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e252868252944%_)))
                                      (_%hd252869252947%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e252868252944%_))))
                                  (_%__match257010257011%_
                                   _%e252832253024%_
                                   _%hd252833253027%_
                                   _%tl252834253029%_
                                   _%e252835253032%_
                                   _%hd252836253035%_
                                   _%tl252837253037%_
                                   _%e252838253040%_
                                   _%hd252839253043%_
                                   _%tl252840253045%_
                                   _%e252868252944%_
                                   _%hd252869252947%_
                                   _%tl252870252949%_)))
                              (_%__kont256911256912%_
                               _%tl252834253029%_
                               _%hd252833253027%_))
                          (_%__kont256911256912%_
                           _%tl252834253029%_
                           _%hd252833253027%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl252840253045%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl252834253029%_))
                                                            (let ((_%e252868252944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl252834253029%_))))
                      (let ((_%tl252870252949%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e252868252944%_)))
                            (_%hd252869252947%_
                             (let ()
                               (declare (not safe))
                               (##car _%e252868252944%_))))
                        (_%__match257010257011%_
                         _%e252832253024%_
                         _%hd252833253027%_
                         _%tl252834253029%_
                         _%e252835253032%_
                         _%hd252836253035%_
                         _%tl252837253037%_
                         _%e252838253040%_
                         _%hd252839253043%_
                         _%tl252840253045%_
                         _%e252868252944%_
                         _%hd252869252947%_
                         _%tl252870252949%_)))
                    (_%__kont256911256912%_
                     _%tl252834253029%_
                     _%hd252833253027%_))
                (_%__kont256911256912%_
                 _%tl252834253029%_
                 _%hd252833253027%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont256911256912%_
                                             _%tl252834253029%_
                                             _%hd252833253027%_))
                                        (_%__kont256911256912%_
                                         _%tl252834253029%_
                                         _%hd252833253027%_))
                                    (_%__kont256911256912%_
                                     _%tl252834253029%_
                                     _%hd252833253027%_))))
                            (_%__kont256911256912%_
                             _%tl252834253029%_
                             _%hd252833253027%_))))
                    (_%__kont256913256914%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self252799%_ _%ctx252800%_ _%stx252801%_ _%args252802%_)
        (let ((_%self252805%_ _%self252799%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx252800%_ _%stx252801%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self252489%_ _%stx252490%_)
        (let* ((_%__stx257019257020%_ _%stx252490%_)
               (_%g252493252533%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx257019257020%_)))))
          (let ((_%__kont257021257022%_
                 (lambda (_%g252495252637%_ _%g252496252638%_)
                   (let ((_%$e252665%_
                          (member 'return:
                                  (let ((__tmp257533
                                         (lambda (_%g252657252660%_
                                                  _%g252658252662%_)
                                           (cons _%g252657252660%_
                                                 _%g252658252662%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp257533
                                     '()
                                     _%g252496252638%_))
                                  gx#stx-eq?)))
                     (if _%$e252665%_
                         (let ((_%type252670%_
                                (let ((__tmp257534
                                       (let ((__tmp257535 (cadr _%$e252665%_)))
                                         (declare (not safe))
                                         (gxc#identifier-symbol __tmp257535))))
                                  (declare (not safe))
                                  (gxc#optimizer-resolve-class
                                   _%stx252490%_
                                   __tmp257534))))
                           (gxc#check-return-type!
                            _%stx252490%_
                            _%g252495252637%_
                            _%type252670%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self252489%_
                              _%g252495252637%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self252489%_
                            _%g252495252637%_))))))
                (_%__kont257025257026%_
                 (lambda (_%g252518252562%_ _%g252519252563%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self252489%_ _%g252518252562%_)))))
            (let ((_%__match257056257057%_
                   (lambda (_%e252497252583%_
                            _%hd252498252586%_
                            _%tl252499252588%_
                            _%e252500252591%_
                            _%hd252501252594%_
                            _%tl252502252596%_
                            _%e252503252599%_
                            _%hd252504252602%_
                            _%tl252505252604%_
                            _%__splice257023257024%_
                            _%target252506252607%_
                            _%tl252508252609%_)
                     (letrec ((_%loop252509252612%_
                               (lambda (_%hd252507252615%_
                                        _%signature252513252617%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd252507252615%_))
                                     (let ((_%e252510252619%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd252507252615%_))))
                                       (let ((_%lp-tl252512252624%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e252510252619%_)))
                                             (_%lp-hd252511252622%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e252510252619%_))))
                                         (_%loop252509252612%_
                                          _%lp-tl252512252624%_
                                          (cons _%lp-hd252511252622%_
                                                _%signature252513252617%_))))
                                     (let ((_%signature252514252627%_
                                            (reverse _%signature252513252617%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl252502252596%_))
                                           (let ((_%e252515252629%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl252502252596%_))))
                                             (let ((_%tl252517252634%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e252515252629%_)))
                                                   (_%hd252516252632%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e252515252629%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl252517252634%_))
                                                   (_%__kont257021257022%_
                                                    _%hd252516252632%_
                                                    _%signature252514252627%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g252493252533%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g252493252533%_))))))))
                       (_%loop252509252612%_ _%target252506252607%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx257019257020%_))
                  (let ((_%e252497252583%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx257019257020%_))))
                    (let ((_%tl252499252588%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e252497252583%_)))
                          (_%hd252498252586%_
                           (let ()
                             (declare (not safe))
                             (##car _%e252497252583%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl252499252588%_))
                          (let ((_%e252500252591%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl252499252588%_))))
                            (let ((_%tl252502252596%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252500252591%_)))
                                  (_%hd252501252594%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252500252591%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd252501252594%_))
                                  (let ((_%e252503252599%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd252501252594%_))))
                                    (let ((_%tl252505252604%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252503252599%_)))
                                          (_%hd252504252602%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252503252599%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd252504252602%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd252504252602%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl252505252604%_))
                                                  (let ((_%__splice257023257024%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl252505252604%_
                                                            '0))))
                                                    (let ((_%tl252508252609%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice257023257024%_
                                                              '1)))
                                                          (_%target252506252607%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice257023257024%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl252508252609%_))
                                                          (_%__match257056257057%_
                                                           _%e252497252583%_
                                                           _%hd252498252586%_
                                                           _%tl252499252588%_
                                                           _%e252500252591%_
                                                           _%hd252501252594%_
                                                           _%tl252502252596%_
                                                           _%e252503252599%_
                                                           _%hd252504252602%_
                                                           _%tl252505252604%_
                                                           _%__splice257023257024%_
                                                           _%target252506252607%_
                                                           _%tl252508252609%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl252502252596%_))
                      (let ((_%e252526252554%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl252502252596%_))))
                        (let ((_%tl252528252559%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252526252554%_)))
                              (_%hd252527252557%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252526252554%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252528252559%_))
                              (_%__kont257025257026%_
                               _%hd252527252557%_
                               _%hd252501252594%_)
                              (let ()
                                (declare (not safe))
                                (_%g252493252533%_)))))
                      (let () (declare (not safe)) (_%g252493252533%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl252502252596%_))
                                                      (let ((_%e252526252554%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl252502252596%_))))
                (let ((_%tl252528252559%_
                       (let () (declare (not safe)) (##cdr _%e252526252554%_)))
                      (_%hd252527252557%_
                       (let ()
                         (declare (not safe))
                         (##car _%e252526252554%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl252528252559%_))
                      (_%__kont257025257026%_
                       _%hd252527252557%_
                       _%hd252501252594%_)
                      (let () (declare (not safe)) (_%g252493252533%_)))))
              (let () (declare (not safe)) (_%g252493252533%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl252502252596%_))
                                                  (let ((_%e252526252554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl252502252596%_))))
                                                    (let ((_%tl252528252559%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e252526252554%_)))
                                                          (_%hd252527252557%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e252526252554%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl252528252559%_))
                                                          (_%__kont257025257026%_
                                                           _%hd252527252557%_
                                                           _%hd252501252594%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g252493252533%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g252493252533%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl252502252596%_))
                                              (let ((_%e252526252554%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl252502252596%_))))
                                                (let ((_%tl252528252559%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e252526252554%_)))
                                                      (_%hd252527252557%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e252526252554%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl252528252559%_))
                                                      (_%__kont257025257026%_
                                                       _%hd252527252557%_
                                                       _%hd252501252594%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g252493252533%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g252493252533%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl252502252596%_))
                                      (let ((_%e252526252554%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl252502252596%_))))
                                        (let ((_%tl252528252559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252526252554%_)))
                                              (_%hd252527252557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252526252554%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl252528252559%_))
                                              (_%__kont257025257026%_
                                               _%hd252527252557%_
                                               _%hd252501252594%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g252493252533%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g252493252533%_))))))
                          (let () (declare (not safe)) (_%g252493252533%_)))))
                  (let () (declare (not safe)) (_%g252493252533%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx252464%_ _%expr252465%_ _%type252466%_)
        (let ((_%$e252468%_ (not _%type252466%_)))
          (if _%$e252468%_
              _%$e252468%_
              (let ((_%$e252471%_
                     (eq? (##structure-ref _%type252466%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e252471%_
                    _%$e252471%_
                    (let ((_%$e252474%_
                           (eq? (##structure-ref
                                 _%type252466%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e252474%_
                          _%$e252474%_
                          (let ((_%expr-type252478%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr252465%_))))
                            (if (not _%expr-type252478%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx252464%_
                                   _%type252466%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type252478%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx252464%_
                                       _%type252466%_
                                       _%expr-type252478%_))
                                    (let ((_%$e252482%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type252478%_
                                              'gxc#!abort::t))))
                                      (if _%$e252482%_
                                          _%$e252482%_
                                          (let ((_%$e252485%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type252478%_
                                                    _%type252466%_))))
                                            (if _%$e252485%_
                                                _%$e252485%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx252464%_
                                                   _%type252466%_
                                                   _%expr-type252478%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self251893%_ _%stx251894%_)
        (gxc#check-contract-violation!
         _%stx251894%_
         (let* ((_%__stx257105257106%_ _%stx251894%_)
                (_%g251899252009%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; invalid match target"
                      _%__stx257105257106%_)))))
           (let ((_%__kont257107257108%_
                  (lambda (_%g251901252438%_
                           _%g251902252439%_
                           _%g251903252440%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-e _%g251903252440%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self251893%_ _%g251902252439%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self251893%_
                           _%g251901252438%_)))))
                 (_%__kont257109257110%_
                  (lambda (_%g251922252267%_
                           _%g251923252268%_
                           _%g251924252269%_
                           _%g251925252270%_)
                    (let ((_%$e252302%_
                           (let ((__tmp257536
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g251925252270%_))))
                             (declare (not safe))
                             (gxc#optimizer-lookup-type __tmp257536))))
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
                                      (let ((__tmp257537
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
                                         __tmp257537
                                         _%stx251894%_
                                         _%self251893%_)))
                                     (_%K252314%_
                                      (let ((__tmp257538
                                             (lambda ()
                                               (let ((__tmp257541
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self251893%_
                                                           _%g251923252268%_))))
                                                     (__tmp257539
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#identifier-symbol _%g251924252269%_))
                          (let ((__tmp257540
                                 (##structure-ref
                                  _%$e252302%_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             _%stx251894%_
                             __tmp257540)))
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp257541
                                                  gxc#current-compile-path-type
                                                  __tmp257539)))))
                                        (declare (not safe))
                                        (__make-promise __tmp257538)))
                                     (_%E252317%_
                                      (let ((__tmp257542
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self251893%_
                                                  _%g251922252267%_)))))
                                        (declare (not safe))
                                        (__make-promise __tmp257542)))
                                     (_%__stx257079257080%_ _%test252310%_)
                                     (_%g252321252334%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx257079257080%_)))))
                                (let ((_%__kont257081257082%_
                                       (lambda (_%g252323252362%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%g252323252362%_))
                                             (force _%K252314%_)
                                             (force _%E252317%_))))
                                      (_%__kont257083257084%_
                                       (lambda ()
                                         (let ((__tmp257543
                                                (cons '%#if
                                                      (cons _%test252310%_
                                                            (cons (force _%K252314%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (force _%E252317%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp257543
                                            _%stx251894%_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx257079257080%_))
                                      (let ((_%e252324252346%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx257079257080%_))))
                                        (let ((_%tl252326252351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252324252346%_)))
                                              (_%hd252325252349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252324252346%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%hd252325252349%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#quote
                                                     _%hd252325252349%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl252326252351%_))
                                                      (let ((_%e252327252354%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl252326252351%_))))
                (let ((_%tl252329252359%_
                       (let () (declare (not safe)) (##cdr _%e252327252354%_)))
                      (_%hd252328252357%_
                       (let ()
                         (declare (not safe))
                         (##car _%e252327252354%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl252329252359%_))
                      (_%__kont257081257082%_ _%hd252328252357%_)
                      (_%__kont257083257084%_))))
              (_%__kont257083257084%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont257083257084%_))
                                              (_%__kont257083257084%_))))
                                      (_%__kont257083257084%_))))
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
                 (_%__kont257111257112%_
                  (lambda (_%g251959252143%_
                           _%g251960252144%_
                           _%g251961252145%_
                           _%g251962252146%_)
                    (gxc#optimize-if%
                     _%self251893%_
                     (let ((__tmp257544
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#if))
                                  (cons _%g251961252145%_
                                        (cons _%g251959252143%_
                                              (cons _%g251960252144%_ '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp257544 _%stx251894%_)))))
                 (_%__kont257113257114%_
                  (lambda (_%g251990252046%_
                           _%g251991252047%_
                           _%g251992252048%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-operands _%self251893%_ _%stx251894%_)))))
             (let ((_%__match257312257313%_
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
                            (_%__kont257111257112%_
                             _%g251959252143%_
                             _%g251960252144%_
                             _%g251961252145%_
                             _%g251962252146%_)
                            (_%__kont257113257114%_
                             _%hd251988252138%_
                             _%hd251985252130%_
                             _%hd251967252082%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx257105257106%_))
                   (let ((_%e251904252390%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx257105257106%_))))
                     (let ((_%tl251906252395%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e251904252390%_)))
                           (_%hd251905252393%_
                            (let ()
                              (declare (not safe))
                              (##car _%e251904252390%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl251906252395%_))
                           (let ((_%e251907252398%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl251906252395%_))))
                             (let ((_%tl251909252403%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e251907252398%_)))
                                   (_%hd251908252401%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e251907252398%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd251908252401%_))
                                   (let ((_%e251910252406%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd251908252401%_))))
                                     (let ((_%tl251912252411%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e251910252406%_)))
                                           (_%hd251911252409%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e251910252406%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd251911252409%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#quote
                                                  _%hd251911252409%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl251912252411%_))
                                                   (let ((_%e251913252414%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl251912252411%_))))
                                                     (let ((_%tl251915252419%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e251913252414%_)))
                                                           (_%hd251914252417%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e251913252414%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl251915252419%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl251909252403%_))
                       (let ((_%e251916252422%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl251909252403%_))))
                         (let ((_%tl251918252427%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e251916252422%_)))
                               (_%hd251917252425%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e251916252422%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl251918252427%_))
                               (let ((_%e251919252430%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl251918252427%_))))
                                 (let ((_%tl251921252435%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e251919252430%_)))
                                       (_%hd251920252433%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e251919252430%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl251921252435%_))
                                       (_%__kont257107257108%_
                                        _%hd251920252433%_
                                        _%hd251917252425%_
                                        _%hd251914252417%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g251899252009%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g251899252009%_)))))
                       (let () (declare (not safe)) (_%g251899252009%_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl251909252403%_))
                       (let ((_%e251999252030%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl251909252403%_))))
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
                                       (_%__kont257113257114%_
                                        _%hd252003252041%_
                                        _%hd252000252033%_
                                        _%hd251908252401%_)
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
                                                          _%tl251909252403%_))
                                                       (let ((_%e251999252030%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl251909252403%_))))
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
                               (_%__kont257113257114%_
                                _%hd252003252041%_
                                _%hd252000252033%_
                                _%hd251908252401%_)
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
                                                      _%hd251911252409%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl251912252411%_))
                                                       (let ((_%e251935252203%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl251912252411%_))))
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
                                                      _%tl251909252403%_))
                                                   (let ((_%e251953252251%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl251909252403%_))))
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
                           (_%__kont257109257110%_
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
                                                      _%tl251909252403%_))
                                                   (let ((_%e251999252030%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl251909252403%_))))
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
                           (_%__kont257113257114%_
                            _%hd252003252041%_
                            _%hd252000252033%_
                            _%hd251908252401%_)
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
                                                      _%tl251909252403%_))
                                                   (let ((_%e251984252127%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl251909252403%_))))
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
                           (_%__match257312257313%_
                            _%e251904252390%_
                            _%hd251905252393%_
                            _%tl251906252395%_
                            _%e251907252398%_
                            _%hd251908252401%_
                            _%tl251909252403%_
                            _%e251910252406%_
                            _%hd251911252409%_
                            _%tl251912252411%_
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
                                                      _%tl251909252403%_))
                                                   (let ((_%e251999252030%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl251909252403%_))))
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
                           (_%__kont257113257114%_
                            _%hd252003252041%_
                            _%hd252000252033%_
                            _%hd251908252401%_)
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
                                             (gx#stx-pair? _%tl251909252403%_))
                                           (let ((_%e251984252127%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl251909252403%_))))
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
                                                           (_%__match257312257313%_
                                                            _%e251904252390%_
                                                            _%hd251905252393%_
                                                            _%tl251906252395%_
                                                            _%e251907252398%_
                                                            _%hd251908252401%_
                                                            _%tl251909252403%_
                                                            _%e251910252406%_
                                                            _%hd251911252409%_
                                                            _%tl251912252411%_
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
                                             (gx#stx-pair? _%tl251909252403%_))
                                           (let ((_%e251999252030%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl251909252403%_))))
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
                                                           (_%__kont257113257114%_
                                                            _%hd252003252041%_
                                                            _%hd252000252033%_
                                                            _%hd251908252401%_)
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
                                         (gx#stx-pair? _%tl251909252403%_))
                                       (let ((_%e251984252127%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl251909252403%_))))
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
                                                       (_%__match257312257313%_
                                                        _%e251904252390%_
                                                        _%hd251905252393%_
                                                        _%tl251906252395%_
                                                        _%e251907252398%_
                                                        _%hd251908252401%_
                                                        _%tl251909252403%_
                                                        _%e251910252406%_
                                                        _%hd251911252409%_
                                                        _%tl251912252411%_
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
                                         (gx#stx-pair? _%tl251909252403%_))
                                       (let ((_%e251999252030%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl251909252403%_))))
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
                                                       (_%__kont257113257114%_
                                                        _%hd252003252041%_
                                                        _%hd252000252033%_
                                                        _%hd251908252401%_)
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
                                     (gx#stx-pair? _%tl251909252403%_))
                                   (let ((_%e251984252127%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl251909252403%_))))
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
                                                   (_%__match257312257313%_
                                                    _%e251904252390%_
                                                    _%hd251905252393%_
                                                    _%tl251906252395%_
                                                    _%e251907252398%_
                                                    _%hd251908252401%_
                                                    _%tl251909252403%_
                                                    _%e251910252406%_
                                                    _%hd251911252409%_
                                                    _%tl251912252411%_
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
                                     (gx#stx-pair? _%tl251909252403%_))
                                   (let ((_%e251999252030%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl251909252403%_))))
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
                                                   (_%__kont257113257114%_
                                                    _%hd252003252041%_
                                                    _%hd252000252033%_
                                                    _%hd251908252401%_)
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
                             (gx#stx-pair? _%tl251909252403%_))
                           (let ((_%e251984252127%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl251909252403%_))))
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
                                           (_%__match257312257313%_
                                            _%e251904252390%_
                                            _%hd251905252393%_
                                            _%tl251906252395%_
                                            _%e251907252398%_
                                            _%hd251908252401%_
                                            _%tl251909252403%_
                                            _%e251910252406%_
                                            _%hd251911252409%_
                                            _%tl251912252411%_
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
                             (gx#stx-pair? _%tl251909252403%_))
                           (let ((_%e251999252030%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl251909252403%_))))
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
                                           (_%__kont257113257114%_
                                            _%hd252003252041%_
                                            _%hd252000252033%_
                                            _%hd251908252401%_)
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
                                                          _%tl251909252403%_))
                                                       (let ((_%e251999252030%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl251909252403%_))))
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
                               (_%__kont257113257114%_
                                _%hd252003252041%_
                                _%hd252000252033%_
                                _%hd251908252401%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g251899252009%_)))))
                       (let () (declare (not safe)) (_%g251899252009%_)))))
               (let () (declare (not safe)) (_%g251899252009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl251909252403%_))
                                                   (let ((_%e251999252030%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl251909252403%_))))
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
                           (_%__kont257113257114%_
                            _%hd252003252041%_
                            _%hd252000252033%_
                            _%hd251908252401%_)
                           (let () (declare (not safe)) (_%g251899252009%_)))))
                   (let () (declare (not safe)) (_%g251899252009%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g251899252009%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl251909252403%_))
                                           (let ((_%e251999252030%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl251909252403%_))))
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
                                                           (_%__kont257113257114%_
                                                            _%hd252003252041%_
                                                            _%hd252000252033%_
                                                            _%hd251908252401%_)
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
                                         (gx#stx-pair? _%tl251909252403%_))
                                       (let ((_%e251999252030%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl251909252403%_))))
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
                                                       (_%__kont257113257114%_
                                                        _%hd252003252041%_
                                                        _%hd252000252033%_
                                                        _%hd251908252401%_)
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
                                     (gx#stx-pair? _%tl251909252403%_))
                                   (let ((_%e251999252030%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl251909252403%_))))
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
                                                   (_%__kont257113257114%_
                                                    _%hd252003252041%_
                                                    _%hd252000252033%_
                                                    _%hd251908252401%_)
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
                             (gx#stx-pair? _%tl251909252403%_))
                           (let ((_%e251999252030%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl251909252403%_))))
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
                                           (_%__kont257113257114%_
                                            _%hd252003252041%_
                                            _%hd252000252033%_
                                            _%hd251908252401%_)
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
                     (gx#stx-pair? _%tl251909252403%_))
                   (let ((_%e251999252030%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl251909252403%_))))
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
                                   (_%__kont257113257114%_
                                    _%hd252003252041%_
                                    _%hd252000252033%_
                                    _%hd251908252401%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g251899252009%_)))))
                           (let () (declare (not safe)) (_%g251899252009%_)))))
                   (let () (declare (not safe)) (_%g251899252009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl251909252403%_))
                                                       (let ((_%e251999252030%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl251909252403%_))))
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
                               (_%__kont257113257114%_
                                _%hd252003252041%_
                                _%hd252000252033%_
                                _%hd251908252401%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g251899252009%_)))))
                       (let () (declare (not safe)) (_%g251899252009%_)))))
               (let () (declare (not safe)) (_%g251899252009%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl251909252403%_))
                                               (let ((_%e251999252030%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl251909252403%_))))
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
                       (_%__kont257113257114%_
                        _%hd252003252041%_
                        _%hd252000252033%_
                        _%hd251908252401%_)
                       (let () (declare (not safe)) (_%g251899252009%_)))))
               (let () (declare (not safe)) (_%g251899252009%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g251899252009%_))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl251909252403%_))
                                       (let ((_%e251999252030%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl251909252403%_))))
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
                                                       (_%__kont257113257114%_
                                                        _%hd252003252041%_
                                                        _%hd252000252033%_
                                                        _%hd251908252401%_)
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
        (let* ((_%__stx257341257342%_ _%expr251762%_)
               (_%g251765251795%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx257341257342%_)))))
          (let ((_%__kont257343257344%_
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
                (_%__kont257345257346%_ (lambda () _%expr251762%_)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx257341257342%_))
                (let ((_%e251770251807%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx257341257342%_))))
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
                                                    (_%__kont257343257344%_
                                                     _%hd251786251850%_
                                                     _%hd251783251842%_
                                                     _%hd251780251834%_)
                                                    (_%__kont257345257346%_))))
                                            (_%__kont257345257346%_))
                                        (_%__kont257345257346%_))))
                                (_%__kont257345257346%_))))
                        (_%__kont257345257346%_))))
                (_%__kont257345257346%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont257345257346%_))
                                                (_%__kont257345257346%_))))
                                        (_%__kont257345257346%_))))
                                (_%__kont257345257346%_))
                            (_%__kont257345257346%_))
                        (_%__kont257345257346%_))))
                (_%__kont257345257346%_))))))))
