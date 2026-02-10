(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1770752337)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp187673 (list gx#expander::t))
            (__tmp187672 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp187673
         '(id depth)
         __tmp187672
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args187669%_
        (apply make-instance gx#syntax-pattern::t _%$args187669%_)))
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
      (lambda (_%self187655%_ _%stx187656%_)
        (let ((_%self187659%_ _%self187655%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx187656%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx187122%_)
        (letrec ((_%generate187124%_
                  (lambda (_%e187364%_)
                    (letrec ((_%BUG187366%_
                              (lambda (_%q187531%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx187122%_
                                         _%e187364%_
                                         _%q187531%_))))
                             (_%local-pattern-e187367%_
                              (lambda (_%pat187529%_)
                                (let ((__tmp187674
                                       (##structure-ref
                                        _%pat187529%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp187674))))
                             (_%getvar187368%_
                              (lambda (_%q187526%_ _%vars187527%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q187526%_
                                   _%vars187527%_
                                   _%BUG187366%_))))
                             (_%getarg187369%_
                              (lambda (_%arg187492%_ _%vars187493%_)
                                (let* ((_%arg187494187501%_ _%arg187492%_)
                                       (_%E187496187505%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg187494187501%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K187497187514%_
                                        (lambda (_%e187508%_ _%tag187509%_)
                                          (let ((_%$e187511%_ _%tag187509%_))
                                            (if (eq? 'ref _%$e187511%_)
                                                (_%getvar187368%_
                                                 _%e187508%_
                                                 _%vars187493%_)
                                                (if (eq? 'pattern _%$e187511%_)
                                                    (_%local-pattern-e187367%_
                                                     _%e187508%_)
                                                    (_%BUG187366%_
                                                     _%arg187492%_)))))))
                                  (if (pair? _%arg187494187501%_)
                                      (let ((_%hd187498187517%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg187494187501%_)))
                                            (_%tl187499187519%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg187494187501%_))))
                                        (let* ((_%tag187522%_
                                                _%hd187498187517%_)
                                               (_%e187524%_
                                                _%tl187499187519%_))
                                          (_%K187497187514%_
                                           _%e187524%_
                                           _%tag187522%_)))
                                      (_%E187496187505%_))))))
                      (let _%recur187371%_ ((_%e187373%_ _%e187364%_)
                                            (_%vars187374%_ '()))
                        (let* ((_%e187375187382%_ _%e187373%_)
                               (_%E187377187386%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e187375187382%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K187378187480%_
                                (lambda (_%body187389%_ _%tag187390%_)
                                  (let ((_%$e187392%_ _%tag187390%_))
                                    (if (eq? 'datum _%$e187392%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body187389%_))
                                        (if (eq? 'term _%$e187392%_)
                                            (let ((_%id187395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body187389%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id187395%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks187398%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id187395%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks187398%_)
                                                        (let ((__tmp187675
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body187389%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp187675))
                (let ((__tmp187677
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body187389%_)))
                      (__tmp187676
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body187389%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp187677
                   __tmp187676
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id187395%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body187389%_))
                                                      (_%BUG187366%_
                                                       _%e187373%_))))
                                            (if (eq? 'pattern _%$e187392%_)
                                                (_%local-pattern-e187367%_
                                                 _%body187389%_)
                                                (if (eq? 'ref _%$e187392%_)
                                                    (_%getvar187368%_
                                                     _%body187389%_
                                                     _%vars187374%_)
                                                    (if (eq? 'cons
                                                             _%$e187392%_)
                                                        (let ((__tmp187679
                                                               (_%recur187371%_
                                                                (car _%body187389%_)
                                                                _%vars187374%_))
                                                              (__tmp187678
                                                               (_%recur187371%_
                                                                (cdr _%body187389%_)
                                                                _%vars187374%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp187679
                                                           __tmp187678))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e187392%_)
                    (let ((__tmp187680
                           (_%recur187371%_ _%body187389%_ _%vars187374%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp187680))
                    (if (eq? 'box _%$e187392%_)
                        (let ((__tmp187681
                               (_%recur187371%_
                                _%body187389%_
                                _%vars187374%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp187681))
                        (if (eq? 'splice _%$e187392%_)
                            (let* ((_%body187401187412%_ _%body187389%_)
                                   (_%E187403187416%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body187401187412%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K187404187454%_
                                    (lambda (_%args187419%_
                                             _%iv187420%_
                                             _%hd187421%_
                                             _%depth187422%_)
                                      (let* ((_%targets187428%_
                                              (map (lambda (_%g187423187425%_)
                                                     (_%getarg187369%_
                                                      _%g187423187425%_
                                                      _%vars187374%_))
                                                   _%args187419%_))
                                             (_%fold-in187430%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args187419%_)))
                                             (_%fold-out187432%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args187434%_
                                              (let ((__tmp187682
                                                     (cons _%fold-out187432%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp187682
                                                 _%fold-in187430%_)))
                                             (_%lambda-body187451%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth187422%_ '1))
                                                  (let ((_%r-args187442%_
                                                         (map (lambda (_%arg187436%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg187436%_)))
                      _%args187419%_))
                (_%r-vars187443%_
                 (let ((__tmp187683
                        (lambda (_%arg187438%_ _%var187439%_ _%r187440%_)
                          (cons (cons (cdr _%arg187438%_) _%var187439%_)
                                _%r187440%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp187683
                    _%vars187374%_
                    _%args187419%_
                    _%fold-in187430%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur187371%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth187422%_ '1))
                         (cons _%hd187421%_
                               (cons (cons 'var _%fold-out187432%_)
                                     _%r-args187442%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars187443%_))
                                                  (let* ((_%hd-vars187449%_
                                                          (let ((__tmp187684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg187445%_ _%var187446%_ _%r187447%_)
                           (cons (cons (cdr _%arg187445%_) _%var187446%_)
                                 _%r187447%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp187684
                     _%vars187374%_
                     _%args187419%_
                     _%fold-in187430%_)))
                 (__tmp187685
                  (_%recur187371%_ _%hd187421%_ _%hd-vars187449%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp187685
                                                     _%fold-out187432%_)))))
                                        (let ((__tmp187689
                                               (if (let ((__tmp187690
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets187428%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp187690 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets187428%_))
                                                   '#!void))
                                              (__tmp187686
                                               (let ((__tmp187688
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args187434%_
                                                         _%lambda-body187451%_)))
                                                     (__tmp187687
                                                      (_%recur187371%_
                                                       _%iv187420%_
                                                       _%vars187374%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp187688
                                                  __tmp187687
                                                  _%targets187428%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp187689
                                           __tmp187686))))))
                              (if (pair? _%body187401187412%_)
                                  (let ((_%hd187405187457%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body187401187412%_)))
                                        (_%tl187406187459%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body187401187412%_))))
                                    (let ((_%depth187462%_ _%hd187405187457%_))
                                      (if (pair? _%tl187406187459%_)
                                          (let ((_%hd187407187464%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl187406187459%_)))
                                                (_%tl187408187466%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl187406187459%_))))
                                            (let ((_%hd187469%_
                                                   _%hd187407187464%_))
                                              (if (pair? _%tl187408187466%_)
                                                  (let ((_%hd187409187471%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl187408187466%_)))
                                                        (_%tl187410187473%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl187408187466%_))))
                                                    (let* ((_%iv187476%_
                                                            _%hd187409187471%_)
                                                           (_%args187478%_
                                                            _%tl187410187473%_))
                                                      (_%K187404187454%_
                                                       _%args187478%_
                                                       _%iv187476%_
                                                       _%hd187469%_
                                                       _%depth187462%_)))
                                                  (_%E187403187416%_))))
                                          (_%E187403187416%_))))
                                  (_%E187403187416%_)))
                            (if (eq? 'var _%$e187392%_)
                                _%body187389%_
                                (_%BUG187366%_ _%e187373%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e187375187382%_)
                              (let ((_%hd187379187483%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187375187382%_)))
                                    (_%tl187380187485%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187375187382%_))))
                                (let* ((_%tag187488%_ _%hd187379187483%_)
                                       (_%body187490%_ _%tl187380187485%_))
                                  (_%K187378187480%_
                                   _%body187490%_
                                   _%tag187488%_)))
                              (_%E187377187386%_)))))))
                 (_%parse187125%_
                  (lambda (_%e187166%_)
                    (letrec ((_%make-cons187168%_
                              (lambda (_%hd187356%_ _%tl187357%_)
                                (let ((_g187691_ _%hd187356%_)
                                      (_g187693_ _%tl187357%_))
                                  (begin
                                    (let ((_g187692_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g187691_)
                                                 (##values-length _g187691_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g187692_ 2)))
                                          (error "Context expects 2 values"
                                                 _g187692_)))
                                    (let ((_g187694_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g187693_)
                                                 (##values-length _g187693_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g187694_ 2)))
                                          (error "Context expects 2 values"
                                                 _g187694_)))
                                    (let ((_%hd-e187359%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g187691_ 0)))
                                          (_%hd-vars187360%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g187691_ 1))))
                                      (let ((_%tl-e187361%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g187693_ 0)))
                                            (_%tl-vars187362%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g187693_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e187359%_
                                                            _%tl-e187361%_))
                                                (append _%hd-vars187360%_
                                                        _%tl-vars187362%_))))))))
                             (_%make-splice187169%_
                              (lambda (_%where187292%_
                                       _%depth187293%_
                                       _%hd187294%_
                                       _%tl187295%_)
                                (let ((_g187695_ _%hd187294%_)
                                      (_g187697_ _%tl187295%_))
                                  (begin
                                    (let ((_g187696_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g187695_)
                                                 (##values-length _g187695_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g187696_ 2)))
                                          (error "Context expects 2 values"
                                                 _g187696_)))
                                    (let ((_g187698_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g187697_)
                                                 (##values-length _g187697_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g187698_ 2)))
                                          (error "Context expects 2 values"
                                                 _g187698_)))
                                    (let ((_%hd-e187297%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g187695_ 0)))
                                          (_%hd-vars187298%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g187695_ 1))))
                                      (let ((_%tl-e187299%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g187697_ 0)))
                                            (_%tl-vars187300%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g187697_ 1))))
                                        (let _%lp187302%_ ((_%rest187304%_
                                                            _%hd-vars187298%_)
                                                           (_%targets187305%_
                                                            '())
                                                           (_%vars187306%_
                                                            _%tl-vars187300%_))
                                          (let* ((_%rest187307187317%_
                                                  _%rest187304%_)
                                                 (_%else187309187325%_
                                                  (lambda ()
                                                    (if (null? _%targets187305%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx187122%_
                                                           _%where187292%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth187293%_
                                    (cons _%hd-e187297%_
                                          (cons _%tl-e187299%_
                                                _%targets187305%_))))
                        _%vars187306%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K187311187337%_
                                                  (lambda (_%rest187328%_
                                                           _%hd-pat187329%_
                                                           _%hd-depth*187330%_)
                                                    (let ((_%hd-depth187332%_
                                                           (fx- _%hd-depth*187330%_
                                                                _%depth187293%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth187332%_))
                                                          (_%lp187302%_
                                                           _%rest187328%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat187329%_)
                         _%targets187305%_)
                   (cons (cons _%hd-depth187332%_ _%hd-pat187329%_)
                         _%vars187306%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth187332%_))
                      (_%lp187302%_
                       _%rest187328%_
                       (cons (cons 'pattern _%hd-pat187329%_)
                             _%targets187305%_)
                       _%vars187306%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx187122%_
                         _%where187292%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest187307187317%_)
                                                (let ((_%hd187312187340%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest187307187317%_)))
                                                      (_%tl187313187342%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest187307187317%_))))
                                                  (if (pair? _%hd187312187340%_)
                                                      (let ((_%hd187314187345%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd187312187340%_)))
                    (_%tl187315187347%_
                     (let () (declare (not safe)) (##cdr _%hd187312187340%_))))
                (let* ((_%hd-depth*187350%_ _%hd187314187345%_)
                       (_%hd-pat187352%_ _%tl187315187347%_)
                       (_%rest187354%_ _%tl187313187342%_))
                  (_%K187311187337%_
                   _%rest187354%_
                   _%hd-pat187352%_
                   _%hd-depth*187350%_)))
              (_%else187309187325%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else187309187325%_))))))))))
                             (_%recur187170%_
                              (lambda (_%e187175%_ _%is-e?187176%_)
                                (if (_%is-e?187176%_ _%e187175%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx187122%_))
                                    (if (gx#syntax-local-pattern? _%e187175%_)
                                        (let* ((_%pat187180%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e187175%_)))
                                               (_%depth187182%_
                                                (##structure-ref
                                                 _%pat187180%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth187182%_)
                                              (values (cons 'ref _%pat187180%_)
                                                      (cons (cons _%depth187182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat187180%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat187180%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e187175%_))
                                            (values (cons 'term _%e187175%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e187175%_))
                                                (let* ((_%e187186187193%_
                                                        _%e187175%_)
                                                       (_%E187188187197%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e187186187193%_))))
                                                       (_%E187187187279%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e187186187193%_))
                      (let ((_%e187189187201%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e187186187193%_))))
                        (let ((_%hd187190187204%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187189187201%_)))
                              (_%tl187191187206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187189187201%_))))
                          (let* ((_%hd187209%_ _%hd187190187204%_)
                                 (_%rest187211%_ _%tl187191187206%_))
                            (if (_%is-e?187176%_ _%hd187209%_)
                                (let* ((_%e187212187219%_ _%rest187211%_)
                                       (_%E187214187223%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx187122%_
                                             _%e187175%_))))
                                       (_%E187213187237%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e187212187219%_))
                                              (let ((_%e187215187227%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e187212187219%_))))
                                                (let ((_%hd187216187230%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e187215187227%_)))
                                                      (_%tl187217187232%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e187215187227%_))))
                                                  (let ((_%rest187235%_
                                                         _%hd187216187230%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl187217187232%_))
                                                        (_%recur187170%_
                                                         _%rest187235%_
                                                         false)
                                                        (_%E187214187223%_)))))
                                              (_%E187214187223%_)))))
                                  (_%E187213187237%_))
                                (let _%lp187241%_ ((_%rest187243%_
                                                    _%rest187211%_)
                                                   (_%depth187244%_ '0))
                                  (let* ((_%e187245187252%_ _%rest187243%_)
                                         (_%E187247187256%_
                                          (lambda ()
                                            (if (fxpositive? _%depth187244%_)
                                                (_%make-splice187169%_
                                                 _%e187175%_
                                                 _%depth187244%_
                                                 (_%recur187170%_
                                                  _%hd187209%_
                                                  _%is-e?187176%_)
                                                 (_%recur187170%_
                                                  _%rest187243%_
                                                  _%is-e?187176%_))
                                                (_%make-cons187168%_
                                                 (_%recur187170%_
                                                  _%hd187209%_
                                                  _%is-e?187176%_)
                                                 (_%recur187170%_
                                                  _%rest187243%_
                                                  _%is-e?187176%_)))))
                                         (_%E187246187275%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e187245187252%_))
                                                (let ((_%e187248187260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e187245187252%_))))
                                                  (let ((_%hd187249187263%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e187248187260%_)))
                                                        (_%tl187250187265%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e187248187260%_))))
                                                    (let* ((_%rest-hd187268%_
                                                            _%hd187249187263%_)
                                                           (_%rest-tl187270%_
                                                            _%tl187250187265%_))
                                                      (if (_%is-e?187176%_
                                                           _%rest-hd187268%_)
                                                          (_%lp187241%_
                                                           _%rest-tl187270%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth187244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth187244%_)
                      (_%make-splice187169%_
                       _%e187175%_
                       _%depth187244%_
                       (_%recur187170%_ _%hd187209%_ _%is-e?187176%_)
                       (_%recur187170%_ _%rest187243%_ _%is-e?187176%_))
                      (_%make-cons187168%_
                       (_%recur187170%_ _%hd187209%_ _%is-e?187176%_)
                       (_%recur187170%_ _%rest187243%_ _%is-e?187176%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E187247187256%_)))))
                                    (_%E187246187275%_)))))))
                      (_%E187188187197%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E187187187279%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e187175%_))
                                                    (let ((_g187699_
                                                           (_%recur187170%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e187175%_)))
                    _%is-e?187176%_)))
              (begin
                (let ((_g187700_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g187699_)
                             (##values-length _g187699_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g187700_ 2)))
                      (error "Context expects 2 values" _g187700_)))
                (let ((_%e187284%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g187699_ 0)))
                      (_%vars187285%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g187699_ 1))))
                  (values (cons 'vector _%e187284%_) _%vars187285%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e187175%_))
                                                        (let ((_g187701_
                                                               (_%recur187170%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e187175%_)))
                        _%is-e?187176%_)))
                  (begin
                    (let ((_g187702_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g187701_)
                                 (##values-length _g187701_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g187702_ 2)))
                          (error "Context expects 2 values" _g187702_)))
                    (let ((_%e187288%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g187701_ 0)))
                          (_%vars187289%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g187701_ 1))))
                      (values (cons 'box _%e187288%_) _%vars187289%_))))
                (values (cons 'datum _%e187175%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g187703_
                             (_%recur187170%_ _%e187166%_ gx#ellipsis?)))
                        (begin
                          (let ((_g187704_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g187703_)
                                       (##values-length _g187703_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g187704_ 2)))
                                (error "Context expects 2 values" _g187704_)))
                          (let ((_%tree187172%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g187703_ 0)))
                                (_%vars187173%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g187703_ 1))))
                            (if (null? _%vars187173%_)
                                _%tree187172%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx187122%_
                                   _%vars187173%_))))))))))
          (let* ((_%e187126187136%_ _%stx187122%_)
                 (_%E187128187140%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx187122%_))))
                 (_%E187127187162%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e187126187136%_))
                        (let ((_%e187129187144%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e187126187136%_))))
                          (let ((_%hd187130187147%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e187129187144%_)))
                                (_%tl187131187149%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e187129187144%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl187131187149%_))
                                (let ((_%e187132187152%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl187131187149%_))))
                                  (let ((_%hd187133187155%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e187132187152%_)))
                                        (_%tl187134187157%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e187132187152%_))))
                                    (let ((_%form187160%_ _%hd187133187155%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl187134187157%_))
                                          (let ((__tmp187706
                                                 (_%generate187124%_
                                                  (_%parse187125%_
                                                   _%form187160%_)))
                                                (__tmp187705
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx187122%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp187706
                                             __tmp187705))
                                          (_%E187128187140%_)))))
                                (_%E187128187140%_))))
                        (_%E187128187140%_)))))
            (_%E187127187162%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx186371%_
               _%identifier=?186372%_
               _%unwrap-e186373%_
               _%wrap-e186374%_)
        (letrec ((_%generate-bindings186376%_
                  (lambda (_%target186986%_
                           _%ids186987%_
                           _%clauses186988%_
                           _%clause-ids186989%_
                           _%E186990%_)
                    (letrec ((_%generate1186992%_
                              (lambda (_%clause187089%_
                                       _%clause-id187090%_
                                       _%E187091%_)
                                (cons (cons _%clause-id187090%_ '())
                                      (cons (let ((__tmp187708
                                                   (cons _%target186986%_ '()))
                                                  (__tmp187707
                                                   (_%generate-clause186378%_
                                                    _%target186986%_
                                                    _%ids186987%_
                                                    _%clause187089%_
                                                    _%E187091%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp187708
                                               __tmp187707))
                                            '())))))
                      (let _%lp186994%_ ((_%rest186996%_ _%clauses186988%_)
                                         (_%rest-ids186997%_
                                          _%clause-ids186989%_)
                                         (_%bindings186998%_ '()))
                        (let* ((_%rest186999187007%_ _%rest186996%_)
                               (_%else187001187015%_
                                (lambda () _%bindings186998%_))
                               (_%K187003187077%_
                                (lambda (_%rest187018%_ _%clause187019%_)
                                  (let* ((_%rest-ids187020187027%_
                                          _%rest-ids186997%_)
                                         (_%E187022187031%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids187020187027%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K187023187065%_
                                          (lambda (_%rest-ids187034%_
                                                   _%clause-id187035%_)
                                            (let* ((_%rest-ids187036187044%_
                                                    _%rest-ids187034%_)
                                                   (_%else187038187052%_
                                                    (lambda ()
                                                      (cons (_%generate1186992%_
                                                             _%clause187019%_
                                                             _%clause-id187035%_
                                                             _%E186990%_)
                                                            _%bindings186998%_)))
                                                   (_%K187040187057%_
                                                    (lambda (_%next-clause-id187055%_)
                                                      (_%lp186994%_
                                                       _%rest187018%_
                                                       _%rest-ids187034%_
                                                       (cons (_%generate1186992%_
                                                              _%clause187019%_
                                                              _%clause-id187035%_
                                                              _%next-clause-id187055%_)
                                                             _%bindings186998%_)))))
                                              (if (pair? _%rest-ids187036187044%_)
                                                  (let* ((_%hd187041187060%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids187036187044%_)))
                                                         (_%next-clause-id187063%_
                                                          _%hd187041187060%_))
                                                    (_%K187040187057%_
                                                     _%next-clause-id187063%_))
                                                  (_%else187038187052%_))))))
                                    (if (pair? _%rest-ids187020187027%_)
                                        (let ((_%hd187024187068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids187020187027%_)))
                                              (_%tl187025187070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids187020187027%_))))
                                          (let* ((_%clause-id187073%_
                                                  _%hd187024187068%_)
                                                 (_%rest-ids187075%_
                                                  _%tl187025187070%_))
                                            (_%K187023187065%_
                                             _%rest-ids187075%_
                                             _%clause-id187073%_)))
                                        (_%E187022187031%_))))))
                          (if (pair? _%rest186999187007%_)
                              (let ((_%hd187004187080%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest186999187007%_)))
                                    (_%tl187005187082%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest186999187007%_))))
                                (let* ((_%clause187085%_ _%hd187004187080%_)
                                       (_%rest187087%_ _%tl187005187082%_))
                                  (_%K187003187077%_
                                   _%rest187087%_
                                   _%clause187085%_)))
                              (_%else187001187015%_)))))))
                 (_%generate-body186377%_
                  (lambda (_%bindings186946%_ _%body186947%_)
                    (let _%recur186949%_ ((_%rest186951%_ _%bindings186946%_))
                      (let* ((_%rest186952186960%_ _%rest186951%_)
                             (_%else186954186968%_ (lambda () _%body186947%_))
                             (_%K186956186974%_
                              (lambda (_%rest186971%_ _%hd186972%_)
                                (let ((__tmp187710 (cons _%hd186972%_ '()))
                                      (__tmp187709
                                       (_%recur186949%_ _%rest186971%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp187710
                                   __tmp187709)))))
                        (if (pair? _%rest186952186960%_)
                            (let ((_%hd186957186977%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest186952186960%_)))
                                  (_%tl186958186979%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest186952186960%_))))
                              (let* ((_%hd186982%_ _%hd186957186977%_)
                                     (_%rest186984%_ _%tl186958186979%_))
                                (_%K186956186974%_
                                 _%rest186984%_
                                 _%hd186982%_)))
                            (_%else186954186968%_))))))
                 (_%generate-clause186378%_
                  (lambda (_%target186809%_
                           _%ids186810%_
                           _%clause186811%_
                           _%E186812%_)
                    (letrec ((_%generate1186814%_
                              (lambda (_%hd186901%_
                                       _%fender186902%_
                                       _%body186903%_)
                                (let ((_g187711_
                                       (_%parse-clause186380%_
                                        _%hd186901%_
                                        _%ids186810%_)))
                                  (begin
                                    (let ((_g187712_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g187711_)
                                                 (##values-length _g187711_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g187712_ 2)))
                                          (error "Context expects 2 values"
                                                 _g187712_)))
                                    (let ((_%e186905%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g187711_ 0)))
                                          (_%mvars186906%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g187711_ 1))))
                                      (let* ((_%pvars186908%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars186906%_))))
                                             (_%E186910%_
                                              (cons _%E186812%_
                                                    (cons _%target186809%_
                                                          '())))
                                             (_%K186943%_
                                              (let ((__tmp187713
                                                     (let ((__tmp187715
                                                            (map (lambda (_%mvar186912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar186913%_)
                           (let* ((_%mvar186914186921%_ _%mvar186912%_)
                                  (_%E186916186925%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar186914186921%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K186917186931%_
                                   (lambda (_%depth186928%_ _%id186929%_)
                                     (cons _%id186929%_
                                           (cons (let ((__tmp187717
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id186929%_)))
                                                       (__tmp187716
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar186913%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp187717
                                                    __tmp187716
                                                    _%depth186928%_))
                                                 '())))))
                             (if (pair? _%mvar186914186921%_)
                                 (let ((_%hd186918186934%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar186914186921%_)))
                                       (_%tl186919186936%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar186914186921%_))))
                                   (let* ((_%id186939%_ _%hd186918186934%_)
                                          (_%depth186941%_ _%tl186919186936%_))
                                     (_%K186917186931%_
                                      _%depth186941%_
                                      _%id186939%_)))
                                 (_%E186916186925%_))))
                         _%mvars186906%_
                         _%pvars186908%_))
                   (__tmp187714
                    (if (eq? _%fender186902%_ '#t)
                        _%body186903%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender186902%_
                           _%body186903%_
                           _%E186910%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp187715 __tmp187714))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars186908%_
                                                 __tmp187713))))
                                        (_%generate-match186379%_
                                         _%hd186901%_
                                         _%target186809%_
                                         _%e186905%_
                                         _%mvars186906%_
                                         _%K186943%_
                                         _%E186910%_))))))))
                      (let* ((_%e186815186835%_ _%clause186811%_)
                             (_%E186824186839%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e186815186835%_))))
                             (_%E186817186873%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e186815186835%_))
                                    (let ((_%e186825186843%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e186815186835%_))))
                                      (let ((_%hd186826186846%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e186825186843%_)))
                                            (_%tl186827186848%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e186825186843%_))))
                                        (let ((_%hd186851%_
                                               _%hd186826186846%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl186827186848%_))
                                              (let ((_%e186828186853%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl186827186848%_))))
                                                (let ((_%hd186829186856%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e186828186853%_)))
                                                      (_%tl186830186858%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e186828186853%_))))
                                                  (let ((_%fender186861%_
                                                         _%hd186829186856%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl186830186858%_))
                                                        (let ((_%e186831186863%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl186830186858%_))))
                  (let ((_%hd186832186866%_
                         (let ()
                           (declare (not safe))
                           (##car _%e186831186863%_)))
                        (_%tl186833186868%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e186831186863%_))))
                    (let ((_%body186871%_ _%hd186832186866%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186833186868%_))
                          (_%generate1186814%_
                           _%hd186851%_
                           _%fender186861%_
                           _%body186871%_)
                          (_%E186824186839%_)))))
                (_%E186824186839%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E186824186839%_)))))
                                    (_%E186824186839%_))))
                             (_%E186816186897%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e186815186835%_))
                                    (let ((_%e186818186877%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e186815186835%_))))
                                      (let ((_%hd186819186880%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e186818186877%_)))
                                            (_%tl186820186882%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e186818186877%_))))
                                        (let ((_%hd186885%_
                                               _%hd186819186880%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl186820186882%_))
                                              (let ((_%e186821186887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl186820186882%_))))
                                                (let ((_%hd186822186890%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e186821186887%_)))
                                                      (_%tl186823186892%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e186821186887%_))))
                                                  (let ((_%body186895%_
                                                         _%hd186822186890%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl186823186892%_))
                                                        (_%generate1186814%_
                                                         _%hd186885%_
                                                         '#t
                                                         _%body186895%_)
                                                        (_%E186817186873%_)))))
                                              (_%E186817186873%_)))))
                                    (_%E186817186873%_)))))
                        (_%E186816186897%_)))))
                 (_%generate-match186379%_
                  (lambda (_%where186558%_
                           _%target186559%_
                           _%hd186560%_
                           _%mvars186561%_
                           _%K186562%_
                           _%E186563%_)
                    (letrec ((_%BUG186565%_
                              (lambda (_%q186807%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx186371%_
                                         _%hd186560%_
                                         _%q186807%_))))
                             (_%recur186566%_
                              (lambda (_%e186657%_
                                       _%vars186658%_
                                       _%target186659%_
                                       _%E186660%_
                                       _%k186661%_)
                                (let* ((_%e186662186669%_ _%e186657%_)
                                       (_%E186664186673%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e186662186669%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K186665186795%_
                                        (lambda (_%body186676%_ _%tag186677%_)
                                          (let ((_%$e186679%_ _%tag186677%_))
                                            (if (eq? 'any _%$e186679%_)
                                                (_%k186661%_ _%vars186658%_)
                                                (if (eq? 'id _%$e186679%_)
                                                    (let ((__tmp187722
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target186659%_)))
                                                          (__tmp187718
                                                           (let ((__tmp187720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp187721
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e186374%_
                                    _%body186676%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?186372%_
                             __tmp187721
                             _%target186659%_)))
                         (__tmp187719 (_%k186661%_ _%vars186658%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp187720 __tmp187719 _%E186660%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp187722 __tmp187718 _%E186660%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e186679%_)
                                                        (_%k186661%_
                                                         (cons (cons _%body186676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target186659%_)
                       _%vars186658%_))
                (if (eq? 'cons _%$e186679%_)
                    (let ((_%$e186682%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd186683%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl186684%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp187728
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target186659%_)))
                            (__tmp187723
                             (let ((__tmp187727
                                    (cons (cons (cons _%$e186682%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e186373%_
                                                         _%target186659%_))
                                                      '()))
                                          '()))
                                   (__tmp187724
                                    (let ((__tmp187726
                                           (cons (cons (cons _%$hd186683%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e186682%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl186684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e186682%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp187725
                                           (let* ((_%body186685186692%_
                                                   _%body186676%_)
                                                  (_%E186687186696%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body186685186692%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K186688186704%_
                                                   (lambda (_%tl186699%_
                                                            _%hd186700%_)
                                                     (_%recur186566%_
                                                      _%hd186700%_
                                                      _%vars186658%_
                                                      _%$hd186683%_
                                                      _%E186660%_
                                                      (lambda (_%vars186702%_)
                                                        (_%recur186566%_
                                                         _%tl186699%_
                                                         _%vars186702%_
                                                         _%$tl186684%_
                                                         _%E186660%_
                                                         _%k186661%_))))))
                                             (if (pair? _%body186685186692%_)
                                                 (let ((_%hd186689186707%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body186685186692%_)))
                                                       (_%tl186690186709%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body186685186692%_))))
                                                   (let* ((_%hd186712%_
                                                           _%hd186689186707%_)
                                                          (_%tl186714%_
                                                           _%tl186690186709%_))
                                                     (_%K186688186704%_
                                                      _%tl186714%_
                                                      _%hd186712%_)))
                                                 (_%E186687186696%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp187726
                                       __tmp187725))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp187727
                                __tmp187724))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp187728
                         __tmp187723
                         _%E186660%_)))
                    (if (eq? 'splice _%$e186679%_)
                        (let* ((_%body186715186722%_ _%body186676%_)
                               (_%E186717186726%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body186715186722%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K186718186777%_
                                (lambda (_%tl186729%_ _%hd186730%_)
                                  (let* ((_%rlen186732%_
                                          (_%splice-rlen186567%_ _%tl186729%_))
                                         (_%$target186734%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd186736%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl186738%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp186740%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e186742%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd186744%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl186746%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars186748%_
                                          (_%splice-vars186568%_ _%hd186730%_))
                                         (_%lvars186750%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars186748%_)))
                                         (_%tlvars186752%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars186748%_)))
                                         (_%linit186756%_
                                          (map (lambda (_%var186754%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars186750%_)))
                                    (letrec ((_%make-loop186759%_
                                              (lambda (_%vars186763%_)
                                                (let ((__tmp187730
                                                       (cons (cons (cons _%$lp186740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp187743
                                        (cons _%$hd186736%_ _%lvars186750%_))
                                       (__tmp187731
                                        (let ((__tmp187742
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd186736%_)))
                                              (__tmp187736
                                               (let ((__tmp187741
                                                      (cons (cons (cons _%$lp-e186742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e186373%_
                                   _%$hd186736%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp187737
                                                      (let ((__tmp187740
                                                             (cons (cons (cons _%$lp-hd186744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e186742%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl186746%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e186742%_))
                                             '()))
                                 '())))
                    (__tmp187738
                     (_%recur186566%_
                      _%hd186730%_
                      '()
                      _%$lp-hd186744%_
                      _%E186660%_
                      (lambda (_%hdvars186765%_)
                        (cons _%$lp186740%_
                              (cons _%$lp-tl186746%_
                                    (map (lambda (_%svar186767%_
                                                  _%lvar186768%_)
                                           (let ((__tmp187739
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar186767%_
                                                     _%hdvars186765%_
                                                     _%BUG186565%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp187739
                                              _%lvar186768%_)))
                                         _%svars186748%_
                                         _%lvars186750%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp187740 __tmp187738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp187741
                                                  __tmp187737)))
                                              (__tmp187732
                                               (let ((__tmp187735
                                                      (map (lambda (_%lvar186770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar186771%_)
                     (cons (cons _%tlvar186771%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar186770%_))
                                 '())))
                   _%lvars186750%_
                   _%tlvars186752%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp187733
                                                      (_%k186661%_
                                                       (let ((__tmp187734
                                                              (lambda (_%svar186773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar186774%_
                               _%r186775%_)
                        (cons (cons _%svar186773%_ _%tlvar186774%_)
                              _%r186775%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp187734
                  _%vars186763%_
                  _%svars186748%_
                  _%tlvars186752%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp187735
                                                  __tmp187733))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp187742
                                           __tmp187736
                                           __tmp187732))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp187743
                                    __tmp187731))
                                 '()))
                     '()))
              (__tmp187729
               (cons _%$lp186740%_ (cons _%$target186734%_ _%linit186756%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp187730
                                                   __tmp187729)))))
                                      (let ((_%body186761%_
                                             (let ((__tmp187745
                                                    (cons (cons (cons _%$target186734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl186738%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target186659%_
                                 _%rlen186732%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp187744
                                                    (_%recur186566%_
                                                     _%tl186729%_
                                                     _%vars186658%_
                                                     _%$tl186738%_
                                                     _%E186660%_
                                                     _%make-loop186759%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp187745
                                                __tmp187744))))
                                        (let ((__tmp187749
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target186659%_)))
                                              (__tmp187746
                                               (if (zero? _%rlen186732%_)
                                                   _%body186761%_
                                                   (let ((__tmp187747
                                                          (let ((__tmp187748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target186659%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp187748 _%rlen186732%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp187747
                                                      _%body186761%_
                                                      _%E186660%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp187749
                                           __tmp187746
                                           _%E186660%_))))))))
                          (if (pair? _%body186715186722%_)
                              (let ((_%hd186719186780%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body186715186722%_)))
                                    (_%tl186720186782%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body186715186722%_))))
                                (let* ((_%hd186785%_ _%hd186719186780%_)
                                       (_%tl186787%_ _%tl186720186782%_))
                                  (_%K186718186777%_
                                   _%tl186787%_
                                   _%hd186785%_)))
                              (_%E186717186726%_)))
                        (if (eq? 'null _%$e186679%_)
                            (let ((__tmp187751
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target186659%_)))
                                  (__tmp187750 (_%k186661%_ _%vars186658%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp187751
                               __tmp187750
                               _%E186660%_))
                            (if (eq? 'vector _%$e186679%_)
                                (let ((_%$e186789%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp187756
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target186659%_)))
                                        (__tmp187752
                                         (let ((__tmp187754
                                                (cons (cons (cons _%$e186789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp187755
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e186373%_
                                    _%target186659%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp187755))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp187753
                                                (_%recur186566%_
                                                 _%body186676%_
                                                 _%vars186658%_
                                                 _%$e186789%_
                                                 _%E186660%_
                                                 _%k186661%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp187754
                                            __tmp187753))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp187756
                                     __tmp187752
                                     _%E186660%_)))
                                (if (eq? 'box _%$e186679%_)
                                    (let ((_%$e186791%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp187761
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target186659%_)))
                                            (__tmp187757
                                             (let ((__tmp187759
                                                    (cons (cons (cons _%$e186791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp187760
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e186373%_
                                        _%target186659%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp187760))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp187758
                                                    (_%recur186566%_
                                                     _%body186676%_
                                                     _%vars186658%_
                                                     _%$e186791%_
                                                     _%E186660%_
                                                     _%k186661%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp187759
                                                __tmp187758))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp187761
                                         __tmp187757
                                         _%E186660%_)))
                                    (if (eq? 'datum _%$e186679%_)
                                        (let ((_%$e186793%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp187767
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target186659%_)))
                                                (__tmp187762
                                                 (let ((__tmp187766
                                                        (cons (cons (cons _%$e186793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target186659%_))
                                  '()))
                      '()))
               (__tmp187763
                (let ((__tmp187765
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e186793%_ _%body186676%_)))
                      (__tmp187764 (_%k186661%_ _%vars186658%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp187765 __tmp187764 _%E186660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp187766
                                                    __tmp187763))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp187767
                                             __tmp187762
                                             _%E186660%_)))
                                        (_%BUG186565%_
                                         _%e186657%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e186662186669%_)
                                      (let ((_%hd186666186798%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e186662186669%_)))
                                            (_%tl186667186800%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e186662186669%_))))
                                        (let* ((_%tag186803%_
                                                _%hd186666186798%_)
                                               (_%body186805%_
                                                _%tl186667186800%_))
                                          (_%K186665186795%_
                                           _%body186805%_
                                           _%tag186803%_)))
                                      (_%E186664186673%_)))))
                             (_%splice-rlen186567%_
                              (lambda (_%e186619%_)
                                (let _%lp186621%_ ((_%e186623%_ _%e186619%_)
                                                   (_%n186624%_ '0))
                                  (let* ((_%e186625186632%_ _%e186623%_)
                                         (_%E186627186636%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e186625186632%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K186628186645%_
                                          (lambda (_%body186639%_
                                                   _%tag186640%_)
                                            (let ((_%$e186642%_ _%tag186640%_))
                                              (if (eq? 'splice _%$e186642%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx186371%_
                                                     _%where186558%_))
                                                  (if (eq? 'cons _%$e186642%_)
                                                      (_%lp186621%_
                                                       (cdr _%body186639%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n186624%_
                                                                '1)))
                                                      _%n186624%_))))))
                                    (if (pair? _%e186625186632%_)
                                        (let ((_%hd186629186648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e186625186632%_)))
                                              (_%tl186630186650%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e186625186632%_))))
                                          (let* ((_%tag186653%_
                                                  _%hd186629186648%_)
                                                 (_%body186655%_
                                                  _%tl186630186650%_))
                                            (_%K186628186645%_
                                             _%body186655%_
                                             _%tag186653%_)))
                                        (_%E186627186636%_))))))
                             (_%splice-vars186568%_
                              (lambda (_%e186575%_)
                                (let _%recur186577%_ ((_%e186579%_ _%e186575%_)
                                                      (_%vars186580%_ '()))
                                  (let* ((_%e186581186588%_ _%e186579%_)
                                         (_%E186583186592%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e186581186588%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K186584186607%_
                                          (lambda (_%body186595%_
                                                   _%tag186596%_)
                                            (let ((_%$e186598%_ _%tag186596%_))
                                              (if (eq? 'var _%$e186598%_)
                                                  (cons _%body186595%_
                                                        _%vars186580%_)
                                                  (if (or (eq? 'cons
                                                               _%$e186598%_)
                                                          (eq? 'splice
                                                               _%$e186598%_))
                                                      (_%recur186577%_
                                                       (cdr _%body186595%_)
                                                       (_%recur186577%_
                                                        (car _%body186595%_)
                                                        _%vars186580%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e186598%_)
                      (eq? 'box _%$e186598%_))
                  (_%recur186577%_ _%body186595%_ _%vars186580%_)
                  _%vars186580%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e186581186588%_)
                                        (let ((_%hd186585186610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e186581186588%_)))
                                              (_%tl186586186612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e186581186588%_))))
                                          (let* ((_%tag186615%_
                                                  _%hd186585186610%_)
                                                 (_%body186617%_
                                                  _%tl186586186612%_))
                                            (_%K186584186607%_
                                             _%body186617%_
                                             _%tag186615%_)))
                                        (_%E186583186592%_))))))
                             (_%make-body186569%_
                              (lambda (_%vars186571%_)
                                (cons _%K186562%_
                                      (map (lambda (_%mvar186573%_)
                                             (let ((__tmp187768
                                                    (car _%mvar186573%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp187768
                                                _%vars186571%_
                                                _%BUG186565%_)))
                                           _%mvars186561%_)))))
                      (_%recur186566%_
                       _%hd186560%_
                       '()
                       _%target186559%_
                       _%E186563%_
                       _%make-body186569%_))))
                 (_%parse-clause186380%_
                  (lambda (_%hd186452%_ _%ids186453%_)
                    (let _%recur186455%_ ((_%e186457%_ _%hd186452%_)
                                          (_%vars186458%_ '())
                                          (_%depth186459%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e186457%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e186457%_))
                              (values '(any) _%vars186458%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e186457%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx186371%_
                                     _%hd186452%_))
                                  (if (let ((__tmp187769
                                             (lambda (_%id186464%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e186457%_
                                                  _%id186464%_)))))
                                        (declare (not safe))
                                        (__find __tmp187769 _%ids186453%_))
                                      (values (cons 'id _%e186457%_)
                                              _%vars186458%_)
                                      (if (let ((__tmp187770
                                                 (lambda (_%var186467%_)
                                                   (let ((__tmp187771
                                                          (car _%var186467%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e186457%_
                                                      __tmp187771)))))
                                            (declare (not safe))
                                            (__find __tmp187770
                                                    _%vars186458%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx186371%_
                                             _%e186457%_))
                                          (values (cons 'var _%e186457%_)
                                                  (cons (cons _%e186457%_
                                                              _%depth186459%_)
                                                        _%vars186458%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e186457%_))
                              (let* ((_%e186471186478%_ _%e186457%_)
                                     (_%E186473186482%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e186471186478%_))))
                                     (_%E186472186543%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e186471186478%_))
                                            (let ((_%e186474186486%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e186471186478%_))))
                                              (let ((_%hd186475186489%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e186474186486%_)))
                                                    (_%tl186476186491%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e186474186486%_))))
                                                (let* ((_%hd186494%_
                                                        _%hd186475186489%_)
                                                       (_%rest186496%_
                                                        _%tl186476186491%_)
                                                       (_%make-pair186511%_
                                                        (lambda (_%tag186498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd186499%_
                         _%tl186500%_)
                  (let* ((_%hd-depth186502%_
                          (if (eq? _%tag186498%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth186459%_ '1))
                              _%depth186459%_))
                         (_g187772_
                          (_%recur186455%_
                           _%hd186499%_
                           _%vars186458%_
                           _%hd-depth186502%_)))
                    (begin
                      (let ((_g187773_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g187772_)
                                   (##values-length _g187772_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g187773_ 2)))
                            (error "Context expects 2 values" _g187773_)))
                      (let ((_%hd186504%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g187772_ 0)))
                            (_%vars186505%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g187772_ 1))))
                        (let ((_g187774_
                               (_%recur186455%_
                                _%tl186500%_
                                _%vars186505%_
                                _%depth186459%_)))
                          (begin
                            (let ((_g187775_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g187774_)
                                         (##values-length _g187774_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g187775_ 2)))
                                  (error "Context expects 2 values"
                                         _g187775_)))
                            (let ((_%tl186507%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g187774_ 0)))
                                  (_%vars186508%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g187774_ 1))))
                              (values (cons _%tag186498%_
                                            (cons _%hd186504%_ _%tl186507%_))
                                      _%vars186508%_)))))))))
               (_%e186512186519%_ _%rest186496%_)
               (_%E186514186523%_
                (lambda ()
                  (_%make-pair186511%_ 'cons _%hd186494%_ _%rest186496%_)))
               (_%E186513186539%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e186512186519%_))
                      (let ((_%e186515186527%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e186512186519%_))))
                        (let ((_%hd186516186530%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186515186527%_)))
                              (_%tl186517186532%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186515186527%_))))
                          (let* ((_%rest-hd186535%_ _%hd186516186530%_)
                                 (_%rest-tl186537%_ _%tl186517186532%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd186535%_))
                                (_%make-pair186511%_
                                 'splice
                                 _%hd186494%_
                                 _%rest-tl186537%_)
                                (_%make-pair186511%_
                                 'cons
                                 _%hd186494%_
                                 _%rest186496%_)))))
                      (_%E186514186523%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186513186539%_))))
                                            (_%E186473186482%_)))))
                                (_%E186472186543%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e186457%_))
                                  (values '(null) _%vars186458%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e186457%_))
                                      (let ((_g187776_
                                             (_%recur186455%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e186457%_)))
                                              _%vars186458%_
                                              _%depth186459%_)))
                                        (begin
                                          (let ((_g187777_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g187776_)
                                                       (##values-length
                                                        _g187776_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g187777_ 2)))
                                                (error "Context expects 2 values"
                                                       _g187777_)))
                                          (let ((_%e186549%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g187776_ 0)))
                                                (_%vars186550%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g187776_
                                                    1))))
                                            (values (cons 'vector _%e186549%_)
                                                    _%vars186550%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e186457%_))
                                          (let ((_g187778_
                                                 (_%recur186455%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e186457%_)))
                                                  _%vars186458%_
                                                  _%depth186459%_)))
                                            (begin
                                              (let ((_g187779_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g187778_)
                                                           (##values-length
                                                            _g187778_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g187779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g187779_)))
                                              (let ((_%e186553%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g187778_
                                                        0)))
                                                    (_%vars186554%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g187778_
                                                        1))))
                                                (values (cons 'box _%e186553%_)
                                                        _%vars186554%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e186457%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e186457%_)))
                                                      _%vars186458%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx186371%_
                                                 _%e186457%_))))))))))))
          (let* ((_%e186381186394%_ _%stx186371%_)
                 (_%E186383186398%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e186381186394%_))))
                 (_%E186382186448%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e186381186394%_))
                        (let ((_%e186384186402%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e186381186394%_))))
                          (let ((_%hd186385186405%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e186384186402%_)))
                                (_%tl186386186407%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e186384186402%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl186386186407%_))
                                (let ((_%e186387186410%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl186386186407%_))))
                                  (let ((_%hd186388186413%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e186387186410%_)))
                                        (_%tl186389186415%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e186387186410%_))))
                                    (let ((_%expr186418%_ _%hd186388186413%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl186389186415%_))
                                          (let ((_%e186390186420%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl186389186415%_))))
                                            (let ((_%hd186391186423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e186390186420%_)))
                                                  (_%tl186392186425%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e186390186420%_))))
                                              (let* ((_%ids186428%_
                                                      _%hd186391186423%_)
                                                     (_%clauses186430%_
                                                      _%tl186392186425%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids186428%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses186430%_))
                                                        (let* ((_%ids186435%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids186428%_)))
                       (_%clauses186437%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses186430%_)))
                       (_%clause-ids186439%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses186437%_)))
                       (_%E186441%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target186443%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first186445%_
                        (if (null? _%clauses186437%_)
                            _%E186441%_
                            (car _%clause-ids186439%_))))
                  (let ((__tmp187781
                         (let ((__tmp187782
                                (let ((__tmp187784
                                       (let ((__tmp187786
                                              (cons (cons (cons _%E186441%_
                                                                '())
                                                          (cons (let ((__tmp187788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target186443%_ '()))
                              (__tmp187787
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target186443%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp187788 __tmp187787))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp187785
                                              (_%generate-body186377%_
                                               (_%generate-bindings186376%_
                                                _%target186443%_
                                                _%ids186435%_
                                                _%clauses186437%_
                                                _%clause-ids186439%_
                                                _%E186441%_)
                                               (cons _%first186445%_
                                                     (cons _%expr186418%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp187786
                                          __tmp187785)))
                                      (__tmp187783
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx186371%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp187784
                                   __tmp187783))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp187782)))
                        (__tmp187780
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx186371%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp187781 __tmp187780)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx186371%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx186371%_
                                                       _%ids186428%_))))))
                                          (_%E186383186398%_)))))
                                (_%E186383186398%_))))
                        (_%E186383186398%_)))))
            (_%E186382186448%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx187096%_)
        (let* ((_%identifier=?187098%_ 'free-identifier=?)
               (_%unwrap-e187100%_ 'syntax-e)
               (_%wrap-e187102%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx187096%_
           _%identifier=?187098%_
           _%unwrap-e187100%_
           _%wrap-e187102%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx187104%_ _%identifier=?187105%_)
        (let* ((_%unwrap-e187107%_ 'syntax-e) (_%wrap-e187109%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx187104%_
           _%identifier=?187105%_
           _%unwrap-e187107%_
           _%wrap-e187109%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx187111%_ _%identifier=?187112%_ _%unwrap-e187113%_)
        (let ((_%wrap-e187115%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx187111%_
           _%identifier=?187112%_
           _%unwrap-e187113%_
           _%wrap-e187115%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g187789_
        (let ((_g187790_ (let () (declare (not safe)) (##length _g187789_))))
          (cond ((let () (declare (not safe)) (##fx= _g187790_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g187789_))
                ((let () (declare (not safe)) (##fx= _g187790_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g187789_))
                ((let () (declare (not safe)) (##fx= _g187790_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g187789_))
                ((let () (declare (not safe)) (##fx= _g187790_ 4))
                 (apply gx#macro-expand-syntax-case__% _g187789_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g187789_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx186368%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx186368%_))
            (let ((__tmp187791
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx186368%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp187791 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd186326%_ . _%rest186327%_)
        (let ((_%len186329%_ (length _%hd186326%_)))
          (let _%lp186331%_ ((_%rest186333%_ _%rest186327%_))
            (let* ((_%rest186334186342%_ _%rest186333%_)
                   (_%else186336186350%_ (lambda () '#!void))
                   (_%K186338186356%_
                    (lambda (_%rest186353%_ _%hd186354%_)
                      (if (let ((__tmp187792 (length _%hd186354%_)))
                            (declare (not safe))
                            (##fx= _%len186329%_ __tmp187792))
                          (_%lp186331%_ _%rest186353%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd186354%_))))))
              (if (pair? _%rest186334186342%_)
                  (let ((_%hd186339186359%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest186334186342%_)))
                        (_%tl186340186361%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest186334186342%_))))
                    (let* ((_%hd186364%_ _%hd186339186359%_)
                           (_%rest186366%_ _%tl186340186361%_))
                      (_%K186338186356%_ _%rest186366%_ _%hd186364%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx186276%_ _%n186277%_)
        (let _%lp186279%_ ((_%rest186282%_ _%stx186276%_) (_%r186284%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest186282%_))
              (let* ((_%g186286186293%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest186282%_)))
                     (_%E186288186297%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g186286186293%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K186289186304%_
                      (lambda (_%rest186300%_ _%hd186301%_)
                        (_%lp186279%_
                         _%rest186300%_
                         (cons _%hd186301%_ _%r186284%_)))))
                (if (pair? _%g186286186293%_)
                    (let ((_%hd186290186307%_
                           (let ()
                             (declare (not safe))
                             (##car _%g186286186293%_)))
                          (_%tl186291186309%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g186286186293%_))))
                      (let* ((_%hd186312%_ _%hd186290186307%_)
                             (_%rest186314%_ _%tl186291186309%_))
                        (_%K186289186304%_ _%rest186314%_ _%hd186312%_)))
                    (_%E186288186297%_)))
              (let _%lp186316%_ ((_%n186318%_ _%n186277%_)
                                 (_%l186319%_ _%r186284%_)
                                 (_%r186321%_ _%rest186282%_))
                (if (null? _%l186319%_)
                    (values _%l186319%_ _%r186321%_)
                    (if (fxpositive? _%n186318%_)
                        (_%lp186316%_
                         (let () (declare (not safe)) (##fx- _%n186318%_ '1))
                         (cdr _%l186319%_)
                         (cons (car _%l186319%_) _%r186321%_))
                        (values (reverse! _%l186319%_) _%r186321%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx186226%_ _%n186227%_)
        (let _%lp186229%_ ((_%rest186232%_ _%stx186226%_) (_%r186234%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest186232%_))
              (let* ((_%g186236186243%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest186232%_)))
                     (_%E186238186247%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g186236186243%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K186239186254%_
                      (lambda (_%rest186250%_ _%hd186251%_)
                        (_%lp186229%_
                         _%rest186250%_
                         (cons _%hd186251%_ _%r186234%_)))))
                (if (pair? _%g186236186243%_)
                    (let ((_%hd186240186257%_
                           (let ()
                             (declare (not safe))
                             (##car _%g186236186243%_)))
                          (_%tl186241186259%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g186236186243%_))))
                      (let* ((_%hd186262%_ _%hd186240186257%_)
                             (_%rest186264%_ _%tl186241186259%_))
                        (_%K186239186254%_ _%rest186264%_ _%hd186262%_)))
                    (_%E186238186247%_)))
              (let _%lp186266%_ ((_%n186268%_ _%n186227%_)
                                 (_%l186269%_ _%r186234%_)
                                 (_%r186271%_ _%rest186232%_))
                (if (null? _%l186269%_)
                    (vector _%l186269%_ _%r186271%_)
                    (if (fxpositive? _%n186268%_)
                        (_%lp186266%_
                         (let () (declare (not safe)) (##fx- _%n186268%_ '1))
                         (cdr _%l186269%_)
                         (cons (car _%l186269%_) _%r186271%_))
                        (vector (reverse! _%l186269%_) _%r186271%_))))))))))
