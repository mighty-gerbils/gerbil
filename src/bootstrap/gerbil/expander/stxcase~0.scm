(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1770313936)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp156796 (list gx#expander::t))
            (__tmp156795 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp156796
         '(id depth)
         __tmp156795
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args156792%_
        (apply make-instance gx#syntax-pattern::t _%$args156792%_)))
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
      (lambda (_%self156778%_ _%stx156779%_)
        (let ((_%self156782%_ _%self156778%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx156779%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx156245%_)
        (letrec ((_%generate156247%_
                  (lambda (_%e156487%_)
                    (letrec ((_%BUG156489%_
                              (lambda (_%q156654%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx156245%_
                                         _%e156487%_
                                         _%q156654%_))))
                             (_%local-pattern-e156490%_
                              (lambda (_%pat156652%_)
                                (let ((__tmp156797
                                       (##structure-ref
                                        _%pat156652%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp156797))))
                             (_%getvar156491%_
                              (lambda (_%q156649%_ _%vars156650%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q156649%_
                                   _%vars156650%_
                                   _%BUG156489%_))))
                             (_%getarg156492%_
                              (lambda (_%arg156615%_ _%vars156616%_)
                                (let* ((_%arg156617156624%_ _%arg156615%_)
                                       (_%E156619156628%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg156617156624%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K156620156637%_
                                        (lambda (_%e156631%_ _%tag156632%_)
                                          (let ((_%$e156634%_ _%tag156632%_))
                                            (if (eq? 'ref _%$e156634%_)
                                                (_%getvar156491%_
                                                 _%e156631%_
                                                 _%vars156616%_)
                                                (if (eq? 'pattern _%$e156634%_)
                                                    (_%local-pattern-e156490%_
                                                     _%e156631%_)
                                                    (_%BUG156489%_
                                                     _%arg156615%_)))))))
                                  (if (pair? _%arg156617156624%_)
                                      (let ((_%hd156621156640%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg156617156624%_)))
                                            (_%tl156622156642%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg156617156624%_))))
                                        (let* ((_%tag156645%_
                                                _%hd156621156640%_)
                                               (_%e156647%_
                                                _%tl156622156642%_))
                                          (_%K156620156637%_
                                           _%e156647%_
                                           _%tag156645%_)))
                                      (_%E156619156628%_))))))
                      (let _%recur156494%_ ((_%e156496%_ _%e156487%_)
                                            (_%vars156497%_ '()))
                        (let* ((_%e156498156505%_ _%e156496%_)
                               (_%E156500156509%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e156498156505%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K156501156603%_
                                (lambda (_%body156512%_ _%tag156513%_)
                                  (let ((_%$e156515%_ _%tag156513%_))
                                    (if (eq? 'datum _%$e156515%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body156512%_))
                                        (if (eq? 'term _%$e156515%_)
                                            (let ((_%id156518%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body156512%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id156518%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks156521%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id156518%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks156521%_)
                                                        (let ((__tmp156798
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body156512%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp156798))
                (let ((__tmp156800
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body156512%_)))
                      (__tmp156799
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body156512%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp156800
                   __tmp156799
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id156518%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body156512%_))
                                                      (_%BUG156489%_
                                                       _%e156496%_))))
                                            (if (eq? 'pattern _%$e156515%_)
                                                (_%local-pattern-e156490%_
                                                 _%body156512%_)
                                                (if (eq? 'ref _%$e156515%_)
                                                    (_%getvar156491%_
                                                     _%body156512%_
                                                     _%vars156497%_)
                                                    (if (eq? 'cons
                                                             _%$e156515%_)
                                                        (let ((__tmp156802
                                                               (_%recur156494%_
                                                                (car _%body156512%_)
                                                                _%vars156497%_))
                                                              (__tmp156801
                                                               (_%recur156494%_
                                                                (cdr _%body156512%_)
                                                                _%vars156497%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp156802
                                                           __tmp156801))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e156515%_)
                    (let ((__tmp156803
                           (_%recur156494%_ _%body156512%_ _%vars156497%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp156803))
                    (if (eq? 'box _%$e156515%_)
                        (let ((__tmp156804
                               (_%recur156494%_
                                _%body156512%_
                                _%vars156497%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp156804))
                        (if (eq? 'splice _%$e156515%_)
                            (let* ((_%body156524156535%_ _%body156512%_)
                                   (_%E156526156539%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body156524156535%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K156527156577%_
                                    (lambda (_%args156542%_
                                             _%iv156543%_
                                             _%hd156544%_
                                             _%depth156545%_)
                                      (let* ((_%targets156551%_
                                              (map (lambda (_%g156546156548%_)
                                                     (_%getarg156492%_
                                                      _%g156546156548%_
                                                      _%vars156497%_))
                                                   _%args156542%_))
                                             (_%fold-in156553%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args156542%_)))
                                             (_%fold-out156555%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args156557%_
                                              (let ((__tmp156805
                                                     (cons _%fold-out156555%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp156805
                                                 _%fold-in156553%_)))
                                             (_%lambda-body156574%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth156545%_ '1))
                                                  (let ((_%r-args156565%_
                                                         (map (lambda (_%arg156559%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg156559%_)))
                      _%args156542%_))
                (_%r-vars156566%_
                 (let ((__tmp156806
                        (lambda (_%arg156561%_ _%var156562%_ _%r156563%_)
                          (cons (cons (cdr _%arg156561%_) _%var156562%_)
                                _%r156563%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp156806
                    _%vars156497%_
                    _%args156542%_
                    _%fold-in156553%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur156494%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth156545%_ '1))
                         (cons _%hd156544%_
                               (cons (cons 'var _%fold-out156555%_)
                                     _%r-args156565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars156566%_))
                                                  (let* ((_%hd-vars156572%_
                                                          (let ((__tmp156807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg156568%_ _%var156569%_ _%r156570%_)
                           (cons (cons (cdr _%arg156568%_) _%var156569%_)
                                 _%r156570%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp156807
                     _%vars156497%_
                     _%args156542%_
                     _%fold-in156553%_)))
                 (__tmp156808
                  (_%recur156494%_ _%hd156544%_ _%hd-vars156572%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp156808
                                                     _%fold-out156555%_)))))
                                        (let ((__tmp156812
                                               (if (let ((__tmp156813
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets156551%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp156813 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets156551%_))
                                                   '#!void))
                                              (__tmp156809
                                               (let ((__tmp156811
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args156557%_
                                                         _%lambda-body156574%_)))
                                                     (__tmp156810
                                                      (_%recur156494%_
                                                       _%iv156543%_
                                                       _%vars156497%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp156811
                                                  __tmp156810
                                                  _%targets156551%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp156812
                                           __tmp156809))))))
                              (if (pair? _%body156524156535%_)
                                  (let ((_%hd156528156580%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body156524156535%_)))
                                        (_%tl156529156582%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body156524156535%_))))
                                    (let ((_%depth156585%_ _%hd156528156580%_))
                                      (if (pair? _%tl156529156582%_)
                                          (let ((_%hd156530156587%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl156529156582%_)))
                                                (_%tl156531156589%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl156529156582%_))))
                                            (let ((_%hd156592%_
                                                   _%hd156530156587%_))
                                              (if (pair? _%tl156531156589%_)
                                                  (let ((_%hd156532156594%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl156531156589%_)))
                                                        (_%tl156533156596%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl156531156589%_))))
                                                    (let* ((_%iv156599%_
                                                            _%hd156532156594%_)
                                                           (_%args156601%_
                                                            _%tl156533156596%_))
                                                      (_%K156527156577%_
                                                       _%args156601%_
                                                       _%iv156599%_
                                                       _%hd156592%_
                                                       _%depth156585%_)))
                                                  (_%E156526156539%_))))
                                          (_%E156526156539%_))))
                                  (_%E156526156539%_)))
                            (if (eq? 'var _%$e156515%_)
                                _%body156512%_
                                (_%BUG156489%_ _%e156496%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e156498156505%_)
                              (let ((_%hd156502156606%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e156498156505%_)))
                                    (_%tl156503156608%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e156498156505%_))))
                                (let* ((_%tag156611%_ _%hd156502156606%_)
                                       (_%body156613%_ _%tl156503156608%_))
                                  (_%K156501156603%_
                                   _%body156613%_
                                   _%tag156611%_)))
                              (_%E156500156509%_)))))))
                 (_%parse156248%_
                  (lambda (_%e156289%_)
                    (letrec ((_%make-cons156291%_
                              (lambda (_%hd156479%_ _%tl156480%_)
                                (let ((_g156814_ _%hd156479%_)
                                      (_g156816_ _%tl156480%_))
                                  (begin
                                    (let ((_g156815_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156814_)
                                                 (##values-length _g156814_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156815_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156815_)))
                                    (let ((_g156817_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156816_)
                                                 (##values-length _g156816_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156817_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156817_)))
                                    (let ((_%hd-e156482%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156814_ 0)))
                                          (_%hd-vars156483%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156814_ 1))))
                                      (let ((_%tl-e156484%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156816_ 0)))
                                            (_%tl-vars156485%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156816_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e156482%_
                                                            _%tl-e156484%_))
                                                (append _%hd-vars156483%_
                                                        _%tl-vars156485%_))))))))
                             (_%make-splice156292%_
                              (lambda (_%where156415%_
                                       _%depth156416%_
                                       _%hd156417%_
                                       _%tl156418%_)
                                (let ((_g156818_ _%hd156417%_)
                                      (_g156820_ _%tl156418%_))
                                  (begin
                                    (let ((_g156819_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156818_)
                                                 (##values-length _g156818_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156819_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156819_)))
                                    (let ((_g156821_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156820_)
                                                 (##values-length _g156820_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156821_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156821_)))
                                    (let ((_%hd-e156420%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156818_ 0)))
                                          (_%hd-vars156421%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156818_ 1))))
                                      (let ((_%tl-e156422%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156820_ 0)))
                                            (_%tl-vars156423%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156820_ 1))))
                                        (let _%lp156425%_ ((_%rest156427%_
                                                            _%hd-vars156421%_)
                                                           (_%targets156428%_
                                                            '())
                                                           (_%vars156429%_
                                                            _%tl-vars156423%_))
                                          (let* ((_%rest156430156440%_
                                                  _%rest156427%_)
                                                 (_%else156432156448%_
                                                  (lambda ()
                                                    (if (null? _%targets156428%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx156245%_
                                                           _%where156415%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth156416%_
                                    (cons _%hd-e156420%_
                                          (cons _%tl-e156422%_
                                                _%targets156428%_))))
                        _%vars156429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K156434156460%_
                                                  (lambda (_%rest156451%_
                                                           _%hd-pat156452%_
                                                           _%hd-depth*156453%_)
                                                    (let ((_%hd-depth156455%_
                                                           (fx- _%hd-depth*156453%_
                                                                _%depth156416%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth156455%_))
                                                          (_%lp156425%_
                                                           _%rest156451%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat156452%_)
                         _%targets156428%_)
                   (cons (cons _%hd-depth156455%_ _%hd-pat156452%_)
                         _%vars156429%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth156455%_))
                      (_%lp156425%_
                       _%rest156451%_
                       (cons (cons 'pattern _%hd-pat156452%_)
                             _%targets156428%_)
                       _%vars156429%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx156245%_
                         _%where156415%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest156430156440%_)
                                                (let ((_%hd156435156463%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest156430156440%_)))
                                                      (_%tl156436156465%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest156430156440%_))))
                                                  (if (pair? _%hd156435156463%_)
                                                      (let ((_%hd156437156468%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd156435156463%_)))
                    (_%tl156438156470%_
                     (let () (declare (not safe)) (##cdr _%hd156435156463%_))))
                (let* ((_%hd-depth*156473%_ _%hd156437156468%_)
                       (_%hd-pat156475%_ _%tl156438156470%_)
                       (_%rest156477%_ _%tl156436156465%_))
                  (_%K156434156460%_
                   _%rest156477%_
                   _%hd-pat156475%_
                   _%hd-depth*156473%_)))
              (_%else156432156448%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else156432156448%_))))))))))
                             (_%recur156293%_
                              (lambda (_%e156298%_ _%is-e?156299%_)
                                (if (_%is-e?156299%_ _%e156298%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx156245%_))
                                    (if (gx#syntax-local-pattern? _%e156298%_)
                                        (let* ((_%pat156303%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e156298%_)))
                                               (_%depth156305%_
                                                (##structure-ref
                                                 _%pat156303%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth156305%_)
                                              (values (cons 'ref _%pat156303%_)
                                                      (cons (cons _%depth156305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat156303%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat156303%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e156298%_))
                                            (values (cons 'term _%e156298%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e156298%_))
                                                (let* ((_%e156309156316%_
                                                        _%e156298%_)
                                                       (_%E156311156320%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e156309156316%_))))
                                                       (_%E156310156402%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e156309156316%_))
                      (let ((_%e156312156324%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e156309156316%_))))
                        (let ((_%hd156313156327%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e156312156324%_)))
                              (_%tl156314156329%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e156312156324%_))))
                          (let* ((_%hd156332%_ _%hd156313156327%_)
                                 (_%rest156334%_ _%tl156314156329%_))
                            (if (_%is-e?156299%_ _%hd156332%_)
                                (let* ((_%e156335156342%_ _%rest156334%_)
                                       (_%E156337156346%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx156245%_
                                             _%e156298%_))))
                                       (_%E156336156360%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e156335156342%_))
                                              (let ((_%e156338156350%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e156335156342%_))))
                                                (let ((_%hd156339156353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e156338156350%_)))
                                                      (_%tl156340156355%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e156338156350%_))))
                                                  (let ((_%rest156358%_
                                                         _%hd156339156353%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl156340156355%_))
                                                        (_%recur156293%_
                                                         _%rest156358%_
                                                         false)
                                                        (_%E156337156346%_)))))
                                              (_%E156337156346%_)))))
                                  (_%E156336156360%_))
                                (let _%lp156364%_ ((_%rest156366%_
                                                    _%rest156334%_)
                                                   (_%depth156367%_ '0))
                                  (let* ((_%e156368156375%_ _%rest156366%_)
                                         (_%E156370156379%_
                                          (lambda ()
                                            (if (fxpositive? _%depth156367%_)
                                                (_%make-splice156292%_
                                                 _%e156298%_
                                                 _%depth156367%_
                                                 (_%recur156293%_
                                                  _%hd156332%_
                                                  _%is-e?156299%_)
                                                 (_%recur156293%_
                                                  _%rest156366%_
                                                  _%is-e?156299%_))
                                                (_%make-cons156291%_
                                                 (_%recur156293%_
                                                  _%hd156332%_
                                                  _%is-e?156299%_)
                                                 (_%recur156293%_
                                                  _%rest156366%_
                                                  _%is-e?156299%_)))))
                                         (_%E156369156398%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e156368156375%_))
                                                (let ((_%e156371156383%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e156368156375%_))))
                                                  (let ((_%hd156372156386%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e156371156383%_)))
                                                        (_%tl156373156388%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e156371156383%_))))
                                                    (let* ((_%rest-hd156391%_
                                                            _%hd156372156386%_)
                                                           (_%rest-tl156393%_
                                                            _%tl156373156388%_))
                                                      (if (_%is-e?156299%_
                                                           _%rest-hd156391%_)
                                                          (_%lp156364%_
                                                           _%rest-tl156393%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth156367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth156367%_)
                      (_%make-splice156292%_
                       _%e156298%_
                       _%depth156367%_
                       (_%recur156293%_ _%hd156332%_ _%is-e?156299%_)
                       (_%recur156293%_ _%rest156366%_ _%is-e?156299%_))
                      (_%make-cons156291%_
                       (_%recur156293%_ _%hd156332%_ _%is-e?156299%_)
                       (_%recur156293%_ _%rest156366%_ _%is-e?156299%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E156370156379%_)))))
                                    (_%E156369156398%_)))))))
                      (_%E156311156320%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E156310156402%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e156298%_))
                                                    (let ((_g156822_
                                                           (_%recur156293%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e156298%_)))
                    _%is-e?156299%_)))
              (begin
                (let ((_g156823_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g156822_)
                             (##values-length _g156822_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g156823_ 2)))
                      (error "Context expects 2 values" _g156823_)))
                (let ((_%e156407%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g156822_ 0)))
                      (_%vars156408%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g156822_ 1))))
                  (values (cons 'vector _%e156407%_) _%vars156408%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e156298%_))
                                                        (let ((_g156824_
                                                               (_%recur156293%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e156298%_)))
                        _%is-e?156299%_)))
                  (begin
                    (let ((_g156825_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g156824_)
                                 (##values-length _g156824_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g156825_ 2)))
                          (error "Context expects 2 values" _g156825_)))
                    (let ((_%e156411%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g156824_ 0)))
                          (_%vars156412%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g156824_ 1))))
                      (values (cons 'box _%e156411%_) _%vars156412%_))))
                (values (cons 'datum _%e156298%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g156826_
                             (_%recur156293%_ _%e156289%_ gx#ellipsis?)))
                        (begin
                          (let ((_g156827_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g156826_)
                                       (##values-length _g156826_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g156827_ 2)))
                                (error "Context expects 2 values" _g156827_)))
                          (let ((_%tree156295%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g156826_ 0)))
                                (_%vars156296%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g156826_ 1))))
                            (if (null? _%vars156296%_)
                                _%tree156295%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx156245%_
                                   _%vars156296%_))))))))))
          (let* ((_%e156249156259%_ _%stx156245%_)
                 (_%E156251156263%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx156245%_))))
                 (_%E156250156285%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e156249156259%_))
                        (let ((_%e156252156267%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e156249156259%_))))
                          (let ((_%hd156253156270%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156252156267%_)))
                                (_%tl156254156272%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156252156267%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl156254156272%_))
                                (let ((_%e156255156275%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl156254156272%_))))
                                  (let ((_%hd156256156278%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e156255156275%_)))
                                        (_%tl156257156280%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e156255156275%_))))
                                    (let ((_%form156283%_ _%hd156256156278%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl156257156280%_))
                                          (let ((__tmp156829
                                                 (_%generate156247%_
                                                  (_%parse156248%_
                                                   _%form156283%_)))
                                                (__tmp156828
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx156245%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp156829
                                             __tmp156828))
                                          (_%E156251156263%_)))))
                                (_%E156251156263%_))))
                        (_%E156251156263%_)))))
            (_%E156250156285%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx155494%_
               _%identifier=?155495%_
               _%unwrap-e155496%_
               _%wrap-e155497%_)
        (letrec ((_%generate-bindings155499%_
                  (lambda (_%target156109%_
                           _%ids156110%_
                           _%clauses156111%_
                           _%clause-ids156112%_
                           _%E156113%_)
                    (letrec ((_%generate1156115%_
                              (lambda (_%clause156212%_
                                       _%clause-id156213%_
                                       _%E156214%_)
                                (cons (cons _%clause-id156213%_ '())
                                      (cons (let ((__tmp156831
                                                   (cons _%target156109%_ '()))
                                                  (__tmp156830
                                                   (_%generate-clause155501%_
                                                    _%target156109%_
                                                    _%ids156110%_
                                                    _%clause156212%_
                                                    _%E156214%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp156831
                                               __tmp156830))
                                            '())))))
                      (let _%lp156117%_ ((_%rest156119%_ _%clauses156111%_)
                                         (_%rest-ids156120%_
                                          _%clause-ids156112%_)
                                         (_%bindings156121%_ '()))
                        (let* ((_%rest156122156130%_ _%rest156119%_)
                               (_%else156124156138%_
                                (lambda () _%bindings156121%_))
                               (_%K156126156200%_
                                (lambda (_%rest156141%_ _%clause156142%_)
                                  (let* ((_%rest-ids156143156150%_
                                          _%rest-ids156120%_)
                                         (_%E156145156154%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids156143156150%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K156146156188%_
                                          (lambda (_%rest-ids156157%_
                                                   _%clause-id156158%_)
                                            (let* ((_%rest-ids156159156167%_
                                                    _%rest-ids156157%_)
                                                   (_%else156161156175%_
                                                    (lambda ()
                                                      (cons (_%generate1156115%_
                                                             _%clause156142%_
                                                             _%clause-id156158%_
                                                             _%E156113%_)
                                                            _%bindings156121%_)))
                                                   (_%K156163156180%_
                                                    (lambda (_%next-clause-id156178%_)
                                                      (_%lp156117%_
                                                       _%rest156141%_
                                                       _%rest-ids156157%_
                                                       (cons (_%generate1156115%_
                                                              _%clause156142%_
                                                              _%clause-id156158%_
                                                              _%next-clause-id156178%_)
                                                             _%bindings156121%_)))))
                                              (if (pair? _%rest-ids156159156167%_)
                                                  (let* ((_%hd156164156183%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids156159156167%_)))
                                                         (_%next-clause-id156186%_
                                                          _%hd156164156183%_))
                                                    (_%K156163156180%_
                                                     _%next-clause-id156186%_))
                                                  (_%else156161156175%_))))))
                                    (if (pair? _%rest-ids156143156150%_)
                                        (let ((_%hd156147156191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids156143156150%_)))
                                              (_%tl156148156193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids156143156150%_))))
                                          (let* ((_%clause-id156196%_
                                                  _%hd156147156191%_)
                                                 (_%rest-ids156198%_
                                                  _%tl156148156193%_))
                                            (_%K156146156188%_
                                             _%rest-ids156198%_
                                             _%clause-id156196%_)))
                                        (_%E156145156154%_))))))
                          (if (pair? _%rest156122156130%_)
                              (let ((_%hd156127156203%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest156122156130%_)))
                                    (_%tl156128156205%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest156122156130%_))))
                                (let* ((_%clause156208%_ _%hd156127156203%_)
                                       (_%rest156210%_ _%tl156128156205%_))
                                  (_%K156126156200%_
                                   _%rest156210%_
                                   _%clause156208%_)))
                              (_%else156124156138%_)))))))
                 (_%generate-body155500%_
                  (lambda (_%bindings156069%_ _%body156070%_)
                    (let _%recur156072%_ ((_%rest156074%_ _%bindings156069%_))
                      (let* ((_%rest156075156083%_ _%rest156074%_)
                             (_%else156077156091%_ (lambda () _%body156070%_))
                             (_%K156079156097%_
                              (lambda (_%rest156094%_ _%hd156095%_)
                                (let ((__tmp156833 (cons _%hd156095%_ '()))
                                      (__tmp156832
                                       (_%recur156072%_ _%rest156094%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp156833
                                   __tmp156832)))))
                        (if (pair? _%rest156075156083%_)
                            (let ((_%hd156080156100%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest156075156083%_)))
                                  (_%tl156081156102%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest156075156083%_))))
                              (let* ((_%hd156105%_ _%hd156080156100%_)
                                     (_%rest156107%_ _%tl156081156102%_))
                                (_%K156079156097%_
                                 _%rest156107%_
                                 _%hd156105%_)))
                            (_%else156077156091%_))))))
                 (_%generate-clause155501%_
                  (lambda (_%target155932%_
                           _%ids155933%_
                           _%clause155934%_
                           _%E155935%_)
                    (letrec ((_%generate1155937%_
                              (lambda (_%hd156024%_
                                       _%fender156025%_
                                       _%body156026%_)
                                (let ((_g156834_
                                       (_%parse-clause155503%_
                                        _%hd156024%_
                                        _%ids155933%_)))
                                  (begin
                                    (let ((_g156835_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156834_)
                                                 (##values-length _g156834_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156835_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156835_)))
                                    (let ((_%e156028%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156834_ 0)))
                                          (_%mvars156029%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156834_ 1))))
                                      (let* ((_%pvars156031%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars156029%_))))
                                             (_%E156033%_
                                              (cons _%E155935%_
                                                    (cons _%target155932%_
                                                          '())))
                                             (_%K156066%_
                                              (let ((__tmp156836
                                                     (let ((__tmp156838
                                                            (map (lambda (_%mvar156035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar156036%_)
                           (let* ((_%mvar156037156044%_ _%mvar156035%_)
                                  (_%E156039156048%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar156037156044%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K156040156054%_
                                   (lambda (_%depth156051%_ _%id156052%_)
                                     (cons _%id156052%_
                                           (cons (let ((__tmp156840
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id156052%_)))
                                                       (__tmp156839
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar156036%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp156840
                                                    __tmp156839
                                                    _%depth156051%_))
                                                 '())))))
                             (if (pair? _%mvar156037156044%_)
                                 (let ((_%hd156041156057%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar156037156044%_)))
                                       (_%tl156042156059%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar156037156044%_))))
                                   (let* ((_%id156062%_ _%hd156041156057%_)
                                          (_%depth156064%_ _%tl156042156059%_))
                                     (_%K156040156054%_
                                      _%depth156064%_
                                      _%id156062%_)))
                                 (_%E156039156048%_))))
                         _%mvars156029%_
                         _%pvars156031%_))
                   (__tmp156837
                    (if (eq? _%fender156025%_ '#t)
                        _%body156026%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender156025%_
                           _%body156026%_
                           _%E156033%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp156838 __tmp156837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars156031%_
                                                 __tmp156836))))
                                        (_%generate-match155502%_
                                         _%hd156024%_
                                         _%target155932%_
                                         _%e156028%_
                                         _%mvars156029%_
                                         _%K156066%_
                                         _%E156033%_))))))))
                      (let* ((_%e155938155958%_ _%clause155934%_)
                             (_%E155947155962%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e155938155958%_))))
                             (_%E155940155996%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e155938155958%_))
                                    (let ((_%e155948155966%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e155938155958%_))))
                                      (let ((_%hd155949155969%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e155948155966%_)))
                                            (_%tl155950155971%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e155948155966%_))))
                                        (let ((_%hd155974%_
                                               _%hd155949155969%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl155950155971%_))
                                              (let ((_%e155951155976%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl155950155971%_))))
                                                (let ((_%hd155952155979%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155951155976%_)))
                                                      (_%tl155953155981%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155951155976%_))))
                                                  (let ((_%fender155984%_
                                                         _%hd155952155979%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl155953155981%_))
                                                        (let ((_%e155954155986%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl155953155981%_))))
                  (let ((_%hd155955155989%_
                         (let ()
                           (declare (not safe))
                           (##car _%e155954155986%_)))
                        (_%tl155956155991%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e155954155986%_))))
                    (let ((_%body155994%_ _%hd155955155989%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl155956155991%_))
                          (_%generate1155937%_
                           _%hd155974%_
                           _%fender155984%_
                           _%body155994%_)
                          (_%E155947155962%_)))))
                (_%E155947155962%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E155947155962%_)))))
                                    (_%E155947155962%_))))
                             (_%E155939156020%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e155938155958%_))
                                    (let ((_%e155941156000%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e155938155958%_))))
                                      (let ((_%hd155942156003%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e155941156000%_)))
                                            (_%tl155943156005%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e155941156000%_))))
                                        (let ((_%hd156008%_
                                               _%hd155942156003%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl155943156005%_))
                                              (let ((_%e155944156010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl155943156005%_))))
                                                (let ((_%hd155945156013%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155944156010%_)))
                                                      (_%tl155946156015%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155944156010%_))))
                                                  (let ((_%body156018%_
                                                         _%hd155945156013%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl155946156015%_))
                                                        (_%generate1155937%_
                                                         _%hd156008%_
                                                         '#t
                                                         _%body156018%_)
                                                        (_%E155940155996%_)))))
                                              (_%E155940155996%_)))))
                                    (_%E155940155996%_)))))
                        (_%E155939156020%_)))))
                 (_%generate-match155502%_
                  (lambda (_%where155681%_
                           _%target155682%_
                           _%hd155683%_
                           _%mvars155684%_
                           _%K155685%_
                           _%E155686%_)
                    (letrec ((_%BUG155688%_
                              (lambda (_%q155930%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx155494%_
                                         _%hd155683%_
                                         _%q155930%_))))
                             (_%recur155689%_
                              (lambda (_%e155780%_
                                       _%vars155781%_
                                       _%target155782%_
                                       _%E155783%_
                                       _%k155784%_)
                                (let* ((_%e155785155792%_ _%e155780%_)
                                       (_%E155787155796%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e155785155792%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K155788155918%_
                                        (lambda (_%body155799%_ _%tag155800%_)
                                          (let ((_%$e155802%_ _%tag155800%_))
                                            (if (eq? 'any _%$e155802%_)
                                                (_%k155784%_ _%vars155781%_)
                                                (if (eq? 'id _%$e155802%_)
                                                    (let ((__tmp156845
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target155782%_)))
                                                          (__tmp156841
                                                           (let ((__tmp156843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp156844
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e155497%_
                                    _%body155799%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?155495%_
                             __tmp156844
                             _%target155782%_)))
                         (__tmp156842 (_%k155784%_ _%vars155781%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp156843 __tmp156842 _%E155783%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp156845 __tmp156841 _%E155783%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e155802%_)
                                                        (_%k155784%_
                                                         (cons (cons _%body155799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target155782%_)
                       _%vars155781%_))
                (if (eq? 'cons _%$e155802%_)
                    (let ((_%$e155805%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd155806%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl155807%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp156851
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target155782%_)))
                            (__tmp156846
                             (let ((__tmp156850
                                    (cons (cons (cons _%$e155805%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e155496%_
                                                         _%target155782%_))
                                                      '()))
                                          '()))
                                   (__tmp156847
                                    (let ((__tmp156849
                                           (cons (cons (cons _%$hd155806%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e155805%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl155807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e155805%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp156848
                                           (let* ((_%body155808155815%_
                                                   _%body155799%_)
                                                  (_%E155810155819%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body155808155815%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K155811155827%_
                                                   (lambda (_%tl155822%_
                                                            _%hd155823%_)
                                                     (_%recur155689%_
                                                      _%hd155823%_
                                                      _%vars155781%_
                                                      _%$hd155806%_
                                                      _%E155783%_
                                                      (lambda (_%vars155825%_)
                                                        (_%recur155689%_
                                                         _%tl155822%_
                                                         _%vars155825%_
                                                         _%$tl155807%_
                                                         _%E155783%_
                                                         _%k155784%_))))))
                                             (if (pair? _%body155808155815%_)
                                                 (let ((_%hd155812155830%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body155808155815%_)))
                                                       (_%tl155813155832%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body155808155815%_))))
                                                   (let* ((_%hd155835%_
                                                           _%hd155812155830%_)
                                                          (_%tl155837%_
                                                           _%tl155813155832%_))
                                                     (_%K155811155827%_
                                                      _%tl155837%_
                                                      _%hd155835%_)))
                                                 (_%E155810155819%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp156849
                                       __tmp156848))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp156850
                                __tmp156847))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp156851
                         __tmp156846
                         _%E155783%_)))
                    (if (eq? 'splice _%$e155802%_)
                        (let* ((_%body155838155845%_ _%body155799%_)
                               (_%E155840155849%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body155838155845%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K155841155900%_
                                (lambda (_%tl155852%_ _%hd155853%_)
                                  (let* ((_%rlen155855%_
                                          (_%splice-rlen155690%_ _%tl155852%_))
                                         (_%$target155857%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd155859%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl155861%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp155863%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e155865%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd155867%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl155869%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars155871%_
                                          (_%splice-vars155691%_ _%hd155853%_))
                                         (_%lvars155873%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars155871%_)))
                                         (_%tlvars155875%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars155871%_)))
                                         (_%linit155879%_
                                          (map (lambda (_%var155877%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars155873%_)))
                                    (letrec ((_%make-loop155882%_
                                              (lambda (_%vars155886%_)
                                                (let ((__tmp156853
                                                       (cons (cons (cons _%$lp155863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp156866
                                        (cons _%$hd155859%_ _%lvars155873%_))
                                       (__tmp156854
                                        (let ((__tmp156865
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd155859%_)))
                                              (__tmp156859
                                               (let ((__tmp156864
                                                      (cons (cons (cons _%$lp-e155865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e155496%_
                                   _%$hd155859%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp156860
                                                      (let ((__tmp156863
                                                             (cons (cons (cons _%$lp-hd155867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e155865%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl155869%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e155865%_))
                                             '()))
                                 '())))
                    (__tmp156861
                     (_%recur155689%_
                      _%hd155853%_
                      '()
                      _%$lp-hd155867%_
                      _%E155783%_
                      (lambda (_%hdvars155888%_)
                        (cons _%$lp155863%_
                              (cons _%$lp-tl155869%_
                                    (map (lambda (_%svar155890%_
                                                  _%lvar155891%_)
                                           (let ((__tmp156862
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar155890%_
                                                     _%hdvars155888%_
                                                     _%BUG155688%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp156862
                                              _%lvar155891%_)))
                                         _%svars155871%_
                                         _%lvars155873%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp156863 __tmp156861))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp156864
                                                  __tmp156860)))
                                              (__tmp156855
                                               (let ((__tmp156858
                                                      (map (lambda (_%lvar155893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar155894%_)
                     (cons (cons _%tlvar155894%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar155893%_))
                                 '())))
                   _%lvars155873%_
                   _%tlvars155875%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp156856
                                                      (_%k155784%_
                                                       (let ((__tmp156857
                                                              (lambda (_%svar155896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar155897%_
                               _%r155898%_)
                        (cons (cons _%svar155896%_ _%tlvar155897%_)
                              _%r155898%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp156857
                  _%vars155886%_
                  _%svars155871%_
                  _%tlvars155875%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp156858
                                                  __tmp156856))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp156865
                                           __tmp156859
                                           __tmp156855))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp156866
                                    __tmp156854))
                                 '()))
                     '()))
              (__tmp156852
               (cons _%$lp155863%_ (cons _%$target155857%_ _%linit155879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp156853
                                                   __tmp156852)))))
                                      (let ((_%body155884%_
                                             (let ((__tmp156868
                                                    (cons (cons (cons _%$target155857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl155861%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target155782%_
                                 _%rlen155855%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp156867
                                                    (_%recur155689%_
                                                     _%tl155852%_
                                                     _%vars155781%_
                                                     _%$tl155861%_
                                                     _%E155783%_
                                                     _%make-loop155882%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp156868
                                                __tmp156867))))
                                        (let ((__tmp156872
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target155782%_)))
                                              (__tmp156869
                                               (if (zero? _%rlen155855%_)
                                                   _%body155884%_
                                                   (let ((__tmp156870
                                                          (let ((__tmp156871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target155782%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp156871 _%rlen155855%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp156870
                                                      _%body155884%_
                                                      _%E155783%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp156872
                                           __tmp156869
                                           _%E155783%_))))))))
                          (if (pair? _%body155838155845%_)
                              (let ((_%hd155842155903%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body155838155845%_)))
                                    (_%tl155843155905%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body155838155845%_))))
                                (let* ((_%hd155908%_ _%hd155842155903%_)
                                       (_%tl155910%_ _%tl155843155905%_))
                                  (_%K155841155900%_
                                   _%tl155910%_
                                   _%hd155908%_)))
                              (_%E155840155849%_)))
                        (if (eq? 'null _%$e155802%_)
                            (let ((__tmp156874
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target155782%_)))
                                  (__tmp156873 (_%k155784%_ _%vars155781%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp156874
                               __tmp156873
                               _%E155783%_))
                            (if (eq? 'vector _%$e155802%_)
                                (let ((_%$e155912%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp156879
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target155782%_)))
                                        (__tmp156875
                                         (let ((__tmp156877
                                                (cons (cons (cons _%$e155912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp156878
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e155496%_
                                    _%target155782%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp156878))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp156876
                                                (_%recur155689%_
                                                 _%body155799%_
                                                 _%vars155781%_
                                                 _%$e155912%_
                                                 _%E155783%_
                                                 _%k155784%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp156877
                                            __tmp156876))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp156879
                                     __tmp156875
                                     _%E155783%_)))
                                (if (eq? 'box _%$e155802%_)
                                    (let ((_%$e155914%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp156884
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target155782%_)))
                                            (__tmp156880
                                             (let ((__tmp156882
                                                    (cons (cons (cons _%$e155914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp156883
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e155496%_
                                        _%target155782%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp156883))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp156881
                                                    (_%recur155689%_
                                                     _%body155799%_
                                                     _%vars155781%_
                                                     _%$e155914%_
                                                     _%E155783%_
                                                     _%k155784%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp156882
                                                __tmp156881))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp156884
                                         __tmp156880
                                         _%E155783%_)))
                                    (if (eq? 'datum _%$e155802%_)
                                        (let ((_%$e155916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp156890
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target155782%_)))
                                                (__tmp156885
                                                 (let ((__tmp156889
                                                        (cons (cons (cons _%$e155916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target155782%_))
                                  '()))
                      '()))
               (__tmp156886
                (let ((__tmp156888
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e155916%_ _%body155799%_)))
                      (__tmp156887 (_%k155784%_ _%vars155781%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp156888 __tmp156887 _%E155783%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp156889
                                                    __tmp156886))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp156890
                                             __tmp156885
                                             _%E155783%_)))
                                        (_%BUG155688%_
                                         _%e155780%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e155785155792%_)
                                      (let ((_%hd155789155921%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e155785155792%_)))
                                            (_%tl155790155923%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e155785155792%_))))
                                        (let* ((_%tag155926%_
                                                _%hd155789155921%_)
                                               (_%body155928%_
                                                _%tl155790155923%_))
                                          (_%K155788155918%_
                                           _%body155928%_
                                           _%tag155926%_)))
                                      (_%E155787155796%_)))))
                             (_%splice-rlen155690%_
                              (lambda (_%e155742%_)
                                (let _%lp155744%_ ((_%e155746%_ _%e155742%_)
                                                   (_%n155747%_ '0))
                                  (let* ((_%e155748155755%_ _%e155746%_)
                                         (_%E155750155759%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e155748155755%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K155751155768%_
                                          (lambda (_%body155762%_
                                                   _%tag155763%_)
                                            (let ((_%$e155765%_ _%tag155763%_))
                                              (if (eq? 'splice _%$e155765%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx155494%_
                                                     _%where155681%_))
                                                  (if (eq? 'cons _%$e155765%_)
                                                      (_%lp155744%_
                                                       (cdr _%body155762%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n155747%_
                                                                '1)))
                                                      _%n155747%_))))))
                                    (if (pair? _%e155748155755%_)
                                        (let ((_%hd155752155771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155748155755%_)))
                                              (_%tl155753155773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155748155755%_))))
                                          (let* ((_%tag155776%_
                                                  _%hd155752155771%_)
                                                 (_%body155778%_
                                                  _%tl155753155773%_))
                                            (_%K155751155768%_
                                             _%body155778%_
                                             _%tag155776%_)))
                                        (_%E155750155759%_))))))
                             (_%splice-vars155691%_
                              (lambda (_%e155698%_)
                                (let _%recur155700%_ ((_%e155702%_ _%e155698%_)
                                                      (_%vars155703%_ '()))
                                  (let* ((_%e155704155711%_ _%e155702%_)
                                         (_%E155706155715%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e155704155711%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K155707155730%_
                                          (lambda (_%body155718%_
                                                   _%tag155719%_)
                                            (let ((_%$e155721%_ _%tag155719%_))
                                              (if (eq? 'var _%$e155721%_)
                                                  (cons _%body155718%_
                                                        _%vars155703%_)
                                                  (if (or (eq? 'cons
                                                               _%$e155721%_)
                                                          (eq? 'splice
                                                               _%$e155721%_))
                                                      (_%recur155700%_
                                                       (cdr _%body155718%_)
                                                       (_%recur155700%_
                                                        (car _%body155718%_)
                                                        _%vars155703%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e155721%_)
                      (eq? 'box _%$e155721%_))
                  (_%recur155700%_ _%body155718%_ _%vars155703%_)
                  _%vars155703%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e155704155711%_)
                                        (let ((_%hd155708155733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155704155711%_)))
                                              (_%tl155709155735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155704155711%_))))
                                          (let* ((_%tag155738%_
                                                  _%hd155708155733%_)
                                                 (_%body155740%_
                                                  _%tl155709155735%_))
                                            (_%K155707155730%_
                                             _%body155740%_
                                             _%tag155738%_)))
                                        (_%E155706155715%_))))))
                             (_%make-body155692%_
                              (lambda (_%vars155694%_)
                                (cons _%K155685%_
                                      (map (lambda (_%mvar155696%_)
                                             (let ((__tmp156891
                                                    (car _%mvar155696%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp156891
                                                _%vars155694%_
                                                _%BUG155688%_)))
                                           _%mvars155684%_)))))
                      (_%recur155689%_
                       _%hd155683%_
                       '()
                       _%target155682%_
                       _%E155686%_
                       _%make-body155692%_))))
                 (_%parse-clause155503%_
                  (lambda (_%hd155575%_ _%ids155576%_)
                    (let _%recur155578%_ ((_%e155580%_ _%hd155575%_)
                                          (_%vars155581%_ '())
                                          (_%depth155582%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e155580%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e155580%_))
                              (values '(any) _%vars155581%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e155580%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx155494%_
                                     _%hd155575%_))
                                  (if (let ((__tmp156892
                                             (lambda (_%id155587%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e155580%_
                                                  _%id155587%_)))))
                                        (declare (not safe))
                                        (__find __tmp156892 _%ids155576%_))
                                      (values (cons 'id _%e155580%_)
                                              _%vars155581%_)
                                      (if (let ((__tmp156893
                                                 (lambda (_%var155590%_)
                                                   (let ((__tmp156894
                                                          (car _%var155590%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e155580%_
                                                      __tmp156894)))))
                                            (declare (not safe))
                                            (__find __tmp156893
                                                    _%vars155581%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx155494%_
                                             _%e155580%_))
                                          (values (cons 'var _%e155580%_)
                                                  (cons (cons _%e155580%_
                                                              _%depth155582%_)
                                                        _%vars155581%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e155580%_))
                              (let* ((_%e155594155601%_ _%e155580%_)
                                     (_%E155596155605%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e155594155601%_))))
                                     (_%E155595155666%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e155594155601%_))
                                            (let ((_%e155597155609%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e155594155601%_))))
                                              (let ((_%hd155598155612%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e155597155609%_)))
                                                    (_%tl155599155614%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e155597155609%_))))
                                                (let* ((_%hd155617%_
                                                        _%hd155598155612%_)
                                                       (_%rest155619%_
                                                        _%tl155599155614%_)
                                                       (_%make-pair155634%_
                                                        (lambda (_%tag155621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd155622%_
                         _%tl155623%_)
                  (let* ((_%hd-depth155625%_
                          (if (eq? _%tag155621%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth155582%_ '1))
                              _%depth155582%_))
                         (_g156895_
                          (_%recur155578%_
                           _%hd155622%_
                           _%vars155581%_
                           _%hd-depth155625%_)))
                    (begin
                      (let ((_g156896_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g156895_)
                                   (##values-length _g156895_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g156896_ 2)))
                            (error "Context expects 2 values" _g156896_)))
                      (let ((_%hd155627%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g156895_ 0)))
                            (_%vars155628%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g156895_ 1))))
                        (let ((_g156897_
                               (_%recur155578%_
                                _%tl155623%_
                                _%vars155628%_
                                _%depth155582%_)))
                          (begin
                            (let ((_g156898_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g156897_)
                                         (##values-length _g156897_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g156898_ 2)))
                                  (error "Context expects 2 values"
                                         _g156898_)))
                            (let ((_%tl155630%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g156897_ 0)))
                                  (_%vars155631%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g156897_ 1))))
                              (values (cons _%tag155621%_
                                            (cons _%hd155627%_ _%tl155630%_))
                                      _%vars155631%_)))))))))
               (_%e155635155642%_ _%rest155619%_)
               (_%E155637155646%_
                (lambda ()
                  (_%make-pair155634%_ 'cons _%hd155617%_ _%rest155619%_)))
               (_%E155636155662%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e155635155642%_))
                      (let ((_%e155638155650%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e155635155642%_))))
                        (let ((_%hd155639155653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155638155650%_)))
                              (_%tl155640155655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155638155650%_))))
                          (let* ((_%rest-hd155658%_ _%hd155639155653%_)
                                 (_%rest-tl155660%_ _%tl155640155655%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd155658%_))
                                (_%make-pair155634%_
                                 'splice
                                 _%hd155617%_
                                 _%rest-tl155660%_)
                                (_%make-pair155634%_
                                 'cons
                                 _%hd155617%_
                                 _%rest155619%_)))))
                      (_%E155637155646%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E155636155662%_))))
                                            (_%E155596155605%_)))))
                                (_%E155595155666%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e155580%_))
                                  (values '(null) _%vars155581%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e155580%_))
                                      (let ((_g156899_
                                             (_%recur155578%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e155580%_)))
                                              _%vars155581%_
                                              _%depth155582%_)))
                                        (begin
                                          (let ((_g156900_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g156899_)
                                                       (##values-length
                                                        _g156899_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g156900_ 2)))
                                                (error "Context expects 2 values"
                                                       _g156900_)))
                                          (let ((_%e155672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g156899_ 0)))
                                                (_%vars155673%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g156899_
                                                    1))))
                                            (values (cons 'vector _%e155672%_)
                                                    _%vars155673%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e155580%_))
                                          (let ((_g156901_
                                                 (_%recur155578%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e155580%_)))
                                                  _%vars155581%_
                                                  _%depth155582%_)))
                                            (begin
                                              (let ((_g156902_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g156901_)
                                                           (##values-length
                                                            _g156901_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g156902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g156902_)))
                                              (let ((_%e155676%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g156901_
                                                        0)))
                                                    (_%vars155677%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g156901_
                                                        1))))
                                                (values (cons 'box _%e155676%_)
                                                        _%vars155677%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e155580%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e155580%_)))
                                                      _%vars155581%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx155494%_
                                                 _%e155580%_))))))))))))
          (let* ((_%e155504155517%_ _%stx155494%_)
                 (_%E155506155521%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e155504155517%_))))
                 (_%E155505155571%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e155504155517%_))
                        (let ((_%e155507155525%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e155504155517%_))))
                          (let ((_%hd155508155528%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155507155525%_)))
                                (_%tl155509155530%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155507155525%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl155509155530%_))
                                (let ((_%e155510155533%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl155509155530%_))))
                                  (let ((_%hd155511155536%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155510155533%_)))
                                        (_%tl155512155538%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155510155533%_))))
                                    (let ((_%expr155541%_ _%hd155511155536%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl155512155538%_))
                                          (let ((_%e155513155543%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl155512155538%_))))
                                            (let ((_%hd155514155546%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e155513155543%_)))
                                                  (_%tl155515155548%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e155513155543%_))))
                                              (let* ((_%ids155551%_
                                                      _%hd155514155546%_)
                                                     (_%clauses155553%_
                                                      _%tl155515155548%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids155551%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses155553%_))
                                                        (let* ((_%ids155558%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids155551%_)))
                       (_%clauses155560%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses155553%_)))
                       (_%clause-ids155562%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses155560%_)))
                       (_%E155564%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target155566%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first155568%_
                        (if (null? _%clauses155560%_)
                            _%E155564%_
                            (car _%clause-ids155562%_))))
                  (let ((__tmp156904
                         (let ((__tmp156905
                                (let ((__tmp156907
                                       (let ((__tmp156909
                                              (cons (cons (cons _%E155564%_
                                                                '())
                                                          (cons (let ((__tmp156911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target155566%_ '()))
                              (__tmp156910
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target155566%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp156911 __tmp156910))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp156908
                                              (_%generate-body155500%_
                                               (_%generate-bindings155499%_
                                                _%target155566%_
                                                _%ids155558%_
                                                _%clauses155560%_
                                                _%clause-ids155562%_
                                                _%E155564%_)
                                               (cons _%first155568%_
                                                     (cons _%expr155541%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp156909
                                          __tmp156908)))
                                      (__tmp156906
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx155494%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp156907
                                   __tmp156906))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp156905)))
                        (__tmp156903
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx155494%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp156904 __tmp156903)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx155494%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx155494%_
                                                       _%ids155551%_))))))
                                          (_%E155506155521%_)))))
                                (_%E155506155521%_))))
                        (_%E155506155521%_)))))
            (_%E155505155571%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx156219%_)
        (let* ((_%identifier=?156221%_ 'free-identifier=?)
               (_%unwrap-e156223%_ 'syntax-e)
               (_%wrap-e156225%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx156219%_
           _%identifier=?156221%_
           _%unwrap-e156223%_
           _%wrap-e156225%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx156227%_ _%identifier=?156228%_)
        (let* ((_%unwrap-e156230%_ 'syntax-e) (_%wrap-e156232%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx156227%_
           _%identifier=?156228%_
           _%unwrap-e156230%_
           _%wrap-e156232%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx156234%_ _%identifier=?156235%_ _%unwrap-e156236%_)
        (let ((_%wrap-e156238%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx156234%_
           _%identifier=?156235%_
           _%unwrap-e156236%_
           _%wrap-e156238%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g156912_
        (let ((_g156913_ (let () (declare (not safe)) (##length _g156912_))))
          (cond ((let () (declare (not safe)) (##fx= _g156913_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g156912_))
                ((let () (declare (not safe)) (##fx= _g156913_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g156912_))
                ((let () (declare (not safe)) (##fx= _g156913_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g156912_))
                ((let () (declare (not safe)) (##fx= _g156913_ 4))
                 (apply gx#macro-expand-syntax-case__% _g156912_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g156912_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx155491%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx155491%_))
            (let ((__tmp156914
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx155491%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp156914 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd155449%_ . _%rest155450%_)
        (let ((_%len155452%_ (length _%hd155449%_)))
          (let _%lp155454%_ ((_%rest155456%_ _%rest155450%_))
            (let* ((_%rest155457155465%_ _%rest155456%_)
                   (_%else155459155473%_ (lambda () '#!void))
                   (_%K155461155479%_
                    (lambda (_%rest155476%_ _%hd155477%_)
                      (if (let ((__tmp156915 (length _%hd155477%_)))
                            (declare (not safe))
                            (##fx= _%len155452%_ __tmp156915))
                          (_%lp155454%_ _%rest155476%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd155477%_))))))
              (if (pair? _%rest155457155465%_)
                  (let ((_%hd155462155482%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest155457155465%_)))
                        (_%tl155463155484%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest155457155465%_))))
                    (let* ((_%hd155487%_ _%hd155462155482%_)
                           (_%rest155489%_ _%tl155463155484%_))
                      (_%K155461155479%_ _%rest155489%_ _%hd155487%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx155399%_ _%n155400%_)
        (let _%lp155402%_ ((_%rest155405%_ _%stx155399%_) (_%r155407%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest155405%_))
              (let* ((_%g155409155416%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest155405%_)))
                     (_%E155411155420%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g155409155416%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K155412155427%_
                      (lambda (_%rest155423%_ _%hd155424%_)
                        (_%lp155402%_
                         _%rest155423%_
                         (cons _%hd155424%_ _%r155407%_)))))
                (if (pair? _%g155409155416%_)
                    (let ((_%hd155413155430%_
                           (let ()
                             (declare (not safe))
                             (##car _%g155409155416%_)))
                          (_%tl155414155432%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g155409155416%_))))
                      (let* ((_%hd155435%_ _%hd155413155430%_)
                             (_%rest155437%_ _%tl155414155432%_))
                        (_%K155412155427%_ _%rest155437%_ _%hd155435%_)))
                    (_%E155411155420%_)))
              (let _%lp155439%_ ((_%n155441%_ _%n155400%_)
                                 (_%l155442%_ _%r155407%_)
                                 (_%r155444%_ _%rest155405%_))
                (if (null? _%l155442%_)
                    (values _%l155442%_ _%r155444%_)
                    (if (fxpositive? _%n155441%_)
                        (_%lp155439%_
                         (let () (declare (not safe)) (##fx- _%n155441%_ '1))
                         (cdr _%l155442%_)
                         (cons (car _%l155442%_) _%r155444%_))
                        (values (reverse! _%l155442%_) _%r155444%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx155349%_ _%n155350%_)
        (let _%lp155352%_ ((_%rest155355%_ _%stx155349%_) (_%r155357%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest155355%_))
              (let* ((_%g155359155366%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest155355%_)))
                     (_%E155361155370%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g155359155366%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K155362155377%_
                      (lambda (_%rest155373%_ _%hd155374%_)
                        (_%lp155352%_
                         _%rest155373%_
                         (cons _%hd155374%_ _%r155357%_)))))
                (if (pair? _%g155359155366%_)
                    (let ((_%hd155363155380%_
                           (let ()
                             (declare (not safe))
                             (##car _%g155359155366%_)))
                          (_%tl155364155382%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g155359155366%_))))
                      (let* ((_%hd155385%_ _%hd155363155380%_)
                             (_%rest155387%_ _%tl155364155382%_))
                        (_%K155362155377%_ _%rest155387%_ _%hd155385%_)))
                    (_%E155361155370%_)))
              (let _%lp155389%_ ((_%n155391%_ _%n155350%_)
                                 (_%l155392%_ _%r155357%_)
                                 (_%r155394%_ _%rest155355%_))
                (if (null? _%l155392%_)
                    (vector _%l155392%_ _%r155394%_)
                    (if (fxpositive? _%n155391%_)
                        (_%lp155389%_
                         (let () (declare (not safe)) (##fx- _%n155391%_ '1))
                         (cdr _%l155392%_)
                         (cons (car _%l155392%_) _%r155394%_))
                        (vector (reverse! _%l155392%_) _%r155394%_))))))))))
