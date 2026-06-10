(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1781119061)
  (begin
    (define gxc#::optimize-call::t
      (make-class-type
       'gxc#::optimize-call::t
       '::optimize-call
       (list gxc#::basic-xform::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::optimize-call? (make-class-predicate gxc#::optimize-call::t))
    (define gxc#make-::optimize-call
      (lambda _%$args223938%_
        (apply make-instance gxc#::optimize-call::t _%$args223938%_)))
    (define gxc#::optimize-call-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::basic-xform-bind-methods!)
         (bind-method! gxc#::optimize-call::t '%#call gxc#optimize-call%)
         (bind-method! gxc#::optimize-call::t '%#if gxc#optimize-if%)
         (seal-class! gxc#::optimize-call::t))))
    (define gxc#apply-optimize-call
      (lambda (_%stx223930%_)
        (force gxc#::optimize-call-bind-methods!)
        (let ((_%self223933%_ (gxc#make-::optimize-call)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self223933%_ _%stx223930%_))
           gxc#current-compile-method
           _%self223933%_))))
    (define gxc#::check-return-type::t
      (make-class-type
       'gxc#::check-return-type::t
       '::check-return-type
       (list gxc#::void::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::check-return-type?
      (make-class-predicate gxc#::check-return-type::t))
    (define gxc#make-::check-return-type
      (lambda _%$args223927%_
        (apply make-instance gxc#::check-return-type::t _%$args223927%_)))
    (define gxc#::check-return-type-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::void-bind-methods!)
         (bind-method! gxc#::check-return-type::t '%#begin gxc#apply-begin%)
         (bind-method!
          gxc#::check-return-type::t
          '%#begin-syntax
          gxc#apply-begin-syntax%)
         (bind-method!
          gxc#::check-return-type::t
          '%#begin-annotation
          gxc#apply-check-return-type-begin-annotation%)
         (bind-method! gxc#::check-return-type::t '%#module gxc#apply-module%)
         (bind-method!
          gxc#::check-return-type::t
          '%#define-values
          gxc#apply-define-values%)
         (bind-method!
          gxc#::check-return-type::t
          '%#define-syntax
          gxc#apply-define-syntax%)
         (bind-method!
          gxc#::check-return-type::t
          '%#lambda
          gxc#apply-body-lambda%)
         (bind-method!
          gxc#::check-return-type::t
          '%#case-lambda
          gxc#apply-body-case-lambda%)
         (bind-method!
          gxc#::check-return-type::t
          '%#let-values
          gxc#apply-body-let-values%)
         (bind-method!
          gxc#::check-return-type::t
          '%#letrec-values
          gxc#apply-body-let-values%)
         (bind-method!
          gxc#::check-return-type::t
          '%#letrec*-values
          gxc#apply-body-let-values%)
         (bind-method! gxc#::check-return-type::t '%#call gxc#apply-operands)
         (bind-method!
          gxc#::check-return-type::t
          '%#if
          gxc#apply-path-type-if%)
         (bind-method! gxc#::check-return-type::t '%#set! gxc#apply-body-setq%)
         (seal-class! gxc#::check-return-type::t))))
    (define gxc#apply-check-return-type
      (lambda (_%stx223919%_)
        (force gxc#::check-return-type-bind-methods!)
        (let ((_%self223922%_ (gxc#make-::check-return-type)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self223922%_ _%stx223919%_))
           gxc#current-compile-method
           _%self223922%_))))
    (define gxc#optimize-call%
      (lambda (_%self223067%_ _%stx223068%_)
        (let* ((_%$%g223072223154%_
                (lambda (_%$%g223073223151%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g223073223151%_)))
               (_%$%g223071223234%_
                (lambda (_%$%g223073223157%_)
                  (if (gx#stx-pair? _%$%g223073223157%_)
                      (let ((_%$%e223135223159%_
                             (gx#stx-e _%$%g223073223157%_)))
                        (let ((_%$%hd223136223162%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223135223159%_)))
                              (_%$%tl223137223164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223135223159%_))))
                          (if (gx#stx-pair? _%$%tl223137223164%_)
                              (let ((_%$%e223138223167%_
                                     (gx#stx-e _%$%tl223137223164%_)))
                                (let ((_%$%hd223139223170%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223138223167%_)))
                                      (_%$%tl223140223172%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223138223167%_))))
                                  (if (gx#stx-pair/null? _%$%tl223140223172%_)
                                      (let ((_g223940_
                                             (gx#syntax-split-splice
                                              _%$%tl223140223172%_
                                              '0)))
                                        (begin
                                          (let ((_g223941_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g223940_)
                                                       (##values-length
                                                        _g223940_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g223941_ 2)))
                                                (error "Context expects 2 values"
                                                       _g223941_)))
                                          (let ((_%$%target223141223175%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g223940_ 0)))
                                                (_%$%tl223143223177%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g223940_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%$%tl223143223177%_)
                                                (letrec ((_%$%loop223144223180%_
                                                          (lambda (_%$%hd223142223183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%rand223148223185%_)
                    (if (gx#stx-pair? _%$%hd223142223183%_)
                        (let ((_%$%e223145223187%_
                               (gx#stx-e _%$%hd223142223183%_)))
                          (let ((_%$%lp-hd223146223190%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e223145223187%_)))
                                (_%$%lp-tl223147223192%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e223145223187%_))))
                            (_%$%loop223144223180%_
                             _%$%lp-tl223147223192%_
                             (cons _%$%lp-hd223146223190%_
                                   _%$%rand223148223185%_))))
                        (let ((_%$%rand223149223195%_
                               (reverse _%$%rand223148223185%_)))
                          ((lambda (_%$%g223133223197%_ _%$%g223134223198%_)
                             (let ((_%rator-type223215%_
                                    (gxc#apply-basic-expression-type
                                     _%$%g223134223198%_)))
                               (if (and _%rator-type223215%_
                                        (eq? (gxc#!type-id
                                              _%rator-type223215%_)
                                             'procedure)
                                        (not (gxc#!primitive?
                                              _%rator-type223215%_))
                                        (not (and (gxc#!procedure?
                                                   _%rator-type223215%_)
                                                  (eq? (gxc#!procedure-origin
                                                        _%rator-type223215%_)
                                                       (gx#expander-context-id
                                                        (gx#current-expander-context))))))
                                   (gxc#xform-wrap-source
                                    (cons* '%#call-unchecked
                                           (gxc#compile-e
                                            _%self223067%_
                                            _%$%g223134223198%_)
                                           (map (lambda (_%$%g223217223219%_)
                                                  (gxc#compile-e
                                                   _%self223067%_
                                                   _%$%g223217223219%_))
                                                (foldr (lambda (_%$%g223221223224%_
                                                                _%$%g223222223226%_)
                                                         (cons _%$%g223221223224%_
                                                               _%$%g223222223226%_))
                                                       '()
                                                       _%$%g223133223197%_)))
                                    _%stx223068%_)
                                   (if (or (not _%rator-type223215%_)
                                           (memq (gxc#!type-id
                                                  _%rator-type223215%_)
                                                 '(t procedure)))
                                       (gxc#xform-call%
                                        _%self223067%_
                                        _%stx223068%_)
                                       (gxc#raise-compile-error
                                        '"illegal application; not a procedure"
                                        _%stx223068%_
                                        _%rator-type223215%_)))))
                           _%$%rand223149223195%_
                           _%$%hd223139223170%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop223144223180%_
                                                   _%$%target223141223175%_
                                                   '()))
                                                (_%$%g223072223154%_
                                                 _%$%g223073223157%_)))))
                                      (_%$%g223072223154%_
                                       _%$%g223073223157%_))))
                              (_%$%g223072223154%_ _%$%g223073223157%_))))
                      (_%$%g223072223154%_ _%$%g223073223157%_))))
               (_%$%g223070223656%_
                (lambda (_%$%g223073223237%_)
                  (if (gx#stx-pair? _%$%g223073223237%_)
                      (let ((_%$%e223100223239%_
                             (gx#stx-e _%$%g223073223237%_)))
                        (let ((_%$%hd223101223242%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223100223239%_)))
                              (_%$%tl223102223244%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223100223239%_))))
                          (if (gx#stx-pair? _%$%tl223102223244%_)
                              (let ((_%$%e223103223247%_
                                     (gx#stx-e _%$%tl223102223244%_)))
                                (let ((_%$%hd223104223250%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223103223247%_)))
                                      (_%$%tl223105223252%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223103223247%_))))
                                  (if (gx#stx-pair? _%$%hd223104223250%_)
                                      (let ((_%$%e223106223255%_
                                             (gx#stx-e _%$%hd223104223250%_)))
                                        (let ((_%$%hd223107223258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e223106223255%_)))
                                              (_%$%tl223108223260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e223106223255%_))))
                                          (if (gx#identifier?
                                               _%$%hd223107223258%_)
                                              (if (gx#stx-eq?
                                                   '%#lambda
                                                   _%$%hd223107223258%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl223108223260%_)
                                                      (let ((_%$%e223109223263%_
                                                             (gx#stx-e
                                                              _%$%tl223108223260%_)))
                                                        (let ((_%$%hd223110223266%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e223109223263%_)))
                      (_%$%tl223111223268%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e223109223263%_))))
                  (if (gx#stx-pair/null? _%$%hd223110223266%_)
                      (let ((_g223942_
                             (gx#syntax-split-splice _%$%hd223110223266%_ '0)))
                        (begin
                          (let ((_g223943_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g223942_)
                                       (##values-length _g223942_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g223943_ 2)))
                                (error "Context expects 2 values" _g223943_)))
                          (let ((_%$%target223112223271%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g223942_ 0)))
                                (_%$%tl223114223273%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g223942_ 1))))
                            (if (gx#stx-null? _%$%tl223114223273%_)
                                (letrec ((_%$%loop223115223276%_
                                          (lambda (_%$%hd223113223279%_
                                                   _%$%arg223119223281%_)
                                            (if (gx#stx-pair?
                                                 _%$%hd223113223279%_)
                                                (let ((_%$%e223116223283%_
                                                       (gx#stx-e
                                                        _%$%hd223113223279%_)))
                                                  (let ((_%$%lp-hd223117223286%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e223116223283%_)))
                                                        (_%$%lp-tl223118223288%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e223116223283%_))))
                                                    (_%$%loop223115223276%_
                                                     _%$%lp-tl223118223288%_
                                                     (cons _%$%lp-hd223117223286%_
                                                           _%$%arg223119223281%_))))
                                                (let ((_%$%arg223120223291%_
                                                       (reverse _%$%arg223119223281%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%tl223111223268%_)
                                                      (let ((_%$%e223121223293%_
                                                             (gx#stx-e
                                                              _%$%tl223111223268%_)))
                                                        (let ((_%$%hd223122223296%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e223121223293%_)))
                      (_%$%tl223123223298%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e223121223293%_))))
                  (if (gx#stx-null? _%$%tl223123223298%_)
                      (if (gx#stx-pair/null? _%$%tl223105223252%_)
                          (let ((_g223944_
                                 (gx#syntax-split-splice
                                  _%$%tl223105223252%_
                                  '0)))
                            (begin
                              (let ((_g223945_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g223944_)
                                           (##values-length _g223944_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g223945_ 2)))
                                    (error "Context expects 2 values"
                                           _g223945_)))
                              (let ((_%$%target223124223301%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g223944_ 0)))
                                    (_%$%tl223126223303%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g223944_ 1))))
                                (if (gx#stx-null? _%$%tl223126223303%_)
                                    (letrec ((_%$%loop223127223306%_
                                              (lambda (_%$%hd223125223309%_
                                                       _%$%rand223131223311%_)
                                                (if (gx#stx-pair?
                                                     _%$%hd223125223309%_)
                                                    (let ((_%$%e223128223313%_
                                                           (gx#stx-e
                                                            _%$%hd223125223309%_)))
                                                      (let ((_%$%lp-hd223129223316%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e223128223313%_)))
                    (_%$%lp-tl223130223318%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e223128223313%_))))
                (_%$%loop223127223306%_
                 _%$%lp-tl223130223318%_
                 (cons _%$%lp-hd223129223316%_ _%$%rand223131223311%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%rand223132223321%_
                                                           (reverse _%$%rand223131223311%_)))
                                                      ((lambda (_%$%g223097223323%_
                                                                _%$%g223098223324%_
                                                                _%$%g223099223325%_)
                                                         (if (and (= (length (foldr (lambda (_%$%g223351223354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                     _%$%g223352223356%_)
                                              (cons _%$%g223351223354%_
                                                    _%$%g223352223356%_))
                                            '()
                                            _%$%g223099223325%_))
                             (length (foldr (lambda (_%$%g223358223361%_
                                                     _%$%g223359223363%_)
                                              (cons _%$%g223358223361%_
                                                    _%$%g223359223363%_))
                                            '()
                                            _%$%g223097223323%_)))
                          (andmap (lambda (_%id223366%_)
                                    (not (gxc#mutable-binding? _%id223366%_)))
                                  (foldr (lambda (_%$%g223367223370%_
                                                  _%$%g223368223372%_)
                                           (cons _%$%g223367223370%_
                                                 _%$%g223368223372%_))
                                         '()
                                         _%$%g223099223325%_))
                          (andmap (lambda (_%rand223375%_)
                                    (let* ((_%$%g223378223391%_
                                            (lambda (_%$%g223379223388%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g223379223388%_)))
                                           (_%$%g223377223398%_
                                            (lambda (_%$%g223379223394%_)
                                              ((lambda () '#t))))
                                           (_%$%g223376223433%_
                                            (lambda (_%$%g223379223401%_)
                                              (if (gx#stx-pair?
                                                   _%$%g223379223401%_)
                                                  (let ((_%$%e223381223403%_
                                                         (gx#stx-e
                                                          _%$%g223379223401%_)))
                                                    (let ((_%$%hd223382223406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e223381223403%_)))
                                                          (_%$%tl223383223408%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e223381223403%_))))
                                                      (if (gx#identifier?
                                                           _%$%hd223382223406%_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _%$%hd223382223406%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%tl223383223408%_)
                          (let ((_%$%e223384223411%_
                                 (gx#stx-e _%$%tl223383223408%_)))
                            (let ((_%$%hd223385223414%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e223384223411%_)))
                                  (_%$%tl223386223416%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e223384223411%_))))
                              (if (gx#stx-null? _%$%tl223386223416%_)
                                  ((lambda (_%$%g223380223419%_)
                                     (not (gxc#mutable-binding?
                                           _%$%g223380223419%_)))
                                   _%$%hd223385223414%_)
                                  (_%$%g223377223398%_ _%$%g223379223401%_))))
                          (_%$%g223377223398%_ _%$%g223379223401%_))
                      (_%$%g223377223398%_ _%$%g223379223401%_))
                  (_%$%g223377223398%_ _%$%g223379223401%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g223377223398%_
                                                   _%$%g223379223401%_)))))
                                      (_%$%g223376223433%_ _%rand223375%_)))
                                  (foldr (lambda (_%$%g223435223438%_
                                                  _%$%g223436223440%_)
                                           (cons _%$%g223435223438%_
                                                 _%$%g223436223440%_))
                                         '()
                                         _%$%g223097223323%_)))
                     (let _%loop223443%_ ((_%rest-arg223445%_
                                           (foldr (lambda (_%$%g223641223644%_
                                                           _%$%g223642223646%_)
                                                    (cons _%$%g223641223644%_
                                                          _%$%g223642223646%_))
                                                  '()
                                                  _%$%g223099223325%_))
                                          (_%rest-rand223446%_
                                           (foldr (lambda (_%$%g223648223651%_
                                                           _%$%g223649223653%_)
                                                    (cons _%$%g223648223651%_
                                                          _%$%g223649223653%_))
                                                  '()
                                                  _%$%g223097223323%_))
                                          (_%bind223447%_ '())
                                          (_%subst223448%_ '()))
                       (let* ((_%$%rest-arg223449223457%_ _%rest-arg223445%_)
                              (_%$%E223452223461%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%$%rest-arg223449223457%_
                                        '([arg-id . rest-arg])
                                        'else)
                                 (void)))
                              (_%$%else223451223470%_
                               (lambda ()
                                 (let* ((_%body223465%_
                                         (if (null? _%subst223448%_)
                                             _%$%g223098223324%_
                                             (gxc#xform-wrap-source
                                              (gxc#apply-inline-subst
                                               _%$%g223098223324%_
                                               'subst:
                                               _%subst223448%_)
                                              _%stx223068%_)))
                                        (_%expr223467%_
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _%bind223447%_
                                                      (cons _%body223465%_
                                                            '())))
                                          _%stx223068%_)))
                                   (gxc#apply-refine-type-info _%expr223467%_)
                                   (gxc#compile-e
                                    _%self223067%_
                                    _%expr223467%_))))
                              (_%$%K223453223630%_
                               (lambda (_%rest-arg223473%_ _%arg-id223474%_)
                                 (let* ((_%$%rest-rand223475223483%_
                                         _%rest-rand223446%_)
                                        (_%$%E223478223487%_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _%$%rest-rand223475223483%_
                                                  '([rand . rest-rand])
                                                  'else)
                                           (void)))
                                        (_%$%else223477223505%_
                                         (lambda ()
                                           (gxc#raise-compile-error
                                            '"inline lambda arity mismatch"
                                            _%stx223068%_
                                            (foldr (lambda (_%$%g223490223493%_
                                                            _%$%g223491223495%_)
                                                     (cons _%$%g223490223493%_
                                                           _%$%g223491223495%_))
                                                   '()
                                                   _%$%g223099223325%_)
                                            (foldr (lambda (_%$%g223497223500%_
                                                            _%$%g223498223502%_)
                                                     (cons _%$%g223497223500%_
                                                           _%$%g223498223502%_))
                                                   '()
                                                   _%$%g223097223323%_))))
                                        (_%$%K223479223618%_
                                         (lambda (_%rest-rand223508%_
                                                  _%rand223509%_)
                                           (let* ((_%$%g223513223533%_
                                                   (lambda (_%$%g223514223530%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g223514223530%_)))
                                                  (_%$%g223512223540%_
                                                   (lambda (_%$%g223514223536%_)
                                                     ((lambda ()
                                                        (_%loop223443%_
                                                         _%rest-arg223473%_
                                                         _%rest-rand223508%_
                                                         (cons (cons (cons _%arg-id223474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons _%rand223509%_ '()))
                       _%bind223447%_)
                 _%subst223448%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g223511223583%_
                                                   (lambda (_%$%g223514223543%_)
                                                     (if (gx#stx-pair?
                                                          _%$%g223514223543%_)
                                                         (let ((_%$%e223523223545%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g223514223543%_)))
                   (let ((_%$%hd223524223548%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e223523223545%_)))
                         (_%$%tl223525223550%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e223523223545%_))))
                     (if (gx#identifier? _%$%hd223524223548%_)
                         (if (gx#stx-eq? '%#ref _%$%hd223524223548%_)
                             (if (gx#stx-pair? _%$%tl223525223550%_)
                                 (let ((_%$%e223526223553%_
                                        (gx#stx-e _%$%tl223525223550%_)))
                                   (let ((_%$%hd223527223556%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e223526223553%_)))
                                         (_%$%tl223528223558%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e223526223553%_))))
                                     (if (gx#stx-null? _%$%tl223528223558%_)
                                         ((lambda (_%$%g223522223561%_)
                                            (_%loop223443%_
                                             _%rest-arg223473%_
                                             _%rest-rand223508%_
                                             _%bind223447%_
                                             (cons (cons _%arg-id223474%_
                                                         _%rand223509%_)
                                                   _%subst223448%_)))
                                          _%$%hd223527223556%_)
                                         (_%$%g223512223540%_
                                          _%$%g223514223543%_))))
                                 (_%$%g223512223540%_ _%$%g223514223543%_))
                             (_%$%g223512223540%_ _%$%g223514223543%_))
                         (_%$%g223512223540%_ _%$%g223514223543%_))))
                 (_%$%g223512223540%_ _%$%g223514223543%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g223510223615%_
                                                   (lambda (_%$%g223514223586%_)
                                                     (if (gx#stx-pair?
                                                          _%$%g223514223586%_)
                                                         (let ((_%$%e223516223588%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g223514223586%_)))
                   (let ((_%$%hd223517223591%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e223516223588%_)))
                         (_%$%tl223518223593%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e223516223588%_))))
                     (if (gx#identifier? _%$%hd223517223591%_)
                         (if (gx#stx-eq? '%#quote _%$%hd223517223591%_)
                             (if (gx#stx-pair? _%$%tl223518223593%_)
                                 (let ((_%$%e223519223596%_
                                        (gx#stx-e _%$%tl223518223593%_)))
                                   (let ((_%$%hd223520223599%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e223519223596%_)))
                                         (_%$%tl223521223601%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e223519223596%_))))
                                     (if (gx#stx-null? _%$%tl223521223601%_)
                                         ((lambda (_%$%g223515223604%_)
                                            (_%loop223443%_
                                             _%rest-arg223473%_
                                             _%rest-rand223508%_
                                             _%bind223447%_
                                             (cons (cons _%arg-id223474%_
                                                         _%rand223509%_)
                                                   _%subst223448%_)))
                                          _%$%hd223520223599%_)
                                         (_%$%g223511223583%_
                                          _%$%g223514223586%_))))
                                 (_%$%g223511223583%_ _%$%g223514223586%_))
                             (_%$%g223511223583%_ _%$%g223514223586%_))
                         (_%$%g223511223583%_ _%$%g223514223586%_))))
                 (_%$%g223511223583%_ _%$%g223514223586%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g223510223615%_
                                              _%rand223509%_)))))
                                   (if (pair? _%$%rest-rand223475223483%_)
                                       (let ((_%$%hd223480223621%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%rest-rand223475223483%_)))
                                             (_%$%tl223481223623%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%rest-rand223475223483%_))))
                                         (let* ((_%rand223626%_
                                                 _%$%hd223480223621%_)
                                                (_%rest-rand223628%_
                                                 _%$%tl223481223623%_))
                                           (_%$%K223479223618%_
                                            _%rest-rand223628%_
                                            _%rand223626%_)))
                                       (_%$%else223477223505%_))))))
                         (if (pair? _%$%rest-arg223449223457%_)
                             (let ((_%$%hd223454223633%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%rest-arg223449223457%_)))
                                   (_%$%tl223455223635%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%rest-arg223449223457%_))))
                               (let* ((_%arg-id223638%_ _%$%hd223454223633%_)
                                      (_%rest-arg223640%_
                                       _%$%tl223455223635%_))
                                 (_%$%K223453223630%_
                                  _%rest-arg223640%_
                                  _%arg-id223638%_)))
                             (_%$%else223451223470%_))))
                     (_%$%g223071223234%_ _%$%g223073223237%_)))
               _%$%rand223132223321%_
               _%$%hd223122223296%_
               _%$%arg223120223291%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%loop223127223306%_
                                       _%$%target223124223301%_
                                       '()))
                                    (_%$%g223071223234%_
                                     _%$%g223073223237%_)))))
                          (_%$%g223071223234%_ _%$%g223073223237%_))
                      (_%$%g223071223234%_ _%$%g223073223237%_))))
              (_%$%g223071223234%_ _%$%g223073223237%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%loop223115223276%_
                                   _%$%target223112223271%_
                                   '()))
                                (_%$%g223071223234%_ _%$%g223073223237%_)))))
                      (_%$%g223071223234%_ _%$%g223073223237%_))))
              (_%$%g223071223234%_ _%$%g223073223237%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g223071223234%_
                                                   _%$%g223073223237%_))
                                              (_%$%g223071223234%_
                                               _%$%g223073223237%_))))
                                      (_%$%g223071223234%_
                                       _%$%g223073223237%_))))
                              (_%$%g223071223234%_ _%$%g223073223237%_))))
                      (_%$%g223071223234%_ _%$%g223073223237%_))))
               (_%$%g223069223916%_
                (lambda (_%$%g223073223659%_)
                  (if (gx#stx-pair? _%$%g223073223659%_)
                      (let ((_%$%e223076223661%_
                             (gx#stx-e _%$%g223073223659%_)))
                        (let ((_%$%hd223077223664%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e223076223661%_)))
                              (_%$%tl223078223666%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e223076223661%_))))
                          (if (gx#stx-pair? _%$%tl223078223666%_)
                              (let ((_%$%e223079223669%_
                                     (gx#stx-e _%$%tl223078223666%_)))
                                (let ((_%$%hd223080223672%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e223079223669%_)))
                                      (_%$%tl223081223674%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e223079223669%_))))
                                  (if (gx#stx-pair? _%$%hd223080223672%_)
                                      (let ((_%$%e223082223677%_
                                             (gx#stx-e _%$%hd223080223672%_)))
                                        (let ((_%$%hd223083223680%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e223082223677%_)))
                                              (_%$%tl223084223682%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e223082223677%_))))
                                          (if (gx#identifier?
                                               _%$%hd223083223680%_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd223083223680%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl223084223682%_)
                                                      (let ((_%$%e223085223685%_
                                                             (gx#stx-e
                                                              _%$%tl223084223682%_)))
                                                        (let ((_%$%hd223086223688%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e223085223685%_)))
                      (_%$%tl223087223690%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e223085223685%_))))
                  (if (gx#stx-null? _%$%tl223087223690%_)
                      (if (gx#stx-pair/null? _%$%tl223081223674%_)
                          (let ((_g223946_
                                 (gx#syntax-split-splice
                                  _%$%tl223081223674%_
                                  '0)))
                            (begin
                              (let ((_g223947_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g223946_)
                                           (##values-length _g223946_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g223947_ 2)))
                                    (error "Context expects 2 values"
                                           _g223947_)))
                              (let ((_%$%target223088223693%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g223946_ 0)))
                                    (_%$%tl223090223695%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g223946_ 1))))
                                (if (gx#stx-null? _%$%tl223090223695%_)
                                    (letrec ((_%$%loop223091223698%_
                                              (lambda (_%$%hd223089223701%_
                                                       _%$%rand223095223703%_)
                                                (if (gx#stx-pair?
                                                     _%$%hd223089223701%_)
                                                    (let ((_%$%e223092223705%_
                                                           (gx#stx-e
                                                            _%$%hd223089223701%_)))
                                                      (let ((_%$%lp-hd223093223708%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e223092223705%_)))
                    (_%$%lp-tl223094223710%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e223092223705%_))))
                (_%$%loop223091223698%_
                 _%$%lp-tl223094223710%_
                 (cons _%$%lp-hd223093223708%_ _%$%rand223095223703%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%rand223096223713%_
                                                           (reverse _%$%rand223095223703%_)))
                                                      ((lambda (_%$%g223074223715%_
                                                                _%$%g223075223716%_)
                                                         (let* ((_%rator-id223736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#identifier-symbol _%$%g223075223716%_))
                        (_%rator-type223738%_
                         (gxc#optimizer-resolve-type _%rator-id223736%_)))
                   (if (or (not _%rator-type223738%_)
                           (eq? (gxc#!type-id _%rator-type223738%_) 't))
                       (gxc#xform-call% _%self223067%_ _%stx223068%_)
                       (if (gxc#!procedure? _%rator-type223738%_)
                           (let ()
                             (gxc#verbose
                              '"optimize-call "
                              _%rator-id223736%_
                              '" => "
                              _%rator-type223738%_
                              '" "
                              (gxc#!type-id _%rator-type223738%_))
                             (let* ((_%optimized223753%_
                                     (call-method
                                      _%rator-type223738%_
                                      'optimize-call
                                      _%self223067%_
                                      _%stx223068%_
                                      (foldr (lambda (_%$%g223745223748%_
                                                      _%$%g223746223750%_)
                                               (cons _%$%g223745223748%_
                                                     _%$%g223746223750%_))
                                             '()
                                             _%$%g223074223715%_)))
                                    (_%$%g223756223785%_
                                     (lambda (_%$%g223757223782%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g223757223782%_)))
                                    (_%$%g223755223792%_
                                     (lambda (_%$%g223757223788%_)
                                       ((lambda () _%optimized223753%_))))
                                    (_%$%g223754223900%_
                                     (lambda (_%$%g223757223795%_)
                                       (if (gx#stx-pair? _%$%g223757223795%_)
                                           (let ((_%$%e223760223797%_
                                                  (gx#stx-e
                                                   _%$%g223757223795%_)))
                                             (let ((_%$%hd223761223800%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e223760223797%_)))
                                                   (_%$%tl223762223802%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e223760223797%_))))
                                               (if (gx#identifier?
                                                    _%$%hd223761223800%_)
                                                   (if (gx#stx-eq?
                                                        '%#call
                                                        _%$%hd223761223800%_)
                                                       (if (gx#stx-pair?
                                                            _%$%tl223762223802%_)
                                                           (let ((_%$%e223763223805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%tl223762223802%_)))
                     (let ((_%$%hd223764223808%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e223763223805%_)))
                           (_%$%tl223765223810%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e223763223805%_))))
                       (if (gx#stx-pair? _%$%hd223764223808%_)
                           (let ((_%$%e223766223813%_
                                  (gx#stx-e _%$%hd223764223808%_)))
                             (let ((_%$%hd223767223816%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e223766223813%_)))
                                   (_%$%tl223768223818%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e223766223813%_))))
                               (if (gx#identifier? _%$%hd223767223816%_)
                                   (if (gx#stx-eq? '%#ref _%$%hd223767223816%_)
                                       (if (gx#stx-pair? _%$%tl223768223818%_)
                                           (let ((_%$%e223769223821%_
                                                  (gx#stx-e
                                                   _%$%tl223768223818%_)))
                                             (let ((_%$%hd223770223824%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e223769223821%_)))
                                                   (_%$%tl223771223826%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e223769223821%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl223771223826%_)
                                                   (if (gx#stx-pair/null?
                                                        _%$%tl223765223810%_)
                                                       (let ((_g223948_
                                                              (gx#syntax-split-splice
                                                               _%$%tl223765223810%_
                                                               '0)))
                                                         (begin
                                                           (let ((_g223949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (if (##values? _g223948_)
                                (##values-length _g223948_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g223949_ 2)))
                         (error "Context expects 2 values" _g223949_)))
                   (let ((_%$%target223772223829%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g223948_ 0)))
                         (_%$%tl223774223831%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g223948_ 1))))
                     (if (gx#stx-null? _%$%tl223774223831%_)
                         (letrec ((_%$%loop223775223834%_
                                   (lambda (_%$%hd223773223837%_
                                            _%$%arg223779223839%_)
                                     (if (gx#stx-pair? _%$%hd223773223837%_)
                                         (let ((_%$%e223776223841%_
                                                (gx#stx-e
                                                 _%$%hd223773223837%_)))
                                           (let ((_%$%lp-hd223777223844%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e223776223841%_)))
                                                 (_%$%lp-tl223778223846%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e223776223841%_))))
                                             (_%$%loop223775223834%_
                                              _%$%lp-tl223778223846%_
                                              (cons _%$%lp-hd223777223844%_
                                                    _%$%arg223779223839%_))))
                                         (let ((_%$%arg223780223849%_
                                                (reverse _%$%arg223779223839%_)))
                                           ((lambda (_%$%g223758223851%_
                                                     _%$%g223759223852%_)
                                              (let* ((_%optimized-rator-id223879%_
                                                      (gxc#identifier-symbol
                                                       _%$%g223759223852%_))
                                                     (_%rator-type223884%_
                                                      (let ((_%$e223881%_
                                                             (gxc#optimizer-lookup-type
                                                              _%optimized-rator-id223879%_)))
                                                        (if _%$e223881%_
                                                            _%$e223881%_
                                                            _%rator-type223738%_))))
                                                (if (or (gxc#!primitive?
                                                         _%rator-type223884%_)
                                                        (memq _%optimized-rator-id223879%_
                                                              gxc#checked-primitives)
                                                        (and (gxc#!procedure?
                                                              _%rator-type223884%_)
                                                             (eq? (gxc#!procedure-origin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rator-type223884%_)
                          (gx#expander-context-id
                           (gx#current-expander-context)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%optimized223753%_
                                                    (gxc#xform-wrap-source
                                                     (cons* '%#call-unchecked
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _%$%g223759223852%_ '()))
                    (foldr (lambda (_%$%g223892223895%_ _%$%g223893223897%_)
                             (cons _%$%g223892223895%_ _%$%g223893223897%_))
                           '()
                           _%$%g223758223851%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx223068%_))))
                                            _%$%arg223780223849%_
                                            _%$%hd223770223824%_))))))
                           (_%$%loop223775223834%_
                            _%$%target223772223829%_
                            '()))
                         (_%$%g223755223792%_ _%$%g223757223795%_)))))
               (_%$%g223755223792%_ _%$%g223757223795%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g223755223792%_
                                                    _%$%g223757223795%_))))
                                           (_%$%g223755223792%_
                                            _%$%g223757223795%_))
                                       (_%$%g223755223792%_
                                        _%$%g223757223795%_))
                                   (_%$%g223755223792%_ _%$%g223757223795%_))))
                           (_%$%g223755223792%_ _%$%g223757223795%_))))
                   (_%$%g223755223792%_ _%$%g223757223795%_))
               (_%$%g223755223792%_ _%$%g223757223795%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g223755223792%_
                                                    _%$%g223757223795%_))))
                                           (_%$%g223755223792%_
                                            _%$%g223757223795%_)))))
                               (_%$%g223754223900%_ _%optimized223753%_)))
                           (if (and (gxc#!class? _%rator-type223738%_)
                                    (eq? (gxc#&!type-id _%rator-type223738%_)
                                         'procedure))
                               (gxc#xform-wrap-source
                                (cons* '%#call-unchecked
                                       (cons (gx#datum->syntax '#f '%#ref)
                                             (cons _%$%g223075223716%_ '()))
                                       (map (lambda (_%$%g223903223905%_)
                                              (gxc#compile-e
                                               _%self223067%_
                                               _%$%g223903223905%_))
                                            (foldr (lambda (_%$%g223907223910%_
                                                            _%$%g223908223912%_)
                                                     (cons _%$%g223907223910%_
                                                           _%$%g223908223912%_))
                                                   '()
                                                   _%$%g223074223715%_)))
                                _%stx223068%_)
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx223068%_
                                _%rator-type223738%_))))))
               _%$%rand223096223713%_
               _%$%hd223086223688%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%loop223091223698%_
                                       _%$%target223088223693%_
                                       '()))
                                    (_%$%g223070223656%_
                                     _%$%g223073223659%_)))))
                          (_%$%g223070223656%_ _%$%g223073223659%_))
                      (_%$%g223070223656%_ _%$%g223073223659%_))))
              (_%$%g223070223656%_ _%$%g223073223659%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g223070223656%_
                                                   _%$%g223073223659%_))
                                              (_%$%g223070223656%_
                                               _%$%g223073223659%_))))
                                      (_%$%g223070223656%_
                                       _%$%g223073223659%_))))
                              (_%$%g223070223656%_ _%$%g223073223659%_))))
                      (_%$%g223070223656%_ _%$%g223073223659%_)))))
          (_%$%g223069223916%_ _%stx223068%_))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self223029%_ _%ctx223030%_ _%stx223031%_ _%args223032%_)
        (let ((_%self223035%_ _%self223029%_))
          (if (call-method
               _%self223035%_
               'check-arguments
               _%ctx223030%_
               _%stx223031%_
               _%args223032%_)
              (let* ((_%signature223045%_
                      (gxc#&!procedure-signature _%self223035%_))
                     (_%signature223047%_ _%signature223045%_)
                     (_%$e223057%_
                      (if _%signature223047%_
                          (gxc#&!signature-unchecked _%signature223047%_)
                          '#f)))
                (if _%$e223057%_
                    ((lambda (_%unchecked223060%_)
                       (if (gxc#symbol-in-local-scope? _%unchecked223060%_)
                           (gxc#xform-wrap-apply
                            (cons* '%#call
                                   (cons '%#ref (cons _%unchecked223060%_ '()))
                                   (map (lambda (_%$%g223061223063%_)
                                          (gxc#compile-e
                                           _%ctx223030%_
                                           _%$%g223061223063%_))
                                        _%args223032%_))
                            _%stx223031%_
                            _%ctx223030%_)
                           (gxc#xform-call% _%ctx223030%_ _%stx223031%_)))
                     _%$e223057%_)
                    (gxc#xform-call% _%ctx223030%_ _%stx223031%_)))
              (gxc#xform-call% _%ctx223030%_ _%stx223031%_)))))
    (bind-method!
     gxc#!procedure::t
     'optimize-call
     gxc#!procedure::optimize-call
     '#f)
    (define gxc#!procedure::check-arguments
      (lambda (_%self222782%_ _%ctx222783%_ _%stx222784%_ _%args222785%_)
        (let* ((_%self222788%_ _%self222782%_)
               (_%$%signature222797222799%_
                (gxc#&!procedure-signature _%self222788%_)))
          (if _%$%signature222797222799%_
              (let* ((_%signature222801%_ _%$%signature222797222799%_)
                     (_%$%argument-types222802222804%_
                      (gxc#!signature-arguments _%signature222801%_)))
                (if _%$%argument-types222802222804%_
                    (let* ((_%argument-types222806%_
                            _%$%argument-types222802222804%_)
                           (_%argument-types222811%_
                            (gxc#map*
                             (lambda (_%t222809%_)
                               (if _%t222809%_
                                   (gxc#optimizer-resolve-class
                                    _%stx222784%_
                                    _%t222809%_)
                                   '#f))
                             _%argument-types222806%_)))
                      (let _%loop222813%_ ((_%rest-args222815%_ _%args222785%_)
                                           (_%rest-types222816%_
                                            _%argument-types222811%_)
                                           (_%result222817%_ '#t))
                        (let* ((_%$%rest-args222818222826%_
                                _%rest-args222815%_)
                               (_%$%E222821222830%_
                                (lambda ()
                                  (error '"No clause matching"
                                         _%$%rest-args222818222826%_
                                         '([arg . rest-args])
                                         'else)
                                  (void)))
                               (_%$%else222820222834%_
                                (lambda () _%result222817%_))
                               (_%$%K222822222895%_
                                (lambda (_%rest-args222837%_ _%arg222838%_)
                                  (let* ((_%$%rest-types222839222850%_
                                          _%rest-types222816%_)
                                         (_%$%E222843222854%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%rest-types222839222850%_
                                                   '([type . rest-types])
                                                   '([])
                                                   '(tail-type))
                                            (void)))
                                         (_%$%try-match222842222869%_
                                          (lambda ()
                                            (let* ((_%$%K222844222864%_
                                                    (lambda (_%tail-type222858%_)
                                                      (if (andmap (lambda (_%$%g222859222861%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#check-expression-type!
                             _%stx222784%_
                             _%$%g222859222861%_
                             _%tail-type222858%_))
                          _%rest-args222837%_)
                  _%result222817%_
                  '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%tail-type222867%_
                                                    _%$%rest-types222839222850%_))
                                              (_%$%K222844222864%_
                                               _%tail-type222867%_))))
                                         (_%$%try-match222841222877%_
                                          (lambda ()
                                            (let ((_%$%K222845222874%_
                                                   (lambda ()
                                                     (gxc#raise-compile-error
                                                      '"signature arity mismatch"
                                                      _%stx222784%_
                                                      _%argument-types222811%_))))
                                              (if (null? _%$%rest-types222839222850%_)
                                                  (_%$%K222845222874%_)
                                                  (_%$%try-match222842222869%_)))))
                                         (_%$%K222846222883%_
                                          (lambda (_%rest-types222880%_
                                                   _%type222881%_)
                                            (_%loop222813%_
                                             _%rest-args222837%_
                                             _%rest-types222880%_
                                             (if (gxc#check-expression-type!
                                                  _%stx222784%_
                                                  _%arg222838%_
                                                  _%type222881%_)
                                                 _%result222817%_
                                                 '#f)))))
                                    (if (pair? _%$%rest-types222839222850%_)
                                        (let ((_%$%hd222847222886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest-types222839222850%_)))
                                              (_%$%tl222848222888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest-types222839222850%_))))
                                          (let* ((_%type222891%_
                                                  _%$%hd222847222886%_)
                                                 (_%rest-types222893%_
                                                  _%$%tl222848222888%_))
                                            (_%$%K222846222883%_
                                             _%rest-types222893%_
                                             _%type222891%_)))
                                        (_%$%try-match222841222877%_))))))
                          (if (pair? _%$%rest-args222818222826%_)
                              (let ((_%$%hd222823222898%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest-args222818222826%_)))
                                    (_%$%tl222824222900%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest-args222818222826%_))))
                                (let* ((_%arg222903%_ _%$%hd222823222898%_)
                                       (_%rest-args222905%_
                                        _%$%tl222824222900%_))
                                  (_%$%K222822222895%_
                                   _%rest-args222905%_
                                   _%arg222903%_)))
                              (_%$%else222820222834%_)))))
                    '#f))
              '#f))))
    (bind-method!
     gxc#!procedure::t
     'check-arguments
     gxc#!procedure::check-arguments
     '#f)
    (define gxc#!primitive-predicate::optimize-call
      (lambda (_%self222585%_ _%ctx222586%_ _%stx222587%_ _%args222588%_)
        (let* ((_%self222591%_ _%self222585%_)
               (_%$%g222601222611%_
                (lambda (_%$%g222602222608%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g222602222608%_)))
               (_%$%g222600222657%_
                (lambda (_%$%g222602222614%_)
                  (if (gx#stx-pair? _%$%g222602222614%_)
                      (let ((_%$%e222604222616%_
                             (gx#stx-e _%$%g222602222614%_)))
                        (let ((_%$%hd222605222619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e222604222616%_)))
                              (_%$%tl222606222621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e222604222616%_))))
                          (if (gx#stx-null? _%$%tl222606222621%_)
                              ((lambda (_%$%g222603222624%_)
                                 (let* ((_%klass222636%_
                                         (gxc#optimizer-resolve-class
                                          _%stx222587%_
                                          (gxc#&!primitive-predicate-id
                                           _%self222591%_)))
                                        (_%object222638%_
                                         (gxc#compile-e
                                          _%ctx222586%_
                                          _%$%g222603222624%_))
                                        (_%instance?222643%_
                                         (let ((_%$e222640%_
                                                (gxc#expression-type?
                                                 _%object222638%_
                                                 _%klass222636%_)))
                                           (if _%$e222640%_
                                               _%$e222640%_
                                               (gxc#expression-type?
                                                _%$%g222603222624%_
                                                _%klass222636%_))))
                                        (_%incompatible?222648%_
                                         (let ((_%$e222645%_
                                                (gxc#incompatible-type?
                                                 _%object222638%_
                                                 _%klass222636%_)))
                                           (if _%$e222645%_
                                               _%$e222645%_
                                               (gxc#incompatible-type?
                                                _%$%g222603222624%_
                                                _%klass222636%_)))))
                                   (if _%instance?222643%_
                                       (gxc#xform-wrap-source
                                        (if (or (gxc#expression-no-side-effects?
                                                 _%object222638%_)
                                                (gxc#expression-no-side-effects?
                                                 _%$%g222603222624%_))
                                            (cons '%#quote (cons '#t '()))
                                            (cons '%#begin
                                                  (cons _%object222638%_
                                                        (cons '#t '()))))
                                        _%stx222587%_)
                                       (if _%incompatible?222648%_
                                           (cons '%#quote (cons '#f '()))
                                           (gxc#xform-call%
                                            _%ctx222586%_
                                            _%stx222587%_)))))
                               _%$%hd222605222619%_)
                              (_%$%g222601222611%_ _%$%g222602222614%_))))
                      (_%$%g222601222611%_ _%$%g222602222614%_)))))
          (_%$%g222600222657%_ _%args222588%_))))
    (bind-method!
     gxc#!primitive-predicate::t
     'optimize-call
     gxc#!primitive-predicate::optimize-call
     '#f)
    (define gxc#!predicate::optimize-call
      (lambda (_%self222374%_ _%ctx222375%_ _%stx222376%_ _%args222377%_)
        (let* ((_%self222380%_ _%self222374%_)
               (_%$%g222390222400%_
                (lambda (_%$%g222391222397%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g222391222397%_)))
               (_%$%g222389222460%_
                (lambda (_%$%g222391222403%_)
                  (if (gx#stx-pair? _%$%g222391222403%_)
                      (let ((_%$%e222393222405%_
                             (gx#stx-e _%$%g222391222403%_)))
                        (let ((_%$%hd222394222408%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e222393222405%_)))
                              (_%$%tl222395222410%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e222393222405%_))))
                          (if (gx#stx-null? _%$%tl222395222410%_)
                              ((lambda (_%$%g222392222413%_)
                                 (let* ((_%klass222425%_
                                         (gxc#optimizer-resolve-class
                                          _%stx222376%_
                                          (gxc#&!predicate-id _%self222380%_)))
                                        (_%object222427%_
                                         (gxc#compile-e
                                          _%ctx222375%_
                                          _%$%g222392222413%_))
                                        (_%instance?222432%_
                                         (let ((_%$e222429%_
                                                (gxc#expression-type?
                                                 _%object222427%_
                                                 _%klass222425%_)))
                                           (if _%$e222429%_
                                               _%$e222429%_
                                               (gxc#expression-type?
                                                _%$%g222392222413%_
                                                _%klass222425%_))))
                                        (_%incompatible?222437%_
                                         (let ((_%$e222434%_
                                                (gxc#incompatible-type?
                                                 _%object222427%_
                                                 _%klass222425%_)))
                                           (if _%$e222434%_
                                               _%$e222434%_
                                               (gxc#incompatible-type?
                                                _%$%g222392222413%_
                                                _%klass222425%_))))
                                        (_%klass222440%_ _%klass222425%_))
                                   (if _%instance?222432%_
                                       (gxc#xform-wrap-source
                                        (if (or (gxc#expression-no-side-effects?
                                                 _%object222427%_)
                                                (gxc#expression-no-side-effects?
                                                 _%$%g222392222413%_))
                                            (cons '%#quote (cons '#t '()))
                                            (cons '%#begin
                                                  (cons _%object222427%_
                                                        (cons '#t '()))))
                                        _%stx222376%_)
                                       (if _%incompatible?222437%_
                                           (cons '%#quote (cons '#f '()))
                                           (if (gxc#&!class-final?
                                                _%klass222440%_)
                                               (gxc#xform-wrap-source
                                                (cons '%#struct-direct-instance?
                                                      (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gxc#&!class-id _%klass222440%_) '()))
                    (cons _%object222427%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%stx222376%_)
                                               (if (gxc#&!class-struct?
                                                    _%klass222440%_)
                                                   (gxc#xform-wrap-source
                                                    (cons '%#struct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#&!class-id _%klass222440%_) '()))
                        (cons _%object222427%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx222376%_)
                                                   (gxc#xform-wrap-source
                                                    (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'class-instance? '()))
                        (cons (cons '%#ref
                                    (cons (gxc#&!predicate-id _%self222380%_)
                                          '()))
                              (cons _%object222427%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx222376%_)))))))
                               _%$%hd222394222408%_)
                              (_%$%g222390222400%_ _%$%g222391222403%_))))
                      (_%$%g222390222400%_ _%$%g222391222403%_)))))
          (_%$%g222389222460%_ _%args222377%_))))
    (bind-method!
     gxc#!predicate::t
     'optimize-call
     gxc#!predicate::optimize-call
     '#f)
    (define gxc#expression-no-side-effects?
      (lambda (_%stx222042%_)
        (let* ((_%$%g222047222088%_
                (lambda (_%$%g222048222085%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g222048222085%_)))
               (_%$%g222046222095%_
                (lambda (_%$%g222048222091%_) ((lambda () '#f))))
               (_%$%g222045222203%_
                (lambda (_%$%g222048222098%_)
                  (if (gx#stx-pair? _%$%g222048222098%_)
                      (let ((_%$%e222063222100%_
                             (gx#stx-e _%$%g222048222098%_)))
                        (let ((_%$%hd222064222103%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e222063222100%_)))
                              (_%$%tl222065222105%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e222063222100%_))))
                          (if (gx#identifier? _%$%hd222064222103%_)
                              (if (gx#stx-eq? '%#call _%$%hd222064222103%_)
                                  (if (gx#stx-pair? _%$%tl222065222105%_)
                                      (let ((_%$%e222066222108%_
                                             (gx#stx-e _%$%tl222065222105%_)))
                                        (let ((_%$%hd222067222111%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e222066222108%_)))
                                              (_%$%tl222068222113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e222066222108%_))))
                                          (if (gx#stx-pair?
                                               _%$%hd222067222111%_)
                                              (let ((_%$%e222069222116%_
                                                     (gx#stx-e
                                                      _%$%hd222067222111%_)))
                                                (let ((_%$%hd222070222119%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e222069222116%_)))
                                                      (_%$%tl222071222121%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e222069222116%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd222070222119%_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _%$%hd222070222119%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl222071222121%_)
                                                              (let ((_%$%e222072222124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl222071222121%_)))
                        (let ((_%$%hd222073222127%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e222072222124%_)))
                              (_%$%tl222074222129%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e222072222124%_))))
                          (if (gx#stx-null? _%$%tl222074222129%_)
                              (if (gx#stx-pair/null? _%$%tl222068222113%_)
                                  (let ((_g223950_
                                         (gx#syntax-split-splice
                                          _%$%tl222068222113%_
                                          '0)))
                                    (begin
                                      (let ((_g223951_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g223950_)
                                                   (##values-length _g223950_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g223951_ 2)))
                                            (error "Context expects 2 values"
                                                   _g223951_)))
                                      (let ((_%$%target222075222132%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g223950_ 0)))
                                            (_%$%tl222077222134%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g223950_ 1))))
                                        (if (gx#stx-null? _%$%tl222077222134%_)
                                            (letrec ((_%$%loop222078222137%_
                                                      (lambda (_%$%hd222076222140%_
                                                               _%$%rand222082222142%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd222076222140%_)
                                                            (let ((_%$%e222079222144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%$%hd222076222140%_)))
                      (let ((_%$%lp-hd222080222147%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e222079222144%_)))
                            (_%$%lp-tl222081222149%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e222079222144%_))))
                        (_%$%loop222078222137%_
                         _%$%lp-tl222081222149%_
                         (cons _%$%lp-hd222080222147%_
                               _%$%rand222082222142%_))))
                    (let ((_%$%rand222083222152%_
                           (reverse _%$%rand222082222142%_)))
                      ((lambda (_%$%g222061222154%_ _%$%g222062222155%_)
                         (let ((_%$%rator-type222176222178%_
                                (gxc#optimizer-resolve-type
                                 (gxc#identifier-symbol _%$%g222062222155%_))))
                           (if _%$%rator-type222176222178%_
                               (let* ((_%rator-type222180%_
                                       _%$%rator-type222176222178%_)
                                      (_%$%rator-signature222181222183%_
                                       (if (gxc#!procedure?
                                            _%rator-type222180%_)
                                           (gxc#&!procedure-signature
                                            _%rator-type222180%_)
                                           '#f)))
                                 (if _%$%rator-signature222181222183%_
                                     (let* ((_%rator-signature222185%_
                                             _%$%rator-signature222181222183%_)
                                            (_%$%rator-effect222186222188%_
                                             (if _%rator-signature222185%_
                                                 (gxc#!signature-effect
                                                  _%rator-signature222185%_)
                                                 '#f)))
                                       (if _%$%rator-effect222186222188%_
                                           (let ((_%rator-effect222190%_
                                                  _%$%rator-effect222186222188%_))
                                             (if (or (equal? '(pure)
                                                             _%rator-effect222190%_)
                                                     (equal? '(alloc)
                                                             _%rator-effect222190%_))
                                                 (andmap gxc#expression-no-side-effects?
                                                         (foldr (lambda (_%$%g222195222198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g222196222200%_)
                          (cons _%$%g222195222198%_ _%$%g222196222200%_))
                        '()
                        _%$%g222061222154%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#f))
                                           '#f))
                                     '#f))
                               '#f)))
                       _%$%rand222083222152%_
                       _%$%hd222073222127%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop222078222137%_
                                               _%$%target222075222132%_
                                               '()))
                                            (_%$%g222046222095%_
                                             _%$%g222048222098%_)))))
                                  (_%$%g222046222095%_ _%$%g222048222098%_))
                              (_%$%g222046222095%_ _%$%g222048222098%_))))
                      (_%$%g222046222095%_ _%$%g222048222098%_))
                  (_%$%g222046222095%_ _%$%g222048222098%_))
              (_%$%g222046222095%_ _%$%g222048222098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g222046222095%_
                                               _%$%g222048222098%_))))
                                      (_%$%g222046222095%_
                                       _%$%g222048222098%_))
                                  (_%$%g222046222095%_ _%$%g222048222098%_))
                              (_%$%g222046222095%_ _%$%g222048222098%_))))
                      (_%$%g222046222095%_ _%$%g222048222098%_))))
               (_%$%g222044222226%_
                (lambda (_%$%g222048222206%_)
                  (if (gx#stx-pair? _%$%g222048222206%_)
                      (let ((_%$%e222055222208%_
                             (gx#stx-e _%$%g222048222206%_)))
                        (let ((_%$%hd222056222211%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e222055222208%_)))
                              (_%$%tl222057222213%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e222055222208%_))))
                          (if (gx#identifier? _%$%hd222056222211%_)
                              (if (gx#stx-eq? '%#ref _%$%hd222056222211%_)
                                  (if (gx#stx-pair? _%$%tl222057222213%_)
                                      (let ((_%$%e222058222216%_
                                             (gx#stx-e _%$%tl222057222213%_)))
                                        (let ((_%$%hd222059222219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e222058222216%_)))
                                              (_%$%tl222060222221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e222058222216%_))))
                                          (if (gx#stx-null?
                                               _%$%tl222060222221%_)
                                              ((lambda () '#t))
                                              (_%$%g222045222203%_
                                               _%$%g222048222206%_))))
                                      (_%$%g222045222203%_
                                       _%$%g222048222206%_))
                                  (_%$%g222045222203%_ _%$%g222048222206%_))
                              (_%$%g222045222203%_ _%$%g222048222206%_))))
                      (_%$%g222045222203%_ _%$%g222048222206%_))))
               (_%$%g222043222249%_
                (lambda (_%$%g222048222229%_)
                  (if (gx#stx-pair? _%$%g222048222229%_)
                      (let ((_%$%e222049222231%_
                             (gx#stx-e _%$%g222048222229%_)))
                        (let ((_%$%hd222050222234%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e222049222231%_)))
                              (_%$%tl222051222236%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e222049222231%_))))
                          (if (gx#identifier? _%$%hd222050222234%_)
                              (if (gx#stx-eq? '%#quote _%$%hd222050222234%_)
                                  (if (gx#stx-pair? _%$%tl222051222236%_)
                                      (let ((_%$%e222052222239%_
                                             (gx#stx-e _%$%tl222051222236%_)))
                                        (let ((_%$%hd222053222242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e222052222239%_)))
                                              (_%$%tl222054222244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e222052222239%_))))
                                          (if (gx#stx-null?
                                               _%$%tl222054222244%_)
                                              ((lambda () '#t))
                                              (_%$%g222044222226%_
                                               _%$%g222048222229%_))))
                                      (_%$%g222044222226%_
                                       _%$%g222048222229%_))
                                  (_%$%g222044222226%_ _%$%g222048222229%_))
                              (_%$%g222044222226%_ _%$%g222048222229%_))))
                      (_%$%g222044222226%_ _%$%g222048222229%_)))))
          (_%$%g222043222249%_ _%stx222042%_))))
    (define gxc#expression-type?
      (lambda (_%stx222037%_ _%klass222038%_)
        (let ((_%expr-type222040%_
               (gxc#apply-basic-expression-type _%stx222037%_)))
          (if _%expr-type222040%_
              (gxc#!type-subtype? _%expr-type222040%_ _%klass222038%_)
              '#f))))
    (define gxc#incompatible-type?
      (lambda (_%expr222021%_ _%type222022%_)
        (if (not _%type222022%_)
            '#f
            (if (eq? (gxc#!type-id _%type222022%_) 't)
                '#f
                (if (eq? (gxc#!type-id _%type222022%_) 'false)
                    '#f
                    (let ((_%expr-type222028%_
                           (gxc#apply-basic-expression-type _%expr222021%_)))
                      (if (not _%expr-type222028%_)
                          '#f
                          (if (eq? 't (gxc#!type-id _%expr-type222028%_))
                              '#f
                              (if (gxc#!abort? _%expr-type222028%_)
                                  '#f
                                  (if (gxc#!type-subtype?
                                       _%expr-type222028%_
                                       _%type222022%_)
                                      '#f
                                      (if (gxc#!interface-instance?
                                           _%type222022%_)
                                          '#f
                                          (if (gxc#!type-subtype?
                                               _%type222022%_
                                               _%expr-type222028%_)
                                              '#f
                                              '#t))))))))))))
    (define gxc#check-expression-type!
      (lambda (_%stx221999%_ _%expr222000%_ _%type222001%_)
        (if (not _%type222001%_)
            '#f
            (let ((_%$e222004%_ (eq? (gxc#!type-id _%type222001%_) 't)))
              (if _%$e222004%_
                  _%$e222004%_
                  (let ((_%expr-type222008%_
                         (gxc#apply-basic-expression-type _%expr222000%_)))
                    (if (not _%expr-type222008%_)
                        '#f
                        (if (eq? 't (gxc#!type-id _%expr-type222008%_))
                            '#f
                            (let ((_%$e222012%_
                                   (gxc#!abort? _%expr-type222008%_)))
                              (if _%$e222012%_
                                  _%$e222012%_
                                  (let ((_%$e222015%_
                                         (gxc#!type-subtype?
                                          _%expr-type222008%_
                                          _%type222001%_)))
                                    (if _%$e222015%_
                                        _%$e222015%_
                                        (if (gxc#!interface-instance?
                                             _%type222001%_)
                                            '#f
                                            (if (gxc#!type-subtype?
                                                 _%type222001%_
                                                 _%expr-type222008%_)
                                                '#f
                                                (gxc#raise-compile-error
                                                 '"signature type mismatch"
                                                 _%stx221999%_
                                                 _%expr222000%_
                                                 _%expr-type222008%_
                                                 _%type222001%_)))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self221813%_ _%ctx221814%_ _%stx221815%_ _%args221816%_)
        (let* ((_%self221819%_ _%self221813%_)
               (_%klass221829%_
                (gxc#optimizer-resolve-class
                 _%stx221815%_
                 (gxc#&!constructor-id _%self221819%_)))
               (_%fields221831%_ (length (gxc#!class-fields _%klass221829%_)))
               (_%args221837%_
                (map (lambda (_%$%g221832221834%_)
                       (gxc#compile-e _%ctx221814%_ _%$%g221832221834%_))
                     _%args221816%_))
               (_%inline-make-object221839%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (gxc#&!constructor-id _%self221819%_)
                                        '()))
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons '##structure '()))
                                              (cons (cons '%#ref
                                                          (cons (gxc#&!constructor-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self221819%_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields221831%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass221842%_ _%klass221829%_)
               (_%$e221856%_ (gxc#&!class-constructor _%klass221842%_)))
          (if _%$e221856%_
              ((lambda (_%ctor221859%_)
                 (let ((_%$obj221861%_ (make-symbol (gensym '__obj)))
                       (_%ctor-impl221862%_
                        (gxc#!class-lookup-method
                         _%klass221842%_
                         _%ctor221859%_)))
                   (gxc#xform-wrap-source
                    (cons '%#let-values
                          (cons (cons (cons (cons _%$obj221861%_ '())
                                            (cons _%inline-make-object221839%_
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (cons (if _%ctor-impl221862%_
                                                      (gxc#xform-wrap-apply
                                                       (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%ctor-impl221862%_ '()))
                           (cons (cons '%#ref (cons _%$obj221861%_ '()))
                                 _%args221837%_)))
               _%stx221815%_
               _%ctx221814%_)
              (let ((_%$ctor221864%_ (make-symbol (gensym '__constructor))))
                (cons '%#let-values
                      (cons (cons (cons (cons _%$ctor221864%_ '())
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons 'direct-method-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#ref
                              (cons (gxc#&!constructor-id _%self221819%_) '()))
                        (cons (cons '%#ref (cons _%$obj221861%_ '()))
                              (cons (cons '%#quote (cons _%ctor221859%_ '()))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '())
                            (cons (cons '%#if
                                        (cons (cons '%#ref
                                                    (cons _%$ctor221864%_ '()))
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$ctor221864%_ '()))
                        (cons (cons '%#ref (cons _%$obj221861%_ '()))
                              _%args221837%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'error '()))
                              (cons (cons '%#quote
                                          (cons '"missing constructor method implementation"
                                                '()))
                                    (cons (cons '%#quote (cons 'class: '()))
                                          (cons (cons '%#ref
                                                      (cons (gxc#&!constructor-id
                                                             _%self221819%_)
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons 'method:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%ctor221859%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj221861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    _%stx221815%_)))
               _%$e221856%_)
              (let ((_%$e221866%_ (gxc#&!class-metaclass _%klass221842%_)))
                (if _%$e221866%_
                    ((lambda (_%metaclass221869%_)
                       (let* ((_%$obj221871%_ (make-symbol (gensym '__obj)))
                              (_%metakons221873%_
                               (gxc#!class-lookup-method
                                (gxc#optimizer-resolve-class
                                 _%stx221815%_
                                 _%metaclass221869%_)
                                'instance-init!)))
                         (gxc#xform-wrap-source
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj221871%_ '())
                                                  (cons _%inline-make-object221839%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%metakons221873%_
                                                            (gxc#xform-wrap-apply
                                                             (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#ref (cons _%metakons221873%_ '()))
                                 (cons (cons '%#ref
                                             (cons (gxc#&!constructor-id
                                                    _%self221819%_)
                                                   '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj221871%_ '()))
                                             _%args221837%_))))
                     _%stx221815%_
                     _%ctx221814%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'call-method '()))
                                (cons (cons '%#ref
                                            (cons (gxc#&!constructor-id
                                                   _%self221819%_)
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons 'instance-init! '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj221871%_
                                                              '()))
                                                  _%args221837%_))))))
                (cons (cons '%#ref (cons _%$obj221871%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          _%stx221815%_)))
                     _%$e221866%_)
                    (if (gxc#&!class-struct? _%klass221842%_)
                        (if (fx= (length _%args221837%_) _%fields221831%_)
                            (gxc#xform-wrap-source
                             (cons '%#begin-annotation
                                   (cons (cons '@type
                                               (cons (gxc#&!constructor-id
                                                      _%self221819%_)
                                                     '()))
                                         (cons (cons '%#call
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '##structure '()))
                   (cons (cons '%#ref
                               (cons (gxc#&!constructor-id _%self221819%_)
                                     '()))
                         _%args221837%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             _%stx221815%_)
                            (gxc#raise-compile-error
                             '"illegal struct constructor application; arity mismatch"
                             _%stx221815%_
                             (gxc#&!constructor-id _%self221819%_)
                             (gxc#&!class-fields _%klass221842%_)))
                        (let ((_%$obj221878%_ (make-symbol (gensym '__obj))))
                          (let _%lp221880%_ ((_%rest221882%_ _%args221837%_)
                                             (_%initializers221883%_ '()))
                            (let* ((_%$%g221887221908%_
                                    (lambda (_%$%g221888221905%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g221888221905%_)))
                                   (_%$%g221886221915%_
                                    (lambda (_%$%g221888221911%_)
                                      ((lambda ()
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons (cons (cons (cons _%$obj221878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _%inline-make-object221839%_ '()))
                    '())
              (cons (cons '%#begin
                          (cons (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'class-instance-init!
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj221878%_
                                                              '()))
                                                  _%args221837%_)))
                                (cons (cons '%#ref (cons _%$obj221878%_ '()))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%stx221815%_)))))
                                   (_%$%g221885221925%_
                                    (lambda (_%$%g221888221918%_)
                                      (if (gx#stx-null? _%$%g221888221918%_)
                                          ((lambda ()
                                             (gxc#xform-wrap-source
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj221878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object221839%_ '()))
                        '())
                  (cons (cons '%#begin
                              (foldr cons
                                     (cons (cons '%#ref
                                                 (cons _%$obj221878%_ '()))
                                           '())
                                     (foldl (lambda (_%i221922%_ _%r221923%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#&!constructor-id _%self221819%_) '()))
                        (cons (cons '%#quote (cons (car _%i221922%_) '()))
                              (cons (cons '%#ref (cons _%$obj221878%_ '()))
                                    (cons (cdr _%i221922%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r221923%_))
                                            '()
                                            _%initializers221883%_)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%stx221815%_)))
                                          (_%$%g221886221915%_
                                           _%$%g221888221918%_))))
                                   (_%$%g221884221996%_
                                    (lambda (_%$%g221888221928%_)
                                      (if (gx#stx-pair? _%$%g221888221928%_)
                                          (let ((_%$%e221892221930%_
                                                 (gx#stx-e
                                                  _%$%g221888221928%_)))
                                            (let ((_%$%hd221893221933%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e221892221930%_)))
                                                  (_%$%tl221894221935%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e221892221930%_))))
                                              (if (gx#stx-pair?
                                                   _%$%hd221893221933%_)
                                                  (let ((_%$%e221895221938%_
                                                         (gx#stx-e
                                                          _%$%hd221893221933%_)))
                                                    (let ((_%$%hd221896221941%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e221895221938%_)))
                                                          (_%$%tl221897221943%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e221895221938%_))))
                                                      (if (gx#identifier?
                                                           _%$%hd221896221941%_)
                                                          (if (gx#stx-eq?
                                                               '%#quote
                                                               _%$%hd221896221941%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%tl221897221943%_)
                          (let ((_%$%e221898221946%_
                                 (gx#stx-e _%$%tl221897221943%_)))
                            (let ((_%$%hd221899221949%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e221898221946%_)))
                                  (_%$%tl221900221951%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e221898221946%_))))
                              (if (gx#stx-null? _%$%tl221900221951%_)
                                  (if (gx#stx-pair? _%$%tl221894221935%_)
                                      (let ((_%$%e221901221954%_
                                             (gx#stx-e _%$%tl221894221935%_)))
                                        (let ((_%$%hd221902221957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e221901221954%_)))
                                              (_%$%tl221903221959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e221901221954%_))))
                                          ((lambda (_%$%g221889221962%_
                                                    _%$%g221890221963%_
                                                    _%$%g221891221964%_)
                                             (if (gx#stx-keyword?
                                                  _%$%g221891221964%_)
                                                 (let* ((_%slot221991%_
                                                         (keyword->symbol
                                                          (gx#stx-e
                                                           _%$%g221891221964%_)))
                                                        (_%off221993%_
                                                         (gxc#!class-slot->field-offset
                                                          _%klass221842%_
                                                          _%slot221991%_)))
                                                   (if _%off221993%_
                                                       (_%lp221880%_
                                                        _%$%g221889221962%_
                                                        (cons (cons _%off221993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g221890221963%_)
                      _%initializers221883%_))
               (gxc#raise-compile-error
                '"unknown slot"
                _%stx221815%_
                (gxc#&!constructor-id _%self221819%_)
                _%slot221991%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g221885221925%_
                                                  _%$%g221888221928%_)))
                                           _%$%tl221903221959%_
                                           _%$%hd221902221957%_
                                           _%$%hd221899221949%_)))
                                      (_%$%g221885221925%_
                                       _%$%g221888221928%_))
                                  (_%$%g221885221925%_ _%$%g221888221928%_))))
                          (_%$%g221885221925%_ _%$%g221888221928%_))
                      (_%$%g221885221925%_ _%$%g221888221928%_))
                  (_%$%g221885221925%_ _%$%g221888221928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g221885221925%_
                                                   _%$%g221888221928%_))))
                                          (_%$%g221885221925%_
                                           _%$%g221888221928%_)))))
                              (_%$%g221884221996%_ _%rest221882%_)))))))))))
    (bind-method!
     gxc#!constructor::t
     'optimize-call
     gxc#!constructor::optimize-call
     '#f)
    (define gxc#!accessor::check-arguments
      (lambda (_%self221675%_ _%ctx221676%_ _%stx221677%_ _%args221678%_)
        (let ((_%self221681%_ _%self221675%_))
          (if (gxc#&!accessor-checked? _%self221681%_)
              (gxc#!procedure::check-arguments
               _%self221681%_
               _%ctx221676%_
               _%stx221677%_
               _%args221678%_)
              '#t))))
    (bind-method!
     gxc#!accessor::t
     'check-arguments
     gxc#!accessor::check-arguments
     '#f)
    (define gxc#!accessor::optimize-call
      (lambda (_%self221458%_ _%ctx221459%_ _%stx221460%_ _%args221461%_)
        (let* ((_%self221464%_ _%self221458%_)
               (_%arguments-ok?221474%_
                (call-method
                 _%self221464%_
                 'check-arguments
                 _%ctx221459%_
                 _%stx221460%_
                 _%args221461%_))
               (_%$%g221476221486%_
                (lambda (_%$%g221477221483%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g221477221483%_)))
               (_%$%g221475221550%_
                (lambda (_%$%g221477221489%_)
                  (if (gx#stx-pair? _%$%g221477221489%_)
                      (let ((_%$%e221479221491%_
                             (gx#stx-e _%$%g221477221489%_)))
                        (let ((_%$%hd221480221494%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e221479221491%_)))
                              (_%$%tl221481221496%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e221479221491%_))))
                          (if (gx#stx-null? _%$%tl221481221496%_)
                              ((lambda (_%$%g221478221499%_)
                                 (let* ((_%klass221512%_
                                         (gxc#optimizer-resolve-class
                                          _%stx221460%_
                                          (gxc#&!accessor-id _%self221464%_)))
                                        (_%field221514%_
                                         (gxc#!class-slot->field-offset
                                          _%klass221512%_
                                          (gxc#&!accessor-slot
                                           _%self221464%_)))
                                        (_%object221516%_
                                         (gxc#compile-e
                                          _%ctx221459%_
                                          _%$%g221478221499%_))
                                        (_%klass221519%_ _%klass221512%_))
                                   (if (gxc#&!class-final? _%klass221519%_)
                                       (gxc#xform-wrap-source
                                        (cons (if (or _%arguments-ok?221474%_
                                                      (not (gxc#&!accessor-checked?
                                                            _%self221464%_)))
                                                  '%#struct-unchecked-ref
                                                  '%#struct-direct-ref)
                                              (cons (cons '%#ref
                                                          (cons (gxc#&!accessor-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self221464%_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#quote
                                                                (cons _%field221514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons _%object221516%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%stx221460%_)
                                       (if (gxc#&!class-struct?
                                            _%klass221519%_)
                                           (gxc#xform-wrap-source
                                            (cons (if (or _%arguments-ok?221474%_
                                                          (not (gxc#&!accessor-checked?
                                                                _%self221464%_)))
                                                      '%#struct-unchecked-ref
                                                      '%#struct-ref)
                                                  (cons (cons '%#ref
                                                              (cons (gxc#&!accessor-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%self221464%_)
                            '()))
                (cons (cons '%#quote (cons _%field221514%_ '()))
                      (cons _%object221516%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%stx221460%_)
                                           (let ((_%$e221538%_
                                                  (gxc#!class-slot-find-struct
                                                   _%klass221519%_
                                                   (gxc#&!accessor-slot
                                                    _%self221464%_))))
                                             (if _%$e221538%_
                                                 ((lambda (_%klass221541%_)
                                                    (gxc#xform-wrap-source
                                                     (cons (if (or _%arguments-ok?221474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (not (gxc#&!accessor-checked? _%self221464%_)))
                       '%#struct-unchecked-ref
                       '%#struct-ref)
                   (cons (cons '%#ref
                               (cons (gxc#&!accessor-id _%self221464%_) '()))
                         (cons (cons '%#quote (cons _%field221514%_ '()))
                               (cons _%object221516%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx221460%_))
                                                  _%$e221538%_)
                                                 (if (gxc#&!accessor-checked?
                                                      _%self221464%_)
                                                     (gxc#xform-wrap-source
                                                      (let ((_%$obj221547%_
                                                             (make-symbol
                                                              (gensym '__obj))))
                                                        (cons '%#let-values
                                                              (cons (cons (cons (cons _%$obj221547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              '())
                                        (cons _%object221516%_ '()))
                                  '())
                            (cons (cons '%#if
                                        (cons (cons '%#struct-direct-instance?
                                                    (cons (cons '%#quote
                                                                (cons (gxc#&!class-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%klass221519%_)
                              '()))
                  (cons (cons '%#ref (cons _%$obj221547%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons '%#struct-unchecked-ref
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#&!accessor-id _%self221464%_) '()))
                        (cons (cons '%#quote (cons _%field221514%_ '()))
                              (cons (cons '%#ref (cons _%$obj221547%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (if _%arguments-ok?221474%_
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                  (cons (cons '%#ref (cons _%$obj221547%_ '()))
                                        (cons (cons '%#quote
                                                    (cons (gxc#!accessor-slot
                                                           _%self221464%_)
                                                          '()))
                                              '()))))
                      (cons '%#call
                            (cons (cons '%#ref (cons 'class-slot-ref '()))
                                  (cons (cons '%#ref
                                              (cons (gxc#&!accessor-id
                                                     _%self221464%_)
                                                    '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj221547%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (gxc#&!accessor-slot
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self221464%_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  '()))))
              _%stx221460%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#xform-wrap-source
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'unchecked-slot-ref '()))
                          (cons _%object221516%_
                                (cons (cons '%#quote
                                            (cons (gxc#&!accessor-slot
                                                   _%self221464%_)
                                                  '()))
                                      '()))))
              _%stx221460%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%$%hd221480221494%_)
                              (_%$%g221476221486%_ _%$%g221477221489%_))))
                      (_%$%g221476221486%_ _%$%g221477221489%_)))))
          (_%$%g221475221550%_ _%args221461%_))))
    (bind-method!
     gxc#!accessor::t
     'optimize-call
     gxc#!accessor::optimize-call
     '#f)
    (define gxc#!mutator::optimize-call
      (lambda (_%self221222%_ _%ctx221223%_ _%stx221224%_ _%args221225%_)
        (let* ((_%self221228%_ _%self221222%_)
               (_%arguments-ok?221238%_
                (call-method
                 _%self221228%_
                 'check-arguments
                 _%ctx221223%_
                 _%stx221224%_
                 _%args221225%_))
               (_%$%g221240221254%_
                (lambda (_%$%g221241221251%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g221241221251%_)))
               (_%$%g221239221333%_
                (lambda (_%$%g221241221257%_)
                  (if (gx#stx-pair? _%$%g221241221257%_)
                      (let ((_%$%e221244221259%_
                             (gx#stx-e _%$%g221241221257%_)))
                        (let ((_%$%hd221245221262%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e221244221259%_)))
                              (_%$%tl221246221264%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e221244221259%_))))
                          (if (gx#stx-pair? _%$%tl221246221264%_)
                              (let ((_%$%e221247221267%_
                                     (gx#stx-e _%$%tl221246221264%_)))
                                (let ((_%$%hd221248221270%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e221247221267%_)))
                                      (_%$%tl221249221272%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e221247221267%_))))
                                  (if (gx#stx-null? _%$%tl221249221272%_)
                                      ((lambda (_%$%g221242221275%_
                                                _%$%g221243221276%_)
                                         (let* ((_%klass221292%_
                                                 (gxc#optimizer-resolve-class
                                                  _%stx221224%_
                                                  (gxc#&!mutator-id
                                                   _%self221228%_)))
                                                (_%field221294%_
                                                 (gxc#!class-slot->field-offset
                                                  _%klass221292%_
                                                  (gxc#&!mutator-slot
                                                   _%self221228%_)))
                                                (_%object221296%_
                                                 (gxc#compile-e
                                                  _%ctx221223%_
                                                  _%$%g221243221276%_))
                                                (_%value221298%_
                                                 (gxc#compile-e
                                                  _%ctx221223%_
                                                  _%$%g221242221275%_))
                                                (_%klass221301%_
                                                 _%klass221292%_))
                                           (if (gxc#&!class-final?
                                                _%klass221301%_)
                                               (gxc#xform-wrap-source
                                                (cons (if (or _%arguments-ok?221238%_
                                                              (not (gxc#&!mutator-checked?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%self221228%_)))
                  '%#struct-unchecked-set!
                  '%#struct-direct-set!)
              (cons (cons '%#ref (cons (gxc#&!mutator-id _%self221228%_) '()))
                    (cons (cons '%#quote (cons _%field221294%_ '()))
                          (cons _%object221296%_ (cons _%value221298%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%stx221224%_)
                                               (if (gxc#&!class-struct?
                                                    _%klass221301%_)
                                                   (gxc#xform-wrap-source
                                                    (cons (if (or _%arguments-ok?221238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not (gxc#&!mutator-checked? _%self221228%_)))
                      '%#struct-unchecked-set!
                      '%#struct-set!)
                  (cons (cons '%#ref
                              (cons (gxc#&!mutator-id _%self221228%_) '()))
                        (cons (cons '%#quote (cons _%field221294%_ '()))
                              (cons _%object221296%_
                                    (cons _%value221298%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx221224%_)
                                                   (let ((_%$e221321%_
                                                          (gxc#!class-slot-find-struct
                                                           _%klass221301%_
                                                           (gxc#&!mutator-slot
                                                            _%self221228%_))))
                                                     (if _%$e221321%_
                                                         ((lambda (_%klass221324%_)
                                                            (gxc#xform-wrap-source
                                                             (cons (if (or _%arguments-ok?221238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (not (gxc#&!mutator-slot _%self221228%_)))
                               '%#struct-unchecked-set!
                               '%#struct-set!)
                           (cons (cons '%#ref
                                       (cons (gxc#&!mutator-id _%self221228%_)
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field221294%_ '()))
                                       (cons _%object221296%_
                                             (cons _%value221298%_ '())))))
                     _%stx221224%_))
                  _%$e221321%_)
                 (if (gxc#&!mutator-checked? _%self221228%_)
                     (gxc#xform-wrap-source
                      (let ((_%$obj221330%_ (make-symbol (gensym '__obj))))
                        (cons '%#let-values
                              (cons (cons (cons (cons _%$obj221330%_ '())
                                                (cons _%object221296%_ '()))
                                          '())
                                    (cons (cons '%#if
                                                (cons (cons '%#struct-direct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (gxc#&!class-id _%klass221301%_) '()))
                          (cons (cons '%#ref (cons _%$obj221330%_ '())) '())))
              (cons (cons '%#struct-unchecked-set!
                          (cons (cons '%#ref
                                      (cons (gxc#&!mutator-id _%self221228%_)
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field221294%_ '()))
                                      (cons (cons '%#ref
                                                  (cons _%$obj221330%_ '()))
                                            (cons _%value221298%_ '())))))
                    (cons (if _%arguments-ok?221238%_
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-set!
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj221330%_
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons (gxc#&!mutator-slot
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%self221228%_)
                          '()))
              (cons _%value221298%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'class-slot-set! '()))
                                          (cons (cons '%#ref
                                                      (cons (gxc#&!mutator-id
                                                             _%self221228%_)
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj221330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (gxc#&!mutator-slot _%self221228%_) '()))
                    (cons _%value221298%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                      _%stx221224%_)
                     (gxc#xform-wrap-source
                      (cons '%#call
                            (cons (cons '%#ref (cons 'unchecked-slot-set! '()))
                                  (cons _%object221296%_
                                        (cons (cons '%#quote
                                                    (cons (gxc#&!mutator-slot
                                                           _%self221228%_)
                                                          '()))
                                              (cons _%value221298%_ '())))))
                      _%stx221224%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%$%hd221248221270%_
                                       _%$%hd221245221262%_)
                                      (_%$%g221240221254%_
                                       _%$%g221241221257%_))))
                              (_%$%g221240221254%_ _%$%g221241221257%_))))
                      (_%$%g221240221254%_ _%$%g221241221257%_)))))
          (_%$%g221239221333%_ _%args221225%_))))
    (bind-method!
     gxc#!mutator::t
     'optimize-call
     gxc#!mutator::optimize-call
     '#f)
    (define gxc#!lambda::optimize-call
      (lambda (_%self221038%_ _%ctx221039%_ _%stx221040%_ _%args221041%_)
        (let* ((_%self221044%_ _%self221038%_)
               (_%$%self221053221063%_ _%self221044%_)
               (_%$%E221055221066%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self221053221063%_
                         '((!lambda _ _ arity dispatch inline)))
                  (void)))
               (_%$%K221056221076%_
                (lambda (_%inline221069%_ _%dispatch221070%_ _%arity221071%_)
                  (if (gxc#!lambda-arity-match? _%self221044%_ _%args221041%_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _%stx221040%_
                       _%arity221071%_))
                  (if _%inline221069%_
                      (let ()
                        (gxc#verbose '"inline lambda")
                        (gxc#xform-wrap-apply
                         (_%inline221069%_ _%stx221040%_)
                         _%stx221040%_
                         _%ctx221039%_))
                      (if (and _%dispatch221070%_
                               (gxc#symbol-in-local-scope? _%dispatch221070%_))
                          (let ()
                            (gxc#verbose
                             '"dispatch lambda => "
                             _%dispatch221070%_)
                            (gxc#xform-wrap-apply
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%dispatch221070%_ '()))
                                         _%args221041%_))
                             _%stx221040%_
                             _%ctx221039%_))
                          (gxc#!procedure::optimize-call
                           _%self221044%_
                           _%ctx221039%_
                           _%stx221040%_
                           _%args221041%_))))))
          (if (gxc#!lambda? _%$%self221053221063%_)
              (let* ((_%$%e221057221079%_
                      (gxc#&!type-id _%$%self221053221063%_))
                     (_%$%e221058221082%_
                      (gxc#&!procedure-signature _%$%self221053221063%_))
                     (_%$%e221059221085%_
                      (gxc#&!lambda-arity _%$%self221053221063%_))
                     (_%arity221088%_ _%$%e221059221085%_)
                     (_%$%e221060221090%_
                      (gxc#&!lambda-dispatch _%$%self221053221063%_))
                     (_%dispatch221093%_ _%$%e221060221090%_)
                     (_%$%e221061221095%_
                      (gxc#&!lambda-inline _%$%self221053221063%_))
                     (_%inline221098%_ _%$%e221061221095%_))
                (_%$%K221056221076%_
                 _%inline221098%_
                 _%dispatch221093%_
                 _%arity221088%_))
              (_%$%E221055221066%_)))))
    (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self220890%_ _%ctx220891%_ _%stx220892%_ _%args220893%_)
        (let* ((_%self220896%_ _%self220890%_)
               (_%$e220910%_
                (find (lambda (_%$%g220905220907%_)
                        (gxc#!lambda-arity-match?
                         _%$%g220905220907%_
                         _%args220893%_))
                      (gxc#&!case-lambda-clauses _%self220896%_))))
          (if _%$e220910%_
              ((lambda (_%clause220913%_)
                 (call-method
                  _%clause220913%_
                  'optimize-call
                  _%ctx220891%_
                  _%stx220892%_
                  _%args220893%_))
               _%$e220910%_)
              (gxc#raise-compile-error
               '"Illegal case-lambda application; arity mismatch"
               _%stx220892%_
               (map gxc#!lambda-arity
                    (gxc#&!case-lambda-clauses _%self220896%_)))))))
    (bind-method!
     gxc#!case-lambda::t
     'optimize-call
     gxc#!case-lambda::optimize-call
     '#f)
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self220631%_ _%ctx220632%_ _%stx220633%_ _%args220634%_)
        (let* ((_%self220637%_ _%self220631%_)
               (_%$%self220646220655%_ _%self220637%_)
               (_%$%E220648220658%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self220646220655%_
                         '((!kw-lambda _ _ table dispatch)))
                  (void)))
               (_%$%K220649220749%_
                (lambda (_%dispatch220661%_ _%table220662%_)
                  (if (gxc#symbol-in-local-scope? _%dispatch220661%_)
                      (let* ((_%$%g220663220673%_
                              (gxc#optimizer-lookup-type _%dispatch220661%_))
                             (_%$%E220666220677%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%g220663220673%_
                                       '((!kw-lambda-primary _ _ keys main))
                                       'else)
                                (void)))
                             (_%$%else220665220681%_
                              (lambda ()
                                (gxc#verbose
                                 '"unknown keyword dispatch lambda "
                                 _%dispatch220661%_)
                                (gxc#xform-call% _%ctx220632%_ _%stx220633%_)))
                             (_%$%K220667220730%_
                              (lambda (_%main220684%_ _%keys220685%_)
                                (let ((_g223952_
                                       (gxc#!kw-lambda-split-args
                                        _%stx220633%_
                                        _%args220634%_)))
                                  (begin
                                    (let ((_g223953_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g223952_)
                                                 (##values-length _g223952_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g223953_ 2)))
                                          (error "Context expects 2 values"
                                                 _g223953_)))
                                    (let ((_%pargs220687%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g223952_ 0)))
                                          (_%kwargs220688%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g223952_ 1))))
                                      (begin
                                        (gxc#verbose
                                         '"dispatch kw-lambda => "
                                         _%main220684%_)
                                        (if _%table220662%_
                                            (let ((_%xargs220696%_
                                                   (map (lambda (_%key220690%_)
                                                          (let ((_%$e220692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (agetq _%key220690%_ _%kwargs220688%_)))
                    (if _%$e220692%_ _%$e220692%_ '(%#ref absent-value))))
                _%keys220685%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw220698%_)
                                                 (if (memq (car _%kw220698%_)
                                                           _%keys220685%_)
                                                     '#!void
                                                     (gxc#raise-compile-error
                                                      '"Illegal keyword lambda application; unexpected keyword"
                                                      _%stx220633%_
                                                      _%keys220685%_
                                                      _%kw220698%_)))
                                               _%kwargs220688%_)
                                              (gxc#xform-wrap-apply
                                               (cons '%#call
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%main220684%_ '()))
                   (cons (cons '%#quote (cons '#f '()))
                         (foldr cons _%pargs220687%_ _%xargs220696%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx220633%_
                                               _%ctx220632%_))
                                            (let* ((_%kwt220700%_
                                                    (make-symbol
                                                     (gensym '__kwt)))
                                                   (_%kwvars220704%_
                                                    (map (lambda (_%_220702%_)
                                                           (make-symbol
                                                            (gensym '__kw)))
                                                         _%kwargs220688%_))
                                                   (_%kwbind220709%_
                                                    (map (lambda (_%kw220706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar220707%_)
                   (cons (cons _%kwvar220707%_ '())
                         (cons (cdr _%kw220706%_) '())))
                 _%kwargs220688%_
                 _%kwvars220704%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset220714%_
                                                    (map (lambda (_%kw220711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar220712%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt220700%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw220711%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar220712%_
                                                             '()))
                                                 '()))))))
                 _%kwargs220688%_
                 _%kwvars220704%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs220719%_
                                                    (map (lambda (_%kw220716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar220717%_)
                   (cons (car _%kw220716%_)
                         (cons '%#ref (cons _%kwvar220717%_ '()))))
                 _%kwargs220688%_
                 _%kwvars220704%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs220727%_
                                                    (map (lambda (_%key220721%_)
                                                           (let ((_%$e220723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (agetq _%key220721%_ _%xkwargs220719%_)))
                     (if _%$e220723%_ _%$e220723%_ '(%#ref absent-value))))
                 _%keys220685%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gxc#xform-wrap-apply
                                               (cons '%#let-values
                                                     (cons _%kwbind220709%_
                                                           (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons (cons (cons _%kwt220700%_ '())
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#call
                                                              (cons '(%#ref make-symbolic-table)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#quote
                                        (cons (length _%kwargs220688%_) '()))
                                  (cons '(%#quote (length kwvars)) '()))))
                _%stx220633%_)
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (cons '%#begin
                                                 (foldr cons
                                                        (cons (gxc#xform-wrap-source
                                                               (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#ref (cons _%main220684%_ '()))
                                   (cons (cons '%#ref (cons _%kwt220700%_ '()))
                                         (foldr cons
                                                _%pargs220687%_
                                                _%xargs220727%_))))
                       _%stx220633%_)
                      '())
                _%kwset220714%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx220633%_
                                               _%ctx220632%_))))))))))
                        (if (gxc#!kw-lambda-primary? _%$%g220663220673%_)
                            (let* ((_%$%e220668220733%_
                                    (gxc#&!type-id _%$%g220663220673%_))
                                   (_%$%e220669220736%_
                                    (gxc#&!procedure-signature
                                     _%$%g220663220673%_))
                                   (_%$%e220670220739%_
                                    (gxc#&!kw-lambda-primary-keys
                                     _%$%g220663220673%_))
                                   (_%keys220742%_ _%$%e220670220739%_)
                                   (_%$%e220671220744%_
                                    (gxc#&!kw-lambda-primary-main
                                     _%$%g220663220673%_))
                                   (_%main220747%_ _%$%e220671220744%_))
                              (_%$%K220667220730%_
                               _%main220747%_
                               _%keys220742%_))
                            (_%$%else220665220681%_)))
                      (gxc#xform-call% _%ctx220632%_ _%stx220633%_)))))
          (if (gxc#!kw-lambda? _%$%self220646220655%_)
              (let* ((_%$%e220650220752%_
                      (gxc#&!type-id _%$%self220646220655%_))
                     (_%$%e220651220755%_
                      (gxc#&!procedure-signature _%$%self220646220655%_))
                     (_%$%e220652220758%_
                      (gxc#&!kw-lambda-table _%$%self220646220655%_))
                     (_%table220761%_ _%$%e220652220758%_)
                     (_%$%e220653220763%_
                      (gxc#&!kw-lambda-dispatch _%$%self220646220655%_))
                     (_%dispatch220766%_ _%$%e220653220763%_))
                (_%$%K220649220749%_ _%dispatch220766%_ _%table220761%_))
              (_%$%E220648220658%_)))))
    (bind-method!
     gxc#!kw-lambda::t
     'optimize-call
     gxc#!kw-lambda::optimize-call
     '#f)
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx220244%_ _%args220245%_)
        (let _%lp220247%_ ((_%rest220249%_ _%args220245%_)
                           (_%pargs220250%_ '())
                           (_%kwargs220251%_ '()))
          (let* ((_%$%g220257220309%_
                  (lambda (_%$%g220258220306%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g220258220306%_)))
                 (_%$%g220256220316%_
                  (lambda (_%$%g220258220312%_)
                    ((lambda ()
                       (values (reverse _%pargs220250%_)
                               (reverse _%kwargs220251%_))))))
                 (_%$%g220255220344%_
                  (lambda (_%$%g220258220319%_)
                    (if (gx#stx-pair? _%$%g220258220319%_)
                        (let ((_%$%e220302220321%_
                               (gx#stx-e _%$%g220258220319%_)))
                          (let ((_%$%hd220303220324%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e220302220321%_)))
                                (_%$%tl220304220326%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e220302220321%_))))
                            ((lambda (_%$%g220300220329%_ _%$%g220301220330%_)
                               (_%lp220247%_
                                _%$%g220300220329%_
                                (cons _%$%g220301220330%_ _%pargs220250%_)
                                _%kwargs220251%_))
                             _%$%tl220304220326%_
                             _%$%hd220303220324%_)))
                        (_%$%g220256220316%_ _%$%g220258220319%_))))
                 (_%$%g220254220402%_
                  (lambda (_%$%g220258220347%_)
                    (if (gx#stx-pair? _%$%g220258220347%_)
                        (let ((_%$%e220288220349%_
                               (gx#stx-e _%$%g220258220347%_)))
                          (let ((_%$%hd220289220352%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e220288220349%_)))
                                (_%$%tl220290220354%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e220288220349%_))))
                            (if (gx#stx-pair? _%$%hd220289220352%_)
                                (let ((_%$%e220291220357%_
                                       (gx#stx-e _%$%hd220289220352%_)))
                                  (let ((_%$%hd220292220360%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e220291220357%_)))
                                        (_%$%tl220293220362%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e220291220357%_))))
                                    (if (gx#identifier? _%$%hd220292220360%_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _%$%hd220292220360%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl220293220362%_)
                                                (let ((_%$%e220294220365%_
                                                       (gx#stx-e
                                                        _%$%tl220293220362%_)))
                                                  (let ((_%$%hd220295220368%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e220294220365%_)))
                                                        (_%$%tl220296220370%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e220294220365%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl220296220370%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl220290220354%_)
                                                            (let ((_%$%e220297220373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%$%tl220290220354%_)))
                      (let ((_%$%hd220298220376%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e220297220373%_)))
                            (_%$%tl220299220378%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e220297220373%_))))
                        ((lambda (_%$%g220285220381%_
                                  _%$%g220286220382%_
                                  _%$%g220287220383%_)
                           (if (gx#stx-keyword? _%$%g220287220383%_)
                               (let ((_%kw220400%_
                                      (gx#stx-e _%$%g220287220383%_)))
                                 (if (assq _%kw220400%_ _%kwargs220251%_)
                                     (gxc#raise-compile-error
                                      '"Illegal keyword lambda application; duplicate keyword"
                                      _%stx220244%_
                                      _%kw220400%_)
                                     (_%lp220247%_
                                      _%$%g220285220381%_
                                      _%pargs220250%_
                                      (cons (cons _%kw220400%_
                                                  _%$%g220286220382%_)
                                            _%kwargs220251%_))))
                               (_%$%g220255220344%_ _%$%g220258220347%_)))
                         _%$%tl220299220378%_
                         _%$%hd220298220376%_
                         _%$%hd220295220368%_)))
                    (_%$%g220255220344%_ _%$%g220258220347%_))
                (_%$%g220255220344%_ _%$%g220258220347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g220255220344%_
                                                 _%$%g220258220347%_))
                                            (_%$%g220255220344%_
                                             _%$%g220258220347%_))
                                        (_%$%g220255220344%_
                                         _%$%g220258220347%_))))
                                (_%$%g220255220344%_ _%$%g220258220347%_))))
                        (_%$%g220255220344%_ _%$%g220258220347%_))))
                 (_%$%g220253220448%_
                  (lambda (_%$%g220258220405%_)
                    (if (gx#stx-pair? _%$%g220258220405%_)
                        (let ((_%$%e220275220407%_
                               (gx#stx-e _%$%g220258220405%_)))
                          (let ((_%$%hd220276220410%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e220275220407%_)))
                                (_%$%tl220277220412%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e220275220407%_))))
                            (if (gx#stx-pair? _%$%hd220276220410%_)
                                (let ((_%$%e220278220415%_
                                       (gx#stx-e _%$%hd220276220410%_)))
                                  (let ((_%$%hd220279220418%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e220278220415%_)))
                                        (_%$%tl220280220420%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e220278220415%_))))
                                    (if (gx#identifier? _%$%hd220279220418%_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _%$%hd220279220418%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl220280220420%_)
                                                (let ((_%$%e220281220423%_
                                                       (gx#stx-e
                                                        _%$%tl220280220420%_)))
                                                  (let ((_%$%hd220282220426%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e220281220423%_)))
                                                        (_%$%tl220283220428%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e220281220423%_))))
                                                    (if (gx#stx-datum?
                                                         _%$%hd220282220426%_)
                                                        (let ((_%$%e220284220431%_
                                                               (gx#stx-e
                                                                _%$%hd220282220426%_)))
                                                          (if (equal? _%$%e220284220431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!rest)
                      (if (gx#stx-null? _%$%tl220283220428%_)
                          ((lambda (_%$%g220274220434%_)
                             (values (foldl cons
                                            _%$%g220274220434%_
                                            _%pargs220250%_)
                                     (reverse _%kwargs220251%_)))
                           _%$%tl220277220412%_)
                          (_%$%g220254220402%_ _%$%g220258220405%_))
                      (_%$%g220254220402%_ _%$%g220258220405%_)))
                (_%$%g220254220402%_ _%$%g220258220405%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g220254220402%_
                                                 _%$%g220258220405%_))
                                            (_%$%g220254220402%_
                                             _%$%g220258220405%_))
                                        (_%$%g220254220402%_
                                         _%$%g220258220405%_))))
                                (_%$%g220254220402%_ _%$%g220258220405%_))))
                        (_%$%g220254220402%_ _%$%g220258220405%_))))
                 (_%$%g220252220506%_
                  (lambda (_%$%g220258220451%_)
                    (if (gx#stx-pair? _%$%g220258220451%_)
                        (let ((_%$%e220261220453%_
                               (gx#stx-e _%$%g220258220451%_)))
                          (let ((_%$%hd220262220456%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e220261220453%_)))
                                (_%$%tl220263220458%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e220261220453%_))))
                            (if (gx#stx-pair? _%$%hd220262220456%_)
                                (let ((_%$%e220264220461%_
                                       (gx#stx-e _%$%hd220262220456%_)))
                                  (let ((_%$%hd220265220464%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e220264220461%_)))
                                        (_%$%tl220266220466%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e220264220461%_))))
                                    (if (gx#identifier? _%$%hd220265220464%_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _%$%hd220265220464%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl220266220466%_)
                                                (let ((_%$%e220267220469%_
                                                       (gx#stx-e
                                                        _%$%tl220266220466%_)))
                                                  (let ((_%$%hd220268220472%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e220267220469%_)))
                                                        (_%$%tl220269220474%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e220267220469%_))))
                                                    (if (gx#stx-datum?
                                                         _%$%hd220268220472%_)
                                                        (let ((_%$%e220270220477%_
                                                               (gx#stx-e
                                                                _%$%hd220268220472%_)))
                                                          (if (equal? _%$%e220270220477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!key)
                      (if (gx#stx-null? _%$%tl220269220474%_)
                          (if (gx#stx-pair? _%$%tl220263220458%_)
                              (let ((_%$%e220271220480%_
                                     (gx#stx-e _%$%tl220263220458%_)))
                                (let ((_%$%hd220272220483%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e220271220480%_)))
                                      (_%$%tl220273220485%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e220271220480%_))))
                                  ((lambda (_%$%g220259220488%_
                                            _%$%g220260220489%_)
                                     (_%lp220247%_
                                      _%$%g220259220488%_
                                      (cons _%$%g220260220489%_
                                            _%pargs220250%_)
                                      _%kwargs220251%_))
                                   _%$%tl220273220485%_
                                   _%$%hd220272220483%_)))
                              (_%$%g220253220448%_ _%$%g220258220451%_))
                          (_%$%g220253220448%_ _%$%g220258220451%_))
                      (_%$%g220253220448%_ _%$%g220258220451%_)))
                (_%$%g220253220448%_ _%$%g220258220451%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g220253220448%_
                                                 _%$%g220258220451%_))
                                            (_%$%g220253220448%_
                                             _%$%g220258220451%_))
                                        (_%$%g220253220448%_
                                         _%$%g220258220451%_))))
                                (_%$%g220253220448%_ _%$%g220258220451%_))))
                        (_%$%g220253220448%_ _%$%g220258220451%_)))))
            (_%$%g220252220506%_ _%rest220249%_)))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self220228%_ _%ctx220229%_ _%stx220230%_ _%args220231%_)
        (let ((_%self220234%_ _%self220228%_))
          (gxc#xform-call% _%ctx220229%_ _%stx220230%_))))
    (bind-method!
     gxc#!kw-lambda-primary::t
     'optimize-call
     gxc#!kw-lambda-primary::optimize-call
     '#f)
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self219918%_ _%stx219919%_)
        (let* ((_%$%g219922219962%_
                (lambda (_%$%g219923219959%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g219923219959%_)))
               (_%$%g219921220007%_
                (lambda (_%$%g219923219965%_)
                  (if (gx#stx-pair? _%$%g219923219965%_)
                      (let ((_%$%e219949219967%_
                             (gx#stx-e _%$%g219923219965%_)))
                        (let ((_%$%hd219950219970%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e219949219967%_)))
                              (_%$%tl219951219972%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e219949219967%_))))
                          (if (gx#stx-pair? _%$%tl219951219972%_)
                              (let ((_%$%e219952219975%_
                                     (gx#stx-e _%$%tl219951219972%_)))
                                (let ((_%$%hd219953219978%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e219952219975%_)))
                                      (_%$%tl219954219980%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e219952219975%_))))
                                  (if (gx#stx-pair? _%$%tl219954219980%_)
                                      (let ((_%$%e219955219983%_
                                             (gx#stx-e _%$%tl219954219980%_)))
                                        (let ((_%$%hd219956219986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e219955219983%_)))
                                              (_%$%tl219957219988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e219955219983%_))))
                                          (if (gx#stx-null?
                                               _%$%tl219957219988%_)
                                              ((lambda (_%$%g219947219991%_
                                                        _%$%g219948219992%_)
                                                 (gxc#compile-e
                                                  _%self219918%_
                                                  _%$%g219947219991%_))
                                               _%$%hd219956219986%_
                                               _%$%hd219953219978%_)
                                              (_%$%g219922219962%_
                                               _%$%g219923219965%_))))
                                      (_%$%g219922219962%_
                                       _%$%g219923219965%_))))
                              (_%$%g219922219962%_ _%$%g219923219965%_))))
                      (_%$%g219922219962%_ _%$%g219923219965%_))))
               (_%$%g219920220102%_
                (lambda (_%$%g219923220010%_)
                  (if (gx#stx-pair? _%$%g219923220010%_)
                      (let ((_%$%e219926220012%_
                             (gx#stx-e _%$%g219923220010%_)))
                        (let ((_%$%hd219927220015%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e219926220012%_)))
                              (_%$%tl219928220017%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e219926220012%_))))
                          (if (gx#stx-pair? _%$%tl219928220017%_)
                              (let ((_%$%e219929220020%_
                                     (gx#stx-e _%$%tl219928220017%_)))
                                (let ((_%$%hd219930220023%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e219929220020%_)))
                                      (_%$%tl219931220025%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e219929220020%_))))
                                  (if (gx#stx-pair? _%$%hd219930220023%_)
                                      (let ((_%$%e219932220028%_
                                             (gx#stx-e _%$%hd219930220023%_)))
                                        (let ((_%$%hd219933220031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e219932220028%_)))
                                              (_%$%tl219934220033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e219932220028%_))))
                                          (if (gx#identifier?
                                               _%$%hd219933220031%_)
                                              (if (gx#stx-eq?
                                                   '@type.signature
                                                   _%$%hd219933220031%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl219934220033%_)
                                                      (let ((_g223954_
                                                             (gx#syntax-split-splice
                                                              _%$%tl219934220033%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g223955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g223954_)
                               (##values-length _g223954_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g223955_ 2)))
                        (error "Context expects 2 values" _g223955_)))
                  (let ((_%$%target219935220036%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g223954_ 0)))
                        (_%$%tl219937220038%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g223954_ 1))))
                    (if (gx#stx-null? _%$%tl219937220038%_)
                        (letrec ((_%$%loop219938220041%_
                                  (lambda (_%$%hd219936220044%_
                                           _%$%signature219942220046%_)
                                    (if (gx#stx-pair? _%$%hd219936220044%_)
                                        (let ((_%$%e219939220048%_
                                               (gx#stx-e
                                                _%$%hd219936220044%_)))
                                          (let ((_%$%lp-hd219940220051%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e219939220048%_)))
                                                (_%$%lp-tl219941220053%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e219939220048%_))))
                                            (_%$%loop219938220041%_
                                             _%$%lp-tl219941220053%_
                                             (cons _%$%lp-hd219940220051%_
                                                   _%$%signature219942220046%_))))
                                        (let ((_%$%signature219943220056%_
                                               (reverse _%$%signature219942220046%_)))
                                          (if (gx#stx-pair?
                                               _%$%tl219931220025%_)
                                              (let ((_%$%e219944220058%_
                                                     (gx#stx-e
                                                      _%$%tl219931220025%_)))
                                                (let ((_%$%hd219945220061%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e219944220058%_)))
                                                      (_%$%tl219946220063%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e219944220058%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl219946220063%_)
                                                      ((lambda (_%$%g219924220066%_
                                                                _%$%g219925220067%_)
                                                         (let ((_%$e220094%_
                                                                (member 'return:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (foldr (lambda (_%$%g220086220089%_
                                                _%$%g220087220091%_)
                                         (cons _%$%g220086220089%_
                                               _%$%g220087220091%_))
                                       '()
                                       _%$%g219925220067%_)
                                gx#stx-eq?)))
                   (if _%$e220094%_
                       ((lambda (_%tail220097%_)
                          (let ((_%type220099%_
                                 (gxc#optimizer-resolve-class
                                  _%stx219919%_
                                  (gxc#identifier-symbol
                                   (cadr _%tail220097%_)))))
                            (gxc#check-return-type!
                             _%stx219919%_
                             _%$%g219924220066%_
                             _%type220099%_)
                            (gxc#compile-e
                             _%self219918%_
                             _%$%g219924220066%_)))
                        _%$e220094%_)
                       (gxc#compile-e _%self219918%_ _%$%g219924220066%_))))
               _%$%hd219945220061%_
               _%$%signature219943220056%_)
              (_%$%g219921220007%_ _%$%g219923220010%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g219921220007%_
                                               _%$%g219923220010%_)))))))
                          (_%$%loop219938220041%_
                           _%$%target219935220036%_
                           '()))
                        (_%$%g219921220007%_ _%$%g219923220010%_)))))
              (_%$%g219921220007%_ _%$%g219923220010%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g219921220007%_
                                                   _%$%g219923220010%_))
                                              (_%$%g219921220007%_
                                               _%$%g219923220010%_))))
                                      (_%$%g219921220007%_
                                       _%$%g219923220010%_))))
                              (_%$%g219921220007%_ _%$%g219923220010%_))))
                      (_%$%g219921220007%_ _%$%g219923220010%_)))))
          (_%$%g219920220102%_ _%stx219919%_))))
    (define gxc#check-return-type!
      (lambda (_%stx219893%_ _%expr219894%_ _%type219895%_)
        (let ((_%$e219897%_ (not _%type219895%_)))
          (if _%$e219897%_
              _%$e219897%_
              (let ((_%$e219900%_ (eq? (gxc#!type-id _%type219895%_) 't)))
                (if _%$e219900%_
                    _%$e219900%_
                    (let ((_%$e219903%_
                           (eq? (gxc#!type-id _%type219895%_) 'void)))
                      (if _%$e219903%_
                          _%$e219903%_
                          (let ((_%expr-type219907%_
                                 (gxc#apply-basic-expression-type
                                  _%expr219894%_)))
                            (if (not _%expr-type219907%_)
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; no type information"
                                 _%stx219893%_
                                 _%type219895%_)
                                (if (eq? 't (gxc#!type-id _%expr-type219907%_))
                                    (gxc#raise-compile-error
                                     '"cannot verify procedure return type; unspecific type"
                                     _%stx219893%_
                                     _%type219895%_
                                     _%expr-type219907%_)
                                    (let ((_%$e219911%_
                                           (gxc#!abort? _%expr-type219907%_)))
                                      (if _%$e219911%_
                                          _%$e219911%_
                                          (let ((_%$e219914%_
                                                 (gxc#!type-subtype?
                                                  _%expr-type219907%_
                                                  _%type219895%_)))
                                            (if _%$e219914%_
                                                _%$e219914%_
                                                (gxc#raise-compile-error
                                                 '"procedure return type does not match signature"
                                                 _%stx219893%_
                                                 _%type219895%_
                                                 _%expr-type219907%_))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self219322%_ _%stx219323%_)
        (gxc#check-contract-violation!
         _%stx219323%_
         (let* ((_%$%g219328219438%_
                 (lambda (_%$%g219329219435%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%$%g219329219435%_)))
                (_%$%g219327219495%_
                 (lambda (_%$%g219329219441%_)
                   (if (gx#stx-pair? _%$%g219329219441%_)
                       (let ((_%$%e219422219443%_
                              (gx#stx-e _%$%g219329219441%_)))
                         (let ((_%$%hd219423219446%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e219422219443%_)))
                               (_%$%tl219424219448%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e219422219443%_))))
                           (if (gx#stx-pair? _%$%tl219424219448%_)
                               (let ((_%$%e219425219451%_
                                      (gx#stx-e _%$%tl219424219448%_)))
                                 (let ((_%$%hd219426219454%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e219425219451%_)))
                                       (_%$%tl219427219456%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e219425219451%_))))
                                   (if (gx#stx-pair? _%$%tl219427219456%_)
                                       (let ((_%$%e219428219459%_
                                              (gx#stx-e _%$%tl219427219456%_)))
                                         (let ((_%$%hd219429219462%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e219428219459%_)))
                                               (_%$%tl219430219464%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e219428219459%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl219430219464%_)
                                               (let ((_%$%e219431219467%_
                                                      (gx#stx-e
                                                       _%$%tl219430219464%_)))
                                                 (let ((_%$%hd219432219470%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e219431219467%_)))
                                                       (_%$%tl219433219472%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e219431219467%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl219433219472%_)
                                                       ((lambda (_%$%g219419219475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g219420219476%_
                         _%$%g219421219477%_)
                  (gxc#xform-operands _%self219322%_ _%stx219323%_))
                _%$%hd219432219470%_
                _%$%hd219429219462%_
                _%$%hd219426219454%_)
               (_%$%g219328219438%_ _%$%g219329219441%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g219328219438%_
                                                _%$%g219329219441%_))))
                                       (_%$%g219328219438%_
                                        _%$%g219329219441%_))))
                               (_%$%g219328219438%_ _%$%g219329219441%_))))
                       (_%$%g219328219438%_ _%$%g219329219441%_))))
                (_%$%g219326219603%_
                 (lambda (_%$%g219329219498%_)
                   (if (gx#stx-pair? _%$%g219329219498%_)
                       (let ((_%$%e219392219500%_
                              (gx#stx-e _%$%g219329219498%_)))
                         (let ((_%$%hd219393219503%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e219392219500%_)))
                               (_%$%tl219394219505%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e219392219500%_))))
                           (if (gx#stx-pair? _%$%tl219394219505%_)
                               (let ((_%$%e219395219508%_
                                      (gx#stx-e _%$%tl219394219505%_)))
                                 (let ((_%$%hd219396219511%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e219395219508%_)))
                                       (_%$%tl219397219513%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e219395219508%_))))
                                   (if (gx#stx-pair? _%$%hd219396219511%_)
                                       (let ((_%$%e219398219516%_
                                              (gx#stx-e _%$%hd219396219511%_)))
                                         (let ((_%$%hd219399219519%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e219398219516%_)))
                                               (_%$%tl219400219521%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e219398219516%_))))
                                           (if (gx#identifier?
                                                _%$%hd219399219519%_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _%$%hd219399219519%_)
                                                   (if (gx#stx-pair?
                                                        _%$%tl219400219521%_)
                                                       (let ((_%$%e219401219524%_
                                                              (gx#stx-e
                                                               _%$%tl219400219521%_)))
                                                         (let ((_%$%hd219402219527%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e219401219524%_)))
                       (_%$%tl219403219529%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e219401219524%_))))
                   (if (gx#stx-pair? _%$%hd219402219527%_)
                       (let ((_%$%e219404219532%_
                              (gx#stx-e _%$%hd219402219527%_)))
                         (let ((_%$%hd219405219535%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e219404219532%_)))
                               (_%$%tl219406219537%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e219404219532%_))))
                           (if (gx#identifier? _%$%hd219405219535%_)
                               (if (gx#stx-eq? '%#ref _%$%hd219405219535%_)
                                   (if (gx#stx-pair? _%$%tl219406219537%_)
                                       (let ((_%$%e219407219540%_
                                              (gx#stx-e _%$%tl219406219537%_)))
                                         (let ((_%$%hd219408219543%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e219407219540%_)))
                                               (_%$%tl219409219545%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e219407219540%_))))
                                           (if (gx#stx-null?
                                                _%$%tl219409219545%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl219403219529%_)
                                                   (let ((_%$%e219410219548%_
                                                          (gx#stx-e
                                                           _%$%tl219403219529%_)))
                                                     (let ((_%$%hd219411219551%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e219410219548%_)))
                                                           (_%$%tl219412219553%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e219410219548%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl219412219553%_)
                                                           (if (gx#stx-pair?
                                                                _%$%tl219397219513%_)
                                                               (let ((_%$%e219413219556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _%$%tl219397219513%_)))
                         (let ((_%$%hd219414219559%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e219413219556%_)))
                               (_%$%tl219415219561%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e219413219556%_))))
                           (if (gx#stx-pair? _%$%tl219415219561%_)
                               (let ((_%$%e219416219564%_
                                      (gx#stx-e _%$%tl219415219561%_)))
                                 (let ((_%$%hd219417219567%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e219416219564%_)))
                                       (_%$%tl219418219569%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e219416219564%_))))
                                   (if (gx#stx-null? _%$%tl219418219569%_)
                                       ((lambda (_%$%g219388219572%_
                                                 _%$%g219389219573%_
                                                 _%$%g219390219574%_
                                                 _%$%g219391219575%_)
                                          (if (gxc#runtime-identifier=?
                                               _%$%g219391219575%_
                                               'not)
                                              (gxc#optimize-if%
                                               _%self219322%_
                                               (gxc#xform-wrap-source
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '%#if)
                                                      (cons _%$%g219390219574%_
                                                            (cons _%$%g219388219572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$%g219389219573%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%stx219323%_))
                                              (_%$%g219327219495%_
                                               _%$%g219329219498%_)))
                                        _%$%hd219417219567%_
                                        _%$%hd219414219559%_
                                        _%$%hd219411219551%_
                                        _%$%hd219408219543%_)
                                       (_%$%g219327219495%_
                                        _%$%g219329219498%_))))
                               (_%$%g219327219495%_ _%$%g219329219498%_))))
                       (_%$%g219327219495%_ _%$%g219329219498%_))
                   (_%$%g219327219495%_ _%$%g219329219498%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g219327219495%_
                                                    _%$%g219329219498%_))
                                               (_%$%g219327219495%_
                                                _%$%g219329219498%_))))
                                       (_%$%g219327219495%_
                                        _%$%g219329219498%_))
                                   (_%$%g219327219495%_ _%$%g219329219498%_))
                               (_%$%g219327219495%_ _%$%g219329219498%_))))
                       (_%$%g219327219495%_ _%$%g219329219498%_))))
               (_%$%g219327219495%_ _%$%g219329219498%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g219327219495%_
                                                    _%$%g219329219498%_))
                                               (_%$%g219327219495%_
                                                _%$%g219329219498%_))))
                                       (_%$%g219327219495%_
                                        _%$%g219329219498%_))))
                               (_%$%g219327219495%_ _%$%g219329219498%_))))
                       (_%$%g219327219495%_ _%$%g219329219498%_))))
                (_%$%g219325219814%_
                 (lambda (_%$%g219329219606%_)
                   (if (gx#stx-pair? _%$%g219329219606%_)
                       (let ((_%$%e219355219608%_
                              (gx#stx-e _%$%g219329219606%_)))
                         (let ((_%$%hd219356219611%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e219355219608%_)))
                               (_%$%tl219357219613%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e219355219608%_))))
                           (if (gx#stx-pair? _%$%tl219357219613%_)
                               (let ((_%$%e219358219616%_
                                      (gx#stx-e _%$%tl219357219613%_)))
                                 (let ((_%$%hd219359219619%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e219358219616%_)))
                                       (_%$%tl219360219621%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e219358219616%_))))
                                   (if (gx#stx-pair? _%$%hd219359219619%_)
                                       (let ((_%$%e219361219624%_
                                              (gx#stx-e _%$%hd219359219619%_)))
                                         (let ((_%$%hd219362219627%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e219361219624%_)))
                                               (_%$%tl219363219629%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e219361219624%_))))
                                           (if (gx#identifier?
                                                _%$%hd219362219627%_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _%$%hd219362219627%_)
                                                   (if (gx#stx-pair?
                                                        _%$%tl219363219629%_)
                                                       (let ((_%$%e219364219632%_
                                                              (gx#stx-e
                                                               _%$%tl219363219629%_)))
                                                         (let ((_%$%hd219365219635%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e219364219632%_)))
                       (_%$%tl219366219637%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e219364219632%_))))
                   (if (gx#stx-pair? _%$%hd219365219635%_)
                       (let ((_%$%e219367219640%_
                              (gx#stx-e _%$%hd219365219635%_)))
                         (let ((_%$%hd219368219643%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e219367219640%_)))
                               (_%$%tl219369219645%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e219367219640%_))))
                           (if (gx#identifier? _%$%hd219368219643%_)
                               (if (gx#stx-eq? '%#ref _%$%hd219368219643%_)
                                   (if (gx#stx-pair? _%$%tl219369219645%_)
                                       (let ((_%$%e219370219648%_
                                              (gx#stx-e _%$%tl219369219645%_)))
                                         (let ((_%$%hd219371219651%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e219370219648%_)))
                                               (_%$%tl219372219653%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e219370219648%_))))
                                           (if (gx#stx-null?
                                                _%$%tl219372219653%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl219366219637%_)
                                                   (let ((_%$%e219373219656%_
                                                          (gx#stx-e
                                                           _%$%tl219366219637%_)))
                                                     (let ((_%$%hd219374219659%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e219373219656%_)))
                                                           (_%$%tl219375219661%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e219373219656%_))))
                                                       (if (gx#stx-pair?
                                                            _%$%hd219374219659%_)
                                                           (let ((_%$%e219376219664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%hd219374219659%_)))
                     (let ((_%$%hd219377219667%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e219376219664%_)))
                           (_%$%tl219378219669%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e219376219664%_))))
                       (if (gx#identifier? _%$%hd219377219667%_)
                           (if (gx#stx-eq? '%#ref _%$%hd219377219667%_)
                               (if (gx#stx-pair? _%$%tl219378219669%_)
                                   (let ((_%$%e219379219672%_
                                          (gx#stx-e _%$%tl219378219669%_)))
                                     (let ((_%$%hd219380219675%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e219379219672%_)))
                                           (_%$%tl219381219677%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e219379219672%_))))
                                       (if (gx#stx-null? _%$%tl219381219677%_)
                                           (if (gx#stx-null?
                                                _%$%tl219375219661%_)
                                               (if (gx#stx-pair?
                                                    _%$%tl219360219621%_)
                                                   (let ((_%$%e219382219680%_
                                                          (gx#stx-e
                                                           _%$%tl219360219621%_)))
                                                     (let ((_%$%hd219383219683%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e219382219680%_)))
                                                           (_%$%tl219384219685%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e219382219680%_))))
                                                       (if (gx#stx-pair?
                                                            _%$%tl219384219685%_)
                                                           (let ((_%$%e219385219688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%$%tl219384219685%_)))
                     (let ((_%$%hd219386219691%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e219385219688%_)))
                           (_%$%tl219387219693%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e219385219688%_))))
                       (if (gx#stx-null? _%$%tl219387219693%_)
                           ((lambda (_%$%g219351219696%_
                                     _%$%g219352219697%_
                                     _%$%g219353219698%_
                                     _%$%g219354219699%_)
                              (let ((_%$e219731%_
                                     (gxc#optimizer-lookup-type
                                      (gxc#identifier-symbol
                                       _%$%g219354219699%_))))
                                (if _%$e219731%_
                                    ((lambda (_%pred-type219734%_)
                                       (if (or (gxc#!predicate?
                                                _%pred-type219734%_)
                                               (gxc#!primitive-predicate?
                                                _%pred-type219734%_))
                                           (let* ((_%test219739%_
                                                   (gxc#xform-wrap-apply
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '%#call)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '%#ref)
                              (cons _%$%g219354219699%_ '()))
                        (cons (cons (gx#datum->syntax '#f '%#ref)
                                    (cons _%$%g219353219698%_ '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx219323%_
                                                    _%self219322%_))
                                                  (_%K219743%_
                                                   (make-promise
                                                    (lambda ()
                                                      (call-with-parameters
                                                       (lambda ()
                                                         (gxc#compile-e
                                                          _%self219322%_
                                                          _%$%g219352219697%_))
                                                       gxc#current-compile-path-type
                                                       (cons (cons (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g219353219698%_)
                           (gxc#optimizer-resolve-class
                            _%stx219323%_
                            (gxc#!type-id _%pred-type219734%_)))
                     (gxc#current-compile-path-type))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E219746%_
                                                   (make-promise
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       _%self219322%_
                                                       _%$%g219351219696%_))))
                                                  (_%$%g219750219763%_
                                                   (lambda (_%$%g219751219760%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g219751219760%_)))
                                                  (_%$%g219749219770%_
                                                   (lambda (_%$%g219751219766%_)
                                                     ((lambda ()
                                                        (gxc#xform-wrap-source
                                                         (cons '%#if
                                                               (cons _%test219739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (force _%K219743%_)
                                   (cons (force _%E219746%_) '()))))
                 _%stx219323%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g219748219810%_
                                                   (lambda (_%$%g219751219773%_)
                                                     (if (gx#stx-pair?
                                                          _%$%g219751219773%_)
                                                         (let ((_%$%e219753219775%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g219751219773%_)))
                   (let ((_%$%hd219754219778%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e219753219775%_)))
                         (_%$%tl219755219780%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e219753219775%_))))
                     (if (gx#identifier? _%$%hd219754219778%_)
                         (if (gx#stx-eq? '%#quote _%$%hd219754219778%_)
                             (if (gx#stx-pair? _%$%tl219755219780%_)
                                 (let ((_%$%e219756219783%_
                                        (gx#stx-e _%$%tl219755219780%_)))
                                   (let ((_%$%hd219757219786%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e219756219783%_)))
                                         (_%$%tl219758219788%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e219756219783%_))))
                                     (if (gx#stx-null? _%$%tl219758219788%_)
                                         ((lambda (_%$%g219752219791%_)
                                            (if (gx#stx-e _%$%g219752219791%_)
                                                (force _%K219743%_)
                                                (force _%E219746%_)))
                                          _%$%hd219757219786%_)
                                         (_%$%g219749219770%_
                                          _%$%g219751219773%_))))
                                 (_%$%g219749219770%_ _%$%g219751219773%_))
                             (_%$%g219749219770%_ _%$%g219751219773%_))
                         (_%$%g219749219770%_ _%$%g219751219773%_))))
                 (_%$%g219749219770%_ _%$%g219751219773%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g219748219810%_
                                              _%test219739%_))
                                           (gxc#xform-operands
                                            _%self219322%_
                                            _%stx219323%_)))
                                     _%$e219731%_)
                                    (gxc#xform-operands
                                     _%self219322%_
                                     _%stx219323%_))))
                            _%$%hd219386219691%_
                            _%$%hd219383219683%_
                            _%$%hd219380219675%_
                            _%$%hd219371219651%_)
                           (_%$%g219326219603%_ _%$%g219329219606%_))))
                   (_%$%g219326219603%_ _%$%g219329219606%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g219326219603%_
                                                    _%$%g219329219606%_))
                                               (_%$%g219326219603%_
                                                _%$%g219329219606%_))
                                           (_%$%g219326219603%_
                                            _%$%g219329219606%_))))
                                   (_%$%g219326219603%_ _%$%g219329219606%_))
                               (_%$%g219326219603%_ _%$%g219329219606%_))
                           (_%$%g219326219603%_ _%$%g219329219606%_))))
                   (_%$%g219326219603%_ _%$%g219329219606%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g219326219603%_
                                                    _%$%g219329219606%_))
                                               (_%$%g219326219603%_
                                                _%$%g219329219606%_))))
                                       (_%$%g219326219603%_
                                        _%$%g219329219606%_))
                                   (_%$%g219326219603%_ _%$%g219329219606%_))
                               (_%$%g219326219603%_ _%$%g219329219606%_))))
                       (_%$%g219326219603%_ _%$%g219329219606%_))))
               (_%$%g219326219603%_ _%$%g219329219606%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g219326219603%_
                                                    _%$%g219329219606%_))
                                               (_%$%g219326219603%_
                                                _%$%g219329219606%_))))
                                       (_%$%g219326219603%_
                                        _%$%g219329219606%_))))
                               (_%$%g219326219603%_ _%$%g219329219606%_))))
                       (_%$%g219326219603%_ _%$%g219329219606%_))))
                (_%$%g219324219890%_
                 (lambda (_%$%g219329219817%_)
                   (if (gx#stx-pair? _%$%g219329219817%_)
                       (let ((_%$%e219333219819%_
                              (gx#stx-e _%$%g219329219817%_)))
                         (let ((_%$%hd219334219822%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e219333219819%_)))
                               (_%$%tl219335219824%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e219333219819%_))))
                           (if (gx#stx-pair? _%$%tl219335219824%_)
                               (let ((_%$%e219336219827%_
                                      (gx#stx-e _%$%tl219335219824%_)))
                                 (let ((_%$%hd219337219830%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e219336219827%_)))
                                       (_%$%tl219338219832%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e219336219827%_))))
                                   (if (gx#stx-pair? _%$%hd219337219830%_)
                                       (let ((_%$%e219339219835%_
                                              (gx#stx-e _%$%hd219337219830%_)))
                                         (let ((_%$%hd219340219838%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e219339219835%_)))
                                               (_%$%tl219341219840%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e219339219835%_))))
                                           (if (gx#identifier?
                                                _%$%hd219340219838%_)
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _%$%hd219340219838%_)
                                                   (if (gx#stx-pair?
                                                        _%$%tl219341219840%_)
                                                       (let ((_%$%e219342219843%_
                                                              (gx#stx-e
                                                               _%$%tl219341219840%_)))
                                                         (let ((_%$%hd219343219846%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e219342219843%_)))
                       (_%$%tl219344219848%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e219342219843%_))))
                   (if (gx#stx-null? _%$%tl219344219848%_)
                       (if (gx#stx-pair? _%$%tl219338219832%_)
                           (let ((_%$%e219345219851%_
                                  (gx#stx-e _%$%tl219338219832%_)))
                             (let ((_%$%hd219346219854%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e219345219851%_)))
                                   (_%$%tl219347219856%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e219345219851%_))))
                               (if (gx#stx-pair? _%$%tl219347219856%_)
                                   (let ((_%$%e219348219859%_
                                          (gx#stx-e _%$%tl219347219856%_)))
                                     (let ((_%$%hd219349219862%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e219348219859%_)))
                                           (_%$%tl219350219864%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e219348219859%_))))
                                       (if (gx#stx-null? _%$%tl219350219864%_)
                                           ((lambda (_%$%g219330219867%_
                                                     _%$%g219331219868%_
                                                     _%$%g219332219869%_)
                                              (if (gx#stx-e
                                                   _%$%g219332219869%_)
                                                  (gxc#compile-e
                                                   _%self219322%_
                                                   _%$%g219331219868%_)
                                                  (gxc#compile-e
                                                   _%self219322%_
                                                   _%$%g219330219867%_)))
                                            _%$%hd219349219862%_
                                            _%$%hd219346219854%_
                                            _%$%hd219343219846%_)
                                           (_%$%g219325219814%_
                                            _%$%g219329219817%_))))
                                   (_%$%g219325219814%_ _%$%g219329219817%_))))
                           (_%$%g219325219814%_ _%$%g219329219817%_))
                       (_%$%g219325219814%_ _%$%g219329219817%_))))
               (_%$%g219325219814%_ _%$%g219329219817%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g219325219814%_
                                                    _%$%g219329219817%_))
                                               (_%$%g219325219814%_
                                                _%$%g219329219817%_))))
                                       (_%$%g219325219814%_
                                        _%$%g219329219817%_))))
                               (_%$%g219325219814%_ _%$%g219329219817%_))))
                       (_%$%g219325219814%_ _%$%g219329219817%_)))))
           (_%$%g219324219890%_ _%stx219323%_)))))
    (define gxc#check-contract-violation!
      (lambda (_%stx219190%_ _%expr219191%_)
        (let* ((_%$%g219194219224%_
                (lambda (_%$%g219195219221%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g219195219221%_)))
               (_%$%g219193219231%_
                (lambda (_%$%g219195219227%_) ((lambda () _%expr219191%_))))
               (_%$%g219192219319%_
                (lambda (_%$%g219195219234%_)
                  (if (gx#stx-pair? _%$%g219195219234%_)
                      (let ((_%$%e219199219236%_
                             (gx#stx-e _%$%g219195219234%_)))
                        (let ((_%$%hd219200219239%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e219199219236%_)))
                              (_%$%tl219201219241%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e219199219236%_))))
                          (if (gx#identifier? _%$%hd219200219239%_)
                              (if (gx#stx-eq?
                                   '%#begin-annotation
                                   _%$%hd219200219239%_)
                                  (if (gx#stx-pair? _%$%tl219201219241%_)
                                      (let ((_%$%e219202219244%_
                                             (gx#stx-e _%$%tl219201219241%_)))
                                        (let ((_%$%hd219203219247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e219202219244%_)))
                                              (_%$%tl219204219249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e219202219244%_))))
                                          (if (gx#stx-pair?
                                               _%$%hd219203219247%_)
                                              (let ((_%$%e219205219252%_
                                                     (gx#stx-e
                                                      _%$%hd219203219247%_)))
                                                (let ((_%$%hd219206219255%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e219205219252%_)))
                                                      (_%$%tl219207219257%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e219205219252%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd219206219255%_)
                                                      (if (gx#stx-eq?
                                                           '@contract-violation
                                                           _%$%hd219206219255%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl219207219257%_)
                                                              (let ((_%$%e219208219260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl219207219257%_)))
                        (let ((_%$%hd219209219263%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e219208219260%_)))
                              (_%$%tl219210219265%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e219208219260%_))))
                          (if (gx#stx-pair? _%$%tl219210219265%_)
                              (let ((_%$%e219211219268%_
                                     (gx#stx-e _%$%tl219210219265%_)))
                                (let ((_%$%hd219212219271%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e219211219268%_)))
                                      (_%$%tl219213219273%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e219211219268%_))))
                                  (if (gx#stx-pair? _%$%tl219213219273%_)
                                      (let ((_%$%e219214219276%_
                                             (gx#stx-e _%$%tl219213219273%_)))
                                        (let ((_%$%hd219215219279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e219214219276%_)))
                                              (_%$%tl219216219281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e219214219276%_))))
                                          (if (gx#stx-null?
                                               _%$%tl219216219281%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl219204219249%_)
                                                  (let ((_%$%e219217219284%_
                                                         (gx#stx-e
                                                          _%$%tl219204219249%_)))
                                                    (let ((_%$%hd219218219287%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e219217219284%_)))
                                                          (_%$%tl219219219289%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e219217219284%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl219219219289%_)
                                                          ((lambda (_%$%g219196219292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g219197219293%_
                            _%$%g219198219294%_)
                     (gxc#raise-compile-error
                      '"contract violation"
                      _%stx219190%_
                      _%$%g219198219294%_
                      _%$%g219197219293%_
                      _%$%g219196219292%_))
                   _%$%hd219215219279%_
                   _%$%hd219212219271%_
                   _%$%hd219209219263%_)
                  (_%$%g219193219231%_ _%$%g219195219234%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g219193219231%_
                                                   _%$%g219195219234%_))
                                              (_%$%g219193219231%_
                                               _%$%g219195219234%_))))
                                      (_%$%g219193219231%_
                                       _%$%g219195219234%_))))
                              (_%$%g219193219231%_ _%$%g219195219234%_))))
                      (_%$%g219193219231%_ _%$%g219195219234%_))
                  (_%$%g219193219231%_ _%$%g219195219234%_))
              (_%$%g219193219231%_ _%$%g219195219234%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g219193219231%_
                                               _%$%g219195219234%_))))
                                      (_%$%g219193219231%_
                                       _%$%g219195219234%_))
                                  (_%$%g219193219231%_ _%$%g219195219234%_))
                              (_%$%g219193219231%_ _%$%g219195219234%_))))
                      (_%$%g219193219231%_ _%$%g219195219234%_)))))
          (_%$%g219192219319%_ _%expr219191%_))))))
