(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1771093449)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp189571 (list gx#expander::t))
            (__tmp189570 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp189571
         '(id depth)
         __tmp189570
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args189567%_
        (apply make-instance gx#syntax-pattern::t _%$args189567%_)))
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
      (lambda (_%self189553%_ _%stx189554%_)
        (let ((_%self189557%_ _%self189553%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx189554%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx189020%_)
        (letrec ((_%generate189022%_
                  (lambda (_%e189262%_)
                    (letrec ((_%BUG189264%_
                              (lambda (_%q189429%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx189020%_
                                         _%e189262%_
                                         _%q189429%_))))
                             (_%local-pattern-e189265%_
                              (lambda (_%pat189427%_)
                                (let ((__tmp189572
                                       (##structure-ref
                                        _%pat189427%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp189572))))
                             (_%getvar189266%_
                              (lambda (_%q189424%_ _%vars189425%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q189424%_
                                   _%vars189425%_
                                   _%BUG189264%_))))
                             (_%getarg189267%_
                              (lambda (_%arg189390%_ _%vars189391%_)
                                (let* ((_%arg189392189399%_ _%arg189390%_)
                                       (_%E189394189403%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg189392189399%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K189395189412%_
                                        (lambda (_%e189406%_ _%tag189407%_)
                                          (let ((_%$e189409%_ _%tag189407%_))
                                            (if (eq? 'ref _%$e189409%_)
                                                (_%getvar189266%_
                                                 _%e189406%_
                                                 _%vars189391%_)
                                                (if (eq? 'pattern _%$e189409%_)
                                                    (_%local-pattern-e189265%_
                                                     _%e189406%_)
                                                    (_%BUG189264%_
                                                     _%arg189390%_)))))))
                                  (if (pair? _%arg189392189399%_)
                                      (let ((_%hd189396189415%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg189392189399%_)))
                                            (_%tl189397189417%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg189392189399%_))))
                                        (let* ((_%tag189420%_
                                                _%hd189396189415%_)
                                               (_%e189422%_
                                                _%tl189397189417%_))
                                          (_%K189395189412%_
                                           _%e189422%_
                                           _%tag189420%_)))
                                      (_%E189394189403%_))))))
                      (let _%recur189269%_ ((_%e189271%_ _%e189262%_)
                                            (_%vars189272%_ '()))
                        (let* ((_%e189273189280%_ _%e189271%_)
                               (_%E189275189284%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e189273189280%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K189276189378%_
                                (lambda (_%body189287%_ _%tag189288%_)
                                  (let ((_%$e189290%_ _%tag189288%_))
                                    (if (eq? 'datum _%$e189290%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body189287%_))
                                        (if (eq? 'term _%$e189290%_)
                                            (let ((_%id189293%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body189287%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id189293%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks189296%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id189293%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks189296%_)
                                                        (let ((__tmp189573
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body189287%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp189573))
                (let ((__tmp189575
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body189287%_)))
                      (__tmp189574
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body189287%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp189575
                   __tmp189574
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id189293%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body189287%_))
                                                      (_%BUG189264%_
                                                       _%e189271%_))))
                                            (if (eq? 'pattern _%$e189290%_)
                                                (_%local-pattern-e189265%_
                                                 _%body189287%_)
                                                (if (eq? 'ref _%$e189290%_)
                                                    (_%getvar189266%_
                                                     _%body189287%_
                                                     _%vars189272%_)
                                                    (if (eq? 'cons
                                                             _%$e189290%_)
                                                        (let ((__tmp189577
                                                               (_%recur189269%_
                                                                (car _%body189287%_)
                                                                _%vars189272%_))
                                                              (__tmp189576
                                                               (_%recur189269%_
                                                                (cdr _%body189287%_)
                                                                _%vars189272%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp189577
                                                           __tmp189576))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e189290%_)
                    (let ((__tmp189578
                           (_%recur189269%_ _%body189287%_ _%vars189272%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp189578))
                    (if (eq? 'box _%$e189290%_)
                        (let ((__tmp189579
                               (_%recur189269%_
                                _%body189287%_
                                _%vars189272%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp189579))
                        (if (eq? 'splice _%$e189290%_)
                            (let* ((_%body189299189310%_ _%body189287%_)
                                   (_%E189301189314%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body189299189310%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K189302189352%_
                                    (lambda (_%args189317%_
                                             _%iv189318%_
                                             _%hd189319%_
                                             _%depth189320%_)
                                      (let* ((_%targets189326%_
                                              (map (lambda (_%g189321189323%_)
                                                     (_%getarg189267%_
                                                      _%g189321189323%_
                                                      _%vars189272%_))
                                                   _%args189317%_))
                                             (_%fold-in189328%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args189317%_)))
                                             (_%fold-out189330%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args189332%_
                                              (let ((__tmp189580
                                                     (cons _%fold-out189330%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp189580
                                                 _%fold-in189328%_)))
                                             (_%lambda-body189349%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth189320%_ '1))
                                                  (let ((_%r-args189340%_
                                                         (map (lambda (_%arg189334%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg189334%_)))
                      _%args189317%_))
                (_%r-vars189341%_
                 (let ((__tmp189581
                        (lambda (_%arg189336%_ _%var189337%_ _%r189338%_)
                          (cons (cons (cdr _%arg189336%_) _%var189337%_)
                                _%r189338%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp189581
                    _%vars189272%_
                    _%args189317%_
                    _%fold-in189328%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur189269%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth189320%_ '1))
                         (cons _%hd189319%_
                               (cons (cons 'var _%fold-out189330%_)
                                     _%r-args189340%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars189341%_))
                                                  (let* ((_%hd-vars189347%_
                                                          (let ((__tmp189582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg189343%_ _%var189344%_ _%r189345%_)
                           (cons (cons (cdr _%arg189343%_) _%var189344%_)
                                 _%r189345%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp189582
                     _%vars189272%_
                     _%args189317%_
                     _%fold-in189328%_)))
                 (__tmp189583
                  (_%recur189269%_ _%hd189319%_ _%hd-vars189347%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp189583
                                                     _%fold-out189330%_)))))
                                        (let ((__tmp189587
                                               (if (let ((__tmp189588
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets189326%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp189588 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets189326%_))
                                                   '#!void))
                                              (__tmp189584
                                               (let ((__tmp189586
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args189332%_
                                                         _%lambda-body189349%_)))
                                                     (__tmp189585
                                                      (_%recur189269%_
                                                       _%iv189318%_
                                                       _%vars189272%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp189586
                                                  __tmp189585
                                                  _%targets189326%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp189587
                                           __tmp189584))))))
                              (if (pair? _%body189299189310%_)
                                  (let ((_%hd189303189355%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body189299189310%_)))
                                        (_%tl189304189357%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body189299189310%_))))
                                    (let ((_%depth189360%_ _%hd189303189355%_))
                                      (if (pair? _%tl189304189357%_)
                                          (let ((_%hd189305189362%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl189304189357%_)))
                                                (_%tl189306189364%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl189304189357%_))))
                                            (let ((_%hd189367%_
                                                   _%hd189305189362%_))
                                              (if (pair? _%tl189306189364%_)
                                                  (let ((_%hd189307189369%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl189306189364%_)))
                                                        (_%tl189308189371%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl189306189364%_))))
                                                    (let* ((_%iv189374%_
                                                            _%hd189307189369%_)
                                                           (_%args189376%_
                                                            _%tl189308189371%_))
                                                      (_%K189302189352%_
                                                       _%args189376%_
                                                       _%iv189374%_
                                                       _%hd189367%_
                                                       _%depth189360%_)))
                                                  (_%E189301189314%_))))
                                          (_%E189301189314%_))))
                                  (_%E189301189314%_)))
                            (if (eq? 'var _%$e189290%_)
                                _%body189287%_
                                (_%BUG189264%_ _%e189271%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e189273189280%_)
                              (let ((_%hd189277189381%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e189273189280%_)))
                                    (_%tl189278189383%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e189273189280%_))))
                                (let* ((_%tag189386%_ _%hd189277189381%_)
                                       (_%body189388%_ _%tl189278189383%_))
                                  (_%K189276189378%_
                                   _%body189388%_
                                   _%tag189386%_)))
                              (_%E189275189284%_)))))))
                 (_%parse189023%_
                  (lambda (_%e189064%_)
                    (letrec ((_%make-cons189066%_
                              (lambda (_%hd189254%_ _%tl189255%_)
                                (let ((_g189589_ _%hd189254%_)
                                      (_g189591_ _%tl189255%_))
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
                                    (let ((_%hd-e189257%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g189589_ 0)))
                                          (_%hd-vars189258%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g189589_ 1))))
                                      (let ((_%tl-e189259%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g189591_ 0)))
                                            (_%tl-vars189260%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g189591_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e189257%_
                                                            _%tl-e189259%_))
                                                (append _%hd-vars189258%_
                                                        _%tl-vars189260%_))))))))
                             (_%make-splice189067%_
                              (lambda (_%where189190%_
                                       _%depth189191%_
                                       _%hd189192%_
                                       _%tl189193%_)
                                (let ((_g189593_ _%hd189192%_)
                                      (_g189595_ _%tl189193%_))
                                  (begin
                                    (let ((_g189594_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g189593_)
                                                 (##values-length _g189593_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g189594_ 2)))
                                          (error "Context expects 2 values"
                                                 _g189594_)))
                                    (let ((_g189596_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g189595_)
                                                 (##values-length _g189595_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g189596_ 2)))
                                          (error "Context expects 2 values"
                                                 _g189596_)))
                                    (let ((_%hd-e189195%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g189593_ 0)))
                                          (_%hd-vars189196%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g189593_ 1))))
                                      (let ((_%tl-e189197%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g189595_ 0)))
                                            (_%tl-vars189198%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g189595_ 1))))
                                        (let _%lp189200%_ ((_%rest189202%_
                                                            _%hd-vars189196%_)
                                                           (_%targets189203%_
                                                            '())
                                                           (_%vars189204%_
                                                            _%tl-vars189198%_))
                                          (let* ((_%rest189205189215%_
                                                  _%rest189202%_)
                                                 (_%else189207189223%_
                                                  (lambda ()
                                                    (if (null? _%targets189203%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx189020%_
                                                           _%where189190%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth189191%_
                                    (cons _%hd-e189195%_
                                          (cons _%tl-e189197%_
                                                _%targets189203%_))))
                        _%vars189204%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K189209189235%_
                                                  (lambda (_%rest189226%_
                                                           _%hd-pat189227%_
                                                           _%hd-depth*189228%_)
                                                    (let ((_%hd-depth189230%_
                                                           (fx- _%hd-depth*189228%_
                                                                _%depth189191%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth189230%_))
                                                          (_%lp189200%_
                                                           _%rest189226%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat189227%_)
                         _%targets189203%_)
                   (cons (cons _%hd-depth189230%_ _%hd-pat189227%_)
                         _%vars189204%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth189230%_))
                      (_%lp189200%_
                       _%rest189226%_
                       (cons (cons 'pattern _%hd-pat189227%_)
                             _%targets189203%_)
                       _%vars189204%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx189020%_
                         _%where189190%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest189205189215%_)
                                                (let ((_%hd189210189238%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest189205189215%_)))
                                                      (_%tl189211189240%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest189205189215%_))))
                                                  (if (pair? _%hd189210189238%_)
                                                      (let ((_%hd189212189243%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd189210189238%_)))
                    (_%tl189213189245%_
                     (let () (declare (not safe)) (##cdr _%hd189210189238%_))))
                (let* ((_%hd-depth*189248%_ _%hd189212189243%_)
                       (_%hd-pat189250%_ _%tl189213189245%_)
                       (_%rest189252%_ _%tl189211189240%_))
                  (_%K189209189235%_
                   _%rest189252%_
                   _%hd-pat189250%_
                   _%hd-depth*189248%_)))
              (_%else189207189223%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else189207189223%_))))))))))
                             (_%recur189068%_
                              (lambda (_%e189073%_ _%is-e?189074%_)
                                (if (_%is-e?189074%_ _%e189073%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx189020%_))
                                    (if (gx#syntax-local-pattern? _%e189073%_)
                                        (let* ((_%pat189078%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e189073%_)))
                                               (_%depth189080%_
                                                (##structure-ref
                                                 _%pat189078%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth189080%_)
                                              (values (cons 'ref _%pat189078%_)
                                                      (cons (cons _%depth189080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat189078%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat189078%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e189073%_))
                                            (values (cons 'term _%e189073%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e189073%_))
                                                (let* ((_%e189084189091%_
                                                        _%e189073%_)
                                                       (_%E189086189095%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e189084189091%_))))
                                                       (_%E189085189177%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e189084189091%_))
                      (let ((_%e189087189099%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e189084189091%_))))
                        (let ((_%hd189088189102%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189087189099%_)))
                              (_%tl189089189104%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189087189099%_))))
                          (let* ((_%hd189107%_ _%hd189088189102%_)
                                 (_%rest189109%_ _%tl189089189104%_))
                            (if (_%is-e?189074%_ _%hd189107%_)
                                (let* ((_%e189110189117%_ _%rest189109%_)
                                       (_%E189112189121%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx189020%_
                                             _%e189073%_))))
                                       (_%E189111189135%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e189110189117%_))
                                              (let ((_%e189113189125%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e189110189117%_))))
                                                (let ((_%hd189114189128%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189113189125%_)))
                                                      (_%tl189115189130%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189113189125%_))))
                                                  (let ((_%rest189133%_
                                                         _%hd189114189128%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl189115189130%_))
                                                        (_%recur189068%_
                                                         _%rest189133%_
                                                         false)
                                                        (_%E189112189121%_)))))
                                              (_%E189112189121%_)))))
                                  (_%E189111189135%_))
                                (let _%lp189139%_ ((_%rest189141%_
                                                    _%rest189109%_)
                                                   (_%depth189142%_ '0))
                                  (let* ((_%e189143189150%_ _%rest189141%_)
                                         (_%E189145189154%_
                                          (lambda ()
                                            (if (fxpositive? _%depth189142%_)
                                                (_%make-splice189067%_
                                                 _%e189073%_
                                                 _%depth189142%_
                                                 (_%recur189068%_
                                                  _%hd189107%_
                                                  _%is-e?189074%_)
                                                 (_%recur189068%_
                                                  _%rest189141%_
                                                  _%is-e?189074%_))
                                                (_%make-cons189066%_
                                                 (_%recur189068%_
                                                  _%hd189107%_
                                                  _%is-e?189074%_)
                                                 (_%recur189068%_
                                                  _%rest189141%_
                                                  _%is-e?189074%_)))))
                                         (_%E189144189173%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e189143189150%_))
                                                (let ((_%e189146189158%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e189143189150%_))))
                                                  (let ((_%hd189147189161%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e189146189158%_)))
                                                        (_%tl189148189163%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e189146189158%_))))
                                                    (let* ((_%rest-hd189166%_
                                                            _%hd189147189161%_)
                                                           (_%rest-tl189168%_
                                                            _%tl189148189163%_))
                                                      (if (_%is-e?189074%_
                                                           _%rest-hd189166%_)
                                                          (_%lp189139%_
                                                           _%rest-tl189168%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth189142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth189142%_)
                      (_%make-splice189067%_
                       _%e189073%_
                       _%depth189142%_
                       (_%recur189068%_ _%hd189107%_ _%is-e?189074%_)
                       (_%recur189068%_ _%rest189141%_ _%is-e?189074%_))
                      (_%make-cons189066%_
                       (_%recur189068%_ _%hd189107%_ _%is-e?189074%_)
                       (_%recur189068%_ _%rest189141%_ _%is-e?189074%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E189145189154%_)))))
                                    (_%E189144189173%_)))))))
                      (_%E189086189095%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E189085189177%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e189073%_))
                                                    (let ((_g189597_
                                                           (_%recur189068%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e189073%_)))
                    _%is-e?189074%_)))
              (begin
                (let ((_g189598_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g189597_)
                             (##values-length _g189597_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g189598_ 2)))
                      (error "Context expects 2 values" _g189598_)))
                (let ((_%e189182%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g189597_ 0)))
                      (_%vars189183%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g189597_ 1))))
                  (values (cons 'vector _%e189182%_) _%vars189183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e189073%_))
                                                        (let ((_g189599_
                                                               (_%recur189068%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e189073%_)))
                        _%is-e?189074%_)))
                  (begin
                    (let ((_g189600_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g189599_)
                                 (##values-length _g189599_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g189600_ 2)))
                          (error "Context expects 2 values" _g189600_)))
                    (let ((_%e189186%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g189599_ 0)))
                          (_%vars189187%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g189599_ 1))))
                      (values (cons 'box _%e189186%_) _%vars189187%_))))
                (values (cons 'datum _%e189073%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g189601_
                             (_%recur189068%_ _%e189064%_ gx#ellipsis?)))
                        (begin
                          (let ((_g189602_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g189601_)
                                       (##values-length _g189601_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g189602_ 2)))
                                (error "Context expects 2 values" _g189602_)))
                          (let ((_%tree189070%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g189601_ 0)))
                                (_%vars189071%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g189601_ 1))))
                            (if (null? _%vars189071%_)
                                _%tree189070%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx189020%_
                                   _%vars189071%_))))))))))
          (let* ((_%e189024189034%_ _%stx189020%_)
                 (_%E189026189038%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx189020%_))))
                 (_%E189025189060%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e189024189034%_))
                        (let ((_%e189027189042%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e189024189034%_))))
                          (let ((_%hd189028189045%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189027189042%_)))
                                (_%tl189029189047%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189027189042%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl189029189047%_))
                                (let ((_%e189030189050%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl189029189047%_))))
                                  (let ((_%hd189031189053%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e189030189050%_)))
                                        (_%tl189032189055%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e189030189050%_))))
                                    (let ((_%form189058%_ _%hd189031189053%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189032189055%_))
                                          (let ((__tmp189604
                                                 (_%generate189022%_
                                                  (_%parse189023%_
                                                   _%form189058%_)))
                                                (__tmp189603
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx189020%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp189604
                                             __tmp189603))
                                          (_%E189026189038%_)))))
                                (_%E189026189038%_))))
                        (_%E189026189038%_)))))
            (_%E189025189060%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx188269%_
               _%identifier=?188270%_
               _%unwrap-e188271%_
               _%wrap-e188272%_)
        (letrec ((_%generate-bindings188274%_
                  (lambda (_%target188884%_
                           _%ids188885%_
                           _%clauses188886%_
                           _%clause-ids188887%_
                           _%E188888%_)
                    (letrec ((_%generate1188890%_
                              (lambda (_%clause188987%_
                                       _%clause-id188988%_
                                       _%E188989%_)
                                (cons (cons _%clause-id188988%_ '())
                                      (cons (let ((__tmp189606
                                                   (cons _%target188884%_ '()))
                                                  (__tmp189605
                                                   (_%generate-clause188276%_
                                                    _%target188884%_
                                                    _%ids188885%_
                                                    _%clause188987%_
                                                    _%E188989%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp189606
                                               __tmp189605))
                                            '())))))
                      (let _%lp188892%_ ((_%rest188894%_ _%clauses188886%_)
                                         (_%rest-ids188895%_
                                          _%clause-ids188887%_)
                                         (_%bindings188896%_ '()))
                        (let* ((_%rest188897188905%_ _%rest188894%_)
                               (_%else188899188913%_
                                (lambda () _%bindings188896%_))
                               (_%K188901188975%_
                                (lambda (_%rest188916%_ _%clause188917%_)
                                  (let* ((_%rest-ids188918188925%_
                                          _%rest-ids188895%_)
                                         (_%E188920188929%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids188918188925%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K188921188963%_
                                          (lambda (_%rest-ids188932%_
                                                   _%clause-id188933%_)
                                            (let* ((_%rest-ids188934188942%_
                                                    _%rest-ids188932%_)
                                                   (_%else188936188950%_
                                                    (lambda ()
                                                      (cons (_%generate1188890%_
                                                             _%clause188917%_
                                                             _%clause-id188933%_
                                                             _%E188888%_)
                                                            _%bindings188896%_)))
                                                   (_%K188938188955%_
                                                    (lambda (_%next-clause-id188953%_)
                                                      (_%lp188892%_
                                                       _%rest188916%_
                                                       _%rest-ids188932%_
                                                       (cons (_%generate1188890%_
                                                              _%clause188917%_
                                                              _%clause-id188933%_
                                                              _%next-clause-id188953%_)
                                                             _%bindings188896%_)))))
                                              (if (pair? _%rest-ids188934188942%_)
                                                  (let* ((_%hd188939188958%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids188934188942%_)))
                                                         (_%next-clause-id188961%_
                                                          _%hd188939188958%_))
                                                    (_%K188938188955%_
                                                     _%next-clause-id188961%_))
                                                  (_%else188936188950%_))))))
                                    (if (pair? _%rest-ids188918188925%_)
                                        (let ((_%hd188922188966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids188918188925%_)))
                                              (_%tl188923188968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids188918188925%_))))
                                          (let* ((_%clause-id188971%_
                                                  _%hd188922188966%_)
                                                 (_%rest-ids188973%_
                                                  _%tl188923188968%_))
                                            (_%K188921188963%_
                                             _%rest-ids188973%_
                                             _%clause-id188971%_)))
                                        (_%E188920188929%_))))))
                          (if (pair? _%rest188897188905%_)
                              (let ((_%hd188902188978%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest188897188905%_)))
                                    (_%tl188903188980%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest188897188905%_))))
                                (let* ((_%clause188983%_ _%hd188902188978%_)
                                       (_%rest188985%_ _%tl188903188980%_))
                                  (_%K188901188975%_
                                   _%rest188985%_
                                   _%clause188983%_)))
                              (_%else188899188913%_)))))))
                 (_%generate-body188275%_
                  (lambda (_%bindings188844%_ _%body188845%_)
                    (let _%recur188847%_ ((_%rest188849%_ _%bindings188844%_))
                      (let* ((_%rest188850188858%_ _%rest188849%_)
                             (_%else188852188866%_ (lambda () _%body188845%_))
                             (_%K188854188872%_
                              (lambda (_%rest188869%_ _%hd188870%_)
                                (let ((__tmp189608 (cons _%hd188870%_ '()))
                                      (__tmp189607
                                       (_%recur188847%_ _%rest188869%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp189608
                                   __tmp189607)))))
                        (if (pair? _%rest188850188858%_)
                            (let ((_%hd188855188875%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest188850188858%_)))
                                  (_%tl188856188877%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest188850188858%_))))
                              (let* ((_%hd188880%_ _%hd188855188875%_)
                                     (_%rest188882%_ _%tl188856188877%_))
                                (_%K188854188872%_
                                 _%rest188882%_
                                 _%hd188880%_)))
                            (_%else188852188866%_))))))
                 (_%generate-clause188276%_
                  (lambda (_%target188707%_
                           _%ids188708%_
                           _%clause188709%_
                           _%E188710%_)
                    (letrec ((_%generate1188712%_
                              (lambda (_%hd188799%_
                                       _%fender188800%_
                                       _%body188801%_)
                                (let ((_g189609_
                                       (_%parse-clause188278%_
                                        _%hd188799%_
                                        _%ids188708%_)))
                                  (begin
                                    (let ((_g189610_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g189609_)
                                                 (##values-length _g189609_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g189610_ 2)))
                                          (error "Context expects 2 values"
                                                 _g189610_)))
                                    (let ((_%e188803%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g189609_ 0)))
                                          (_%mvars188804%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g189609_ 1))))
                                      (let* ((_%pvars188806%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars188804%_))))
                                             (_%E188808%_
                                              (cons _%E188710%_
                                                    (cons _%target188707%_
                                                          '())))
                                             (_%K188841%_
                                              (let ((__tmp189611
                                                     (let ((__tmp189613
                                                            (map (lambda (_%mvar188810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar188811%_)
                           (let* ((_%mvar188812188819%_ _%mvar188810%_)
                                  (_%E188814188823%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar188812188819%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K188815188829%_
                                   (lambda (_%depth188826%_ _%id188827%_)
                                     (cons _%id188827%_
                                           (cons (let ((__tmp189615
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id188827%_)))
                                                       (__tmp189614
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar188811%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp189615
                                                    __tmp189614
                                                    _%depth188826%_))
                                                 '())))))
                             (if (pair? _%mvar188812188819%_)
                                 (let ((_%hd188816188832%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar188812188819%_)))
                                       (_%tl188817188834%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar188812188819%_))))
                                   (let* ((_%id188837%_ _%hd188816188832%_)
                                          (_%depth188839%_ _%tl188817188834%_))
                                     (_%K188815188829%_
                                      _%depth188839%_
                                      _%id188837%_)))
                                 (_%E188814188823%_))))
                         _%mvars188804%_
                         _%pvars188806%_))
                   (__tmp189612
                    (if (eq? _%fender188800%_ '#t)
                        _%body188801%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender188800%_
                           _%body188801%_
                           _%E188808%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp189613 __tmp189612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars188806%_
                                                 __tmp189611))))
                                        (_%generate-match188277%_
                                         _%hd188799%_
                                         _%target188707%_
                                         _%e188803%_
                                         _%mvars188804%_
                                         _%K188841%_
                                         _%E188808%_))))))))
                      (let* ((_%e188713188733%_ _%clause188709%_)
                             (_%E188722188737%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e188713188733%_))))
                             (_%E188715188771%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e188713188733%_))
                                    (let ((_%e188723188741%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e188713188733%_))))
                                      (let ((_%hd188724188744%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e188723188741%_)))
                                            (_%tl188725188746%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e188723188741%_))))
                                        (let ((_%hd188749%_
                                               _%hd188724188744%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl188725188746%_))
                                              (let ((_%e188726188751%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl188725188746%_))))
                                                (let ((_%hd188727188754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e188726188751%_)))
                                                      (_%tl188728188756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e188726188751%_))))
                                                  (let ((_%fender188759%_
                                                         _%hd188727188754%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl188728188756%_))
                                                        (let ((_%e188729188761%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl188728188756%_))))
                  (let ((_%hd188730188764%_
                         (let ()
                           (declare (not safe))
                           (##car _%e188729188761%_)))
                        (_%tl188731188766%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e188729188761%_))))
                    (let ((_%body188769%_ _%hd188730188764%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl188731188766%_))
                          (_%generate1188712%_
                           _%hd188749%_
                           _%fender188759%_
                           _%body188769%_)
                          (_%E188722188737%_)))))
                (_%E188722188737%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E188722188737%_)))))
                                    (_%E188722188737%_))))
                             (_%E188714188795%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e188713188733%_))
                                    (let ((_%e188716188775%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e188713188733%_))))
                                      (let ((_%hd188717188778%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e188716188775%_)))
                                            (_%tl188718188780%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e188716188775%_))))
                                        (let ((_%hd188783%_
                                               _%hd188717188778%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl188718188780%_))
                                              (let ((_%e188719188785%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl188718188780%_))))
                                                (let ((_%hd188720188788%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e188719188785%_)))
                                                      (_%tl188721188790%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e188719188785%_))))
                                                  (let ((_%body188793%_
                                                         _%hd188720188788%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl188721188790%_))
                                                        (_%generate1188712%_
                                                         _%hd188783%_
                                                         '#t
                                                         _%body188793%_)
                                                        (_%E188715188771%_)))))
                                              (_%E188715188771%_)))))
                                    (_%E188715188771%_)))))
                        (_%E188714188795%_)))))
                 (_%generate-match188277%_
                  (lambda (_%where188456%_
                           _%target188457%_
                           _%hd188458%_
                           _%mvars188459%_
                           _%K188460%_
                           _%E188461%_)
                    (letrec ((_%BUG188463%_
                              (lambda (_%q188705%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx188269%_
                                         _%hd188458%_
                                         _%q188705%_))))
                             (_%recur188464%_
                              (lambda (_%e188555%_
                                       _%vars188556%_
                                       _%target188557%_
                                       _%E188558%_
                                       _%k188559%_)
                                (let* ((_%e188560188567%_ _%e188555%_)
                                       (_%E188562188571%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e188560188567%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K188563188693%_
                                        (lambda (_%body188574%_ _%tag188575%_)
                                          (let ((_%$e188577%_ _%tag188575%_))
                                            (if (eq? 'any _%$e188577%_)
                                                (_%k188559%_ _%vars188556%_)
                                                (if (eq? 'id _%$e188577%_)
                                                    (let ((__tmp189620
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target188557%_)))
                                                          (__tmp189616
                                                           (let ((__tmp189618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp189619
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e188272%_
                                    _%body188574%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?188270%_
                             __tmp189619
                             _%target188557%_)))
                         (__tmp189617 (_%k188559%_ _%vars188556%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp189618 __tmp189617 _%E188558%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp189620 __tmp189616 _%E188558%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e188577%_)
                                                        (_%k188559%_
                                                         (cons (cons _%body188574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target188557%_)
                       _%vars188556%_))
                (if (eq? 'cons _%$e188577%_)
                    (let ((_%$e188580%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd188581%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl188582%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp189626
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target188557%_)))
                            (__tmp189621
                             (let ((__tmp189625
                                    (cons (cons (cons _%$e188580%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e188271%_
                                                         _%target188557%_))
                                                      '()))
                                          '()))
                                   (__tmp189622
                                    (let ((__tmp189624
                                           (cons (cons (cons _%$hd188581%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e188580%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl188582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e188580%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp189623
                                           (let* ((_%body188583188590%_
                                                   _%body188574%_)
                                                  (_%E188585188594%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body188583188590%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K188586188602%_
                                                   (lambda (_%tl188597%_
                                                            _%hd188598%_)
                                                     (_%recur188464%_
                                                      _%hd188598%_
                                                      _%vars188556%_
                                                      _%$hd188581%_
                                                      _%E188558%_
                                                      (lambda (_%vars188600%_)
                                                        (_%recur188464%_
                                                         _%tl188597%_
                                                         _%vars188600%_
                                                         _%$tl188582%_
                                                         _%E188558%_
                                                         _%k188559%_))))))
                                             (if (pair? _%body188583188590%_)
                                                 (let ((_%hd188587188605%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body188583188590%_)))
                                                       (_%tl188588188607%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body188583188590%_))))
                                                   (let* ((_%hd188610%_
                                                           _%hd188587188605%_)
                                                          (_%tl188612%_
                                                           _%tl188588188607%_))
                                                     (_%K188586188602%_
                                                      _%tl188612%_
                                                      _%hd188610%_)))
                                                 (_%E188585188594%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp189624
                                       __tmp189623))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp189625
                                __tmp189622))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp189626
                         __tmp189621
                         _%E188558%_)))
                    (if (eq? 'splice _%$e188577%_)
                        (let* ((_%body188613188620%_ _%body188574%_)
                               (_%E188615188624%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body188613188620%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K188616188675%_
                                (lambda (_%tl188627%_ _%hd188628%_)
                                  (let* ((_%rlen188630%_
                                          (_%splice-rlen188465%_ _%tl188627%_))
                                         (_%$target188632%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd188634%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl188636%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp188638%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e188640%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd188642%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl188644%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars188646%_
                                          (_%splice-vars188466%_ _%hd188628%_))
                                         (_%lvars188648%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars188646%_)))
                                         (_%tlvars188650%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars188646%_)))
                                         (_%linit188654%_
                                          (map (lambda (_%var188652%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars188648%_)))
                                    (letrec ((_%make-loop188657%_
                                              (lambda (_%vars188661%_)
                                                (let ((__tmp189628
                                                       (cons (cons (cons _%$lp188638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp189641
                                        (cons _%$hd188634%_ _%lvars188648%_))
                                       (__tmp189629
                                        (let ((__tmp189640
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd188634%_)))
                                              (__tmp189634
                                               (let ((__tmp189639
                                                      (cons (cons (cons _%$lp-e188640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e188271%_
                                   _%$hd188634%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp189635
                                                      (let ((__tmp189638
                                                             (cons (cons (cons _%$lp-hd188642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e188640%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl188644%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e188640%_))
                                             '()))
                                 '())))
                    (__tmp189636
                     (_%recur188464%_
                      _%hd188628%_
                      '()
                      _%$lp-hd188642%_
                      _%E188558%_
                      (lambda (_%hdvars188663%_)
                        (cons _%$lp188638%_
                              (cons _%$lp-tl188644%_
                                    (map (lambda (_%svar188665%_
                                                  _%lvar188666%_)
                                           (let ((__tmp189637
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar188665%_
                                                     _%hdvars188663%_
                                                     _%BUG188463%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp189637
                                              _%lvar188666%_)))
                                         _%svars188646%_
                                         _%lvars188648%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp189638 __tmp189636))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp189639
                                                  __tmp189635)))
                                              (__tmp189630
                                               (let ((__tmp189633
                                                      (map (lambda (_%lvar188668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar188669%_)
                     (cons (cons _%tlvar188669%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar188668%_))
                                 '())))
                   _%lvars188648%_
                   _%tlvars188650%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp189631
                                                      (_%k188559%_
                                                       (let ((__tmp189632
                                                              (lambda (_%svar188671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar188672%_
                               _%r188673%_)
                        (cons (cons _%svar188671%_ _%tlvar188672%_)
                              _%r188673%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp189632
                  _%vars188661%_
                  _%svars188646%_
                  _%tlvars188650%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp189633
                                                  __tmp189631))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp189640
                                           __tmp189634
                                           __tmp189630))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp189641
                                    __tmp189629))
                                 '()))
                     '()))
              (__tmp189627
               (cons _%$lp188638%_ (cons _%$target188632%_ _%linit188654%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp189628
                                                   __tmp189627)))))
                                      (let ((_%body188659%_
                                             (let ((__tmp189643
                                                    (cons (cons (cons _%$target188632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl188636%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target188557%_
                                 _%rlen188630%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp189642
                                                    (_%recur188464%_
                                                     _%tl188627%_
                                                     _%vars188556%_
                                                     _%$tl188636%_
                                                     _%E188558%_
                                                     _%make-loop188657%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp189643
                                                __tmp189642))))
                                        (let ((__tmp189647
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target188557%_)))
                                              (__tmp189644
                                               (if (zero? _%rlen188630%_)
                                                   _%body188659%_
                                                   (let ((__tmp189645
                                                          (let ((__tmp189646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target188557%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp189646 _%rlen188630%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp189645
                                                      _%body188659%_
                                                      _%E188558%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp189647
                                           __tmp189644
                                           _%E188558%_))))))))
                          (if (pair? _%body188613188620%_)
                              (let ((_%hd188617188678%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body188613188620%_)))
                                    (_%tl188618188680%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body188613188620%_))))
                                (let* ((_%hd188683%_ _%hd188617188678%_)
                                       (_%tl188685%_ _%tl188618188680%_))
                                  (_%K188616188675%_
                                   _%tl188685%_
                                   _%hd188683%_)))
                              (_%E188615188624%_)))
                        (if (eq? 'null _%$e188577%_)
                            (let ((__tmp189649
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target188557%_)))
                                  (__tmp189648 (_%k188559%_ _%vars188556%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp189649
                               __tmp189648
                               _%E188558%_))
                            (if (eq? 'vector _%$e188577%_)
                                (let ((_%$e188687%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp189654
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target188557%_)))
                                        (__tmp189650
                                         (let ((__tmp189652
                                                (cons (cons (cons _%$e188687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp189653
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e188271%_
                                    _%target188557%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp189653))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp189651
                                                (_%recur188464%_
                                                 _%body188574%_
                                                 _%vars188556%_
                                                 _%$e188687%_
                                                 _%E188558%_
                                                 _%k188559%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp189652
                                            __tmp189651))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp189654
                                     __tmp189650
                                     _%E188558%_)))
                                (if (eq? 'box _%$e188577%_)
                                    (let ((_%$e188689%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp189659
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target188557%_)))
                                            (__tmp189655
                                             (let ((__tmp189657
                                                    (cons (cons (cons _%$e188689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp189658
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e188271%_
                                        _%target188557%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp189658))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp189656
                                                    (_%recur188464%_
                                                     _%body188574%_
                                                     _%vars188556%_
                                                     _%$e188689%_
                                                     _%E188558%_
                                                     _%k188559%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp189657
                                                __tmp189656))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp189659
                                         __tmp189655
                                         _%E188558%_)))
                                    (if (eq? 'datum _%$e188577%_)
                                        (let ((_%$e188691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp189665
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target188557%_)))
                                                (__tmp189660
                                                 (let ((__tmp189664
                                                        (cons (cons (cons _%$e188691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target188557%_))
                                  '()))
                      '()))
               (__tmp189661
                (let ((__tmp189663
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e188691%_ _%body188574%_)))
                      (__tmp189662 (_%k188559%_ _%vars188556%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp189663 __tmp189662 _%E188558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp189664
                                                    __tmp189661))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp189665
                                             __tmp189660
                                             _%E188558%_)))
                                        (_%BUG188463%_
                                         _%e188555%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e188560188567%_)
                                      (let ((_%hd188564188696%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e188560188567%_)))
                                            (_%tl188565188698%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e188560188567%_))))
                                        (let* ((_%tag188701%_
                                                _%hd188564188696%_)
                                               (_%body188703%_
                                                _%tl188565188698%_))
                                          (_%K188563188693%_
                                           _%body188703%_
                                           _%tag188701%_)))
                                      (_%E188562188571%_)))))
                             (_%splice-rlen188465%_
                              (lambda (_%e188517%_)
                                (let _%lp188519%_ ((_%e188521%_ _%e188517%_)
                                                   (_%n188522%_ '0))
                                  (let* ((_%e188523188530%_ _%e188521%_)
                                         (_%E188525188534%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e188523188530%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K188526188543%_
                                          (lambda (_%body188537%_
                                                   _%tag188538%_)
                                            (let ((_%$e188540%_ _%tag188538%_))
                                              (if (eq? 'splice _%$e188540%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx188269%_
                                                     _%where188456%_))
                                                  (if (eq? 'cons _%$e188540%_)
                                                      (_%lp188519%_
                                                       (cdr _%body188537%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n188522%_
                                                                '1)))
                                                      _%n188522%_))))))
                                    (if (pair? _%e188523188530%_)
                                        (let ((_%hd188527188546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188523188530%_)))
                                              (_%tl188528188548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188523188530%_))))
                                          (let* ((_%tag188551%_
                                                  _%hd188527188546%_)
                                                 (_%body188553%_
                                                  _%tl188528188548%_))
                                            (_%K188526188543%_
                                             _%body188553%_
                                             _%tag188551%_)))
                                        (_%E188525188534%_))))))
                             (_%splice-vars188466%_
                              (lambda (_%e188473%_)
                                (let _%recur188475%_ ((_%e188477%_ _%e188473%_)
                                                      (_%vars188478%_ '()))
                                  (let* ((_%e188479188486%_ _%e188477%_)
                                         (_%E188481188490%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e188479188486%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K188482188505%_
                                          (lambda (_%body188493%_
                                                   _%tag188494%_)
                                            (let ((_%$e188496%_ _%tag188494%_))
                                              (if (eq? 'var _%$e188496%_)
                                                  (cons _%body188493%_
                                                        _%vars188478%_)
                                                  (if (or (eq? 'cons
                                                               _%$e188496%_)
                                                          (eq? 'splice
                                                               _%$e188496%_))
                                                      (_%recur188475%_
                                                       (cdr _%body188493%_)
                                                       (_%recur188475%_
                                                        (car _%body188493%_)
                                                        _%vars188478%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e188496%_)
                      (eq? 'box _%$e188496%_))
                  (_%recur188475%_ _%body188493%_ _%vars188478%_)
                  _%vars188478%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e188479188486%_)
                                        (let ((_%hd188483188508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188479188486%_)))
                                              (_%tl188484188510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188479188486%_))))
                                          (let* ((_%tag188513%_
                                                  _%hd188483188508%_)
                                                 (_%body188515%_
                                                  _%tl188484188510%_))
                                            (_%K188482188505%_
                                             _%body188515%_
                                             _%tag188513%_)))
                                        (_%E188481188490%_))))))
                             (_%make-body188467%_
                              (lambda (_%vars188469%_)
                                (cons _%K188460%_
                                      (map (lambda (_%mvar188471%_)
                                             (let ((__tmp189666
                                                    (car _%mvar188471%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp189666
                                                _%vars188469%_
                                                _%BUG188463%_)))
                                           _%mvars188459%_)))))
                      (_%recur188464%_
                       _%hd188458%_
                       '()
                       _%target188457%_
                       _%E188461%_
                       _%make-body188467%_))))
                 (_%parse-clause188278%_
                  (lambda (_%hd188350%_ _%ids188351%_)
                    (let _%recur188353%_ ((_%e188355%_ _%hd188350%_)
                                          (_%vars188356%_ '())
                                          (_%depth188357%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e188355%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e188355%_))
                              (values '(any) _%vars188356%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e188355%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx188269%_
                                     _%hd188350%_))
                                  (if (let ((__tmp189667
                                             (lambda (_%id188362%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e188355%_
                                                  _%id188362%_)))))
                                        (declare (not safe))
                                        (__find __tmp189667 _%ids188351%_))
                                      (values (cons 'id _%e188355%_)
                                              _%vars188356%_)
                                      (if (let ((__tmp189668
                                                 (lambda (_%var188365%_)
                                                   (let ((__tmp189669
                                                          (car _%var188365%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e188355%_
                                                      __tmp189669)))))
                                            (declare (not safe))
                                            (__find __tmp189668
                                                    _%vars188356%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx188269%_
                                             _%e188355%_))
                                          (values (cons 'var _%e188355%_)
                                                  (cons (cons _%e188355%_
                                                              _%depth188357%_)
                                                        _%vars188356%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e188355%_))
                              (let* ((_%e188369188376%_ _%e188355%_)
                                     (_%E188371188380%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e188369188376%_))))
                                     (_%E188370188441%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e188369188376%_))
                                            (let ((_%e188372188384%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e188369188376%_))))
                                              (let ((_%hd188373188387%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e188372188384%_)))
                                                    (_%tl188374188389%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e188372188384%_))))
                                                (let* ((_%hd188392%_
                                                        _%hd188373188387%_)
                                                       (_%rest188394%_
                                                        _%tl188374188389%_)
                                                       (_%make-pair188409%_
                                                        (lambda (_%tag188396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd188397%_
                         _%tl188398%_)
                  (let* ((_%hd-depth188400%_
                          (if (eq? _%tag188396%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth188357%_ '1))
                              _%depth188357%_))
                         (_g189670_
                          (_%recur188353%_
                           _%hd188397%_
                           _%vars188356%_
                           _%hd-depth188400%_)))
                    (begin
                      (let ((_g189671_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g189670_)
                                   (##values-length _g189670_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g189671_ 2)))
                            (error "Context expects 2 values" _g189671_)))
                      (let ((_%hd188402%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g189670_ 0)))
                            (_%vars188403%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g189670_ 1))))
                        (let ((_g189672_
                               (_%recur188353%_
                                _%tl188398%_
                                _%vars188403%_
                                _%depth188357%_)))
                          (begin
                            (let ((_g189673_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g189672_)
                                         (##values-length _g189672_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g189673_ 2)))
                                  (error "Context expects 2 values"
                                         _g189673_)))
                            (let ((_%tl188405%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g189672_ 0)))
                                  (_%vars188406%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g189672_ 1))))
                              (values (cons _%tag188396%_
                                            (cons _%hd188402%_ _%tl188405%_))
                                      _%vars188406%_)))))))))
               (_%e188410188417%_ _%rest188394%_)
               (_%E188412188421%_
                (lambda ()
                  (_%make-pair188409%_ 'cons _%hd188392%_ _%rest188394%_)))
               (_%E188411188437%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e188410188417%_))
                      (let ((_%e188413188425%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e188410188417%_))))
                        (let ((_%hd188414188428%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188413188425%_)))
                              (_%tl188415188430%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188413188425%_))))
                          (let* ((_%rest-hd188433%_ _%hd188414188428%_)
                                 (_%rest-tl188435%_ _%tl188415188430%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd188433%_))
                                (_%make-pair188409%_
                                 'splice
                                 _%hd188392%_
                                 _%rest-tl188435%_)
                                (_%make-pair188409%_
                                 'cons
                                 _%hd188392%_
                                 _%rest188394%_)))))
                      (_%E188412188421%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E188411188437%_))))
                                            (_%E188371188380%_)))))
                                (_%E188370188441%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e188355%_))
                                  (values '(null) _%vars188356%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e188355%_))
                                      (let ((_g189674_
                                             (_%recur188353%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e188355%_)))
                                              _%vars188356%_
                                              _%depth188357%_)))
                                        (begin
                                          (let ((_g189675_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g189674_)
                                                       (##values-length
                                                        _g189674_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g189675_ 2)))
                                                (error "Context expects 2 values"
                                                       _g189675_)))
                                          (let ((_%e188447%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g189674_ 0)))
                                                (_%vars188448%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g189674_
                                                    1))))
                                            (values (cons 'vector _%e188447%_)
                                                    _%vars188448%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e188355%_))
                                          (let ((_g189676_
                                                 (_%recur188353%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e188355%_)))
                                                  _%vars188356%_
                                                  _%depth188357%_)))
                                            (begin
                                              (let ((_g189677_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g189676_)
                                                           (##values-length
                                                            _g189676_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g189677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g189677_)))
                                              (let ((_%e188451%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g189676_
                                                        0)))
                                                    (_%vars188452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g189676_
                                                        1))))
                                                (values (cons 'box _%e188451%_)
                                                        _%vars188452%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e188355%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e188355%_)))
                                                      _%vars188356%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx188269%_
                                                 _%e188355%_))))))))))))
          (let* ((_%e188279188292%_ _%stx188269%_)
                 (_%E188281188296%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e188279188292%_))))
                 (_%E188280188346%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e188279188292%_))
                        (let ((_%e188282188300%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e188279188292%_))))
                          (let ((_%hd188283188303%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188282188300%_)))
                                (_%tl188284188305%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188282188300%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl188284188305%_))
                                (let ((_%e188285188308%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl188284188305%_))))
                                  (let ((_%hd188286188311%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188285188308%_)))
                                        (_%tl188287188313%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188285188308%_))))
                                    (let ((_%expr188316%_ _%hd188286188311%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl188287188313%_))
                                          (let ((_%e188288188318%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl188287188313%_))))
                                            (let ((_%hd188289188321%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e188288188318%_)))
                                                  (_%tl188290188323%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e188288188318%_))))
                                              (let* ((_%ids188326%_
                                                      _%hd188289188321%_)
                                                     (_%clauses188328%_
                                                      _%tl188290188323%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids188326%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses188328%_))
                                                        (let* ((_%ids188333%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids188326%_)))
                       (_%clauses188335%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses188328%_)))
                       (_%clause-ids188337%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses188335%_)))
                       (_%E188339%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target188341%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first188343%_
                        (if (null? _%clauses188335%_)
                            _%E188339%_
                            (car _%clause-ids188337%_))))
                  (let ((__tmp189679
                         (let ((__tmp189680
                                (let ((__tmp189682
                                       (let ((__tmp189684
                                              (cons (cons (cons _%E188339%_
                                                                '())
                                                          (cons (let ((__tmp189686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target188341%_ '()))
                              (__tmp189685
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target188341%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp189686 __tmp189685))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp189683
                                              (_%generate-body188275%_
                                               (_%generate-bindings188274%_
                                                _%target188341%_
                                                _%ids188333%_
                                                _%clauses188335%_
                                                _%clause-ids188337%_
                                                _%E188339%_)
                                               (cons _%first188343%_
                                                     (cons _%expr188316%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp189684
                                          __tmp189683)))
                                      (__tmp189681
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx188269%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp189682
                                   __tmp189681))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp189680)))
                        (__tmp189678
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx188269%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp189679 __tmp189678)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx188269%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx188269%_
                                                       _%ids188326%_))))))
                                          (_%E188281188296%_)))))
                                (_%E188281188296%_))))
                        (_%E188281188296%_)))))
            (_%E188280188346%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx188994%_)
        (let* ((_%identifier=?188996%_ 'free-identifier=?)
               (_%unwrap-e188998%_ 'syntax-e)
               (_%wrap-e189000%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx188994%_
           _%identifier=?188996%_
           _%unwrap-e188998%_
           _%wrap-e189000%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx189002%_ _%identifier=?189003%_)
        (let* ((_%unwrap-e189005%_ 'syntax-e) (_%wrap-e189007%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx189002%_
           _%identifier=?189003%_
           _%unwrap-e189005%_
           _%wrap-e189007%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx189009%_ _%identifier=?189010%_ _%unwrap-e189011%_)
        (let ((_%wrap-e189013%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx189009%_
           _%identifier=?189010%_
           _%unwrap-e189011%_
           _%wrap-e189013%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g189687_
        (let ((_g189688_ (let () (declare (not safe)) (##length _g189687_))))
          (cond ((let () (declare (not safe)) (##fx= _g189688_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g189687_))
                ((let () (declare (not safe)) (##fx= _g189688_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g189687_))
                ((let () (declare (not safe)) (##fx= _g189688_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g189687_))
                ((let () (declare (not safe)) (##fx= _g189688_ 4))
                 (apply gx#macro-expand-syntax-case__% _g189687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g189687_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx188266%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx188266%_))
            (let ((__tmp189689
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx188266%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp189689 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd188224%_ . _%rest188225%_)
        (let ((_%len188227%_ (length _%hd188224%_)))
          (let _%lp188229%_ ((_%rest188231%_ _%rest188225%_))
            (let* ((_%rest188232188240%_ _%rest188231%_)
                   (_%else188234188248%_ (lambda () '#!void))
                   (_%K188236188254%_
                    (lambda (_%rest188251%_ _%hd188252%_)
                      (if (let ((__tmp189690 (length _%hd188252%_)))
                            (declare (not safe))
                            (##fx= _%len188227%_ __tmp189690))
                          (_%lp188229%_ _%rest188251%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd188252%_))))))
              (if (pair? _%rest188232188240%_)
                  (let ((_%hd188237188257%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest188232188240%_)))
                        (_%tl188238188259%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest188232188240%_))))
                    (let* ((_%hd188262%_ _%hd188237188257%_)
                           (_%rest188264%_ _%tl188238188259%_))
                      (_%K188236188254%_ _%rest188264%_ _%hd188262%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx188174%_ _%n188175%_)
        (let _%lp188177%_ ((_%rest188180%_ _%stx188174%_) (_%r188182%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest188180%_))
              (let* ((_%g188184188191%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest188180%_)))
                     (_%E188186188195%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g188184188191%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K188187188202%_
                      (lambda (_%rest188198%_ _%hd188199%_)
                        (_%lp188177%_
                         _%rest188198%_
                         (cons _%hd188199%_ _%r188182%_)))))
                (if (pair? _%g188184188191%_)
                    (let ((_%hd188188188205%_
                           (let ()
                             (declare (not safe))
                             (##car _%g188184188191%_)))
                          (_%tl188189188207%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g188184188191%_))))
                      (let* ((_%hd188210%_ _%hd188188188205%_)
                             (_%rest188212%_ _%tl188189188207%_))
                        (_%K188187188202%_ _%rest188212%_ _%hd188210%_)))
                    (_%E188186188195%_)))
              (let _%lp188214%_ ((_%n188216%_ _%n188175%_)
                                 (_%l188217%_ _%r188182%_)
                                 (_%r188219%_ _%rest188180%_))
                (if (null? _%l188217%_)
                    (values _%l188217%_ _%r188219%_)
                    (if (fxpositive? _%n188216%_)
                        (_%lp188214%_
                         (let () (declare (not safe)) (##fx- _%n188216%_ '1))
                         (cdr _%l188217%_)
                         (cons (car _%l188217%_) _%r188219%_))
                        (values (reverse! _%l188217%_) _%r188219%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx188124%_ _%n188125%_)
        (let _%lp188127%_ ((_%rest188130%_ _%stx188124%_) (_%r188132%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest188130%_))
              (let* ((_%g188134188141%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest188130%_)))
                     (_%E188136188145%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g188134188141%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K188137188152%_
                      (lambda (_%rest188148%_ _%hd188149%_)
                        (_%lp188127%_
                         _%rest188148%_
                         (cons _%hd188149%_ _%r188132%_)))))
                (if (pair? _%g188134188141%_)
                    (let ((_%hd188138188155%_
                           (let ()
                             (declare (not safe))
                             (##car _%g188134188141%_)))
                          (_%tl188139188157%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g188134188141%_))))
                      (let* ((_%hd188160%_ _%hd188138188155%_)
                             (_%rest188162%_ _%tl188139188157%_))
                        (_%K188137188152%_ _%rest188162%_ _%hd188160%_)))
                    (_%E188136188145%_)))
              (let _%lp188164%_ ((_%n188166%_ _%n188125%_)
                                 (_%l188167%_ _%r188132%_)
                                 (_%r188169%_ _%rest188130%_))
                (if (null? _%l188167%_)
                    (vector _%l188167%_ _%r188169%_)
                    (if (fxpositive? _%n188166%_)
                        (_%lp188164%_
                         (let () (declare (not safe)) (##fx- _%n188166%_ '1))
                         (cdr _%l188167%_)
                         (cons (car _%l188167%_) _%r188169%_))
                        (vector (reverse! _%l188167%_) _%r188169%_))))))))))
