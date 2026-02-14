(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1771092629)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp189567 (list gx#expander::t))
            (__tmp189566 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp189567
         '(id depth)
         __tmp189566
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args189563%_
        (apply make-instance gx#syntax-pattern::t _%$args189563%_)))
    (define gx#syntax-pattern-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_%self189549%_ _%stx189550%_)
        (let ((_%self189553%_ _%self189549%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx189550%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx189016%_)
        (letrec ((_%generate189018%_
                  (lambda (_%e189258%_)
                    (letrec ((_%BUG189260%_
                              (lambda (_%q189425%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx189016%_
                                         _%e189258%_
                                         _%q189425%_))))
                             (_%local-pattern-e189261%_
                              (lambda (_%pat189423%_)
                                (let ((__tmp189568
                                       (##structure-ref
                                        _%pat189423%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp189568))))
                             (_%getvar189262%_
                              (lambda (_%q189420%_ _%vars189421%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q189420%_
                                   _%vars189421%_
                                   _%BUG189260%_))))
                             (_%getarg189263%_
                              (lambda (_%arg189386%_ _%vars189387%_)
                                (let* ((_%arg189388189395%_ _%arg189386%_)
                                       (_%E189390189399%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg189388189395%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K189391189408%_
                                        (lambda (_%e189402%_ _%tag189403%_)
                                          (let ((_%$e189405%_ _%tag189403%_))
                                            (if (eq? 'ref _%$e189405%_)
                                                (_%getvar189262%_
                                                 _%e189402%_
                                                 _%vars189387%_)
                                                (if (eq? 'pattern _%$e189405%_)
                                                    (_%local-pattern-e189261%_
                                                     _%e189402%_)
                                                    (_%BUG189260%_
                                                     _%arg189386%_)))))))
                                  (if (pair? _%arg189388189395%_)
                                      (let ((_%hd189392189411%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg189388189395%_)))
                                            (_%tl189393189413%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg189388189395%_))))
                                        (let* ((_%tag189416%_
                                                _%hd189392189411%_)
                                               (_%e189418%_
                                                _%tl189393189413%_))
                                          (_%K189391189408%_
                                           _%e189418%_
                                           _%tag189416%_)))
                                      (_%E189390189399%_))))))
                      (let _%recur189265%_ ((_%e189267%_ _%e189258%_)
                                            (_%vars189268%_ '()))
                        (let* ((_%e189269189276%_ _%e189267%_)
                               (_%E189271189280%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e189269189276%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K189272189374%_
                                (lambda (_%body189283%_ _%tag189284%_)
                                  (let ((_%$e189286%_ _%tag189284%_))
                                    (if (eq? 'datum _%$e189286%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body189283%_))
                                        (if (eq? 'term _%$e189286%_)
                                            (let ((_%id189289%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body189283%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id189289%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks189292%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id189289%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks189292%_)
                                                        (let ((__tmp189569
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body189283%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp189569))
                (let ((__tmp189571
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body189283%_)))
                      (__tmp189570
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body189283%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp189571
                   __tmp189570
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id189289%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body189283%_))
                                                      (_%BUG189260%_
                                                       _%e189267%_))))
                                            (if (eq? 'pattern _%$e189286%_)
                                                (_%local-pattern-e189261%_
                                                 _%body189283%_)
                                                (if (eq? 'ref _%$e189286%_)
                                                    (_%getvar189262%_
                                                     _%body189283%_
                                                     _%vars189268%_)
                                                    (if (eq? 'cons
                                                             _%$e189286%_)
                                                        (let ((__tmp189573
                                                               (_%recur189265%_
                                                                (car _%body189283%_)
                                                                _%vars189268%_))
                                                              (__tmp189572
                                                               (_%recur189265%_
                                                                (cdr _%body189283%_)
                                                                _%vars189268%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp189573
                                                           __tmp189572))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e189286%_)
                    (let ((__tmp189574
                           (_%recur189265%_ _%body189283%_ _%vars189268%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp189574))
                    (if (eq? 'box _%$e189286%_)
                        (let ((__tmp189575
                               (_%recur189265%_
                                _%body189283%_
                                _%vars189268%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp189575))
                        (if (eq? 'splice _%$e189286%_)
                            (let* ((_%body189295189306%_ _%body189283%_)
                                   (_%E189297189310%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body189295189306%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K189298189348%_
                                    (lambda (_%args189313%_
                                             _%iv189314%_
                                             _%hd189315%_
                                             _%depth189316%_)
                                      (let* ((_%targets189322%_
                                              (map (lambda (_%g189317189319%_)
                                                     (_%getarg189263%_
                                                      _%g189317189319%_
                                                      _%vars189268%_))
                                                   _%args189313%_))
                                             (_%fold-in189324%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args189313%_)))
                                             (_%fold-out189326%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args189328%_
                                              (let ((__tmp189576
                                                     (cons _%fold-out189326%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp189576
                                                 _%fold-in189324%_)))
                                             (_%lambda-body189345%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth189316%_ '1))
                                                  (let ((_%r-args189336%_
                                                         (map (lambda (_%arg189330%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg189330%_)))
                      _%args189313%_))
                (_%r-vars189337%_
                 (let ((__tmp189577
                        (lambda (_%arg189332%_ _%var189333%_ _%r189334%_)
                          (cons (cons (cdr _%arg189332%_) _%var189333%_)
                                _%r189334%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp189577
                    _%vars189268%_
                    _%args189313%_
                    _%fold-in189324%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur189265%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth189316%_ '1))
                         (cons _%hd189315%_
                               (cons (cons 'var _%fold-out189326%_)
                                     _%r-args189336%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars189337%_))
                                                  (let* ((_%hd-vars189343%_
                                                          (let ((__tmp189578
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg189339%_ _%var189340%_ _%r189341%_)
                           (cons (cons (cdr _%arg189339%_) _%var189340%_)
                                 _%r189341%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp189578
                     _%vars189268%_
                     _%args189313%_
                     _%fold-in189324%_)))
                 (__tmp189579
                  (_%recur189265%_ _%hd189315%_ _%hd-vars189343%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp189579
                                                     _%fold-out189326%_)))))
                                        (let ((__tmp189583
                                               (if (let ((__tmp189584
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets189322%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp189584 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets189322%_))
                                                   '#!void))
                                              (__tmp189580
                                               (let ((__tmp189582
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args189328%_
                                                         _%lambda-body189345%_)))
                                                     (__tmp189581
                                                      (_%recur189265%_
                                                       _%iv189314%_
                                                       _%vars189268%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp189582
                                                  __tmp189581
                                                  _%targets189322%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp189583
                                           __tmp189580))))))
                              (if (pair? _%body189295189306%_)
                                  (let ((_%hd189299189351%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body189295189306%_)))
                                        (_%tl189300189353%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body189295189306%_))))
                                    (let ((_%depth189356%_ _%hd189299189351%_))
                                      (if (pair? _%tl189300189353%_)
                                          (let ((_%hd189301189358%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl189300189353%_)))
                                                (_%tl189302189360%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl189300189353%_))))
                                            (let ((_%hd189363%_
                                                   _%hd189301189358%_))
                                              (if (pair? _%tl189302189360%_)
                                                  (let ((_%hd189303189365%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl189302189360%_)))
                                                        (_%tl189304189367%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl189302189360%_))))
                                                    (let* ((_%iv189370%_
                                                            _%hd189303189365%_)
                                                           (_%args189372%_
                                                            _%tl189304189367%_))
                                                      (_%K189298189348%_
                                                       _%args189372%_
                                                       _%iv189370%_
                                                       _%hd189363%_
                                                       _%depth189356%_)))
                                                  (_%E189297189310%_))))
                                          (_%E189297189310%_))))
                                  (_%E189297189310%_)))
                            (if (eq? 'var _%$e189286%_)
                                _%body189283%_
                                (_%BUG189260%_ _%e189267%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e189269189276%_)
                              (let ((_%hd189273189377%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e189269189276%_)))
                                    (_%tl189274189379%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e189269189276%_))))
                                (let* ((_%tag189382%_ _%hd189273189377%_)
                                       (_%body189384%_ _%tl189274189379%_))
                                  (_%K189272189374%_
                                   _%body189384%_
                                   _%tag189382%_)))
                              (_%E189271189280%_)))))))
                 (_%parse189019%_
                  (lambda (_%e189060%_)
                    (letrec ((_%make-cons189062%_
                              (lambda (_%hd189250%_ _%tl189251%_)
                                (let ((_g189585_ _%hd189250%_)
                                      (_g189587_ _%tl189251%_))
                                  (begin
                                    (let ((_g189586_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g189585_)
                                                 (##values-length _g189585_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g189586_ 2)))
                                          (error "Context expects 2 values"
                                                 _g189586_)))
                                    (let ((_g189588_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g189587_)
                                                 (##values-length _g189587_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g189588_ 2)))
                                          (error "Context expects 2 values"
                                                 _g189588_)))
                                    (let ((_%hd-e189253%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g189585_ 0)))
                                          (_%hd-vars189254%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g189585_ 1))))
                                      (let ((_%tl-e189255%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g189587_ 0)))
                                            (_%tl-vars189256%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g189587_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e189253%_
                                                            _%tl-e189255%_))
                                                (append _%hd-vars189254%_
                                                        _%tl-vars189256%_))))))))
                             (_%make-splice189063%_
                              (lambda (_%where189186%_
                                       _%depth189187%_
                                       _%hd189188%_
                                       _%tl189189%_)
                                (let ((_g189589_ _%hd189188%_)
                                      (_g189591_ _%tl189189%_))
                                  (begin
                                    (let ((_g189590_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g189589_)
                                                 (##values-length _g189589_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g189590_ 2)))
                                          (error "Context expects 2 values"
                                                 _g189590_)))
                                    (let ((_g189592_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g189591_)
                                                 (##values-length _g189591_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g189592_ 2)))
                                          (error "Context expects 2 values"
                                                 _g189592_)))
                                    (let ((_%hd-e189191%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g189589_ 0)))
                                          (_%hd-vars189192%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g189589_ 1))))
                                      (let ((_%tl-e189193%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g189591_ 0)))
                                            (_%tl-vars189194%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g189591_ 1))))
                                        (let _%lp189196%_ ((_%rest189198%_
                                                            _%hd-vars189192%_)
                                                           (_%targets189199%_
                                                            '())
                                                           (_%vars189200%_
                                                            _%tl-vars189194%_))
                                          (let* ((_%rest189201189211%_
                                                  _%rest189198%_)
                                                 (_%else189203189219%_
                                                  (lambda ()
                                                    (if (null? _%targets189199%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx189016%_
                                                           _%where189186%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth189187%_
                                    (cons _%hd-e189191%_
                                          (cons _%tl-e189193%_
                                                _%targets189199%_))))
                        _%vars189200%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K189205189231%_
                                                  (lambda (_%rest189222%_
                                                           _%hd-pat189223%_
                                                           _%hd-depth*189224%_)
                                                    (let ((_%hd-depth189226%_
                                                           (fx- _%hd-depth*189224%_
                                                                _%depth189187%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth189226%_))
                                                          (_%lp189196%_
                                                           _%rest189222%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat189223%_)
                         _%targets189199%_)
                   (cons (cons _%hd-depth189226%_ _%hd-pat189223%_)
                         _%vars189200%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth189226%_))
                      (_%lp189196%_
                       _%rest189222%_
                       (cons (cons 'pattern _%hd-pat189223%_)
                             _%targets189199%_)
                       _%vars189200%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx189016%_
                         _%where189186%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest189201189211%_)
                                                (let ((_%hd189206189234%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest189201189211%_)))
                                                      (_%tl189207189236%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest189201189211%_))))
                                                  (if (pair? _%hd189206189234%_)
                                                      (let ((_%hd189208189239%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd189206189234%_)))
                    (_%tl189209189241%_
                     (let () (declare (not safe)) (##cdr _%hd189206189234%_))))
                (let* ((_%hd-depth*189244%_ _%hd189208189239%_)
                       (_%hd-pat189246%_ _%tl189209189241%_)
                       (_%rest189248%_ _%tl189207189236%_))
                  (_%K189205189231%_
                   _%rest189248%_
                   _%hd-pat189246%_
                   _%hd-depth*189244%_)))
              (_%else189203189219%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else189203189219%_))))))))))
                             (_%recur189064%_
                              (lambda (_%e189069%_ _%is-e?189070%_)
                                (if (_%is-e?189070%_ _%e189069%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx189016%_))
                                    (if (gx#syntax-local-pattern? _%e189069%_)
                                        (let* ((_%pat189074%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e189069%_)))
                                               (_%depth189076%_
                                                (##structure-ref
                                                 _%pat189074%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth189076%_)
                                              (values (cons 'ref _%pat189074%_)
                                                      (cons (cons _%depth189076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat189074%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat189074%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e189069%_))
                                            (values (cons 'term _%e189069%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e189069%_))
                                                (let* ((_%e189080189087%_
                                                        _%e189069%_)
                                                       (_%E189082189091%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e189080189087%_))))
                                                       (_%E189081189173%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e189080189087%_))
                      (let ((_%e189083189095%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e189080189087%_))))
                        (let ((_%hd189084189098%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189083189095%_)))
                              (_%tl189085189100%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189083189095%_))))
                          (let* ((_%hd189103%_ _%hd189084189098%_)
                                 (_%rest189105%_ _%tl189085189100%_))
                            (if (_%is-e?189070%_ _%hd189103%_)
                                (let* ((_%e189106189113%_ _%rest189105%_)
                                       (_%E189108189117%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx189016%_
                                             _%e189069%_))))
                                       (_%E189107189131%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e189106189113%_))
                                              (let ((_%e189109189121%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e189106189113%_))))
                                                (let ((_%hd189110189124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189109189121%_)))
                                                      (_%tl189111189126%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189109189121%_))))
                                                  (let ((_%rest189129%_
                                                         _%hd189110189124%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl189111189126%_))
                                                        (_%recur189064%_
                                                         _%rest189129%_
                                                         false)
                                                        (_%E189108189117%_)))))
                                              (_%E189108189117%_)))))
                                  (_%E189107189131%_))
                                (let _%lp189135%_ ((_%rest189137%_
                                                    _%rest189105%_)
                                                   (_%depth189138%_ '0))
                                  (let* ((_%e189139189146%_ _%rest189137%_)
                                         (_%E189141189150%_
                                          (lambda ()
                                            (if (fxpositive? _%depth189138%_)
                                                (_%make-splice189063%_
                                                 _%e189069%_
                                                 _%depth189138%_
                                                 (_%recur189064%_
                                                  _%hd189103%_
                                                  _%is-e?189070%_)
                                                 (_%recur189064%_
                                                  _%rest189137%_
                                                  _%is-e?189070%_))
                                                (_%make-cons189062%_
                                                 (_%recur189064%_
                                                  _%hd189103%_
                                                  _%is-e?189070%_)
                                                 (_%recur189064%_
                                                  _%rest189137%_
                                                  _%is-e?189070%_)))))
                                         (_%E189140189169%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e189139189146%_))
                                                (let ((_%e189142189154%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e189139189146%_))))
                                                  (let ((_%hd189143189157%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e189142189154%_)))
                                                        (_%tl189144189159%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e189142189154%_))))
                                                    (let* ((_%rest-hd189162%_
                                                            _%hd189143189157%_)
                                                           (_%rest-tl189164%_
                                                            _%tl189144189159%_))
                                                      (if (_%is-e?189070%_
                                                           _%rest-hd189162%_)
                                                          (_%lp189135%_
                                                           _%rest-tl189164%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth189138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth189138%_)
                      (_%make-splice189063%_
                       _%e189069%_
                       _%depth189138%_
                       (_%recur189064%_ _%hd189103%_ _%is-e?189070%_)
                       (_%recur189064%_ _%rest189137%_ _%is-e?189070%_))
                      (_%make-cons189062%_
                       (_%recur189064%_ _%hd189103%_ _%is-e?189070%_)
                       (_%recur189064%_ _%rest189137%_ _%is-e?189070%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E189141189150%_)))))
                                    (_%E189140189169%_)))))))
                      (_%E189082189091%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E189081189173%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e189069%_))
                                                    (let ((_g189593_
                                                           (_%recur189064%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e189069%_)))
                    _%is-e?189070%_)))
              (begin
                (let ((_g189594_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g189593_)
                             (##values-length _g189593_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g189594_ 2)))
                      (error "Context expects 2 values" _g189594_)))
                (let ((_%e189178%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g189593_ 0)))
                      (_%vars189179%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g189593_ 1))))
                  (values (cons 'vector _%e189178%_) _%vars189179%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e189069%_))
                                                        (let ((_g189595_
                                                               (_%recur189064%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e189069%_)))
                        _%is-e?189070%_)))
                  (begin
                    (let ((_g189596_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g189595_)
                                 (##values-length _g189595_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g189596_ 2)))
                          (error "Context expects 2 values" _g189596_)))
                    (let ((_%e189182%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g189595_ 0)))
                          (_%vars189183%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g189595_ 1))))
                      (values (cons 'box _%e189182%_) _%vars189183%_))))
                (values (cons 'datum _%e189069%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g189597_
                             (_%recur189064%_ _%e189060%_ gx#ellipsis?)))
                        (begin
                          (let ((_g189598_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g189597_)
                                       (##values-length _g189597_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g189598_ 2)))
                                (error "Context expects 2 values" _g189598_)))
                          (let ((_%tree189066%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g189597_ 0)))
                                (_%vars189067%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g189597_ 1))))
                            (if (null? _%vars189067%_)
                                _%tree189066%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx189016%_
                                   _%vars189067%_))))))))))
          (let* ((_%e189020189030%_ _%stx189016%_)
                 (_%E189022189034%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx189016%_))))
                 (_%E189021189056%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e189020189030%_))
                        (let ((_%e189023189038%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e189020189030%_))))
                          (let ((_%hd189024189041%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189023189038%_)))
                                (_%tl189025189043%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189023189038%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl189025189043%_))
                                (let ((_%e189026189046%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl189025189043%_))))
                                  (let ((_%hd189027189049%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e189026189046%_)))
                                        (_%tl189028189051%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e189026189046%_))))
                                    (let ((_%form189054%_ _%hd189027189049%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189028189051%_))
                                          (let ((__tmp189600
                                                 (_%generate189018%_
                                                  (_%parse189019%_
                                                   _%form189054%_)))
                                                (__tmp189599
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx189016%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp189600
                                             __tmp189599))
                                          (_%E189022189034%_)))))
                                (_%E189022189034%_))))
                        (_%E189022189034%_)))))
            (_%E189021189056%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx188265%_
               _%identifier=?188266%_
               _%unwrap-e188267%_
               _%wrap-e188268%_)
        (letrec ((_%generate-bindings188270%_
                  (lambda (_%target188880%_
                           _%ids188881%_
                           _%clauses188882%_
                           _%clause-ids188883%_
                           _%E188884%_)
                    (letrec ((_%generate1188886%_
                              (lambda (_%clause188983%_
                                       _%clause-id188984%_
                                       _%E188985%_)
                                (cons (cons _%clause-id188984%_ '())
                                      (cons (let ((__tmp189602
                                                   (cons _%target188880%_ '()))
                                                  (__tmp189601
                                                   (_%generate-clause188272%_
                                                    _%target188880%_
                                                    _%ids188881%_
                                                    _%clause188983%_
                                                    _%E188985%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp189602
                                               __tmp189601))
                                            '())))))
                      (let _%lp188888%_ ((_%rest188890%_ _%clauses188882%_)
                                         (_%rest-ids188891%_
                                          _%clause-ids188883%_)
                                         (_%bindings188892%_ '()))
                        (let* ((_%rest188893188901%_ _%rest188890%_)
                               (_%else188895188909%_
                                (lambda () _%bindings188892%_))
                               (_%K188897188971%_
                                (lambda (_%rest188912%_ _%clause188913%_)
                                  (let* ((_%rest-ids188914188921%_
                                          _%rest-ids188891%_)
                                         (_%E188916188925%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids188914188921%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K188917188959%_
                                          (lambda (_%rest-ids188928%_
                                                   _%clause-id188929%_)
                                            (let* ((_%rest-ids188930188938%_
                                                    _%rest-ids188928%_)
                                                   (_%else188932188946%_
                                                    (lambda ()
                                                      (cons (_%generate1188886%_
                                                             _%clause188913%_
                                                             _%clause-id188929%_
                                                             _%E188884%_)
                                                            _%bindings188892%_)))
                                                   (_%K188934188951%_
                                                    (lambda (_%next-clause-id188949%_)
                                                      (_%lp188888%_
                                                       _%rest188912%_
                                                       _%rest-ids188928%_
                                                       (cons (_%generate1188886%_
                                                              _%clause188913%_
                                                              _%clause-id188929%_
                                                              _%next-clause-id188949%_)
                                                             _%bindings188892%_)))))
                                              (if (pair? _%rest-ids188930188938%_)
                                                  (let* ((_%hd188935188954%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids188930188938%_)))
                                                         (_%next-clause-id188957%_
                                                          _%hd188935188954%_))
                                                    (_%K188934188951%_
                                                     _%next-clause-id188957%_))
                                                  (_%else188932188946%_))))))
                                    (if (pair? _%rest-ids188914188921%_)
                                        (let ((_%hd188918188962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids188914188921%_)))
                                              (_%tl188919188964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids188914188921%_))))
                                          (let* ((_%clause-id188967%_
                                                  _%hd188918188962%_)
                                                 (_%rest-ids188969%_
                                                  _%tl188919188964%_))
                                            (_%K188917188959%_
                                             _%rest-ids188969%_
                                             _%clause-id188967%_)))
                                        (_%E188916188925%_))))))
                          (if (pair? _%rest188893188901%_)
                              (let ((_%hd188898188974%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest188893188901%_)))
                                    (_%tl188899188976%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest188893188901%_))))
                                (let* ((_%clause188979%_ _%hd188898188974%_)
                                       (_%rest188981%_ _%tl188899188976%_))
                                  (_%K188897188971%_
                                   _%rest188981%_
                                   _%clause188979%_)))
                              (_%else188895188909%_)))))))
                 (_%generate-body188271%_
                  (lambda (_%bindings188840%_ _%body188841%_)
                    (let _%recur188843%_ ((_%rest188845%_ _%bindings188840%_))
                      (let* ((_%rest188846188854%_ _%rest188845%_)
                             (_%else188848188862%_ (lambda () _%body188841%_))
                             (_%K188850188868%_
                              (lambda (_%rest188865%_ _%hd188866%_)
                                (let ((__tmp189604 (cons _%hd188866%_ '()))
                                      (__tmp189603
                                       (_%recur188843%_ _%rest188865%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp189604
                                   __tmp189603)))))
                        (if (pair? _%rest188846188854%_)
                            (let ((_%hd188851188871%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest188846188854%_)))
                                  (_%tl188852188873%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest188846188854%_))))
                              (let* ((_%hd188876%_ _%hd188851188871%_)
                                     (_%rest188878%_ _%tl188852188873%_))
                                (_%K188850188868%_
                                 _%rest188878%_
                                 _%hd188876%_)))
                            (_%else188848188862%_))))))
                 (_%generate-clause188272%_
                  (lambda (_%target188703%_
                           _%ids188704%_
                           _%clause188705%_
                           _%E188706%_)
                    (letrec ((_%generate1188708%_
                              (lambda (_%hd188795%_
                                       _%fender188796%_
                                       _%body188797%_)
                                (let ((_g189605_
                                       (_%parse-clause188274%_
                                        _%hd188795%_
                                        _%ids188704%_)))
                                  (begin
                                    (let ((_g189606_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g189605_)
                                                 (##values-length _g189605_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g189606_ 2)))
                                          (error "Context expects 2 values"
                                                 _g189606_)))
                                    (let ((_%e188799%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g189605_ 0)))
                                          (_%mvars188800%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g189605_ 1))))
                                      (let* ((_%pvars188802%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars188800%_))))
                                             (_%E188804%_
                                              (cons _%E188706%_
                                                    (cons _%target188703%_
                                                          '())))
                                             (_%K188837%_
                                              (let ((__tmp189607
                                                     (let ((__tmp189609
                                                            (map (lambda (_%mvar188806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar188807%_)
                           (let* ((_%mvar188808188815%_ _%mvar188806%_)
                                  (_%E188810188819%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar188808188815%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K188811188825%_
                                   (lambda (_%depth188822%_ _%id188823%_)
                                     (cons _%id188823%_
                                           (cons (let ((__tmp189611
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id188823%_)))
                                                       (__tmp189610
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar188807%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp189611
                                                    __tmp189610
                                                    _%depth188822%_))
                                                 '())))))
                             (if (pair? _%mvar188808188815%_)
                                 (let ((_%hd188812188828%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar188808188815%_)))
                                       (_%tl188813188830%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar188808188815%_))))
                                   (let* ((_%id188833%_ _%hd188812188828%_)
                                          (_%depth188835%_ _%tl188813188830%_))
                                     (_%K188811188825%_
                                      _%depth188835%_
                                      _%id188833%_)))
                                 (_%E188810188819%_))))
                         _%mvars188800%_
                         _%pvars188802%_))
                   (__tmp189608
                    (if (eq? _%fender188796%_ '#t)
                        _%body188797%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender188796%_
                           _%body188797%_
                           _%E188804%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp189609 __tmp189608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars188802%_
                                                 __tmp189607))))
                                        (_%generate-match188273%_
                                         _%hd188795%_
                                         _%target188703%_
                                         _%e188799%_
                                         _%mvars188800%_
                                         _%K188837%_
                                         _%E188804%_))))))))
                      (let* ((_%e188709188729%_ _%clause188705%_)
                             (_%E188718188733%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e188709188729%_))))
                             (_%E188711188767%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e188709188729%_))
                                    (let ((_%e188719188737%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e188709188729%_))))
                                      (let ((_%hd188720188740%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e188719188737%_)))
                                            (_%tl188721188742%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e188719188737%_))))
                                        (let ((_%hd188745%_
                                               _%hd188720188740%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl188721188742%_))
                                              (let ((_%e188722188747%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl188721188742%_))))
                                                (let ((_%hd188723188750%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e188722188747%_)))
                                                      (_%tl188724188752%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e188722188747%_))))
                                                  (let ((_%fender188755%_
                                                         _%hd188723188750%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl188724188752%_))
                                                        (let ((_%e188725188757%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl188724188752%_))))
                  (let ((_%hd188726188760%_
                         (let ()
                           (declare (not safe))
                           (##car _%e188725188757%_)))
                        (_%tl188727188762%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e188725188757%_))))
                    (let ((_%body188765%_ _%hd188726188760%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl188727188762%_))
                          (_%generate1188708%_
                           _%hd188745%_
                           _%fender188755%_
                           _%body188765%_)
                          (_%E188718188733%_)))))
                (_%E188718188733%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E188718188733%_)))))
                                    (_%E188718188733%_))))
                             (_%E188710188791%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e188709188729%_))
                                    (let ((_%e188712188771%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e188709188729%_))))
                                      (let ((_%hd188713188774%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e188712188771%_)))
                                            (_%tl188714188776%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e188712188771%_))))
                                        (let ((_%hd188779%_
                                               _%hd188713188774%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl188714188776%_))
                                              (let ((_%e188715188781%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl188714188776%_))))
                                                (let ((_%hd188716188784%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e188715188781%_)))
                                                      (_%tl188717188786%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e188715188781%_))))
                                                  (let ((_%body188789%_
                                                         _%hd188716188784%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl188717188786%_))
                                                        (_%generate1188708%_
                                                         _%hd188779%_
                                                         '#t
                                                         _%body188789%_)
                                                        (_%E188711188767%_)))))
                                              (_%E188711188767%_)))))
                                    (_%E188711188767%_)))))
                        (_%E188710188791%_)))))
                 (_%generate-match188273%_
                  (lambda (_%where188452%_
                           _%target188453%_
                           _%hd188454%_
                           _%mvars188455%_
                           _%K188456%_
                           _%E188457%_)
                    (letrec ((_%BUG188459%_
                              (lambda (_%q188701%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx188265%_
                                         _%hd188454%_
                                         _%q188701%_))))
                             (_%recur188460%_
                              (lambda (_%e188551%_
                                       _%vars188552%_
                                       _%target188553%_
                                       _%E188554%_
                                       _%k188555%_)
                                (let* ((_%e188556188563%_ _%e188551%_)
                                       (_%E188558188567%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e188556188563%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K188559188689%_
                                        (lambda (_%body188570%_ _%tag188571%_)
                                          (let ((_%$e188573%_ _%tag188571%_))
                                            (if (eq? 'any _%$e188573%_)
                                                (_%k188555%_ _%vars188552%_)
                                                (if (eq? 'id _%$e188573%_)
                                                    (let ((__tmp189616
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target188553%_)))
                                                          (__tmp189612
                                                           (let ((__tmp189614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp189615
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e188268%_
                                    _%body188570%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?188266%_
                             __tmp189615
                             _%target188553%_)))
                         (__tmp189613 (_%k188555%_ _%vars188552%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp189614 __tmp189613 _%E188554%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp189616 __tmp189612 _%E188554%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e188573%_)
                                                        (_%k188555%_
                                                         (cons (cons _%body188570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target188553%_)
                       _%vars188552%_))
                (if (eq? 'cons _%$e188573%_)
                    (let ((_%$e188576%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd188577%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl188578%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp189622
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target188553%_)))
                            (__tmp189617
                             (let ((__tmp189621
                                    (cons (cons (cons _%$e188576%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e188267%_
                                                         _%target188553%_))
                                                      '()))
                                          '()))
                                   (__tmp189618
                                    (let ((__tmp189620
                                           (cons (cons (cons _%$hd188577%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e188576%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl188578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e188576%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp189619
                                           (let* ((_%body188579188586%_
                                                   _%body188570%_)
                                                  (_%E188581188590%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body188579188586%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K188582188598%_
                                                   (lambda (_%tl188593%_
                                                            _%hd188594%_)
                                                     (_%recur188460%_
                                                      _%hd188594%_
                                                      _%vars188552%_
                                                      _%$hd188577%_
                                                      _%E188554%_
                                                      (lambda (_%vars188596%_)
                                                        (_%recur188460%_
                                                         _%tl188593%_
                                                         _%vars188596%_
                                                         _%$tl188578%_
                                                         _%E188554%_
                                                         _%k188555%_))))))
                                             (if (pair? _%body188579188586%_)
                                                 (let ((_%hd188583188601%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body188579188586%_)))
                                                       (_%tl188584188603%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body188579188586%_))))
                                                   (let* ((_%hd188606%_
                                                           _%hd188583188601%_)
                                                          (_%tl188608%_
                                                           _%tl188584188603%_))
                                                     (_%K188582188598%_
                                                      _%tl188608%_
                                                      _%hd188606%_)))
                                                 (_%E188581188590%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp189620
                                       __tmp189619))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp189621
                                __tmp189618))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp189622
                         __tmp189617
                         _%E188554%_)))
                    (if (eq? 'splice _%$e188573%_)
                        (let* ((_%body188609188616%_ _%body188570%_)
                               (_%E188611188620%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body188609188616%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K188612188671%_
                                (lambda (_%tl188623%_ _%hd188624%_)
                                  (let* ((_%rlen188626%_
                                          (_%splice-rlen188461%_ _%tl188623%_))
                                         (_%$target188628%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd188630%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl188632%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp188634%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e188636%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd188638%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl188640%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars188642%_
                                          (_%splice-vars188462%_ _%hd188624%_))
                                         (_%lvars188644%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars188642%_)))
                                         (_%tlvars188646%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars188642%_)))
                                         (_%linit188650%_
                                          (map (lambda (_%var188648%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars188644%_)))
                                    (letrec ((_%make-loop188653%_
                                              (lambda (_%vars188657%_)
                                                (let ((__tmp189624
                                                       (cons (cons (cons _%$lp188634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp189637
                                        (cons _%$hd188630%_ _%lvars188644%_))
                                       (__tmp189625
                                        (let ((__tmp189636
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd188630%_)))
                                              (__tmp189630
                                               (let ((__tmp189635
                                                      (cons (cons (cons _%$lp-e188636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e188267%_
                                   _%$hd188630%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp189631
                                                      (let ((__tmp189634
                                                             (cons (cons (cons _%$lp-hd188638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e188636%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl188640%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e188636%_))
                                             '()))
                                 '())))
                    (__tmp189632
                     (_%recur188460%_
                      _%hd188624%_
                      '()
                      _%$lp-hd188638%_
                      _%E188554%_
                      (lambda (_%hdvars188659%_)
                        (cons _%$lp188634%_
                              (cons _%$lp-tl188640%_
                                    (map (lambda (_%svar188661%_
                                                  _%lvar188662%_)
                                           (let ((__tmp189633
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar188661%_
                                                     _%hdvars188659%_
                                                     _%BUG188459%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp189633
                                              _%lvar188662%_)))
                                         _%svars188642%_
                                         _%lvars188644%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp189634 __tmp189632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp189635
                                                  __tmp189631)))
                                              (__tmp189626
                                               (let ((__tmp189629
                                                      (map (lambda (_%lvar188664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar188665%_)
                     (cons (cons _%tlvar188665%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar188664%_))
                                 '())))
                   _%lvars188644%_
                   _%tlvars188646%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp189627
                                                      (_%k188555%_
                                                       (let ((__tmp189628
                                                              (lambda (_%svar188667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar188668%_
                               _%r188669%_)
                        (cons (cons _%svar188667%_ _%tlvar188668%_)
                              _%r188669%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp189628
                  _%vars188657%_
                  _%svars188642%_
                  _%tlvars188646%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp189629
                                                  __tmp189627))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp189636
                                           __tmp189630
                                           __tmp189626))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp189637
                                    __tmp189625))
                                 '()))
                     '()))
              (__tmp189623
               (cons _%$lp188634%_ (cons _%$target188628%_ _%linit188650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp189624
                                                   __tmp189623)))))
                                      (let ((_%body188655%_
                                             (let ((__tmp189639
                                                    (cons (cons (cons _%$target188628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl188632%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target188553%_
                                 _%rlen188626%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp189638
                                                    (_%recur188460%_
                                                     _%tl188623%_
                                                     _%vars188552%_
                                                     _%$tl188632%_
                                                     _%E188554%_
                                                     _%make-loop188653%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp189639
                                                __tmp189638))))
                                        (let ((__tmp189643
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target188553%_)))
                                              (__tmp189640
                                               (if (zero? _%rlen188626%_)
                                                   _%body188655%_
                                                   (let ((__tmp189641
                                                          (let ((__tmp189642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target188553%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp189642 _%rlen188626%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp189641
                                                      _%body188655%_
                                                      _%E188554%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp189643
                                           __tmp189640
                                           _%E188554%_))))))))
                          (if (pair? _%body188609188616%_)
                              (let ((_%hd188613188674%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body188609188616%_)))
                                    (_%tl188614188676%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body188609188616%_))))
                                (let* ((_%hd188679%_ _%hd188613188674%_)
                                       (_%tl188681%_ _%tl188614188676%_))
                                  (_%K188612188671%_
                                   _%tl188681%_
                                   _%hd188679%_)))
                              (_%E188611188620%_)))
                        (if (eq? 'null _%$e188573%_)
                            (let ((__tmp189645
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target188553%_)))
                                  (__tmp189644 (_%k188555%_ _%vars188552%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp189645
                               __tmp189644
                               _%E188554%_))
                            (if (eq? 'vector _%$e188573%_)
                                (let ((_%$e188683%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp189650
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target188553%_)))
                                        (__tmp189646
                                         (let ((__tmp189648
                                                (cons (cons (cons _%$e188683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp189649
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e188267%_
                                    _%target188553%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp189649))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp189647
                                                (_%recur188460%_
                                                 _%body188570%_
                                                 _%vars188552%_
                                                 _%$e188683%_
                                                 _%E188554%_
                                                 _%k188555%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp189648
                                            __tmp189647))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp189650
                                     __tmp189646
                                     _%E188554%_)))
                                (if (eq? 'box _%$e188573%_)
                                    (let ((_%$e188685%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp189655
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target188553%_)))
                                            (__tmp189651
                                             (let ((__tmp189653
                                                    (cons (cons (cons _%$e188685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp189654
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e188267%_
                                        _%target188553%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp189654))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp189652
                                                    (_%recur188460%_
                                                     _%body188570%_
                                                     _%vars188552%_
                                                     _%$e188685%_
                                                     _%E188554%_
                                                     _%k188555%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp189653
                                                __tmp189652))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp189655
                                         __tmp189651
                                         _%E188554%_)))
                                    (if (eq? 'datum _%$e188573%_)
                                        (let ((_%$e188687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp189661
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target188553%_)))
                                                (__tmp189656
                                                 (let ((__tmp189660
                                                        (cons (cons (cons _%$e188687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target188553%_))
                                  '()))
                      '()))
               (__tmp189657
                (let ((__tmp189659
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e188687%_ _%body188570%_)))
                      (__tmp189658 (_%k188555%_ _%vars188552%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp189659 __tmp189658 _%E188554%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp189660
                                                    __tmp189657))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp189661
                                             __tmp189656
                                             _%E188554%_)))
                                        (_%BUG188459%_
                                         _%e188551%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e188556188563%_)
                                      (let ((_%hd188560188692%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e188556188563%_)))
                                            (_%tl188561188694%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e188556188563%_))))
                                        (let* ((_%tag188697%_
                                                _%hd188560188692%_)
                                               (_%body188699%_
                                                _%tl188561188694%_))
                                          (_%K188559188689%_
                                           _%body188699%_
                                           _%tag188697%_)))
                                      (_%E188558188567%_)))))
                             (_%splice-rlen188461%_
                              (lambda (_%e188513%_)
                                (let _%lp188515%_ ((_%e188517%_ _%e188513%_)
                                                   (_%n188518%_ '0))
                                  (let* ((_%e188519188526%_ _%e188517%_)
                                         (_%E188521188530%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e188519188526%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K188522188539%_
                                          (lambda (_%body188533%_
                                                   _%tag188534%_)
                                            (let ((_%$e188536%_ _%tag188534%_))
                                              (if (eq? 'splice _%$e188536%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx188265%_
                                                     _%where188452%_))
                                                  (if (eq? 'cons _%$e188536%_)
                                                      (_%lp188515%_
                                                       (cdr _%body188533%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n188518%_
                                                                '1)))
                                                      _%n188518%_))))))
                                    (if (pair? _%e188519188526%_)
                                        (let ((_%hd188523188542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188519188526%_)))
                                              (_%tl188524188544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188519188526%_))))
                                          (let* ((_%tag188547%_
                                                  _%hd188523188542%_)
                                                 (_%body188549%_
                                                  _%tl188524188544%_))
                                            (_%K188522188539%_
                                             _%body188549%_
                                             _%tag188547%_)))
                                        (_%E188521188530%_))))))
                             (_%splice-vars188462%_
                              (lambda (_%e188469%_)
                                (let _%recur188471%_ ((_%e188473%_ _%e188469%_)
                                                      (_%vars188474%_ '()))
                                  (let* ((_%e188475188482%_ _%e188473%_)
                                         (_%E188477188486%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e188475188482%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K188478188501%_
                                          (lambda (_%body188489%_
                                                   _%tag188490%_)
                                            (let ((_%$e188492%_ _%tag188490%_))
                                              (if (eq? 'var _%$e188492%_)
                                                  (cons _%body188489%_
                                                        _%vars188474%_)
                                                  (if (or (eq? 'cons
                                                               _%$e188492%_)
                                                          (eq? 'splice
                                                               _%$e188492%_))
                                                      (_%recur188471%_
                                                       (cdr _%body188489%_)
                                                       (_%recur188471%_
                                                        (car _%body188489%_)
                                                        _%vars188474%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e188492%_)
                      (eq? 'box _%$e188492%_))
                  (_%recur188471%_ _%body188489%_ _%vars188474%_)
                  _%vars188474%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e188475188482%_)
                                        (let ((_%hd188479188504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188475188482%_)))
                                              (_%tl188480188506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188475188482%_))))
                                          (let* ((_%tag188509%_
                                                  _%hd188479188504%_)
                                                 (_%body188511%_
                                                  _%tl188480188506%_))
                                            (_%K188478188501%_
                                             _%body188511%_
                                             _%tag188509%_)))
                                        (_%E188477188486%_))))))
                             (_%make-body188463%_
                              (lambda (_%vars188465%_)
                                (cons _%K188456%_
                                      (map (lambda (_%mvar188467%_)
                                             (let ((__tmp189662
                                                    (car _%mvar188467%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp189662
                                                _%vars188465%_
                                                _%BUG188459%_)))
                                           _%mvars188455%_)))))
                      (_%recur188460%_
                       _%hd188454%_
                       '()
                       _%target188453%_
                       _%E188457%_
                       _%make-body188463%_))))
                 (_%parse-clause188274%_
                  (lambda (_%hd188346%_ _%ids188347%_)
                    (let _%recur188349%_ ((_%e188351%_ _%hd188346%_)
                                          (_%vars188352%_ '())
                                          (_%depth188353%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e188351%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e188351%_))
                              (values '(any) _%vars188352%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e188351%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx188265%_
                                     _%hd188346%_))
                                  (if (let ((__tmp189663
                                             (lambda (_%id188358%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e188351%_
                                                  _%id188358%_)))))
                                        (declare (not safe))
                                        (__find __tmp189663 _%ids188347%_))
                                      (values (cons 'id _%e188351%_)
                                              _%vars188352%_)
                                      (if (let ((__tmp189664
                                                 (lambda (_%var188361%_)
                                                   (let ((__tmp189665
                                                          (car _%var188361%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e188351%_
                                                      __tmp189665)))))
                                            (declare (not safe))
                                            (__find __tmp189664
                                                    _%vars188352%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx188265%_
                                             _%e188351%_))
                                          (values (cons 'var _%e188351%_)
                                                  (cons (cons _%e188351%_
                                                              _%depth188353%_)
                                                        _%vars188352%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e188351%_))
                              (let* ((_%e188365188372%_ _%e188351%_)
                                     (_%E188367188376%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e188365188372%_))))
                                     (_%E188366188437%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e188365188372%_))
                                            (let ((_%e188368188380%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e188365188372%_))))
                                              (let ((_%hd188369188383%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e188368188380%_)))
                                                    (_%tl188370188385%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e188368188380%_))))
                                                (let* ((_%hd188388%_
                                                        _%hd188369188383%_)
                                                       (_%rest188390%_
                                                        _%tl188370188385%_)
                                                       (_%make-pair188405%_
                                                        (lambda (_%tag188392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd188393%_
                         _%tl188394%_)
                  (let* ((_%hd-depth188396%_
                          (if (eq? _%tag188392%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth188353%_ '1))
                              _%depth188353%_))
                         (_g189666_
                          (_%recur188349%_
                           _%hd188393%_
                           _%vars188352%_
                           _%hd-depth188396%_)))
                    (begin
                      (let ((_g189667_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g189666_)
                                   (##values-length _g189666_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g189667_ 2)))
                            (error "Context expects 2 values" _g189667_)))
                      (let ((_%hd188398%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g189666_ 0)))
                            (_%vars188399%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g189666_ 1))))
                        (let ((_g189668_
                               (_%recur188349%_
                                _%tl188394%_
                                _%vars188399%_
                                _%depth188353%_)))
                          (begin
                            (let ((_g189669_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g189668_)
                                         (##values-length _g189668_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g189669_ 2)))
                                  (error "Context expects 2 values"
                                         _g189669_)))
                            (let ((_%tl188401%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g189668_ 0)))
                                  (_%vars188402%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g189668_ 1))))
                              (values (cons _%tag188392%_
                                            (cons _%hd188398%_ _%tl188401%_))
                                      _%vars188402%_)))))))))
               (_%e188406188413%_ _%rest188390%_)
               (_%E188408188417%_
                (lambda ()
                  (_%make-pair188405%_ 'cons _%hd188388%_ _%rest188390%_)))
               (_%E188407188433%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e188406188413%_))
                      (let ((_%e188409188421%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e188406188413%_))))
                        (let ((_%hd188410188424%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188409188421%_)))
                              (_%tl188411188426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188409188421%_))))
                          (let* ((_%rest-hd188429%_ _%hd188410188424%_)
                                 (_%rest-tl188431%_ _%tl188411188426%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd188429%_))
                                (_%make-pair188405%_
                                 'splice
                                 _%hd188388%_
                                 _%rest-tl188431%_)
                                (_%make-pair188405%_
                                 'cons
                                 _%hd188388%_
                                 _%rest188390%_)))))
                      (_%E188408188417%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E188407188433%_))))
                                            (_%E188367188376%_)))))
                                (_%E188366188437%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e188351%_))
                                  (values '(null) _%vars188352%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e188351%_))
                                      (let ((_g189670_
                                             (_%recur188349%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e188351%_)))
                                              _%vars188352%_
                                              _%depth188353%_)))
                                        (begin
                                          (let ((_g189671_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g189670_)
                                                       (##values-length
                                                        _g189670_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g189671_ 2)))
                                                (error "Context expects 2 values"
                                                       _g189671_)))
                                          (let ((_%e188443%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g189670_ 0)))
                                                (_%vars188444%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g189670_
                                                    1))))
                                            (values (cons 'vector _%e188443%_)
                                                    _%vars188444%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e188351%_))
                                          (let ((_g189672_
                                                 (_%recur188349%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e188351%_)))
                                                  _%vars188352%_
                                                  _%depth188353%_)))
                                            (begin
                                              (let ((_g189673_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g189672_)
                                                           (##values-length
                                                            _g189672_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g189673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g189673_)))
                                              (let ((_%e188447%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g189672_
                                                        0)))
                                                    (_%vars188448%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g189672_
                                                        1))))
                                                (values (cons 'box _%e188447%_)
                                                        _%vars188448%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e188351%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e188351%_)))
                                                      _%vars188352%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx188265%_
                                                 _%e188351%_))))))))))))
          (let* ((_%e188275188288%_ _%stx188265%_)
                 (_%E188277188292%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e188275188288%_))))
                 (_%E188276188342%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e188275188288%_))
                        (let ((_%e188278188296%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e188275188288%_))))
                          (let ((_%hd188279188299%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188278188296%_)))
                                (_%tl188280188301%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188278188296%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl188280188301%_))
                                (let ((_%e188281188304%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl188280188301%_))))
                                  (let ((_%hd188282188307%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188281188304%_)))
                                        (_%tl188283188309%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188281188304%_))))
                                    (let ((_%expr188312%_ _%hd188282188307%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl188283188309%_))
                                          (let ((_%e188284188314%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl188283188309%_))))
                                            (let ((_%hd188285188317%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e188284188314%_)))
                                                  (_%tl188286188319%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e188284188314%_))))
                                              (let* ((_%ids188322%_
                                                      _%hd188285188317%_)
                                                     (_%clauses188324%_
                                                      _%tl188286188319%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids188322%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses188324%_))
                                                        (let* ((_%ids188329%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids188322%_)))
                       (_%clauses188331%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses188324%_)))
                       (_%clause-ids188333%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses188331%_)))
                       (_%E188335%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target188337%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first188339%_
                        (if (null? _%clauses188331%_)
                            _%E188335%_
                            (car _%clause-ids188333%_))))
                  (let ((__tmp189675
                         (let ((__tmp189676
                                (let ((__tmp189678
                                       (let ((__tmp189680
                                              (cons (cons (cons _%E188335%_
                                                                '())
                                                          (cons (let ((__tmp189682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target188337%_ '()))
                              (__tmp189681
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target188337%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp189682 __tmp189681))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp189679
                                              (_%generate-body188271%_
                                               (_%generate-bindings188270%_
                                                _%target188337%_
                                                _%ids188329%_
                                                _%clauses188331%_
                                                _%clause-ids188333%_
                                                _%E188335%_)
                                               (cons _%first188339%_
                                                     (cons _%expr188312%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp189680
                                          __tmp189679)))
                                      (__tmp189677
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx188265%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp189678
                                   __tmp189677))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp189676)))
                        (__tmp189674
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx188265%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp189675 __tmp189674)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx188265%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx188265%_
                                                       _%ids188322%_))))))
                                          (_%E188277188292%_)))))
                                (_%E188277188292%_))))
                        (_%E188277188292%_)))))
            (_%E188276188342%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx188990%_)
        (let* ((_%identifier=?188992%_ 'free-identifier=?)
               (_%unwrap-e188994%_ 'syntax-e)
               (_%wrap-e188996%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx188990%_
           _%identifier=?188992%_
           _%unwrap-e188994%_
           _%wrap-e188996%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx188998%_ _%identifier=?188999%_)
        (let* ((_%unwrap-e189001%_ 'syntax-e) (_%wrap-e189003%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx188998%_
           _%identifier=?188999%_
           _%unwrap-e189001%_
           _%wrap-e189003%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx189005%_ _%identifier=?189006%_ _%unwrap-e189007%_)
        (let ((_%wrap-e189009%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx189005%_
           _%identifier=?189006%_
           _%unwrap-e189007%_
           _%wrap-e189009%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g189683_
        (let ((_g189684_ (let () (declare (not safe)) (##length _g189683_))))
          (cond ((let () (declare (not safe)) (##fx= _g189684_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g189683_))
                ((let () (declare (not safe)) (##fx= _g189684_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g189683_))
                ((let () (declare (not safe)) (##fx= _g189684_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g189683_))
                ((let () (declare (not safe)) (##fx= _g189684_ 4))
                 (apply gx#macro-expand-syntax-case__% _g189683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g189683_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx188262%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx188262%_))
            (let ((__tmp189685
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx188262%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp189685 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd188220%_ . _%rest188221%_)
        (let ((_%len188223%_ (length _%hd188220%_)))
          (let _%lp188225%_ ((_%rest188227%_ _%rest188221%_))
            (let* ((_%rest188228188236%_ _%rest188227%_)
                   (_%else188230188244%_ (lambda () '#!void))
                   (_%K188232188250%_
                    (lambda (_%rest188247%_ _%hd188248%_)
                      (if (let ((__tmp189686 (length _%hd188248%_)))
                            (declare (not safe))
                            (##fx= _%len188223%_ __tmp189686))
                          (_%lp188225%_ _%rest188247%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd188248%_))))))
              (if (pair? _%rest188228188236%_)
                  (let ((_%hd188233188253%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest188228188236%_)))
                        (_%tl188234188255%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest188228188236%_))))
                    (let* ((_%hd188258%_ _%hd188233188253%_)
                           (_%rest188260%_ _%tl188234188255%_))
                      (_%K188232188250%_ _%rest188260%_ _%hd188258%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx188170%_ _%n188171%_)
        (let _%lp188173%_ ((_%rest188176%_ _%stx188170%_) (_%r188178%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest188176%_))
              (let* ((_%g188180188187%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest188176%_)))
                     (_%E188182188191%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g188180188187%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K188183188198%_
                      (lambda (_%rest188194%_ _%hd188195%_)
                        (_%lp188173%_
                         _%rest188194%_
                         (cons _%hd188195%_ _%r188178%_)))))
                (if (pair? _%g188180188187%_)
                    (let ((_%hd188184188201%_
                           (let ()
                             (declare (not safe))
                             (##car _%g188180188187%_)))
                          (_%tl188185188203%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g188180188187%_))))
                      (let* ((_%hd188206%_ _%hd188184188201%_)
                             (_%rest188208%_ _%tl188185188203%_))
                        (_%K188183188198%_ _%rest188208%_ _%hd188206%_)))
                    (_%E188182188191%_)))
              (let _%lp188210%_ ((_%n188212%_ _%n188171%_)
                                 (_%l188213%_ _%r188178%_)
                                 (_%r188215%_ _%rest188176%_))
                (if (null? _%l188213%_)
                    (values _%l188213%_ _%r188215%_)
                    (if (fxpositive? _%n188212%_)
                        (_%lp188210%_
                         (let () (declare (not safe)) (##fx- _%n188212%_ '1))
                         (cdr _%l188213%_)
                         (cons (car _%l188213%_) _%r188215%_))
                        (values (reverse! _%l188213%_) _%r188215%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx188120%_ _%n188121%_)
        (let _%lp188123%_ ((_%rest188126%_ _%stx188120%_) (_%r188128%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest188126%_))
              (let* ((_%g188130188137%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest188126%_)))
                     (_%E188132188141%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g188130188137%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K188133188148%_
                      (lambda (_%rest188144%_ _%hd188145%_)
                        (_%lp188123%_
                         _%rest188144%_
                         (cons _%hd188145%_ _%r188128%_)))))
                (if (pair? _%g188130188137%_)
                    (let ((_%hd188134188151%_
                           (let ()
                             (declare (not safe))
                             (##car _%g188130188137%_)))
                          (_%tl188135188153%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g188130188137%_))))
                      (let* ((_%hd188156%_ _%hd188134188151%_)
                             (_%rest188158%_ _%tl188135188153%_))
                        (_%K188133188148%_ _%rest188158%_ _%hd188156%_)))
                    (_%E188132188141%_)))
              (let _%lp188160%_ ((_%n188162%_ _%n188121%_)
                                 (_%l188163%_ _%r188128%_)
                                 (_%r188165%_ _%rest188126%_))
                (if (null? _%l188163%_)
                    (vector _%l188163%_ _%r188165%_)
                    (if (fxpositive? _%n188162%_)
                        (_%lp188160%_
                         (let () (declare (not safe)) (##fx- _%n188162%_ '1))
                         (cdr _%l188163%_)
                         (cons (car _%l188163%_) _%r188165%_))
                        (vector (reverse! _%l188163%_) _%r188165%_))))))))))
