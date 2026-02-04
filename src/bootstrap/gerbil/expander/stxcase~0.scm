(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1770248971)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp156670 (list gx#expander::t))
            (__tmp156669 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp156670
         '(id depth)
         __tmp156669
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args156666%_
        (apply make-instance gx#syntax-pattern::t _%$args156666%_)))
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
      (lambda (_%self156652%_ _%stx156653%_)
        (let ((_%self156656%_ _%self156652%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx156653%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx156119%_)
        (letrec ((_%generate156121%_
                  (lambda (_%e156361%_)
                    (letrec ((_%BUG156363%_
                              (lambda (_%q156528%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx156119%_
                                         _%e156361%_
                                         _%q156528%_))))
                             (_%local-pattern-e156364%_
                              (lambda (_%pat156526%_)
                                (let ((__tmp156671
                                       (##structure-ref
                                        _%pat156526%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp156671))))
                             (_%getvar156365%_
                              (lambda (_%q156523%_ _%vars156524%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q156523%_
                                   _%vars156524%_
                                   _%BUG156363%_))))
                             (_%getarg156366%_
                              (lambda (_%arg156489%_ _%vars156490%_)
                                (let* ((_%arg156491156498%_ _%arg156489%_)
                                       (_%E156493156502%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg156491156498%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K156494156511%_
                                        (lambda (_%e156505%_ _%tag156506%_)
                                          (let ((_%$e156508%_ _%tag156506%_))
                                            (if (eq? 'ref _%$e156508%_)
                                                (_%getvar156365%_
                                                 _%e156505%_
                                                 _%vars156490%_)
                                                (if (eq? 'pattern _%$e156508%_)
                                                    (_%local-pattern-e156364%_
                                                     _%e156505%_)
                                                    (_%BUG156363%_
                                                     _%arg156489%_)))))))
                                  (if (pair? _%arg156491156498%_)
                                      (let ((_%hd156495156514%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg156491156498%_)))
                                            (_%tl156496156516%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg156491156498%_))))
                                        (let* ((_%tag156519%_
                                                _%hd156495156514%_)
                                               (_%e156521%_
                                                _%tl156496156516%_))
                                          (_%K156494156511%_
                                           _%e156521%_
                                           _%tag156519%_)))
                                      (_%E156493156502%_))))))
                      (let _%recur156368%_ ((_%e156370%_ _%e156361%_)
                                            (_%vars156371%_ '()))
                        (let* ((_%e156372156379%_ _%e156370%_)
                               (_%E156374156383%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e156372156379%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K156375156477%_
                                (lambda (_%body156386%_ _%tag156387%_)
                                  (let ((_%$e156389%_ _%tag156387%_))
                                    (if (eq? 'datum _%$e156389%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body156386%_))
                                        (if (eq? 'term _%$e156389%_)
                                            (let ((_%id156392%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body156386%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id156392%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks156395%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id156392%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks156395%_)
                                                        (let ((__tmp156672
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body156386%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp156672))
                (let ((__tmp156674
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body156386%_)))
                      (__tmp156673
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body156386%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp156674
                   __tmp156673
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id156392%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body156386%_))
                                                      (_%BUG156363%_
                                                       _%e156370%_))))
                                            (if (eq? 'pattern _%$e156389%_)
                                                (_%local-pattern-e156364%_
                                                 _%body156386%_)
                                                (if (eq? 'ref _%$e156389%_)
                                                    (_%getvar156365%_
                                                     _%body156386%_
                                                     _%vars156371%_)
                                                    (if (eq? 'cons
                                                             _%$e156389%_)
                                                        (let ((__tmp156676
                                                               (_%recur156368%_
                                                                (car _%body156386%_)
                                                                _%vars156371%_))
                                                              (__tmp156675
                                                               (_%recur156368%_
                                                                (cdr _%body156386%_)
                                                                _%vars156371%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp156676
                                                           __tmp156675))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e156389%_)
                    (let ((__tmp156677
                           (_%recur156368%_ _%body156386%_ _%vars156371%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp156677))
                    (if (eq? 'box _%$e156389%_)
                        (let ((__tmp156678
                               (_%recur156368%_
                                _%body156386%_
                                _%vars156371%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp156678))
                        (if (eq? 'splice _%$e156389%_)
                            (let* ((_%body156398156409%_ _%body156386%_)
                                   (_%E156400156413%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body156398156409%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K156401156451%_
                                    (lambda (_%args156416%_
                                             _%iv156417%_
                                             _%hd156418%_
                                             _%depth156419%_)
                                      (let* ((_%targets156425%_
                                              (map (lambda (_%g156420156422%_)
                                                     (_%getarg156366%_
                                                      _%g156420156422%_
                                                      _%vars156371%_))
                                                   _%args156416%_))
                                             (_%fold-in156427%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args156416%_)))
                                             (_%fold-out156429%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args156431%_
                                              (let ((__tmp156679
                                                     (cons _%fold-out156429%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp156679
                                                 _%fold-in156427%_)))
                                             (_%lambda-body156448%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth156419%_ '1))
                                                  (let ((_%r-args156439%_
                                                         (map (lambda (_%arg156433%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg156433%_)))
                      _%args156416%_))
                (_%r-vars156440%_
                 (let ((__tmp156680
                        (lambda (_%arg156435%_ _%var156436%_ _%r156437%_)
                          (cons (cons (cdr _%arg156435%_) _%var156436%_)
                                _%r156437%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp156680
                    _%vars156371%_
                    _%args156416%_
                    _%fold-in156427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur156368%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth156419%_ '1))
                         (cons _%hd156418%_
                               (cons (cons 'var _%fold-out156429%_)
                                     _%r-args156439%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars156440%_))
                                                  (let* ((_%hd-vars156446%_
                                                          (let ((__tmp156681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg156442%_ _%var156443%_ _%r156444%_)
                           (cons (cons (cdr _%arg156442%_) _%var156443%_)
                                 _%r156444%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp156681
                     _%vars156371%_
                     _%args156416%_
                     _%fold-in156427%_)))
                 (__tmp156682
                  (_%recur156368%_ _%hd156418%_ _%hd-vars156446%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp156682
                                                     _%fold-out156429%_)))))
                                        (let ((__tmp156686
                                               (if (let ((__tmp156687
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets156425%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp156687 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets156425%_))
                                                   '#!void))
                                              (__tmp156683
                                               (let ((__tmp156685
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args156431%_
                                                         _%lambda-body156448%_)))
                                                     (__tmp156684
                                                      (_%recur156368%_
                                                       _%iv156417%_
                                                       _%vars156371%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp156685
                                                  __tmp156684
                                                  _%targets156425%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp156686
                                           __tmp156683))))))
                              (if (pair? _%body156398156409%_)
                                  (let ((_%hd156402156454%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body156398156409%_)))
                                        (_%tl156403156456%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body156398156409%_))))
                                    (let ((_%depth156459%_ _%hd156402156454%_))
                                      (if (pair? _%tl156403156456%_)
                                          (let ((_%hd156404156461%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl156403156456%_)))
                                                (_%tl156405156463%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl156403156456%_))))
                                            (let ((_%hd156466%_
                                                   _%hd156404156461%_))
                                              (if (pair? _%tl156405156463%_)
                                                  (let ((_%hd156406156468%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl156405156463%_)))
                                                        (_%tl156407156470%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl156405156463%_))))
                                                    (let* ((_%iv156473%_
                                                            _%hd156406156468%_)
                                                           (_%args156475%_
                                                            _%tl156407156470%_))
                                                      (_%K156401156451%_
                                                       _%args156475%_
                                                       _%iv156473%_
                                                       _%hd156466%_
                                                       _%depth156459%_)))
                                                  (_%E156400156413%_))))
                                          (_%E156400156413%_))))
                                  (_%E156400156413%_)))
                            (if (eq? 'var _%$e156389%_)
                                _%body156386%_
                                (_%BUG156363%_ _%e156370%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e156372156379%_)
                              (let ((_%hd156376156480%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e156372156379%_)))
                                    (_%tl156377156482%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e156372156379%_))))
                                (let* ((_%tag156485%_ _%hd156376156480%_)
                                       (_%body156487%_ _%tl156377156482%_))
                                  (_%K156375156477%_
                                   _%body156487%_
                                   _%tag156485%_)))
                              (_%E156374156383%_)))))))
                 (_%parse156122%_
                  (lambda (_%e156163%_)
                    (letrec ((_%make-cons156165%_
                              (lambda (_%hd156353%_ _%tl156354%_)
                                (let ((_g156688_ _%hd156353%_)
                                      (_g156690_ _%tl156354%_))
                                  (begin
                                    (let ((_g156689_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156688_)
                                                 (##values-length _g156688_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156689_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156689_)))
                                    (let ((_g156691_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156690_)
                                                 (##values-length _g156690_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156691_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156691_)))
                                    (let ((_%hd-e156356%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156688_ 0)))
                                          (_%hd-vars156357%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156688_ 1))))
                                      (let ((_%tl-e156358%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156690_ 0)))
                                            (_%tl-vars156359%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156690_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e156356%_
                                                            _%tl-e156358%_))
                                                (append _%hd-vars156357%_
                                                        _%tl-vars156359%_))))))))
                             (_%make-splice156166%_
                              (lambda (_%where156289%_
                                       _%depth156290%_
                                       _%hd156291%_
                                       _%tl156292%_)
                                (let ((_g156692_ _%hd156291%_)
                                      (_g156694_ _%tl156292%_))
                                  (begin
                                    (let ((_g156693_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156692_)
                                                 (##values-length _g156692_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156693_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156693_)))
                                    (let ((_g156695_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156694_)
                                                 (##values-length _g156694_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156695_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156695_)))
                                    (let ((_%hd-e156294%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156692_ 0)))
                                          (_%hd-vars156295%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156692_ 1))))
                                      (let ((_%tl-e156296%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156694_ 0)))
                                            (_%tl-vars156297%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156694_ 1))))
                                        (let _%lp156299%_ ((_%rest156301%_
                                                            _%hd-vars156295%_)
                                                           (_%targets156302%_
                                                            '())
                                                           (_%vars156303%_
                                                            _%tl-vars156297%_))
                                          (let* ((_%rest156304156314%_
                                                  _%rest156301%_)
                                                 (_%else156306156322%_
                                                  (lambda ()
                                                    (if (null? _%targets156302%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx156119%_
                                                           _%where156289%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth156290%_
                                    (cons _%hd-e156294%_
                                          (cons _%tl-e156296%_
                                                _%targets156302%_))))
                        _%vars156303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K156308156334%_
                                                  (lambda (_%rest156325%_
                                                           _%hd-pat156326%_
                                                           _%hd-depth*156327%_)
                                                    (let ((_%hd-depth156329%_
                                                           (fx- _%hd-depth*156327%_
                                                                _%depth156290%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth156329%_))
                                                          (_%lp156299%_
                                                           _%rest156325%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat156326%_)
                         _%targets156302%_)
                   (cons (cons _%hd-depth156329%_ _%hd-pat156326%_)
                         _%vars156303%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth156329%_))
                      (_%lp156299%_
                       _%rest156325%_
                       (cons (cons 'pattern _%hd-pat156326%_)
                             _%targets156302%_)
                       _%vars156303%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx156119%_
                         _%where156289%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest156304156314%_)
                                                (let ((_%hd156309156337%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest156304156314%_)))
                                                      (_%tl156310156339%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest156304156314%_))))
                                                  (if (pair? _%hd156309156337%_)
                                                      (let ((_%hd156311156342%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd156309156337%_)))
                    (_%tl156312156344%_
                     (let () (declare (not safe)) (##cdr _%hd156309156337%_))))
                (let* ((_%hd-depth*156347%_ _%hd156311156342%_)
                       (_%hd-pat156349%_ _%tl156312156344%_)
                       (_%rest156351%_ _%tl156310156339%_))
                  (_%K156308156334%_
                   _%rest156351%_
                   _%hd-pat156349%_
                   _%hd-depth*156347%_)))
              (_%else156306156322%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else156306156322%_))))))))))
                             (_%recur156167%_
                              (lambda (_%e156172%_ _%is-e?156173%_)
                                (if (_%is-e?156173%_ _%e156172%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx156119%_))
                                    (if (gx#syntax-local-pattern? _%e156172%_)
                                        (let* ((_%pat156177%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e156172%_)))
                                               (_%depth156179%_
                                                (##structure-ref
                                                 _%pat156177%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth156179%_)
                                              (values (cons 'ref _%pat156177%_)
                                                      (cons (cons _%depth156179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat156177%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat156177%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e156172%_))
                                            (values (cons 'term _%e156172%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e156172%_))
                                                (let* ((_%e156183156190%_
                                                        _%e156172%_)
                                                       (_%E156185156194%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e156183156190%_))))
                                                       (_%E156184156276%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e156183156190%_))
                      (let ((_%e156186156198%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e156183156190%_))))
                        (let ((_%hd156187156201%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e156186156198%_)))
                              (_%tl156188156203%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e156186156198%_))))
                          (let* ((_%hd156206%_ _%hd156187156201%_)
                                 (_%rest156208%_ _%tl156188156203%_))
                            (if (_%is-e?156173%_ _%hd156206%_)
                                (let* ((_%e156209156216%_ _%rest156208%_)
                                       (_%E156211156220%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx156119%_
                                             _%e156172%_))))
                                       (_%E156210156234%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e156209156216%_))
                                              (let ((_%e156212156224%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e156209156216%_))))
                                                (let ((_%hd156213156227%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e156212156224%_)))
                                                      (_%tl156214156229%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e156212156224%_))))
                                                  (let ((_%rest156232%_
                                                         _%hd156213156227%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl156214156229%_))
                                                        (_%recur156167%_
                                                         _%rest156232%_
                                                         false)
                                                        (_%E156211156220%_)))))
                                              (_%E156211156220%_)))))
                                  (_%E156210156234%_))
                                (let _%lp156238%_ ((_%rest156240%_
                                                    _%rest156208%_)
                                                   (_%depth156241%_ '0))
                                  (let* ((_%e156242156249%_ _%rest156240%_)
                                         (_%E156244156253%_
                                          (lambda ()
                                            (if (fxpositive? _%depth156241%_)
                                                (_%make-splice156166%_
                                                 _%e156172%_
                                                 _%depth156241%_
                                                 (_%recur156167%_
                                                  _%hd156206%_
                                                  _%is-e?156173%_)
                                                 (_%recur156167%_
                                                  _%rest156240%_
                                                  _%is-e?156173%_))
                                                (_%make-cons156165%_
                                                 (_%recur156167%_
                                                  _%hd156206%_
                                                  _%is-e?156173%_)
                                                 (_%recur156167%_
                                                  _%rest156240%_
                                                  _%is-e?156173%_)))))
                                         (_%E156243156272%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e156242156249%_))
                                                (let ((_%e156245156257%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e156242156249%_))))
                                                  (let ((_%hd156246156260%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e156245156257%_)))
                                                        (_%tl156247156262%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e156245156257%_))))
                                                    (let* ((_%rest-hd156265%_
                                                            _%hd156246156260%_)
                                                           (_%rest-tl156267%_
                                                            _%tl156247156262%_))
                                                      (if (_%is-e?156173%_
                                                           _%rest-hd156265%_)
                                                          (_%lp156238%_
                                                           _%rest-tl156267%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth156241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth156241%_)
                      (_%make-splice156166%_
                       _%e156172%_
                       _%depth156241%_
                       (_%recur156167%_ _%hd156206%_ _%is-e?156173%_)
                       (_%recur156167%_ _%rest156240%_ _%is-e?156173%_))
                      (_%make-cons156165%_
                       (_%recur156167%_ _%hd156206%_ _%is-e?156173%_)
                       (_%recur156167%_ _%rest156240%_ _%is-e?156173%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E156244156253%_)))))
                                    (_%E156243156272%_)))))))
                      (_%E156185156194%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E156184156276%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e156172%_))
                                                    (let ((_g156696_
                                                           (_%recur156167%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e156172%_)))
                    _%is-e?156173%_)))
              (begin
                (let ((_g156697_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g156696_)
                             (##values-length _g156696_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g156697_ 2)))
                      (error "Context expects 2 values" _g156697_)))
                (let ((_%e156281%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g156696_ 0)))
                      (_%vars156282%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g156696_ 1))))
                  (values (cons 'vector _%e156281%_) _%vars156282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e156172%_))
                                                        (let ((_g156698_
                                                               (_%recur156167%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e156172%_)))
                        _%is-e?156173%_)))
                  (begin
                    (let ((_g156699_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g156698_)
                                 (##values-length _g156698_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g156699_ 2)))
                          (error "Context expects 2 values" _g156699_)))
                    (let ((_%e156285%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g156698_ 0)))
                          (_%vars156286%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g156698_ 1))))
                      (values (cons 'box _%e156285%_) _%vars156286%_))))
                (values (cons 'datum _%e156172%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g156700_
                             (_%recur156167%_ _%e156163%_ gx#ellipsis?)))
                        (begin
                          (let ((_g156701_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g156700_)
                                       (##values-length _g156700_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g156701_ 2)))
                                (error "Context expects 2 values" _g156701_)))
                          (let ((_%tree156169%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g156700_ 0)))
                                (_%vars156170%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g156700_ 1))))
                            (if (null? _%vars156170%_)
                                _%tree156169%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx156119%_
                                   _%vars156170%_))))))))))
          (let* ((_%e156123156133%_ _%stx156119%_)
                 (_%E156125156137%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx156119%_))))
                 (_%E156124156159%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e156123156133%_))
                        (let ((_%e156126156141%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e156123156133%_))))
                          (let ((_%hd156127156144%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156126156141%_)))
                                (_%tl156128156146%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156126156141%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl156128156146%_))
                                (let ((_%e156129156149%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl156128156146%_))))
                                  (let ((_%hd156130156152%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e156129156149%_)))
                                        (_%tl156131156154%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e156129156149%_))))
                                    (let ((_%form156157%_ _%hd156130156152%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl156131156154%_))
                                          (let ((__tmp156703
                                                 (_%generate156121%_
                                                  (_%parse156122%_
                                                   _%form156157%_)))
                                                (__tmp156702
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx156119%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp156703
                                             __tmp156702))
                                          (_%E156125156137%_)))))
                                (_%E156125156137%_))))
                        (_%E156125156137%_)))))
            (_%E156124156159%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx155368%_
               _%identifier=?155369%_
               _%unwrap-e155370%_
               _%wrap-e155371%_)
        (letrec ((_%generate-bindings155373%_
                  (lambda (_%target155983%_
                           _%ids155984%_
                           _%clauses155985%_
                           _%clause-ids155986%_
                           _%E155987%_)
                    (letrec ((_%generate1155989%_
                              (lambda (_%clause156086%_
                                       _%clause-id156087%_
                                       _%E156088%_)
                                (cons (cons _%clause-id156087%_ '())
                                      (cons (let ((__tmp156705
                                                   (cons _%target155983%_ '()))
                                                  (__tmp156704
                                                   (_%generate-clause155375%_
                                                    _%target155983%_
                                                    _%ids155984%_
                                                    _%clause156086%_
                                                    _%E156088%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp156705
                                               __tmp156704))
                                            '())))))
                      (let _%lp155991%_ ((_%rest155993%_ _%clauses155985%_)
                                         (_%rest-ids155994%_
                                          _%clause-ids155986%_)
                                         (_%bindings155995%_ '()))
                        (let* ((_%rest155996156004%_ _%rest155993%_)
                               (_%else155998156012%_
                                (lambda () _%bindings155995%_))
                               (_%K156000156074%_
                                (lambda (_%rest156015%_ _%clause156016%_)
                                  (let* ((_%rest-ids156017156024%_
                                          _%rest-ids155994%_)
                                         (_%E156019156028%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids156017156024%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K156020156062%_
                                          (lambda (_%rest-ids156031%_
                                                   _%clause-id156032%_)
                                            (let* ((_%rest-ids156033156041%_
                                                    _%rest-ids156031%_)
                                                   (_%else156035156049%_
                                                    (lambda ()
                                                      (cons (_%generate1155989%_
                                                             _%clause156016%_
                                                             _%clause-id156032%_
                                                             _%E155987%_)
                                                            _%bindings155995%_)))
                                                   (_%K156037156054%_
                                                    (lambda (_%next-clause-id156052%_)
                                                      (_%lp155991%_
                                                       _%rest156015%_
                                                       _%rest-ids156031%_
                                                       (cons (_%generate1155989%_
                                                              _%clause156016%_
                                                              _%clause-id156032%_
                                                              _%next-clause-id156052%_)
                                                             _%bindings155995%_)))))
                                              (if (pair? _%rest-ids156033156041%_)
                                                  (let* ((_%hd156038156057%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids156033156041%_)))
                                                         (_%next-clause-id156060%_
                                                          _%hd156038156057%_))
                                                    (_%K156037156054%_
                                                     _%next-clause-id156060%_))
                                                  (_%else156035156049%_))))))
                                    (if (pair? _%rest-ids156017156024%_)
                                        (let ((_%hd156021156065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids156017156024%_)))
                                              (_%tl156022156067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids156017156024%_))))
                                          (let* ((_%clause-id156070%_
                                                  _%hd156021156065%_)
                                                 (_%rest-ids156072%_
                                                  _%tl156022156067%_))
                                            (_%K156020156062%_
                                             _%rest-ids156072%_
                                             _%clause-id156070%_)))
                                        (_%E156019156028%_))))))
                          (if (pair? _%rest155996156004%_)
                              (let ((_%hd156001156077%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest155996156004%_)))
                                    (_%tl156002156079%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest155996156004%_))))
                                (let* ((_%clause156082%_ _%hd156001156077%_)
                                       (_%rest156084%_ _%tl156002156079%_))
                                  (_%K156000156074%_
                                   _%rest156084%_
                                   _%clause156082%_)))
                              (_%else155998156012%_)))))))
                 (_%generate-body155374%_
                  (lambda (_%bindings155943%_ _%body155944%_)
                    (let _%recur155946%_ ((_%rest155948%_ _%bindings155943%_))
                      (let* ((_%rest155949155957%_ _%rest155948%_)
                             (_%else155951155965%_ (lambda () _%body155944%_))
                             (_%K155953155971%_
                              (lambda (_%rest155968%_ _%hd155969%_)
                                (let ((__tmp156707 (cons _%hd155969%_ '()))
                                      (__tmp156706
                                       (_%recur155946%_ _%rest155968%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp156707
                                   __tmp156706)))))
                        (if (pair? _%rest155949155957%_)
                            (let ((_%hd155954155974%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest155949155957%_)))
                                  (_%tl155955155976%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest155949155957%_))))
                              (let* ((_%hd155979%_ _%hd155954155974%_)
                                     (_%rest155981%_ _%tl155955155976%_))
                                (_%K155953155971%_
                                 _%rest155981%_
                                 _%hd155979%_)))
                            (_%else155951155965%_))))))
                 (_%generate-clause155375%_
                  (lambda (_%target155806%_
                           _%ids155807%_
                           _%clause155808%_
                           _%E155809%_)
                    (letrec ((_%generate1155811%_
                              (lambda (_%hd155898%_
                                       _%fender155899%_
                                       _%body155900%_)
                                (let ((_g156708_
                                       (_%parse-clause155377%_
                                        _%hd155898%_
                                        _%ids155807%_)))
                                  (begin
                                    (let ((_g156709_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156708_)
                                                 (##values-length _g156708_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156709_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156709_)))
                                    (let ((_%e155902%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156708_ 0)))
                                          (_%mvars155903%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156708_ 1))))
                                      (let* ((_%pvars155905%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars155903%_))))
                                             (_%E155907%_
                                              (cons _%E155809%_
                                                    (cons _%target155806%_
                                                          '())))
                                             (_%K155940%_
                                              (let ((__tmp156710
                                                     (let ((__tmp156712
                                                            (map (lambda (_%mvar155909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar155910%_)
                           (let* ((_%mvar155911155918%_ _%mvar155909%_)
                                  (_%E155913155922%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar155911155918%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K155914155928%_
                                   (lambda (_%depth155925%_ _%id155926%_)
                                     (cons _%id155926%_
                                           (cons (let ((__tmp156714
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id155926%_)))
                                                       (__tmp156713
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar155910%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp156714
                                                    __tmp156713
                                                    _%depth155925%_))
                                                 '())))))
                             (if (pair? _%mvar155911155918%_)
                                 (let ((_%hd155915155931%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar155911155918%_)))
                                       (_%tl155916155933%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar155911155918%_))))
                                   (let* ((_%id155936%_ _%hd155915155931%_)
                                          (_%depth155938%_ _%tl155916155933%_))
                                     (_%K155914155928%_
                                      _%depth155938%_
                                      _%id155936%_)))
                                 (_%E155913155922%_))))
                         _%mvars155903%_
                         _%pvars155905%_))
                   (__tmp156711
                    (if (eq? _%fender155899%_ '#t)
                        _%body155900%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender155899%_
                           _%body155900%_
                           _%E155907%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp156712 __tmp156711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars155905%_
                                                 __tmp156710))))
                                        (_%generate-match155376%_
                                         _%hd155898%_
                                         _%target155806%_
                                         _%e155902%_
                                         _%mvars155903%_
                                         _%K155940%_
                                         _%E155907%_))))))))
                      (let* ((_%e155812155832%_ _%clause155808%_)
                             (_%E155821155836%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e155812155832%_))))
                             (_%E155814155870%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e155812155832%_))
                                    (let ((_%e155822155840%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e155812155832%_))))
                                      (let ((_%hd155823155843%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e155822155840%_)))
                                            (_%tl155824155845%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e155822155840%_))))
                                        (let ((_%hd155848%_
                                               _%hd155823155843%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl155824155845%_))
                                              (let ((_%e155825155850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl155824155845%_))))
                                                (let ((_%hd155826155853%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155825155850%_)))
                                                      (_%tl155827155855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155825155850%_))))
                                                  (let ((_%fender155858%_
                                                         _%hd155826155853%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl155827155855%_))
                                                        (let ((_%e155828155860%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl155827155855%_))))
                  (let ((_%hd155829155863%_
                         (let ()
                           (declare (not safe))
                           (##car _%e155828155860%_)))
                        (_%tl155830155865%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e155828155860%_))))
                    (let ((_%body155868%_ _%hd155829155863%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl155830155865%_))
                          (_%generate1155811%_
                           _%hd155848%_
                           _%fender155858%_
                           _%body155868%_)
                          (_%E155821155836%_)))))
                (_%E155821155836%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E155821155836%_)))))
                                    (_%E155821155836%_))))
                             (_%E155813155894%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e155812155832%_))
                                    (let ((_%e155815155874%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e155812155832%_))))
                                      (let ((_%hd155816155877%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e155815155874%_)))
                                            (_%tl155817155879%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e155815155874%_))))
                                        (let ((_%hd155882%_
                                               _%hd155816155877%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl155817155879%_))
                                              (let ((_%e155818155884%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl155817155879%_))))
                                                (let ((_%hd155819155887%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155818155884%_)))
                                                      (_%tl155820155889%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155818155884%_))))
                                                  (let ((_%body155892%_
                                                         _%hd155819155887%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl155820155889%_))
                                                        (_%generate1155811%_
                                                         _%hd155882%_
                                                         '#t
                                                         _%body155892%_)
                                                        (_%E155814155870%_)))))
                                              (_%E155814155870%_)))))
                                    (_%E155814155870%_)))))
                        (_%E155813155894%_)))))
                 (_%generate-match155376%_
                  (lambda (_%where155555%_
                           _%target155556%_
                           _%hd155557%_
                           _%mvars155558%_
                           _%K155559%_
                           _%E155560%_)
                    (letrec ((_%BUG155562%_
                              (lambda (_%q155804%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx155368%_
                                         _%hd155557%_
                                         _%q155804%_))))
                             (_%recur155563%_
                              (lambda (_%e155654%_
                                       _%vars155655%_
                                       _%target155656%_
                                       _%E155657%_
                                       _%k155658%_)
                                (let* ((_%e155659155666%_ _%e155654%_)
                                       (_%E155661155670%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e155659155666%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K155662155792%_
                                        (lambda (_%body155673%_ _%tag155674%_)
                                          (let ((_%$e155676%_ _%tag155674%_))
                                            (if (eq? 'any _%$e155676%_)
                                                (_%k155658%_ _%vars155655%_)
                                                (if (eq? 'id _%$e155676%_)
                                                    (let ((__tmp156719
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target155656%_)))
                                                          (__tmp156715
                                                           (let ((__tmp156717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp156718
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e155371%_
                                    _%body155673%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?155369%_
                             __tmp156718
                             _%target155656%_)))
                         (__tmp156716 (_%k155658%_ _%vars155655%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp156717 __tmp156716 _%E155657%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp156719 __tmp156715 _%E155657%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e155676%_)
                                                        (_%k155658%_
                                                         (cons (cons _%body155673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target155656%_)
                       _%vars155655%_))
                (if (eq? 'cons _%$e155676%_)
                    (let ((_%$e155679%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd155680%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl155681%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp156725
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target155656%_)))
                            (__tmp156720
                             (let ((__tmp156724
                                    (cons (cons (cons _%$e155679%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e155370%_
                                                         _%target155656%_))
                                                      '()))
                                          '()))
                                   (__tmp156721
                                    (let ((__tmp156723
                                           (cons (cons (cons _%$hd155680%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e155679%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl155681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e155679%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp156722
                                           (let* ((_%body155682155689%_
                                                   _%body155673%_)
                                                  (_%E155684155693%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body155682155689%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K155685155701%_
                                                   (lambda (_%tl155696%_
                                                            _%hd155697%_)
                                                     (_%recur155563%_
                                                      _%hd155697%_
                                                      _%vars155655%_
                                                      _%$hd155680%_
                                                      _%E155657%_
                                                      (lambda (_%vars155699%_)
                                                        (_%recur155563%_
                                                         _%tl155696%_
                                                         _%vars155699%_
                                                         _%$tl155681%_
                                                         _%E155657%_
                                                         _%k155658%_))))))
                                             (if (pair? _%body155682155689%_)
                                                 (let ((_%hd155686155704%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body155682155689%_)))
                                                       (_%tl155687155706%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body155682155689%_))))
                                                   (let* ((_%hd155709%_
                                                           _%hd155686155704%_)
                                                          (_%tl155711%_
                                                           _%tl155687155706%_))
                                                     (_%K155685155701%_
                                                      _%tl155711%_
                                                      _%hd155709%_)))
                                                 (_%E155684155693%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp156723
                                       __tmp156722))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp156724
                                __tmp156721))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp156725
                         __tmp156720
                         _%E155657%_)))
                    (if (eq? 'splice _%$e155676%_)
                        (let* ((_%body155712155719%_ _%body155673%_)
                               (_%E155714155723%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body155712155719%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K155715155774%_
                                (lambda (_%tl155726%_ _%hd155727%_)
                                  (let* ((_%rlen155729%_
                                          (_%splice-rlen155564%_ _%tl155726%_))
                                         (_%$target155731%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd155733%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl155735%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp155737%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e155739%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd155741%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl155743%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars155745%_
                                          (_%splice-vars155565%_ _%hd155727%_))
                                         (_%lvars155747%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars155745%_)))
                                         (_%tlvars155749%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars155745%_)))
                                         (_%linit155753%_
                                          (map (lambda (_%var155751%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars155747%_)))
                                    (letrec ((_%make-loop155756%_
                                              (lambda (_%vars155760%_)
                                                (let ((__tmp156727
                                                       (cons (cons (cons _%$lp155737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp156740
                                        (cons _%$hd155733%_ _%lvars155747%_))
                                       (__tmp156728
                                        (let ((__tmp156739
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd155733%_)))
                                              (__tmp156733
                                               (let ((__tmp156738
                                                      (cons (cons (cons _%$lp-e155739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e155370%_
                                   _%$hd155733%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp156734
                                                      (let ((__tmp156737
                                                             (cons (cons (cons _%$lp-hd155741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e155739%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl155743%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e155739%_))
                                             '()))
                                 '())))
                    (__tmp156735
                     (_%recur155563%_
                      _%hd155727%_
                      '()
                      _%$lp-hd155741%_
                      _%E155657%_
                      (lambda (_%hdvars155762%_)
                        (cons _%$lp155737%_
                              (cons _%$lp-tl155743%_
                                    (map (lambda (_%svar155764%_
                                                  _%lvar155765%_)
                                           (let ((__tmp156736
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar155764%_
                                                     _%hdvars155762%_
                                                     _%BUG155562%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp156736
                                              _%lvar155765%_)))
                                         _%svars155745%_
                                         _%lvars155747%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp156737 __tmp156735))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp156738
                                                  __tmp156734)))
                                              (__tmp156729
                                               (let ((__tmp156732
                                                      (map (lambda (_%lvar155767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar155768%_)
                     (cons (cons _%tlvar155768%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar155767%_))
                                 '())))
                   _%lvars155747%_
                   _%tlvars155749%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp156730
                                                      (_%k155658%_
                                                       (let ((__tmp156731
                                                              (lambda (_%svar155770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar155771%_
                               _%r155772%_)
                        (cons (cons _%svar155770%_ _%tlvar155771%_)
                              _%r155772%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp156731
                  _%vars155760%_
                  _%svars155745%_
                  _%tlvars155749%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp156732
                                                  __tmp156730))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp156739
                                           __tmp156733
                                           __tmp156729))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp156740
                                    __tmp156728))
                                 '()))
                     '()))
              (__tmp156726
               (cons _%$lp155737%_ (cons _%$target155731%_ _%linit155753%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp156727
                                                   __tmp156726)))))
                                      (let ((_%body155758%_
                                             (let ((__tmp156742
                                                    (cons (cons (cons _%$target155731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl155735%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target155656%_
                                 _%rlen155729%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp156741
                                                    (_%recur155563%_
                                                     _%tl155726%_
                                                     _%vars155655%_
                                                     _%$tl155735%_
                                                     _%E155657%_
                                                     _%make-loop155756%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp156742
                                                __tmp156741))))
                                        (let ((__tmp156746
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target155656%_)))
                                              (__tmp156743
                                               (if (zero? _%rlen155729%_)
                                                   _%body155758%_
                                                   (let ((__tmp156744
                                                          (let ((__tmp156745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target155656%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp156745 _%rlen155729%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp156744
                                                      _%body155758%_
                                                      _%E155657%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp156746
                                           __tmp156743
                                           _%E155657%_))))))))
                          (if (pair? _%body155712155719%_)
                              (let ((_%hd155716155777%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body155712155719%_)))
                                    (_%tl155717155779%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body155712155719%_))))
                                (let* ((_%hd155782%_ _%hd155716155777%_)
                                       (_%tl155784%_ _%tl155717155779%_))
                                  (_%K155715155774%_
                                   _%tl155784%_
                                   _%hd155782%_)))
                              (_%E155714155723%_)))
                        (if (eq? 'null _%$e155676%_)
                            (let ((__tmp156748
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target155656%_)))
                                  (__tmp156747 (_%k155658%_ _%vars155655%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp156748
                               __tmp156747
                               _%E155657%_))
                            (if (eq? 'vector _%$e155676%_)
                                (let ((_%$e155786%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp156753
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target155656%_)))
                                        (__tmp156749
                                         (let ((__tmp156751
                                                (cons (cons (cons _%$e155786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp156752
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e155370%_
                                    _%target155656%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp156752))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp156750
                                                (_%recur155563%_
                                                 _%body155673%_
                                                 _%vars155655%_
                                                 _%$e155786%_
                                                 _%E155657%_
                                                 _%k155658%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp156751
                                            __tmp156750))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp156753
                                     __tmp156749
                                     _%E155657%_)))
                                (if (eq? 'box _%$e155676%_)
                                    (let ((_%$e155788%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp156758
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target155656%_)))
                                            (__tmp156754
                                             (let ((__tmp156756
                                                    (cons (cons (cons _%$e155788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp156757
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e155370%_
                                        _%target155656%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp156757))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp156755
                                                    (_%recur155563%_
                                                     _%body155673%_
                                                     _%vars155655%_
                                                     _%$e155788%_
                                                     _%E155657%_
                                                     _%k155658%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp156756
                                                __tmp156755))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp156758
                                         __tmp156754
                                         _%E155657%_)))
                                    (if (eq? 'datum _%$e155676%_)
                                        (let ((_%$e155790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp156764
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target155656%_)))
                                                (__tmp156759
                                                 (let ((__tmp156763
                                                        (cons (cons (cons _%$e155790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target155656%_))
                                  '()))
                      '()))
               (__tmp156760
                (let ((__tmp156762
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e155790%_ _%body155673%_)))
                      (__tmp156761 (_%k155658%_ _%vars155655%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp156762 __tmp156761 _%E155657%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp156763
                                                    __tmp156760))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp156764
                                             __tmp156759
                                             _%E155657%_)))
                                        (_%BUG155562%_
                                         _%e155654%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e155659155666%_)
                                      (let ((_%hd155663155795%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e155659155666%_)))
                                            (_%tl155664155797%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e155659155666%_))))
                                        (let* ((_%tag155800%_
                                                _%hd155663155795%_)
                                               (_%body155802%_
                                                _%tl155664155797%_))
                                          (_%K155662155792%_
                                           _%body155802%_
                                           _%tag155800%_)))
                                      (_%E155661155670%_)))))
                             (_%splice-rlen155564%_
                              (lambda (_%e155616%_)
                                (let _%lp155618%_ ((_%e155620%_ _%e155616%_)
                                                   (_%n155621%_ '0))
                                  (let* ((_%e155622155629%_ _%e155620%_)
                                         (_%E155624155633%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e155622155629%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K155625155642%_
                                          (lambda (_%body155636%_
                                                   _%tag155637%_)
                                            (let ((_%$e155639%_ _%tag155637%_))
                                              (if (eq? 'splice _%$e155639%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx155368%_
                                                     _%where155555%_))
                                                  (if (eq? 'cons _%$e155639%_)
                                                      (_%lp155618%_
                                                       (cdr _%body155636%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n155621%_
                                                                '1)))
                                                      _%n155621%_))))))
                                    (if (pair? _%e155622155629%_)
                                        (let ((_%hd155626155645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155622155629%_)))
                                              (_%tl155627155647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155622155629%_))))
                                          (let* ((_%tag155650%_
                                                  _%hd155626155645%_)
                                                 (_%body155652%_
                                                  _%tl155627155647%_))
                                            (_%K155625155642%_
                                             _%body155652%_
                                             _%tag155650%_)))
                                        (_%E155624155633%_))))))
                             (_%splice-vars155565%_
                              (lambda (_%e155572%_)
                                (let _%recur155574%_ ((_%e155576%_ _%e155572%_)
                                                      (_%vars155577%_ '()))
                                  (let* ((_%e155578155585%_ _%e155576%_)
                                         (_%E155580155589%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e155578155585%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K155581155604%_
                                          (lambda (_%body155592%_
                                                   _%tag155593%_)
                                            (let ((_%$e155595%_ _%tag155593%_))
                                              (if (eq? 'var _%$e155595%_)
                                                  (cons _%body155592%_
                                                        _%vars155577%_)
                                                  (if (or (eq? 'cons
                                                               _%$e155595%_)
                                                          (eq? 'splice
                                                               _%$e155595%_))
                                                      (_%recur155574%_
                                                       (cdr _%body155592%_)
                                                       (_%recur155574%_
                                                        (car _%body155592%_)
                                                        _%vars155577%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e155595%_)
                      (eq? 'box _%$e155595%_))
                  (_%recur155574%_ _%body155592%_ _%vars155577%_)
                  _%vars155577%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e155578155585%_)
                                        (let ((_%hd155582155607%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155578155585%_)))
                                              (_%tl155583155609%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155578155585%_))))
                                          (let* ((_%tag155612%_
                                                  _%hd155582155607%_)
                                                 (_%body155614%_
                                                  _%tl155583155609%_))
                                            (_%K155581155604%_
                                             _%body155614%_
                                             _%tag155612%_)))
                                        (_%E155580155589%_))))))
                             (_%make-body155566%_
                              (lambda (_%vars155568%_)
                                (cons _%K155559%_
                                      (map (lambda (_%mvar155570%_)
                                             (let ((__tmp156765
                                                    (car _%mvar155570%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp156765
                                                _%vars155568%_
                                                _%BUG155562%_)))
                                           _%mvars155558%_)))))
                      (_%recur155563%_
                       _%hd155557%_
                       '()
                       _%target155556%_
                       _%E155560%_
                       _%make-body155566%_))))
                 (_%parse-clause155377%_
                  (lambda (_%hd155449%_ _%ids155450%_)
                    (let _%recur155452%_ ((_%e155454%_ _%hd155449%_)
                                          (_%vars155455%_ '())
                                          (_%depth155456%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e155454%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e155454%_))
                              (values '(any) _%vars155455%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e155454%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx155368%_
                                     _%hd155449%_))
                                  (if (let ((__tmp156766
                                             (lambda (_%id155461%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e155454%_
                                                  _%id155461%_)))))
                                        (declare (not safe))
                                        (__find __tmp156766 _%ids155450%_))
                                      (values (cons 'id _%e155454%_)
                                              _%vars155455%_)
                                      (if (let ((__tmp156767
                                                 (lambda (_%var155464%_)
                                                   (let ((__tmp156768
                                                          (car _%var155464%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e155454%_
                                                      __tmp156768)))))
                                            (declare (not safe))
                                            (__find __tmp156767
                                                    _%vars155455%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx155368%_
                                             _%e155454%_))
                                          (values (cons 'var _%e155454%_)
                                                  (cons (cons _%e155454%_
                                                              _%depth155456%_)
                                                        _%vars155455%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e155454%_))
                              (let* ((_%e155468155475%_ _%e155454%_)
                                     (_%E155470155479%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e155468155475%_))))
                                     (_%E155469155540%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e155468155475%_))
                                            (let ((_%e155471155483%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e155468155475%_))))
                                              (let ((_%hd155472155486%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e155471155483%_)))
                                                    (_%tl155473155488%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e155471155483%_))))
                                                (let* ((_%hd155491%_
                                                        _%hd155472155486%_)
                                                       (_%rest155493%_
                                                        _%tl155473155488%_)
                                                       (_%make-pair155508%_
                                                        (lambda (_%tag155495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd155496%_
                         _%tl155497%_)
                  (let* ((_%hd-depth155499%_
                          (if (eq? _%tag155495%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth155456%_ '1))
                              _%depth155456%_))
                         (_g156769_
                          (_%recur155452%_
                           _%hd155496%_
                           _%vars155455%_
                           _%hd-depth155499%_)))
                    (begin
                      (let ((_g156770_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g156769_)
                                   (##values-length _g156769_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g156770_ 2)))
                            (error "Context expects 2 values" _g156770_)))
                      (let ((_%hd155501%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g156769_ 0)))
                            (_%vars155502%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g156769_ 1))))
                        (let ((_g156771_
                               (_%recur155452%_
                                _%tl155497%_
                                _%vars155502%_
                                _%depth155456%_)))
                          (begin
                            (let ((_g156772_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g156771_)
                                         (##values-length _g156771_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g156772_ 2)))
                                  (error "Context expects 2 values"
                                         _g156772_)))
                            (let ((_%tl155504%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g156771_ 0)))
                                  (_%vars155505%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g156771_ 1))))
                              (values (cons _%tag155495%_
                                            (cons _%hd155501%_ _%tl155504%_))
                                      _%vars155505%_)))))))))
               (_%e155509155516%_ _%rest155493%_)
               (_%E155511155520%_
                (lambda ()
                  (_%make-pair155508%_ 'cons _%hd155491%_ _%rest155493%_)))
               (_%E155510155536%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e155509155516%_))
                      (let ((_%e155512155524%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e155509155516%_))))
                        (let ((_%hd155513155527%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155512155524%_)))
                              (_%tl155514155529%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155512155524%_))))
                          (let* ((_%rest-hd155532%_ _%hd155513155527%_)
                                 (_%rest-tl155534%_ _%tl155514155529%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd155532%_))
                                (_%make-pair155508%_
                                 'splice
                                 _%hd155491%_
                                 _%rest-tl155534%_)
                                (_%make-pair155508%_
                                 'cons
                                 _%hd155491%_
                                 _%rest155493%_)))))
                      (_%E155511155520%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E155510155536%_))))
                                            (_%E155470155479%_)))))
                                (_%E155469155540%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e155454%_))
                                  (values '(null) _%vars155455%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e155454%_))
                                      (let ((_g156773_
                                             (_%recur155452%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e155454%_)))
                                              _%vars155455%_
                                              _%depth155456%_)))
                                        (begin
                                          (let ((_g156774_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g156773_)
                                                       (##values-length
                                                        _g156773_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g156774_ 2)))
                                                (error "Context expects 2 values"
                                                       _g156774_)))
                                          (let ((_%e155546%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g156773_ 0)))
                                                (_%vars155547%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g156773_
                                                    1))))
                                            (values (cons 'vector _%e155546%_)
                                                    _%vars155547%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e155454%_))
                                          (let ((_g156775_
                                                 (_%recur155452%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e155454%_)))
                                                  _%vars155455%_
                                                  _%depth155456%_)))
                                            (begin
                                              (let ((_g156776_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g156775_)
                                                           (##values-length
                                                            _g156775_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g156776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g156776_)))
                                              (let ((_%e155550%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g156775_
                                                        0)))
                                                    (_%vars155551%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g156775_
                                                        1))))
                                                (values (cons 'box _%e155550%_)
                                                        _%vars155551%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e155454%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e155454%_)))
                                                      _%vars155455%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx155368%_
                                                 _%e155454%_))))))))))))
          (let* ((_%e155378155391%_ _%stx155368%_)
                 (_%E155380155395%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e155378155391%_))))
                 (_%E155379155445%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e155378155391%_))
                        (let ((_%e155381155399%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e155378155391%_))))
                          (let ((_%hd155382155402%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155381155399%_)))
                                (_%tl155383155404%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155381155399%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl155383155404%_))
                                (let ((_%e155384155407%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl155383155404%_))))
                                  (let ((_%hd155385155410%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155384155407%_)))
                                        (_%tl155386155412%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155384155407%_))))
                                    (let ((_%expr155415%_ _%hd155385155410%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl155386155412%_))
                                          (let ((_%e155387155417%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl155386155412%_))))
                                            (let ((_%hd155388155420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e155387155417%_)))
                                                  (_%tl155389155422%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e155387155417%_))))
                                              (let* ((_%ids155425%_
                                                      _%hd155388155420%_)
                                                     (_%clauses155427%_
                                                      _%tl155389155422%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids155425%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses155427%_))
                                                        (let* ((_%ids155432%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids155425%_)))
                       (_%clauses155434%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses155427%_)))
                       (_%clause-ids155436%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses155434%_)))
                       (_%E155438%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target155440%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first155442%_
                        (if (null? _%clauses155434%_)
                            _%E155438%_
                            (car _%clause-ids155436%_))))
                  (let ((__tmp156778
                         (let ((__tmp156779
                                (let ((__tmp156781
                                       (let ((__tmp156783
                                              (cons (cons (cons _%E155438%_
                                                                '())
                                                          (cons (let ((__tmp156785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target155440%_ '()))
                              (__tmp156784
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target155440%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp156785 __tmp156784))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp156782
                                              (_%generate-body155374%_
                                               (_%generate-bindings155373%_
                                                _%target155440%_
                                                _%ids155432%_
                                                _%clauses155434%_
                                                _%clause-ids155436%_
                                                _%E155438%_)
                                               (cons _%first155442%_
                                                     (cons _%expr155415%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp156783
                                          __tmp156782)))
                                      (__tmp156780
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx155368%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp156781
                                   __tmp156780))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp156779)))
                        (__tmp156777
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx155368%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp156778 __tmp156777)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx155368%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx155368%_
                                                       _%ids155425%_))))))
                                          (_%E155380155395%_)))))
                                (_%E155380155395%_))))
                        (_%E155380155395%_)))))
            (_%E155379155445%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx156093%_)
        (let* ((_%identifier=?156095%_ 'free-identifier=?)
               (_%unwrap-e156097%_ 'syntax-e)
               (_%wrap-e156099%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx156093%_
           _%identifier=?156095%_
           _%unwrap-e156097%_
           _%wrap-e156099%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx156101%_ _%identifier=?156102%_)
        (let* ((_%unwrap-e156104%_ 'syntax-e) (_%wrap-e156106%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx156101%_
           _%identifier=?156102%_
           _%unwrap-e156104%_
           _%wrap-e156106%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx156108%_ _%identifier=?156109%_ _%unwrap-e156110%_)
        (let ((_%wrap-e156112%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx156108%_
           _%identifier=?156109%_
           _%unwrap-e156110%_
           _%wrap-e156112%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g156786_
        (let ((_g156787_ (let () (declare (not safe)) (##length _g156786_))))
          (cond ((let () (declare (not safe)) (##fx= _g156787_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g156786_))
                ((let () (declare (not safe)) (##fx= _g156787_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g156786_))
                ((let () (declare (not safe)) (##fx= _g156787_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g156786_))
                ((let () (declare (not safe)) (##fx= _g156787_ 4))
                 (apply gx#macro-expand-syntax-case__% _g156786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g156786_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx155365%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx155365%_))
            (let ((__tmp156788
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx155365%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp156788 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd155323%_ . _%rest155324%_)
        (let ((_%len155326%_ (length _%hd155323%_)))
          (let _%lp155328%_ ((_%rest155330%_ _%rest155324%_))
            (let* ((_%rest155331155339%_ _%rest155330%_)
                   (_%else155333155347%_ (lambda () '#!void))
                   (_%K155335155353%_
                    (lambda (_%rest155350%_ _%hd155351%_)
                      (if (let ((__tmp156789 (length _%hd155351%_)))
                            (declare (not safe))
                            (##fx= _%len155326%_ __tmp156789))
                          (_%lp155328%_ _%rest155350%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd155351%_))))))
              (if (pair? _%rest155331155339%_)
                  (let ((_%hd155336155356%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest155331155339%_)))
                        (_%tl155337155358%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest155331155339%_))))
                    (let* ((_%hd155361%_ _%hd155336155356%_)
                           (_%rest155363%_ _%tl155337155358%_))
                      (_%K155335155353%_ _%rest155363%_ _%hd155361%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx155273%_ _%n155274%_)
        (let _%lp155276%_ ((_%rest155279%_ _%stx155273%_) (_%r155281%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest155279%_))
              (let* ((_%g155283155290%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest155279%_)))
                     (_%E155285155294%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g155283155290%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K155286155301%_
                      (lambda (_%rest155297%_ _%hd155298%_)
                        (_%lp155276%_
                         _%rest155297%_
                         (cons _%hd155298%_ _%r155281%_)))))
                (if (pair? _%g155283155290%_)
                    (let ((_%hd155287155304%_
                           (let ()
                             (declare (not safe))
                             (##car _%g155283155290%_)))
                          (_%tl155288155306%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g155283155290%_))))
                      (let* ((_%hd155309%_ _%hd155287155304%_)
                             (_%rest155311%_ _%tl155288155306%_))
                        (_%K155286155301%_ _%rest155311%_ _%hd155309%_)))
                    (_%E155285155294%_)))
              (let _%lp155313%_ ((_%n155315%_ _%n155274%_)
                                 (_%l155316%_ _%r155281%_)
                                 (_%r155318%_ _%rest155279%_))
                (if (null? _%l155316%_)
                    (values _%l155316%_ _%r155318%_)
                    (if (fxpositive? _%n155315%_)
                        (_%lp155313%_
                         (let () (declare (not safe)) (##fx- _%n155315%_ '1))
                         (cdr _%l155316%_)
                         (cons (car _%l155316%_) _%r155318%_))
                        (values (reverse! _%l155316%_) _%r155318%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx155223%_ _%n155224%_)
        (let _%lp155226%_ ((_%rest155229%_ _%stx155223%_) (_%r155231%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest155229%_))
              (let* ((_%g155233155240%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest155229%_)))
                     (_%E155235155244%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g155233155240%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K155236155251%_
                      (lambda (_%rest155247%_ _%hd155248%_)
                        (_%lp155226%_
                         _%rest155247%_
                         (cons _%hd155248%_ _%r155231%_)))))
                (if (pair? _%g155233155240%_)
                    (let ((_%hd155237155254%_
                           (let ()
                             (declare (not safe))
                             (##car _%g155233155240%_)))
                          (_%tl155238155256%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g155233155240%_))))
                      (let* ((_%hd155259%_ _%hd155237155254%_)
                             (_%rest155261%_ _%tl155238155256%_))
                        (_%K155236155251%_ _%rest155261%_ _%hd155259%_)))
                    (_%E155235155244%_)))
              (let _%lp155263%_ ((_%n155265%_ _%n155224%_)
                                 (_%l155266%_ _%r155231%_)
                                 (_%r155268%_ _%rest155229%_))
                (if (null? _%l155266%_)
                    (vector _%l155266%_ _%r155268%_)
                    (if (fxpositive? _%n155265%_)
                        (_%lp155263%_
                         (let () (declare (not safe)) (##fx- _%n155265%_ '1))
                         (cdr _%l155266%_)
                         (cons (car _%l155266%_) _%r155268%_))
                        (vector (reverse! _%l155266%_) _%r155268%_))))))))))
