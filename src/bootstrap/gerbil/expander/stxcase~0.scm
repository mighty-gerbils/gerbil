(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1770326748)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp156634 (list gx#expander::t))
            (__tmp156633 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp156634
         '(id depth)
         __tmp156633
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args156630%_
        (apply make-instance gx#syntax-pattern::t _%$args156630%_)))
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
      (lambda (_%self156616%_ _%stx156617%_)
        (let ((_%self156620%_ _%self156616%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx156617%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx156083%_)
        (letrec ((_%generate156085%_
                  (lambda (_%e156325%_)
                    (letrec ((_%BUG156327%_
                              (lambda (_%q156492%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx156083%_
                                         _%e156325%_
                                         _%q156492%_))))
                             (_%local-pattern-e156328%_
                              (lambda (_%pat156490%_)
                                (let ((__tmp156635
                                       (##structure-ref
                                        _%pat156490%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp156635))))
                             (_%getvar156329%_
                              (lambda (_%q156487%_ _%vars156488%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q156487%_
                                   _%vars156488%_
                                   _%BUG156327%_))))
                             (_%getarg156330%_
                              (lambda (_%arg156453%_ _%vars156454%_)
                                (let* ((_%arg156455156462%_ _%arg156453%_)
                                       (_%E156457156466%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg156455156462%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K156458156475%_
                                        (lambda (_%e156469%_ _%tag156470%_)
                                          (let ((_%$e156472%_ _%tag156470%_))
                                            (if (eq? 'ref _%$e156472%_)
                                                (_%getvar156329%_
                                                 _%e156469%_
                                                 _%vars156454%_)
                                                (if (eq? 'pattern _%$e156472%_)
                                                    (_%local-pattern-e156328%_
                                                     _%e156469%_)
                                                    (_%BUG156327%_
                                                     _%arg156453%_)))))))
                                  (if (pair? _%arg156455156462%_)
                                      (let ((_%hd156459156478%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg156455156462%_)))
                                            (_%tl156460156480%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg156455156462%_))))
                                        (let* ((_%tag156483%_
                                                _%hd156459156478%_)
                                               (_%e156485%_
                                                _%tl156460156480%_))
                                          (_%K156458156475%_
                                           _%e156485%_
                                           _%tag156483%_)))
                                      (_%E156457156466%_))))))
                      (let _%recur156332%_ ((_%e156334%_ _%e156325%_)
                                            (_%vars156335%_ '()))
                        (let* ((_%e156336156343%_ _%e156334%_)
                               (_%E156338156347%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e156336156343%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K156339156441%_
                                (lambda (_%body156350%_ _%tag156351%_)
                                  (let ((_%$e156353%_ _%tag156351%_))
                                    (if (eq? 'datum _%$e156353%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body156350%_))
                                        (if (eq? 'term _%$e156353%_)
                                            (let ((_%id156356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body156350%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id156356%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks156359%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id156356%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks156359%_)
                                                        (let ((__tmp156636
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body156350%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp156636))
                (let ((__tmp156638
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body156350%_)))
                      (__tmp156637
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body156350%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp156638
                   __tmp156637
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id156356%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body156350%_))
                                                      (_%BUG156327%_
                                                       _%e156334%_))))
                                            (if (eq? 'pattern _%$e156353%_)
                                                (_%local-pattern-e156328%_
                                                 _%body156350%_)
                                                (if (eq? 'ref _%$e156353%_)
                                                    (_%getvar156329%_
                                                     _%body156350%_
                                                     _%vars156335%_)
                                                    (if (eq? 'cons
                                                             _%$e156353%_)
                                                        (let ((__tmp156640
                                                               (_%recur156332%_
                                                                (car _%body156350%_)
                                                                _%vars156335%_))
                                                              (__tmp156639
                                                               (_%recur156332%_
                                                                (cdr _%body156350%_)
                                                                _%vars156335%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp156640
                                                           __tmp156639))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e156353%_)
                    (let ((__tmp156641
                           (_%recur156332%_ _%body156350%_ _%vars156335%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp156641))
                    (if (eq? 'box _%$e156353%_)
                        (let ((__tmp156642
                               (_%recur156332%_
                                _%body156350%_
                                _%vars156335%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp156642))
                        (if (eq? 'splice _%$e156353%_)
                            (let* ((_%body156362156373%_ _%body156350%_)
                                   (_%E156364156377%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body156362156373%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K156365156415%_
                                    (lambda (_%args156380%_
                                             _%iv156381%_
                                             _%hd156382%_
                                             _%depth156383%_)
                                      (let* ((_%targets156389%_
                                              (map (lambda (_%g156384156386%_)
                                                     (_%getarg156330%_
                                                      _%g156384156386%_
                                                      _%vars156335%_))
                                                   _%args156380%_))
                                             (_%fold-in156391%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args156380%_)))
                                             (_%fold-out156393%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args156395%_
                                              (let ((__tmp156643
                                                     (cons _%fold-out156393%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp156643
                                                 _%fold-in156391%_)))
                                             (_%lambda-body156412%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth156383%_ '1))
                                                  (let ((_%r-args156403%_
                                                         (map (lambda (_%arg156397%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg156397%_)))
                      _%args156380%_))
                (_%r-vars156404%_
                 (let ((__tmp156644
                        (lambda (_%arg156399%_ _%var156400%_ _%r156401%_)
                          (cons (cons (cdr _%arg156399%_) _%var156400%_)
                                _%r156401%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp156644
                    _%vars156335%_
                    _%args156380%_
                    _%fold-in156391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur156332%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth156383%_ '1))
                         (cons _%hd156382%_
                               (cons (cons 'var _%fold-out156393%_)
                                     _%r-args156403%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars156404%_))
                                                  (let* ((_%hd-vars156410%_
                                                          (let ((__tmp156645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg156406%_ _%var156407%_ _%r156408%_)
                           (cons (cons (cdr _%arg156406%_) _%var156407%_)
                                 _%r156408%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp156645
                     _%vars156335%_
                     _%args156380%_
                     _%fold-in156391%_)))
                 (__tmp156646
                  (_%recur156332%_ _%hd156382%_ _%hd-vars156410%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp156646
                                                     _%fold-out156393%_)))))
                                        (let ((__tmp156650
                                               (if (let ((__tmp156651
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets156389%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp156651 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets156389%_))
                                                   '#!void))
                                              (__tmp156647
                                               (let ((__tmp156649
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args156395%_
                                                         _%lambda-body156412%_)))
                                                     (__tmp156648
                                                      (_%recur156332%_
                                                       _%iv156381%_
                                                       _%vars156335%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp156649
                                                  __tmp156648
                                                  _%targets156389%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp156650
                                           __tmp156647))))))
                              (if (pair? _%body156362156373%_)
                                  (let ((_%hd156366156418%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body156362156373%_)))
                                        (_%tl156367156420%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body156362156373%_))))
                                    (let ((_%depth156423%_ _%hd156366156418%_))
                                      (if (pair? _%tl156367156420%_)
                                          (let ((_%hd156368156425%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl156367156420%_)))
                                                (_%tl156369156427%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl156367156420%_))))
                                            (let ((_%hd156430%_
                                                   _%hd156368156425%_))
                                              (if (pair? _%tl156369156427%_)
                                                  (let ((_%hd156370156432%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl156369156427%_)))
                                                        (_%tl156371156434%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl156369156427%_))))
                                                    (let* ((_%iv156437%_
                                                            _%hd156370156432%_)
                                                           (_%args156439%_
                                                            _%tl156371156434%_))
                                                      (_%K156365156415%_
                                                       _%args156439%_
                                                       _%iv156437%_
                                                       _%hd156430%_
                                                       _%depth156423%_)))
                                                  (_%E156364156377%_))))
                                          (_%E156364156377%_))))
                                  (_%E156364156377%_)))
                            (if (eq? 'var _%$e156353%_)
                                _%body156350%_
                                (_%BUG156327%_ _%e156334%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e156336156343%_)
                              (let ((_%hd156340156444%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e156336156343%_)))
                                    (_%tl156341156446%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e156336156343%_))))
                                (let* ((_%tag156449%_ _%hd156340156444%_)
                                       (_%body156451%_ _%tl156341156446%_))
                                  (_%K156339156441%_
                                   _%body156451%_
                                   _%tag156449%_)))
                              (_%E156338156347%_)))))))
                 (_%parse156086%_
                  (lambda (_%e156127%_)
                    (letrec ((_%make-cons156129%_
                              (lambda (_%hd156317%_ _%tl156318%_)
                                (let ((_g156652_ _%hd156317%_)
                                      (_g156654_ _%tl156318%_))
                                  (begin
                                    (let ((_g156653_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156652_)
                                                 (##values-length _g156652_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156653_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156653_)))
                                    (let ((_g156655_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156654_)
                                                 (##values-length _g156654_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156655_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156655_)))
                                    (let ((_%hd-e156320%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156652_ 0)))
                                          (_%hd-vars156321%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156652_ 1))))
                                      (let ((_%tl-e156322%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156654_ 0)))
                                            (_%tl-vars156323%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156654_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e156320%_
                                                            _%tl-e156322%_))
                                                (append _%hd-vars156321%_
                                                        _%tl-vars156323%_))))))))
                             (_%make-splice156130%_
                              (lambda (_%where156253%_
                                       _%depth156254%_
                                       _%hd156255%_
                                       _%tl156256%_)
                                (let ((_g156656_ _%hd156255%_)
                                      (_g156658_ _%tl156256%_))
                                  (begin
                                    (let ((_g156657_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156656_)
                                                 (##values-length _g156656_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156657_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156657_)))
                                    (let ((_g156659_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156658_)
                                                 (##values-length _g156658_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156659_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156659_)))
                                    (let ((_%hd-e156258%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156656_ 0)))
                                          (_%hd-vars156259%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156656_ 1))))
                                      (let ((_%tl-e156260%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156658_ 0)))
                                            (_%tl-vars156261%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g156658_ 1))))
                                        (let _%lp156263%_ ((_%rest156265%_
                                                            _%hd-vars156259%_)
                                                           (_%targets156266%_
                                                            '())
                                                           (_%vars156267%_
                                                            _%tl-vars156261%_))
                                          (let* ((_%rest156268156278%_
                                                  _%rest156265%_)
                                                 (_%else156270156286%_
                                                  (lambda ()
                                                    (if (null? _%targets156266%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx156083%_
                                                           _%where156253%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth156254%_
                                    (cons _%hd-e156258%_
                                          (cons _%tl-e156260%_
                                                _%targets156266%_))))
                        _%vars156267%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K156272156298%_
                                                  (lambda (_%rest156289%_
                                                           _%hd-pat156290%_
                                                           _%hd-depth*156291%_)
                                                    (let ((_%hd-depth156293%_
                                                           (fx- _%hd-depth*156291%_
                                                                _%depth156254%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth156293%_))
                                                          (_%lp156263%_
                                                           _%rest156289%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat156290%_)
                         _%targets156266%_)
                   (cons (cons _%hd-depth156293%_ _%hd-pat156290%_)
                         _%vars156267%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth156293%_))
                      (_%lp156263%_
                       _%rest156289%_
                       (cons (cons 'pattern _%hd-pat156290%_)
                             _%targets156266%_)
                       _%vars156267%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx156083%_
                         _%where156253%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest156268156278%_)
                                                (let ((_%hd156273156301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest156268156278%_)))
                                                      (_%tl156274156303%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest156268156278%_))))
                                                  (if (pair? _%hd156273156301%_)
                                                      (let ((_%hd156275156306%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd156273156301%_)))
                    (_%tl156276156308%_
                     (let () (declare (not safe)) (##cdr _%hd156273156301%_))))
                (let* ((_%hd-depth*156311%_ _%hd156275156306%_)
                       (_%hd-pat156313%_ _%tl156276156308%_)
                       (_%rest156315%_ _%tl156274156303%_))
                  (_%K156272156298%_
                   _%rest156315%_
                   _%hd-pat156313%_
                   _%hd-depth*156311%_)))
              (_%else156270156286%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else156270156286%_))))))))))
                             (_%recur156131%_
                              (lambda (_%e156136%_ _%is-e?156137%_)
                                (if (_%is-e?156137%_ _%e156136%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx156083%_))
                                    (if (gx#syntax-local-pattern? _%e156136%_)
                                        (let* ((_%pat156141%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e156136%_)))
                                               (_%depth156143%_
                                                (##structure-ref
                                                 _%pat156141%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth156143%_)
                                              (values (cons 'ref _%pat156141%_)
                                                      (cons (cons _%depth156143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat156141%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat156141%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e156136%_))
                                            (values (cons 'term _%e156136%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e156136%_))
                                                (let* ((_%e156147156154%_
                                                        _%e156136%_)
                                                       (_%E156149156158%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e156147156154%_))))
                                                       (_%E156148156240%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e156147156154%_))
                      (let ((_%e156150156162%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e156147156154%_))))
                        (let ((_%hd156151156165%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e156150156162%_)))
                              (_%tl156152156167%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e156150156162%_))))
                          (let* ((_%hd156170%_ _%hd156151156165%_)
                                 (_%rest156172%_ _%tl156152156167%_))
                            (if (_%is-e?156137%_ _%hd156170%_)
                                (let* ((_%e156173156180%_ _%rest156172%_)
                                       (_%E156175156184%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx156083%_
                                             _%e156136%_))))
                                       (_%E156174156198%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e156173156180%_))
                                              (let ((_%e156176156188%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e156173156180%_))))
                                                (let ((_%hd156177156191%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e156176156188%_)))
                                                      (_%tl156178156193%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e156176156188%_))))
                                                  (let ((_%rest156196%_
                                                         _%hd156177156191%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl156178156193%_))
                                                        (_%recur156131%_
                                                         _%rest156196%_
                                                         false)
                                                        (_%E156175156184%_)))))
                                              (_%E156175156184%_)))))
                                  (_%E156174156198%_))
                                (let _%lp156202%_ ((_%rest156204%_
                                                    _%rest156172%_)
                                                   (_%depth156205%_ '0))
                                  (let* ((_%e156206156213%_ _%rest156204%_)
                                         (_%E156208156217%_
                                          (lambda ()
                                            (if (fxpositive? _%depth156205%_)
                                                (_%make-splice156130%_
                                                 _%e156136%_
                                                 _%depth156205%_
                                                 (_%recur156131%_
                                                  _%hd156170%_
                                                  _%is-e?156137%_)
                                                 (_%recur156131%_
                                                  _%rest156204%_
                                                  _%is-e?156137%_))
                                                (_%make-cons156129%_
                                                 (_%recur156131%_
                                                  _%hd156170%_
                                                  _%is-e?156137%_)
                                                 (_%recur156131%_
                                                  _%rest156204%_
                                                  _%is-e?156137%_)))))
                                         (_%E156207156236%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e156206156213%_))
                                                (let ((_%e156209156221%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e156206156213%_))))
                                                  (let ((_%hd156210156224%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e156209156221%_)))
                                                        (_%tl156211156226%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e156209156221%_))))
                                                    (let* ((_%rest-hd156229%_
                                                            _%hd156210156224%_)
                                                           (_%rest-tl156231%_
                                                            _%tl156211156226%_))
                                                      (if (_%is-e?156137%_
                                                           _%rest-hd156229%_)
                                                          (_%lp156202%_
                                                           _%rest-tl156231%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth156205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth156205%_)
                      (_%make-splice156130%_
                       _%e156136%_
                       _%depth156205%_
                       (_%recur156131%_ _%hd156170%_ _%is-e?156137%_)
                       (_%recur156131%_ _%rest156204%_ _%is-e?156137%_))
                      (_%make-cons156129%_
                       (_%recur156131%_ _%hd156170%_ _%is-e?156137%_)
                       (_%recur156131%_ _%rest156204%_ _%is-e?156137%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E156208156217%_)))))
                                    (_%E156207156236%_)))))))
                      (_%E156149156158%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E156148156240%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e156136%_))
                                                    (let ((_g156660_
                                                           (_%recur156131%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e156136%_)))
                    _%is-e?156137%_)))
              (begin
                (let ((_g156661_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g156660_)
                             (##values-length _g156660_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g156661_ 2)))
                      (error "Context expects 2 values" _g156661_)))
                (let ((_%e156245%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g156660_ 0)))
                      (_%vars156246%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g156660_ 1))))
                  (values (cons 'vector _%e156245%_) _%vars156246%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e156136%_))
                                                        (let ((_g156662_
                                                               (_%recur156131%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e156136%_)))
                        _%is-e?156137%_)))
                  (begin
                    (let ((_g156663_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g156662_)
                                 (##values-length _g156662_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g156663_ 2)))
                          (error "Context expects 2 values" _g156663_)))
                    (let ((_%e156249%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g156662_ 0)))
                          (_%vars156250%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g156662_ 1))))
                      (values (cons 'box _%e156249%_) _%vars156250%_))))
                (values (cons 'datum _%e156136%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g156664_
                             (_%recur156131%_ _%e156127%_ gx#ellipsis?)))
                        (begin
                          (let ((_g156665_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g156664_)
                                       (##values-length _g156664_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g156665_ 2)))
                                (error "Context expects 2 values" _g156665_)))
                          (let ((_%tree156133%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g156664_ 0)))
                                (_%vars156134%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g156664_ 1))))
                            (if (null? _%vars156134%_)
                                _%tree156133%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx156083%_
                                   _%vars156134%_))))))))))
          (let* ((_%e156087156097%_ _%stx156083%_)
                 (_%E156089156101%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx156083%_))))
                 (_%E156088156123%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e156087156097%_))
                        (let ((_%e156090156105%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e156087156097%_))))
                          (let ((_%hd156091156108%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156090156105%_)))
                                (_%tl156092156110%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156090156105%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl156092156110%_))
                                (let ((_%e156093156113%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl156092156110%_))))
                                  (let ((_%hd156094156116%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e156093156113%_)))
                                        (_%tl156095156118%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e156093156113%_))))
                                    (let ((_%form156121%_ _%hd156094156116%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl156095156118%_))
                                          (let ((__tmp156667
                                                 (_%generate156085%_
                                                  (_%parse156086%_
                                                   _%form156121%_)))
                                                (__tmp156666
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx156083%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp156667
                                             __tmp156666))
                                          (_%E156089156101%_)))))
                                (_%E156089156101%_))))
                        (_%E156089156101%_)))))
            (_%E156088156123%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx155332%_
               _%identifier=?155333%_
               _%unwrap-e155334%_
               _%wrap-e155335%_)
        (letrec ((_%generate-bindings155337%_
                  (lambda (_%target155947%_
                           _%ids155948%_
                           _%clauses155949%_
                           _%clause-ids155950%_
                           _%E155951%_)
                    (letrec ((_%generate1155953%_
                              (lambda (_%clause156050%_
                                       _%clause-id156051%_
                                       _%E156052%_)
                                (cons (cons _%clause-id156051%_ '())
                                      (cons (let ((__tmp156669
                                                   (cons _%target155947%_ '()))
                                                  (__tmp156668
                                                   (_%generate-clause155339%_
                                                    _%target155947%_
                                                    _%ids155948%_
                                                    _%clause156050%_
                                                    _%E156052%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp156669
                                               __tmp156668))
                                            '())))))
                      (let _%lp155955%_ ((_%rest155957%_ _%clauses155949%_)
                                         (_%rest-ids155958%_
                                          _%clause-ids155950%_)
                                         (_%bindings155959%_ '()))
                        (let* ((_%rest155960155968%_ _%rest155957%_)
                               (_%else155962155976%_
                                (lambda () _%bindings155959%_))
                               (_%K155964156038%_
                                (lambda (_%rest155979%_ _%clause155980%_)
                                  (let* ((_%rest-ids155981155988%_
                                          _%rest-ids155958%_)
                                         (_%E155983155992%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids155981155988%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K155984156026%_
                                          (lambda (_%rest-ids155995%_
                                                   _%clause-id155996%_)
                                            (let* ((_%rest-ids155997156005%_
                                                    _%rest-ids155995%_)
                                                   (_%else155999156013%_
                                                    (lambda ()
                                                      (cons (_%generate1155953%_
                                                             _%clause155980%_
                                                             _%clause-id155996%_
                                                             _%E155951%_)
                                                            _%bindings155959%_)))
                                                   (_%K156001156018%_
                                                    (lambda (_%next-clause-id156016%_)
                                                      (_%lp155955%_
                                                       _%rest155979%_
                                                       _%rest-ids155995%_
                                                       (cons (_%generate1155953%_
                                                              _%clause155980%_
                                                              _%clause-id155996%_
                                                              _%next-clause-id156016%_)
                                                             _%bindings155959%_)))))
                                              (if (pair? _%rest-ids155997156005%_)
                                                  (let* ((_%hd156002156021%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids155997156005%_)))
                                                         (_%next-clause-id156024%_
                                                          _%hd156002156021%_))
                                                    (_%K156001156018%_
                                                     _%next-clause-id156024%_))
                                                  (_%else155999156013%_))))))
                                    (if (pair? _%rest-ids155981155988%_)
                                        (let ((_%hd155985156029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids155981155988%_)))
                                              (_%tl155986156031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids155981155988%_))))
                                          (let* ((_%clause-id156034%_
                                                  _%hd155985156029%_)
                                                 (_%rest-ids156036%_
                                                  _%tl155986156031%_))
                                            (_%K155984156026%_
                                             _%rest-ids156036%_
                                             _%clause-id156034%_)))
                                        (_%E155983155992%_))))))
                          (if (pair? _%rest155960155968%_)
                              (let ((_%hd155965156041%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest155960155968%_)))
                                    (_%tl155966156043%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest155960155968%_))))
                                (let* ((_%clause156046%_ _%hd155965156041%_)
                                       (_%rest156048%_ _%tl155966156043%_))
                                  (_%K155964156038%_
                                   _%rest156048%_
                                   _%clause156046%_)))
                              (_%else155962155976%_)))))))
                 (_%generate-body155338%_
                  (lambda (_%bindings155907%_ _%body155908%_)
                    (let _%recur155910%_ ((_%rest155912%_ _%bindings155907%_))
                      (let* ((_%rest155913155921%_ _%rest155912%_)
                             (_%else155915155929%_ (lambda () _%body155908%_))
                             (_%K155917155935%_
                              (lambda (_%rest155932%_ _%hd155933%_)
                                (let ((__tmp156671 (cons _%hd155933%_ '()))
                                      (__tmp156670
                                       (_%recur155910%_ _%rest155932%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp156671
                                   __tmp156670)))))
                        (if (pair? _%rest155913155921%_)
                            (let ((_%hd155918155938%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest155913155921%_)))
                                  (_%tl155919155940%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest155913155921%_))))
                              (let* ((_%hd155943%_ _%hd155918155938%_)
                                     (_%rest155945%_ _%tl155919155940%_))
                                (_%K155917155935%_
                                 _%rest155945%_
                                 _%hd155943%_)))
                            (_%else155915155929%_))))))
                 (_%generate-clause155339%_
                  (lambda (_%target155770%_
                           _%ids155771%_
                           _%clause155772%_
                           _%E155773%_)
                    (letrec ((_%generate1155775%_
                              (lambda (_%hd155862%_
                                       _%fender155863%_
                                       _%body155864%_)
                                (let ((_g156672_
                                       (_%parse-clause155341%_
                                        _%hd155862%_
                                        _%ids155771%_)))
                                  (begin
                                    (let ((_g156673_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156672_)
                                                 (##values-length _g156672_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156673_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156673_)))
                                    (let ((_%e155866%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156672_ 0)))
                                          (_%mvars155867%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156672_ 1))))
                                      (let* ((_%pvars155869%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars155867%_))))
                                             (_%E155871%_
                                              (cons _%E155773%_
                                                    (cons _%target155770%_
                                                          '())))
                                             (_%K155904%_
                                              (let ((__tmp156674
                                                     (let ((__tmp156676
                                                            (map (lambda (_%mvar155873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar155874%_)
                           (let* ((_%mvar155875155882%_ _%mvar155873%_)
                                  (_%E155877155886%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar155875155882%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K155878155892%_
                                   (lambda (_%depth155889%_ _%id155890%_)
                                     (cons _%id155890%_
                                           (cons (let ((__tmp156678
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id155890%_)))
                                                       (__tmp156677
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar155874%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp156678
                                                    __tmp156677
                                                    _%depth155889%_))
                                                 '())))))
                             (if (pair? _%mvar155875155882%_)
                                 (let ((_%hd155879155895%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar155875155882%_)))
                                       (_%tl155880155897%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar155875155882%_))))
                                   (let* ((_%id155900%_ _%hd155879155895%_)
                                          (_%depth155902%_ _%tl155880155897%_))
                                     (_%K155878155892%_
                                      _%depth155902%_
                                      _%id155900%_)))
                                 (_%E155877155886%_))))
                         _%mvars155867%_
                         _%pvars155869%_))
                   (__tmp156675
                    (if (eq? _%fender155863%_ '#t)
                        _%body155864%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender155863%_
                           _%body155864%_
                           _%E155871%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp156676 __tmp156675))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars155869%_
                                                 __tmp156674))))
                                        (_%generate-match155340%_
                                         _%hd155862%_
                                         _%target155770%_
                                         _%e155866%_
                                         _%mvars155867%_
                                         _%K155904%_
                                         _%E155871%_))))))))
                      (let* ((_%e155776155796%_ _%clause155772%_)
                             (_%E155785155800%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e155776155796%_))))
                             (_%E155778155834%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e155776155796%_))
                                    (let ((_%e155786155804%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e155776155796%_))))
                                      (let ((_%hd155787155807%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e155786155804%_)))
                                            (_%tl155788155809%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e155786155804%_))))
                                        (let ((_%hd155812%_
                                               _%hd155787155807%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl155788155809%_))
                                              (let ((_%e155789155814%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl155788155809%_))))
                                                (let ((_%hd155790155817%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155789155814%_)))
                                                      (_%tl155791155819%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155789155814%_))))
                                                  (let ((_%fender155822%_
                                                         _%hd155790155817%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl155791155819%_))
                                                        (let ((_%e155792155824%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl155791155819%_))))
                  (let ((_%hd155793155827%_
                         (let ()
                           (declare (not safe))
                           (##car _%e155792155824%_)))
                        (_%tl155794155829%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e155792155824%_))))
                    (let ((_%body155832%_ _%hd155793155827%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl155794155829%_))
                          (_%generate1155775%_
                           _%hd155812%_
                           _%fender155822%_
                           _%body155832%_)
                          (_%E155785155800%_)))))
                (_%E155785155800%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E155785155800%_)))))
                                    (_%E155785155800%_))))
                             (_%E155777155858%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e155776155796%_))
                                    (let ((_%e155779155838%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e155776155796%_))))
                                      (let ((_%hd155780155841%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e155779155838%_)))
                                            (_%tl155781155843%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e155779155838%_))))
                                        (let ((_%hd155846%_
                                               _%hd155780155841%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl155781155843%_))
                                              (let ((_%e155782155848%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl155781155843%_))))
                                                (let ((_%hd155783155851%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155782155848%_)))
                                                      (_%tl155784155853%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155782155848%_))))
                                                  (let ((_%body155856%_
                                                         _%hd155783155851%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl155784155853%_))
                                                        (_%generate1155775%_
                                                         _%hd155846%_
                                                         '#t
                                                         _%body155856%_)
                                                        (_%E155778155834%_)))))
                                              (_%E155778155834%_)))))
                                    (_%E155778155834%_)))))
                        (_%E155777155858%_)))))
                 (_%generate-match155340%_
                  (lambda (_%where155519%_
                           _%target155520%_
                           _%hd155521%_
                           _%mvars155522%_
                           _%K155523%_
                           _%E155524%_)
                    (letrec ((_%BUG155526%_
                              (lambda (_%q155768%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx155332%_
                                         _%hd155521%_
                                         _%q155768%_))))
                             (_%recur155527%_
                              (lambda (_%e155618%_
                                       _%vars155619%_
                                       _%target155620%_
                                       _%E155621%_
                                       _%k155622%_)
                                (let* ((_%e155623155630%_ _%e155618%_)
                                       (_%E155625155634%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e155623155630%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K155626155756%_
                                        (lambda (_%body155637%_ _%tag155638%_)
                                          (let ((_%$e155640%_ _%tag155638%_))
                                            (if (eq? 'any _%$e155640%_)
                                                (_%k155622%_ _%vars155619%_)
                                                (if (eq? 'id _%$e155640%_)
                                                    (let ((__tmp156683
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target155620%_)))
                                                          (__tmp156679
                                                           (let ((__tmp156681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp156682
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e155335%_
                                    _%body155637%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?155333%_
                             __tmp156682
                             _%target155620%_)))
                         (__tmp156680 (_%k155622%_ _%vars155619%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp156681 __tmp156680 _%E155621%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp156683 __tmp156679 _%E155621%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e155640%_)
                                                        (_%k155622%_
                                                         (cons (cons _%body155637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target155620%_)
                       _%vars155619%_))
                (if (eq? 'cons _%$e155640%_)
                    (let ((_%$e155643%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd155644%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl155645%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp156689
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target155620%_)))
                            (__tmp156684
                             (let ((__tmp156688
                                    (cons (cons (cons _%$e155643%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e155334%_
                                                         _%target155620%_))
                                                      '()))
                                          '()))
                                   (__tmp156685
                                    (let ((__tmp156687
                                           (cons (cons (cons _%$hd155644%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e155643%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl155645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e155643%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp156686
                                           (let* ((_%body155646155653%_
                                                   _%body155637%_)
                                                  (_%E155648155657%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body155646155653%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K155649155665%_
                                                   (lambda (_%tl155660%_
                                                            _%hd155661%_)
                                                     (_%recur155527%_
                                                      _%hd155661%_
                                                      _%vars155619%_
                                                      _%$hd155644%_
                                                      _%E155621%_
                                                      (lambda (_%vars155663%_)
                                                        (_%recur155527%_
                                                         _%tl155660%_
                                                         _%vars155663%_
                                                         _%$tl155645%_
                                                         _%E155621%_
                                                         _%k155622%_))))))
                                             (if (pair? _%body155646155653%_)
                                                 (let ((_%hd155650155668%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body155646155653%_)))
                                                       (_%tl155651155670%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body155646155653%_))))
                                                   (let* ((_%hd155673%_
                                                           _%hd155650155668%_)
                                                          (_%tl155675%_
                                                           _%tl155651155670%_))
                                                     (_%K155649155665%_
                                                      _%tl155675%_
                                                      _%hd155673%_)))
                                                 (_%E155648155657%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp156687
                                       __tmp156686))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp156688
                                __tmp156685))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp156689
                         __tmp156684
                         _%E155621%_)))
                    (if (eq? 'splice _%$e155640%_)
                        (let* ((_%body155676155683%_ _%body155637%_)
                               (_%E155678155687%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body155676155683%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K155679155738%_
                                (lambda (_%tl155690%_ _%hd155691%_)
                                  (let* ((_%rlen155693%_
                                          (_%splice-rlen155528%_ _%tl155690%_))
                                         (_%$target155695%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd155697%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl155699%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp155701%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e155703%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd155705%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl155707%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars155709%_
                                          (_%splice-vars155529%_ _%hd155691%_))
                                         (_%lvars155711%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars155709%_)))
                                         (_%tlvars155713%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars155709%_)))
                                         (_%linit155717%_
                                          (map (lambda (_%var155715%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars155711%_)))
                                    (letrec ((_%make-loop155720%_
                                              (lambda (_%vars155724%_)
                                                (let ((__tmp156691
                                                       (cons (cons (cons _%$lp155701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp156704
                                        (cons _%$hd155697%_ _%lvars155711%_))
                                       (__tmp156692
                                        (let ((__tmp156703
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd155697%_)))
                                              (__tmp156697
                                               (let ((__tmp156702
                                                      (cons (cons (cons _%$lp-e155703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e155334%_
                                   _%$hd155697%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp156698
                                                      (let ((__tmp156701
                                                             (cons (cons (cons _%$lp-hd155705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e155703%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl155707%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e155703%_))
                                             '()))
                                 '())))
                    (__tmp156699
                     (_%recur155527%_
                      _%hd155691%_
                      '()
                      _%$lp-hd155705%_
                      _%E155621%_
                      (lambda (_%hdvars155726%_)
                        (cons _%$lp155701%_
                              (cons _%$lp-tl155707%_
                                    (map (lambda (_%svar155728%_
                                                  _%lvar155729%_)
                                           (let ((__tmp156700
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar155728%_
                                                     _%hdvars155726%_
                                                     _%BUG155526%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp156700
                                              _%lvar155729%_)))
                                         _%svars155709%_
                                         _%lvars155711%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp156701 __tmp156699))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp156702
                                                  __tmp156698)))
                                              (__tmp156693
                                               (let ((__tmp156696
                                                      (map (lambda (_%lvar155731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar155732%_)
                     (cons (cons _%tlvar155732%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar155731%_))
                                 '())))
                   _%lvars155711%_
                   _%tlvars155713%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp156694
                                                      (_%k155622%_
                                                       (let ((__tmp156695
                                                              (lambda (_%svar155734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar155735%_
                               _%r155736%_)
                        (cons (cons _%svar155734%_ _%tlvar155735%_)
                              _%r155736%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp156695
                  _%vars155724%_
                  _%svars155709%_
                  _%tlvars155713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp156696
                                                  __tmp156694))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp156703
                                           __tmp156697
                                           __tmp156693))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp156704
                                    __tmp156692))
                                 '()))
                     '()))
              (__tmp156690
               (cons _%$lp155701%_ (cons _%$target155695%_ _%linit155717%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp156691
                                                   __tmp156690)))))
                                      (let ((_%body155722%_
                                             (let ((__tmp156706
                                                    (cons (cons (cons _%$target155695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl155699%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target155620%_
                                 _%rlen155693%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp156705
                                                    (_%recur155527%_
                                                     _%tl155690%_
                                                     _%vars155619%_
                                                     _%$tl155699%_
                                                     _%E155621%_
                                                     _%make-loop155720%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp156706
                                                __tmp156705))))
                                        (let ((__tmp156710
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target155620%_)))
                                              (__tmp156707
                                               (if (zero? _%rlen155693%_)
                                                   _%body155722%_
                                                   (let ((__tmp156708
                                                          (let ((__tmp156709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target155620%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp156709 _%rlen155693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp156708
                                                      _%body155722%_
                                                      _%E155621%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp156710
                                           __tmp156707
                                           _%E155621%_))))))))
                          (if (pair? _%body155676155683%_)
                              (let ((_%hd155680155741%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body155676155683%_)))
                                    (_%tl155681155743%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body155676155683%_))))
                                (let* ((_%hd155746%_ _%hd155680155741%_)
                                       (_%tl155748%_ _%tl155681155743%_))
                                  (_%K155679155738%_
                                   _%tl155748%_
                                   _%hd155746%_)))
                              (_%E155678155687%_)))
                        (if (eq? 'null _%$e155640%_)
                            (let ((__tmp156712
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target155620%_)))
                                  (__tmp156711 (_%k155622%_ _%vars155619%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp156712
                               __tmp156711
                               _%E155621%_))
                            (if (eq? 'vector _%$e155640%_)
                                (let ((_%$e155750%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp156717
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target155620%_)))
                                        (__tmp156713
                                         (let ((__tmp156715
                                                (cons (cons (cons _%$e155750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp156716
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e155334%_
                                    _%target155620%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp156716))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp156714
                                                (_%recur155527%_
                                                 _%body155637%_
                                                 _%vars155619%_
                                                 _%$e155750%_
                                                 _%E155621%_
                                                 _%k155622%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp156715
                                            __tmp156714))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp156717
                                     __tmp156713
                                     _%E155621%_)))
                                (if (eq? 'box _%$e155640%_)
                                    (let ((_%$e155752%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp156722
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target155620%_)))
                                            (__tmp156718
                                             (let ((__tmp156720
                                                    (cons (cons (cons _%$e155752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp156721
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e155334%_
                                        _%target155620%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp156721))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp156719
                                                    (_%recur155527%_
                                                     _%body155637%_
                                                     _%vars155619%_
                                                     _%$e155752%_
                                                     _%E155621%_
                                                     _%k155622%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp156720
                                                __tmp156719))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp156722
                                         __tmp156718
                                         _%E155621%_)))
                                    (if (eq? 'datum _%$e155640%_)
                                        (let ((_%$e155754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp156728
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target155620%_)))
                                                (__tmp156723
                                                 (let ((__tmp156727
                                                        (cons (cons (cons _%$e155754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target155620%_))
                                  '()))
                      '()))
               (__tmp156724
                (let ((__tmp156726
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e155754%_ _%body155637%_)))
                      (__tmp156725 (_%k155622%_ _%vars155619%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp156726 __tmp156725 _%E155621%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp156727
                                                    __tmp156724))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp156728
                                             __tmp156723
                                             _%E155621%_)))
                                        (_%BUG155526%_
                                         _%e155618%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e155623155630%_)
                                      (let ((_%hd155627155759%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e155623155630%_)))
                                            (_%tl155628155761%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e155623155630%_))))
                                        (let* ((_%tag155764%_
                                                _%hd155627155759%_)
                                               (_%body155766%_
                                                _%tl155628155761%_))
                                          (_%K155626155756%_
                                           _%body155766%_
                                           _%tag155764%_)))
                                      (_%E155625155634%_)))))
                             (_%splice-rlen155528%_
                              (lambda (_%e155580%_)
                                (let _%lp155582%_ ((_%e155584%_ _%e155580%_)
                                                   (_%n155585%_ '0))
                                  (let* ((_%e155586155593%_ _%e155584%_)
                                         (_%E155588155597%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e155586155593%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K155589155606%_
                                          (lambda (_%body155600%_
                                                   _%tag155601%_)
                                            (let ((_%$e155603%_ _%tag155601%_))
                                              (if (eq? 'splice _%$e155603%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx155332%_
                                                     _%where155519%_))
                                                  (if (eq? 'cons _%$e155603%_)
                                                      (_%lp155582%_
                                                       (cdr _%body155600%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n155585%_
                                                                '1)))
                                                      _%n155585%_))))))
                                    (if (pair? _%e155586155593%_)
                                        (let ((_%hd155590155609%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155586155593%_)))
                                              (_%tl155591155611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155586155593%_))))
                                          (let* ((_%tag155614%_
                                                  _%hd155590155609%_)
                                                 (_%body155616%_
                                                  _%tl155591155611%_))
                                            (_%K155589155606%_
                                             _%body155616%_
                                             _%tag155614%_)))
                                        (_%E155588155597%_))))))
                             (_%splice-vars155529%_
                              (lambda (_%e155536%_)
                                (let _%recur155538%_ ((_%e155540%_ _%e155536%_)
                                                      (_%vars155541%_ '()))
                                  (let* ((_%e155542155549%_ _%e155540%_)
                                         (_%E155544155553%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e155542155549%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K155545155568%_
                                          (lambda (_%body155556%_
                                                   _%tag155557%_)
                                            (let ((_%$e155559%_ _%tag155557%_))
                                              (if (eq? 'var _%$e155559%_)
                                                  (cons _%body155556%_
                                                        _%vars155541%_)
                                                  (if (or (eq? 'cons
                                                               _%$e155559%_)
                                                          (eq? 'splice
                                                               _%$e155559%_))
                                                      (_%recur155538%_
                                                       (cdr _%body155556%_)
                                                       (_%recur155538%_
                                                        (car _%body155556%_)
                                                        _%vars155541%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e155559%_)
                      (eq? 'box _%$e155559%_))
                  (_%recur155538%_ _%body155556%_ _%vars155541%_)
                  _%vars155541%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e155542155549%_)
                                        (let ((_%hd155546155571%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155542155549%_)))
                                              (_%tl155547155573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155542155549%_))))
                                          (let* ((_%tag155576%_
                                                  _%hd155546155571%_)
                                                 (_%body155578%_
                                                  _%tl155547155573%_))
                                            (_%K155545155568%_
                                             _%body155578%_
                                             _%tag155576%_)))
                                        (_%E155544155553%_))))))
                             (_%make-body155530%_
                              (lambda (_%vars155532%_)
                                (cons _%K155523%_
                                      (map (lambda (_%mvar155534%_)
                                             (let ((__tmp156729
                                                    (car _%mvar155534%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp156729
                                                _%vars155532%_
                                                _%BUG155526%_)))
                                           _%mvars155522%_)))))
                      (_%recur155527%_
                       _%hd155521%_
                       '()
                       _%target155520%_
                       _%E155524%_
                       _%make-body155530%_))))
                 (_%parse-clause155341%_
                  (lambda (_%hd155413%_ _%ids155414%_)
                    (let _%recur155416%_ ((_%e155418%_ _%hd155413%_)
                                          (_%vars155419%_ '())
                                          (_%depth155420%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e155418%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e155418%_))
                              (values '(any) _%vars155419%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e155418%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx155332%_
                                     _%hd155413%_))
                                  (if (let ((__tmp156730
                                             (lambda (_%id155425%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e155418%_
                                                  _%id155425%_)))))
                                        (declare (not safe))
                                        (__find __tmp156730 _%ids155414%_))
                                      (values (cons 'id _%e155418%_)
                                              _%vars155419%_)
                                      (if (let ((__tmp156731
                                                 (lambda (_%var155428%_)
                                                   (let ((__tmp156732
                                                          (car _%var155428%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e155418%_
                                                      __tmp156732)))))
                                            (declare (not safe))
                                            (__find __tmp156731
                                                    _%vars155419%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx155332%_
                                             _%e155418%_))
                                          (values (cons 'var _%e155418%_)
                                                  (cons (cons _%e155418%_
                                                              _%depth155420%_)
                                                        _%vars155419%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e155418%_))
                              (let* ((_%e155432155439%_ _%e155418%_)
                                     (_%E155434155443%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e155432155439%_))))
                                     (_%E155433155504%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e155432155439%_))
                                            (let ((_%e155435155447%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e155432155439%_))))
                                              (let ((_%hd155436155450%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e155435155447%_)))
                                                    (_%tl155437155452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e155435155447%_))))
                                                (let* ((_%hd155455%_
                                                        _%hd155436155450%_)
                                                       (_%rest155457%_
                                                        _%tl155437155452%_)
                                                       (_%make-pair155472%_
                                                        (lambda (_%tag155459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd155460%_
                         _%tl155461%_)
                  (let* ((_%hd-depth155463%_
                          (if (eq? _%tag155459%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth155420%_ '1))
                              _%depth155420%_))
                         (_g156733_
                          (_%recur155416%_
                           _%hd155460%_
                           _%vars155419%_
                           _%hd-depth155463%_)))
                    (begin
                      (let ((_g156734_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g156733_)
                                   (##values-length _g156733_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g156734_ 2)))
                            (error "Context expects 2 values" _g156734_)))
                      (let ((_%hd155465%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g156733_ 0)))
                            (_%vars155466%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g156733_ 1))))
                        (let ((_g156735_
                               (_%recur155416%_
                                _%tl155461%_
                                _%vars155466%_
                                _%depth155420%_)))
                          (begin
                            (let ((_g156736_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g156735_)
                                         (##values-length _g156735_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g156736_ 2)))
                                  (error "Context expects 2 values"
                                         _g156736_)))
                            (let ((_%tl155468%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g156735_ 0)))
                                  (_%vars155469%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g156735_ 1))))
                              (values (cons _%tag155459%_
                                            (cons _%hd155465%_ _%tl155468%_))
                                      _%vars155469%_)))))))))
               (_%e155473155480%_ _%rest155457%_)
               (_%E155475155484%_
                (lambda ()
                  (_%make-pair155472%_ 'cons _%hd155455%_ _%rest155457%_)))
               (_%E155474155500%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e155473155480%_))
                      (let ((_%e155476155488%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e155473155480%_))))
                        (let ((_%hd155477155491%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155476155488%_)))
                              (_%tl155478155493%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155476155488%_))))
                          (let* ((_%rest-hd155496%_ _%hd155477155491%_)
                                 (_%rest-tl155498%_ _%tl155478155493%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd155496%_))
                                (_%make-pair155472%_
                                 'splice
                                 _%hd155455%_
                                 _%rest-tl155498%_)
                                (_%make-pair155472%_
                                 'cons
                                 _%hd155455%_
                                 _%rest155457%_)))))
                      (_%E155475155484%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E155474155500%_))))
                                            (_%E155434155443%_)))))
                                (_%E155433155504%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e155418%_))
                                  (values '(null) _%vars155419%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e155418%_))
                                      (let ((_g156737_
                                             (_%recur155416%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e155418%_)))
                                              _%vars155419%_
                                              _%depth155420%_)))
                                        (begin
                                          (let ((_g156738_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g156737_)
                                                       (##values-length
                                                        _g156737_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g156738_ 2)))
                                                (error "Context expects 2 values"
                                                       _g156738_)))
                                          (let ((_%e155510%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g156737_ 0)))
                                                (_%vars155511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g156737_
                                                    1))))
                                            (values (cons 'vector _%e155510%_)
                                                    _%vars155511%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e155418%_))
                                          (let ((_g156739_
                                                 (_%recur155416%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e155418%_)))
                                                  _%vars155419%_
                                                  _%depth155420%_)))
                                            (begin
                                              (let ((_g156740_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g156739_)
                                                           (##values-length
                                                            _g156739_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g156740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g156740_)))
                                              (let ((_%e155514%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g156739_
                                                        0)))
                                                    (_%vars155515%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g156739_
                                                        1))))
                                                (values (cons 'box _%e155514%_)
                                                        _%vars155515%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e155418%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e155418%_)))
                                                      _%vars155419%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx155332%_
                                                 _%e155418%_))))))))))))
          (let* ((_%e155342155355%_ _%stx155332%_)
                 (_%E155344155359%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e155342155355%_))))
                 (_%E155343155409%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e155342155355%_))
                        (let ((_%e155345155363%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e155342155355%_))))
                          (let ((_%hd155346155366%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155345155363%_)))
                                (_%tl155347155368%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155345155363%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl155347155368%_))
                                (let ((_%e155348155371%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl155347155368%_))))
                                  (let ((_%hd155349155374%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155348155371%_)))
                                        (_%tl155350155376%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155348155371%_))))
                                    (let ((_%expr155379%_ _%hd155349155374%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl155350155376%_))
                                          (let ((_%e155351155381%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl155350155376%_))))
                                            (let ((_%hd155352155384%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e155351155381%_)))
                                                  (_%tl155353155386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e155351155381%_))))
                                              (let* ((_%ids155389%_
                                                      _%hd155352155384%_)
                                                     (_%clauses155391%_
                                                      _%tl155353155386%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids155389%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses155391%_))
                                                        (let* ((_%ids155396%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids155389%_)))
                       (_%clauses155398%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses155391%_)))
                       (_%clause-ids155400%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses155398%_)))
                       (_%E155402%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target155404%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first155406%_
                        (if (null? _%clauses155398%_)
                            _%E155402%_
                            (car _%clause-ids155400%_))))
                  (let ((__tmp156742
                         (let ((__tmp156743
                                (let ((__tmp156745
                                       (let ((__tmp156747
                                              (cons (cons (cons _%E155402%_
                                                                '())
                                                          (cons (let ((__tmp156749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target155404%_ '()))
                              (__tmp156748
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target155404%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp156749 __tmp156748))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp156746
                                              (_%generate-body155338%_
                                               (_%generate-bindings155337%_
                                                _%target155404%_
                                                _%ids155396%_
                                                _%clauses155398%_
                                                _%clause-ids155400%_
                                                _%E155402%_)
                                               (cons _%first155406%_
                                                     (cons _%expr155379%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp156747
                                          __tmp156746)))
                                      (__tmp156744
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx155332%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp156745
                                   __tmp156744))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp156743)))
                        (__tmp156741
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx155332%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp156742 __tmp156741)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx155332%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx155332%_
                                                       _%ids155389%_))))))
                                          (_%E155344155359%_)))))
                                (_%E155344155359%_))))
                        (_%E155344155359%_)))))
            (_%E155343155409%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx156057%_)
        (let* ((_%identifier=?156059%_ 'free-identifier=?)
               (_%unwrap-e156061%_ 'syntax-e)
               (_%wrap-e156063%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx156057%_
           _%identifier=?156059%_
           _%unwrap-e156061%_
           _%wrap-e156063%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx156065%_ _%identifier=?156066%_)
        (let* ((_%unwrap-e156068%_ 'syntax-e) (_%wrap-e156070%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx156065%_
           _%identifier=?156066%_
           _%unwrap-e156068%_
           _%wrap-e156070%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx156072%_ _%identifier=?156073%_ _%unwrap-e156074%_)
        (let ((_%wrap-e156076%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx156072%_
           _%identifier=?156073%_
           _%unwrap-e156074%_
           _%wrap-e156076%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g156750_
        (let ((_g156751_ (let () (declare (not safe)) (##length _g156750_))))
          (cond ((let () (declare (not safe)) (##fx= _g156751_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g156750_))
                ((let () (declare (not safe)) (##fx= _g156751_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g156750_))
                ((let () (declare (not safe)) (##fx= _g156751_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g156750_))
                ((let () (declare (not safe)) (##fx= _g156751_ 4))
                 (apply gx#macro-expand-syntax-case__% _g156750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g156750_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx155329%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx155329%_))
            (let ((__tmp156752
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx155329%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp156752 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd155287%_ . _%rest155288%_)
        (let ((_%len155290%_ (length _%hd155287%_)))
          (let _%lp155292%_ ((_%rest155294%_ _%rest155288%_))
            (let* ((_%rest155295155303%_ _%rest155294%_)
                   (_%else155297155311%_ (lambda () '#!void))
                   (_%K155299155317%_
                    (lambda (_%rest155314%_ _%hd155315%_)
                      (if (let ((__tmp156753 (length _%hd155315%_)))
                            (declare (not safe))
                            (##fx= _%len155290%_ __tmp156753))
                          (_%lp155292%_ _%rest155314%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd155315%_))))))
              (if (pair? _%rest155295155303%_)
                  (let ((_%hd155300155320%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest155295155303%_)))
                        (_%tl155301155322%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest155295155303%_))))
                    (let* ((_%hd155325%_ _%hd155300155320%_)
                           (_%rest155327%_ _%tl155301155322%_))
                      (_%K155299155317%_ _%rest155327%_ _%hd155325%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx155237%_ _%n155238%_)
        (let _%lp155240%_ ((_%rest155243%_ _%stx155237%_) (_%r155245%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest155243%_))
              (let* ((_%g155247155254%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest155243%_)))
                     (_%E155249155258%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g155247155254%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K155250155265%_
                      (lambda (_%rest155261%_ _%hd155262%_)
                        (_%lp155240%_
                         _%rest155261%_
                         (cons _%hd155262%_ _%r155245%_)))))
                (if (pair? _%g155247155254%_)
                    (let ((_%hd155251155268%_
                           (let ()
                             (declare (not safe))
                             (##car _%g155247155254%_)))
                          (_%tl155252155270%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g155247155254%_))))
                      (let* ((_%hd155273%_ _%hd155251155268%_)
                             (_%rest155275%_ _%tl155252155270%_))
                        (_%K155250155265%_ _%rest155275%_ _%hd155273%_)))
                    (_%E155249155258%_)))
              (let _%lp155277%_ ((_%n155279%_ _%n155238%_)
                                 (_%l155280%_ _%r155245%_)
                                 (_%r155282%_ _%rest155243%_))
                (if (null? _%l155280%_)
                    (values _%l155280%_ _%r155282%_)
                    (if (fxpositive? _%n155279%_)
                        (_%lp155277%_
                         (let () (declare (not safe)) (##fx- _%n155279%_ '1))
                         (cdr _%l155280%_)
                         (cons (car _%l155280%_) _%r155282%_))
                        (values (reverse! _%l155280%_) _%r155282%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx155187%_ _%n155188%_)
        (let _%lp155190%_ ((_%rest155193%_ _%stx155187%_) (_%r155195%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest155193%_))
              (let* ((_%g155197155204%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest155193%_)))
                     (_%E155199155208%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g155197155204%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K155200155215%_
                      (lambda (_%rest155211%_ _%hd155212%_)
                        (_%lp155190%_
                         _%rest155211%_
                         (cons _%hd155212%_ _%r155195%_)))))
                (if (pair? _%g155197155204%_)
                    (let ((_%hd155201155218%_
                           (let ()
                             (declare (not safe))
                             (##car _%g155197155204%_)))
                          (_%tl155202155220%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g155197155204%_))))
                      (let* ((_%hd155223%_ _%hd155201155218%_)
                             (_%rest155225%_ _%tl155202155220%_))
                        (_%K155200155215%_ _%rest155225%_ _%hd155223%_)))
                    (_%E155199155208%_)))
              (let _%lp155227%_ ((_%n155229%_ _%n155188%_)
                                 (_%l155230%_ _%r155195%_)
                                 (_%r155232%_ _%rest155193%_))
                (if (null? _%l155230%_)
                    (vector _%l155230%_ _%r155232%_)
                    (if (fxpositive? _%n155229%_)
                        (_%lp155227%_
                         (let () (declare (not safe)) (##fx- _%n155229%_ '1))
                         (cdr _%l155230%_)
                         (cons (car _%l155230%_) _%r155232%_))
                        (vector (reverse! _%l155230%_) _%r155232%_))))))))))
