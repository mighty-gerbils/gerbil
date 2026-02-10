(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1770744577)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp187666 (list gx#expander::t))
            (__tmp187665 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp187666
         '(id depth)
         __tmp187665
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args187662%_
        (apply make-instance gx#syntax-pattern::t _%$args187662%_)))
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
      (lambda (_%self187648%_ _%stx187649%_)
        (let ((_%self187652%_ _%self187648%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx187649%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx187115%_)
        (letrec ((_%generate187117%_
                  (lambda (_%e187357%_)
                    (letrec ((_%BUG187359%_
                              (lambda (_%q187524%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx187115%_
                                         _%e187357%_
                                         _%q187524%_))))
                             (_%local-pattern-e187360%_
                              (lambda (_%pat187522%_)
                                (let ((__tmp187667
                                       (##structure-ref
                                        _%pat187522%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp187667))))
                             (_%getvar187361%_
                              (lambda (_%q187519%_ _%vars187520%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q187519%_
                                   _%vars187520%_
                                   _%BUG187359%_))))
                             (_%getarg187362%_
                              (lambda (_%arg187485%_ _%vars187486%_)
                                (let* ((_%arg187487187494%_ _%arg187485%_)
                                       (_%E187489187498%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg187487187494%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K187490187507%_
                                        (lambda (_%e187501%_ _%tag187502%_)
                                          (let ((_%$e187504%_ _%tag187502%_))
                                            (if (eq? 'ref _%$e187504%_)
                                                (_%getvar187361%_
                                                 _%e187501%_
                                                 _%vars187486%_)
                                                (if (eq? 'pattern _%$e187504%_)
                                                    (_%local-pattern-e187360%_
                                                     _%e187501%_)
                                                    (_%BUG187359%_
                                                     _%arg187485%_)))))))
                                  (if (pair? _%arg187487187494%_)
                                      (let ((_%hd187491187510%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg187487187494%_)))
                                            (_%tl187492187512%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg187487187494%_))))
                                        (let* ((_%tag187515%_
                                                _%hd187491187510%_)
                                               (_%e187517%_
                                                _%tl187492187512%_))
                                          (_%K187490187507%_
                                           _%e187517%_
                                           _%tag187515%_)))
                                      (_%E187489187498%_))))))
                      (let _%recur187364%_ ((_%e187366%_ _%e187357%_)
                                            (_%vars187367%_ '()))
                        (let* ((_%e187368187375%_ _%e187366%_)
                               (_%E187370187379%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e187368187375%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K187371187473%_
                                (lambda (_%body187382%_ _%tag187383%_)
                                  (let ((_%$e187385%_ _%tag187383%_))
                                    (if (eq? 'datum _%$e187385%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body187382%_))
                                        (if (eq? 'term _%$e187385%_)
                                            (let ((_%id187388%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body187382%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id187388%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks187391%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id187388%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks187391%_)
                                                        (let ((__tmp187668
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body187382%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp187668))
                (let ((__tmp187670
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body187382%_)))
                      (__tmp187669
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body187382%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp187670
                   __tmp187669
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id187388%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body187382%_))
                                                      (_%BUG187359%_
                                                       _%e187366%_))))
                                            (if (eq? 'pattern _%$e187385%_)
                                                (_%local-pattern-e187360%_
                                                 _%body187382%_)
                                                (if (eq? 'ref _%$e187385%_)
                                                    (_%getvar187361%_
                                                     _%body187382%_
                                                     _%vars187367%_)
                                                    (if (eq? 'cons
                                                             _%$e187385%_)
                                                        (let ((__tmp187672
                                                               (_%recur187364%_
                                                                (car _%body187382%_)
                                                                _%vars187367%_))
                                                              (__tmp187671
                                                               (_%recur187364%_
                                                                (cdr _%body187382%_)
                                                                _%vars187367%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp187672
                                                           __tmp187671))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e187385%_)
                    (let ((__tmp187673
                           (_%recur187364%_ _%body187382%_ _%vars187367%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp187673))
                    (if (eq? 'box _%$e187385%_)
                        (let ((__tmp187674
                               (_%recur187364%_
                                _%body187382%_
                                _%vars187367%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp187674))
                        (if (eq? 'splice _%$e187385%_)
                            (let* ((_%body187394187405%_ _%body187382%_)
                                   (_%E187396187409%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body187394187405%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K187397187447%_
                                    (lambda (_%args187412%_
                                             _%iv187413%_
                                             _%hd187414%_
                                             _%depth187415%_)
                                      (let* ((_%targets187421%_
                                              (map (lambda (_%g187416187418%_)
                                                     (_%getarg187362%_
                                                      _%g187416187418%_
                                                      _%vars187367%_))
                                                   _%args187412%_))
                                             (_%fold-in187423%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args187412%_)))
                                             (_%fold-out187425%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args187427%_
                                              (let ((__tmp187675
                                                     (cons _%fold-out187425%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp187675
                                                 _%fold-in187423%_)))
                                             (_%lambda-body187444%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth187415%_ '1))
                                                  (let ((_%r-args187435%_
                                                         (map (lambda (_%arg187429%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg187429%_)))
                      _%args187412%_))
                (_%r-vars187436%_
                 (let ((__tmp187676
                        (lambda (_%arg187431%_ _%var187432%_ _%r187433%_)
                          (cons (cons (cdr _%arg187431%_) _%var187432%_)
                                _%r187433%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp187676
                    _%vars187367%_
                    _%args187412%_
                    _%fold-in187423%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur187364%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth187415%_ '1))
                         (cons _%hd187414%_
                               (cons (cons 'var _%fold-out187425%_)
                                     _%r-args187435%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars187436%_))
                                                  (let* ((_%hd-vars187442%_
                                                          (let ((__tmp187677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg187438%_ _%var187439%_ _%r187440%_)
                           (cons (cons (cdr _%arg187438%_) _%var187439%_)
                                 _%r187440%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp187677
                     _%vars187367%_
                     _%args187412%_
                     _%fold-in187423%_)))
                 (__tmp187678
                  (_%recur187364%_ _%hd187414%_ _%hd-vars187442%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp187678
                                                     _%fold-out187425%_)))))
                                        (let ((__tmp187682
                                               (if (let ((__tmp187683
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets187421%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp187683 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets187421%_))
                                                   '#!void))
                                              (__tmp187679
                                               (let ((__tmp187681
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args187427%_
                                                         _%lambda-body187444%_)))
                                                     (__tmp187680
                                                      (_%recur187364%_
                                                       _%iv187413%_
                                                       _%vars187367%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp187681
                                                  __tmp187680
                                                  _%targets187421%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp187682
                                           __tmp187679))))))
                              (if (pair? _%body187394187405%_)
                                  (let ((_%hd187398187450%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body187394187405%_)))
                                        (_%tl187399187452%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body187394187405%_))))
                                    (let ((_%depth187455%_ _%hd187398187450%_))
                                      (if (pair? _%tl187399187452%_)
                                          (let ((_%hd187400187457%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl187399187452%_)))
                                                (_%tl187401187459%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl187399187452%_))))
                                            (let ((_%hd187462%_
                                                   _%hd187400187457%_))
                                              (if (pair? _%tl187401187459%_)
                                                  (let ((_%hd187402187464%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl187401187459%_)))
                                                        (_%tl187403187466%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl187401187459%_))))
                                                    (let* ((_%iv187469%_
                                                            _%hd187402187464%_)
                                                           (_%args187471%_
                                                            _%tl187403187466%_))
                                                      (_%K187397187447%_
                                                       _%args187471%_
                                                       _%iv187469%_
                                                       _%hd187462%_
                                                       _%depth187455%_)))
                                                  (_%E187396187409%_))))
                                          (_%E187396187409%_))))
                                  (_%E187396187409%_)))
                            (if (eq? 'var _%$e187385%_)
                                _%body187382%_
                                (_%BUG187359%_ _%e187366%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e187368187375%_)
                              (let ((_%hd187372187476%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187368187375%_)))
                                    (_%tl187373187478%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187368187375%_))))
                                (let* ((_%tag187481%_ _%hd187372187476%_)
                                       (_%body187483%_ _%tl187373187478%_))
                                  (_%K187371187473%_
                                   _%body187483%_
                                   _%tag187481%_)))
                              (_%E187370187379%_)))))))
                 (_%parse187118%_
                  (lambda (_%e187159%_)
                    (letrec ((_%make-cons187161%_
                              (lambda (_%hd187349%_ _%tl187350%_)
                                (let ((_g187684_ _%hd187349%_)
                                      (_g187686_ _%tl187350%_))
                                  (begin
                                    (let ((_g187685_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g187684_)
                                                 (##values-length _g187684_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g187685_ 2)))
                                          (error "Context expects 2 values"
                                                 _g187685_)))
                                    (let ((_g187687_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g187686_)
                                                 (##values-length _g187686_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g187687_ 2)))
                                          (error "Context expects 2 values"
                                                 _g187687_)))
                                    (let ((_%hd-e187352%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g187684_ 0)))
                                          (_%hd-vars187353%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g187684_ 1))))
                                      (let ((_%tl-e187354%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g187686_ 0)))
                                            (_%tl-vars187355%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g187686_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e187352%_
                                                            _%tl-e187354%_))
                                                (append _%hd-vars187353%_
                                                        _%tl-vars187355%_))))))))
                             (_%make-splice187162%_
                              (lambda (_%where187285%_
                                       _%depth187286%_
                                       _%hd187287%_
                                       _%tl187288%_)
                                (let ((_g187688_ _%hd187287%_)
                                      (_g187690_ _%tl187288%_))
                                  (begin
                                    (let ((_g187689_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g187688_)
                                                 (##values-length _g187688_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g187689_ 2)))
                                          (error "Context expects 2 values"
                                                 _g187689_)))
                                    (let ((_g187691_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g187690_)
                                                 (##values-length _g187690_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g187691_ 2)))
                                          (error "Context expects 2 values"
                                                 _g187691_)))
                                    (let ((_%hd-e187290%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g187688_ 0)))
                                          (_%hd-vars187291%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g187688_ 1))))
                                      (let ((_%tl-e187292%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g187690_ 0)))
                                            (_%tl-vars187293%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g187690_ 1))))
                                        (let _%lp187295%_ ((_%rest187297%_
                                                            _%hd-vars187291%_)
                                                           (_%targets187298%_
                                                            '())
                                                           (_%vars187299%_
                                                            _%tl-vars187293%_))
                                          (let* ((_%rest187300187310%_
                                                  _%rest187297%_)
                                                 (_%else187302187318%_
                                                  (lambda ()
                                                    (if (null? _%targets187298%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx187115%_
                                                           _%where187285%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth187286%_
                                    (cons _%hd-e187290%_
                                          (cons _%tl-e187292%_
                                                _%targets187298%_))))
                        _%vars187299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K187304187330%_
                                                  (lambda (_%rest187321%_
                                                           _%hd-pat187322%_
                                                           _%hd-depth*187323%_)
                                                    (let ((_%hd-depth187325%_
                                                           (fx- _%hd-depth*187323%_
                                                                _%depth187286%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth187325%_))
                                                          (_%lp187295%_
                                                           _%rest187321%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat187322%_)
                         _%targets187298%_)
                   (cons (cons _%hd-depth187325%_ _%hd-pat187322%_)
                         _%vars187299%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth187325%_))
                      (_%lp187295%_
                       _%rest187321%_
                       (cons (cons 'pattern _%hd-pat187322%_)
                             _%targets187298%_)
                       _%vars187299%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx187115%_
                         _%where187285%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest187300187310%_)
                                                (let ((_%hd187305187333%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest187300187310%_)))
                                                      (_%tl187306187335%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest187300187310%_))))
                                                  (if (pair? _%hd187305187333%_)
                                                      (let ((_%hd187307187338%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd187305187333%_)))
                    (_%tl187308187340%_
                     (let () (declare (not safe)) (##cdr _%hd187305187333%_))))
                (let* ((_%hd-depth*187343%_ _%hd187307187338%_)
                       (_%hd-pat187345%_ _%tl187308187340%_)
                       (_%rest187347%_ _%tl187306187335%_))
                  (_%K187304187330%_
                   _%rest187347%_
                   _%hd-pat187345%_
                   _%hd-depth*187343%_)))
              (_%else187302187318%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else187302187318%_))))))))))
                             (_%recur187163%_
                              (lambda (_%e187168%_ _%is-e?187169%_)
                                (if (_%is-e?187169%_ _%e187168%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx187115%_))
                                    (if (gx#syntax-local-pattern? _%e187168%_)
                                        (let* ((_%pat187173%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e187168%_)))
                                               (_%depth187175%_
                                                (##structure-ref
                                                 _%pat187173%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth187175%_)
                                              (values (cons 'ref _%pat187173%_)
                                                      (cons (cons _%depth187175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat187173%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat187173%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e187168%_))
                                            (values (cons 'term _%e187168%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e187168%_))
                                                (let* ((_%e187179187186%_
                                                        _%e187168%_)
                                                       (_%E187181187190%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e187179187186%_))))
                                                       (_%E187180187272%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e187179187186%_))
                      (let ((_%e187182187194%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e187179187186%_))))
                        (let ((_%hd187183187197%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187182187194%_)))
                              (_%tl187184187199%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187182187194%_))))
                          (let* ((_%hd187202%_ _%hd187183187197%_)
                                 (_%rest187204%_ _%tl187184187199%_))
                            (if (_%is-e?187169%_ _%hd187202%_)
                                (let* ((_%e187205187212%_ _%rest187204%_)
                                       (_%E187207187216%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx187115%_
                                             _%e187168%_))))
                                       (_%E187206187230%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e187205187212%_))
                                              (let ((_%e187208187220%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e187205187212%_))))
                                                (let ((_%hd187209187223%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e187208187220%_)))
                                                      (_%tl187210187225%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e187208187220%_))))
                                                  (let ((_%rest187228%_
                                                         _%hd187209187223%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl187210187225%_))
                                                        (_%recur187163%_
                                                         _%rest187228%_
                                                         false)
                                                        (_%E187207187216%_)))))
                                              (_%E187207187216%_)))))
                                  (_%E187206187230%_))
                                (let _%lp187234%_ ((_%rest187236%_
                                                    _%rest187204%_)
                                                   (_%depth187237%_ '0))
                                  (let* ((_%e187238187245%_ _%rest187236%_)
                                         (_%E187240187249%_
                                          (lambda ()
                                            (if (fxpositive? _%depth187237%_)
                                                (_%make-splice187162%_
                                                 _%e187168%_
                                                 _%depth187237%_
                                                 (_%recur187163%_
                                                  _%hd187202%_
                                                  _%is-e?187169%_)
                                                 (_%recur187163%_
                                                  _%rest187236%_
                                                  _%is-e?187169%_))
                                                (_%make-cons187161%_
                                                 (_%recur187163%_
                                                  _%hd187202%_
                                                  _%is-e?187169%_)
                                                 (_%recur187163%_
                                                  _%rest187236%_
                                                  _%is-e?187169%_)))))
                                         (_%E187239187268%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e187238187245%_))
                                                (let ((_%e187241187253%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e187238187245%_))))
                                                  (let ((_%hd187242187256%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e187241187253%_)))
                                                        (_%tl187243187258%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e187241187253%_))))
                                                    (let* ((_%rest-hd187261%_
                                                            _%hd187242187256%_)
                                                           (_%rest-tl187263%_
                                                            _%tl187243187258%_))
                                                      (if (_%is-e?187169%_
                                                           _%rest-hd187261%_)
                                                          (_%lp187234%_
                                                           _%rest-tl187263%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth187237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth187237%_)
                      (_%make-splice187162%_
                       _%e187168%_
                       _%depth187237%_
                       (_%recur187163%_ _%hd187202%_ _%is-e?187169%_)
                       (_%recur187163%_ _%rest187236%_ _%is-e?187169%_))
                      (_%make-cons187161%_
                       (_%recur187163%_ _%hd187202%_ _%is-e?187169%_)
                       (_%recur187163%_ _%rest187236%_ _%is-e?187169%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E187240187249%_)))))
                                    (_%E187239187268%_)))))))
                      (_%E187181187190%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E187180187272%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e187168%_))
                                                    (let ((_g187692_
                                                           (_%recur187163%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e187168%_)))
                    _%is-e?187169%_)))
              (begin
                (let ((_g187693_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g187692_)
                             (##values-length _g187692_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g187693_ 2)))
                      (error "Context expects 2 values" _g187693_)))
                (let ((_%e187277%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g187692_ 0)))
                      (_%vars187278%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g187692_ 1))))
                  (values (cons 'vector _%e187277%_) _%vars187278%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e187168%_))
                                                        (let ((_g187694_
                                                               (_%recur187163%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e187168%_)))
                        _%is-e?187169%_)))
                  (begin
                    (let ((_g187695_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g187694_)
                                 (##values-length _g187694_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g187695_ 2)))
                          (error "Context expects 2 values" _g187695_)))
                    (let ((_%e187281%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g187694_ 0)))
                          (_%vars187282%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g187694_ 1))))
                      (values (cons 'box _%e187281%_) _%vars187282%_))))
                (values (cons 'datum _%e187168%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g187696_
                             (_%recur187163%_ _%e187159%_ gx#ellipsis?)))
                        (begin
                          (let ((_g187697_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g187696_)
                                       (##values-length _g187696_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g187697_ 2)))
                                (error "Context expects 2 values" _g187697_)))
                          (let ((_%tree187165%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g187696_ 0)))
                                (_%vars187166%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g187696_ 1))))
                            (if (null? _%vars187166%_)
                                _%tree187165%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx187115%_
                                   _%vars187166%_))))))))))
          (let* ((_%e187119187129%_ _%stx187115%_)
                 (_%E187121187133%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx187115%_))))
                 (_%E187120187155%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e187119187129%_))
                        (let ((_%e187122187137%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e187119187129%_))))
                          (let ((_%hd187123187140%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e187122187137%_)))
                                (_%tl187124187142%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e187122187137%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl187124187142%_))
                                (let ((_%e187125187145%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl187124187142%_))))
                                  (let ((_%hd187126187148%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e187125187145%_)))
                                        (_%tl187127187150%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e187125187145%_))))
                                    (let ((_%form187153%_ _%hd187126187148%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl187127187150%_))
                                          (let ((__tmp187699
                                                 (_%generate187117%_
                                                  (_%parse187118%_
                                                   _%form187153%_)))
                                                (__tmp187698
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx187115%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp187699
                                             __tmp187698))
                                          (_%E187121187133%_)))))
                                (_%E187121187133%_))))
                        (_%E187121187133%_)))))
            (_%E187120187155%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx186364%_
               _%identifier=?186365%_
               _%unwrap-e186366%_
               _%wrap-e186367%_)
        (letrec ((_%generate-bindings186369%_
                  (lambda (_%target186979%_
                           _%ids186980%_
                           _%clauses186981%_
                           _%clause-ids186982%_
                           _%E186983%_)
                    (letrec ((_%generate1186985%_
                              (lambda (_%clause187082%_
                                       _%clause-id187083%_
                                       _%E187084%_)
                                (cons (cons _%clause-id187083%_ '())
                                      (cons (let ((__tmp187701
                                                   (cons _%target186979%_ '()))
                                                  (__tmp187700
                                                   (_%generate-clause186371%_
                                                    _%target186979%_
                                                    _%ids186980%_
                                                    _%clause187082%_
                                                    _%E187084%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp187701
                                               __tmp187700))
                                            '())))))
                      (let _%lp186987%_ ((_%rest186989%_ _%clauses186981%_)
                                         (_%rest-ids186990%_
                                          _%clause-ids186982%_)
                                         (_%bindings186991%_ '()))
                        (let* ((_%rest186992187000%_ _%rest186989%_)
                               (_%else186994187008%_
                                (lambda () _%bindings186991%_))
                               (_%K186996187070%_
                                (lambda (_%rest187011%_ _%clause187012%_)
                                  (let* ((_%rest-ids187013187020%_
                                          _%rest-ids186990%_)
                                         (_%E187015187024%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids187013187020%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K187016187058%_
                                          (lambda (_%rest-ids187027%_
                                                   _%clause-id187028%_)
                                            (let* ((_%rest-ids187029187037%_
                                                    _%rest-ids187027%_)
                                                   (_%else187031187045%_
                                                    (lambda ()
                                                      (cons (_%generate1186985%_
                                                             _%clause187012%_
                                                             _%clause-id187028%_
                                                             _%E186983%_)
                                                            _%bindings186991%_)))
                                                   (_%K187033187050%_
                                                    (lambda (_%next-clause-id187048%_)
                                                      (_%lp186987%_
                                                       _%rest187011%_
                                                       _%rest-ids187027%_
                                                       (cons (_%generate1186985%_
                                                              _%clause187012%_
                                                              _%clause-id187028%_
                                                              _%next-clause-id187048%_)
                                                             _%bindings186991%_)))))
                                              (if (pair? _%rest-ids187029187037%_)
                                                  (let* ((_%hd187034187053%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids187029187037%_)))
                                                         (_%next-clause-id187056%_
                                                          _%hd187034187053%_))
                                                    (_%K187033187050%_
                                                     _%next-clause-id187056%_))
                                                  (_%else187031187045%_))))))
                                    (if (pair? _%rest-ids187013187020%_)
                                        (let ((_%hd187017187061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids187013187020%_)))
                                              (_%tl187018187063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids187013187020%_))))
                                          (let* ((_%clause-id187066%_
                                                  _%hd187017187061%_)
                                                 (_%rest-ids187068%_
                                                  _%tl187018187063%_))
                                            (_%K187016187058%_
                                             _%rest-ids187068%_
                                             _%clause-id187066%_)))
                                        (_%E187015187024%_))))))
                          (if (pair? _%rest186992187000%_)
                              (let ((_%hd186997187073%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest186992187000%_)))
                                    (_%tl186998187075%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest186992187000%_))))
                                (let* ((_%clause187078%_ _%hd186997187073%_)
                                       (_%rest187080%_ _%tl186998187075%_))
                                  (_%K186996187070%_
                                   _%rest187080%_
                                   _%clause187078%_)))
                              (_%else186994187008%_)))))))
                 (_%generate-body186370%_
                  (lambda (_%bindings186939%_ _%body186940%_)
                    (let _%recur186942%_ ((_%rest186944%_ _%bindings186939%_))
                      (let* ((_%rest186945186953%_ _%rest186944%_)
                             (_%else186947186961%_ (lambda () _%body186940%_))
                             (_%K186949186967%_
                              (lambda (_%rest186964%_ _%hd186965%_)
                                (let ((__tmp187703 (cons _%hd186965%_ '()))
                                      (__tmp187702
                                       (_%recur186942%_ _%rest186964%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp187703
                                   __tmp187702)))))
                        (if (pair? _%rest186945186953%_)
                            (let ((_%hd186950186970%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest186945186953%_)))
                                  (_%tl186951186972%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest186945186953%_))))
                              (let* ((_%hd186975%_ _%hd186950186970%_)
                                     (_%rest186977%_ _%tl186951186972%_))
                                (_%K186949186967%_
                                 _%rest186977%_
                                 _%hd186975%_)))
                            (_%else186947186961%_))))))
                 (_%generate-clause186371%_
                  (lambda (_%target186802%_
                           _%ids186803%_
                           _%clause186804%_
                           _%E186805%_)
                    (letrec ((_%generate1186807%_
                              (lambda (_%hd186894%_
                                       _%fender186895%_
                                       _%body186896%_)
                                (let ((_g187704_
                                       (_%parse-clause186373%_
                                        _%hd186894%_
                                        _%ids186803%_)))
                                  (begin
                                    (let ((_g187705_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g187704_)
                                                 (##values-length _g187704_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g187705_ 2)))
                                          (error "Context expects 2 values"
                                                 _g187705_)))
                                    (let ((_%e186898%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g187704_ 0)))
                                          (_%mvars186899%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g187704_ 1))))
                                      (let* ((_%pvars186901%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars186899%_))))
                                             (_%E186903%_
                                              (cons _%E186805%_
                                                    (cons _%target186802%_
                                                          '())))
                                             (_%K186936%_
                                              (let ((__tmp187706
                                                     (let ((__tmp187708
                                                            (map (lambda (_%mvar186905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar186906%_)
                           (let* ((_%mvar186907186914%_ _%mvar186905%_)
                                  (_%E186909186918%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar186907186914%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K186910186924%_
                                   (lambda (_%depth186921%_ _%id186922%_)
                                     (cons _%id186922%_
                                           (cons (let ((__tmp187710
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id186922%_)))
                                                       (__tmp187709
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar186906%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp187710
                                                    __tmp187709
                                                    _%depth186921%_))
                                                 '())))))
                             (if (pair? _%mvar186907186914%_)
                                 (let ((_%hd186911186927%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar186907186914%_)))
                                       (_%tl186912186929%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar186907186914%_))))
                                   (let* ((_%id186932%_ _%hd186911186927%_)
                                          (_%depth186934%_ _%tl186912186929%_))
                                     (_%K186910186924%_
                                      _%depth186934%_
                                      _%id186932%_)))
                                 (_%E186909186918%_))))
                         _%mvars186899%_
                         _%pvars186901%_))
                   (__tmp187707
                    (if (eq? _%fender186895%_ '#t)
                        _%body186896%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender186895%_
                           _%body186896%_
                           _%E186903%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp187708 __tmp187707))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars186901%_
                                                 __tmp187706))))
                                        (_%generate-match186372%_
                                         _%hd186894%_
                                         _%target186802%_
                                         _%e186898%_
                                         _%mvars186899%_
                                         _%K186936%_
                                         _%E186903%_))))))))
                      (let* ((_%e186808186828%_ _%clause186804%_)
                             (_%E186817186832%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e186808186828%_))))
                             (_%E186810186866%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e186808186828%_))
                                    (let ((_%e186818186836%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e186808186828%_))))
                                      (let ((_%hd186819186839%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e186818186836%_)))
                                            (_%tl186820186841%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e186818186836%_))))
                                        (let ((_%hd186844%_
                                               _%hd186819186839%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl186820186841%_))
                                              (let ((_%e186821186846%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl186820186841%_))))
                                                (let ((_%hd186822186849%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e186821186846%_)))
                                                      (_%tl186823186851%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e186821186846%_))))
                                                  (let ((_%fender186854%_
                                                         _%hd186822186849%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl186823186851%_))
                                                        (let ((_%e186824186856%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl186823186851%_))))
                  (let ((_%hd186825186859%_
                         (let ()
                           (declare (not safe))
                           (##car _%e186824186856%_)))
                        (_%tl186826186861%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e186824186856%_))))
                    (let ((_%body186864%_ _%hd186825186859%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186826186861%_))
                          (_%generate1186807%_
                           _%hd186844%_
                           _%fender186854%_
                           _%body186864%_)
                          (_%E186817186832%_)))))
                (_%E186817186832%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E186817186832%_)))))
                                    (_%E186817186832%_))))
                             (_%E186809186890%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e186808186828%_))
                                    (let ((_%e186811186870%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e186808186828%_))))
                                      (let ((_%hd186812186873%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e186811186870%_)))
                                            (_%tl186813186875%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e186811186870%_))))
                                        (let ((_%hd186878%_
                                               _%hd186812186873%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl186813186875%_))
                                              (let ((_%e186814186880%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl186813186875%_))))
                                                (let ((_%hd186815186883%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e186814186880%_)))
                                                      (_%tl186816186885%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e186814186880%_))))
                                                  (let ((_%body186888%_
                                                         _%hd186815186883%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl186816186885%_))
                                                        (_%generate1186807%_
                                                         _%hd186878%_
                                                         '#t
                                                         _%body186888%_)
                                                        (_%E186810186866%_)))))
                                              (_%E186810186866%_)))))
                                    (_%E186810186866%_)))))
                        (_%E186809186890%_)))))
                 (_%generate-match186372%_
                  (lambda (_%where186551%_
                           _%target186552%_
                           _%hd186553%_
                           _%mvars186554%_
                           _%K186555%_
                           _%E186556%_)
                    (letrec ((_%BUG186558%_
                              (lambda (_%q186800%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx186364%_
                                         _%hd186553%_
                                         _%q186800%_))))
                             (_%recur186559%_
                              (lambda (_%e186650%_
                                       _%vars186651%_
                                       _%target186652%_
                                       _%E186653%_
                                       _%k186654%_)
                                (let* ((_%e186655186662%_ _%e186650%_)
                                       (_%E186657186666%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e186655186662%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K186658186788%_
                                        (lambda (_%body186669%_ _%tag186670%_)
                                          (let ((_%$e186672%_ _%tag186670%_))
                                            (if (eq? 'any _%$e186672%_)
                                                (_%k186654%_ _%vars186651%_)
                                                (if (eq? 'id _%$e186672%_)
                                                    (let ((__tmp187715
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target186652%_)))
                                                          (__tmp187711
                                                           (let ((__tmp187713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp187714
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e186367%_
                                    _%body186669%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?186365%_
                             __tmp187714
                             _%target186652%_)))
                         (__tmp187712 (_%k186654%_ _%vars186651%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp187713 __tmp187712 _%E186653%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp187715 __tmp187711 _%E186653%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e186672%_)
                                                        (_%k186654%_
                                                         (cons (cons _%body186669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target186652%_)
                       _%vars186651%_))
                (if (eq? 'cons _%$e186672%_)
                    (let ((_%$e186675%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd186676%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl186677%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp187721
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target186652%_)))
                            (__tmp187716
                             (let ((__tmp187720
                                    (cons (cons (cons _%$e186675%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e186366%_
                                                         _%target186652%_))
                                                      '()))
                                          '()))
                                   (__tmp187717
                                    (let ((__tmp187719
                                           (cons (cons (cons _%$hd186676%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e186675%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl186677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e186675%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp187718
                                           (let* ((_%body186678186685%_
                                                   _%body186669%_)
                                                  (_%E186680186689%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body186678186685%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K186681186697%_
                                                   (lambda (_%tl186692%_
                                                            _%hd186693%_)
                                                     (_%recur186559%_
                                                      _%hd186693%_
                                                      _%vars186651%_
                                                      _%$hd186676%_
                                                      _%E186653%_
                                                      (lambda (_%vars186695%_)
                                                        (_%recur186559%_
                                                         _%tl186692%_
                                                         _%vars186695%_
                                                         _%$tl186677%_
                                                         _%E186653%_
                                                         _%k186654%_))))))
                                             (if (pair? _%body186678186685%_)
                                                 (let ((_%hd186682186700%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body186678186685%_)))
                                                       (_%tl186683186702%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body186678186685%_))))
                                                   (let* ((_%hd186705%_
                                                           _%hd186682186700%_)
                                                          (_%tl186707%_
                                                           _%tl186683186702%_))
                                                     (_%K186681186697%_
                                                      _%tl186707%_
                                                      _%hd186705%_)))
                                                 (_%E186680186689%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp187719
                                       __tmp187718))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp187720
                                __tmp187717))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp187721
                         __tmp187716
                         _%E186653%_)))
                    (if (eq? 'splice _%$e186672%_)
                        (let* ((_%body186708186715%_ _%body186669%_)
                               (_%E186710186719%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body186708186715%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K186711186770%_
                                (lambda (_%tl186722%_ _%hd186723%_)
                                  (let* ((_%rlen186725%_
                                          (_%splice-rlen186560%_ _%tl186722%_))
                                         (_%$target186727%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd186729%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl186731%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp186733%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e186735%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd186737%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl186739%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars186741%_
                                          (_%splice-vars186561%_ _%hd186723%_))
                                         (_%lvars186743%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars186741%_)))
                                         (_%tlvars186745%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars186741%_)))
                                         (_%linit186749%_
                                          (map (lambda (_%var186747%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars186743%_)))
                                    (letrec ((_%make-loop186752%_
                                              (lambda (_%vars186756%_)
                                                (let ((__tmp187723
                                                       (cons (cons (cons _%$lp186733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp187736
                                        (cons _%$hd186729%_ _%lvars186743%_))
                                       (__tmp187724
                                        (let ((__tmp187735
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd186729%_)))
                                              (__tmp187729
                                               (let ((__tmp187734
                                                      (cons (cons (cons _%$lp-e186735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e186366%_
                                   _%$hd186729%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp187730
                                                      (let ((__tmp187733
                                                             (cons (cons (cons _%$lp-hd186737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e186735%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl186739%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e186735%_))
                                             '()))
                                 '())))
                    (__tmp187731
                     (_%recur186559%_
                      _%hd186723%_
                      '()
                      _%$lp-hd186737%_
                      _%E186653%_
                      (lambda (_%hdvars186758%_)
                        (cons _%$lp186733%_
                              (cons _%$lp-tl186739%_
                                    (map (lambda (_%svar186760%_
                                                  _%lvar186761%_)
                                           (let ((__tmp187732
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar186760%_
                                                     _%hdvars186758%_
                                                     _%BUG186558%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp187732
                                              _%lvar186761%_)))
                                         _%svars186741%_
                                         _%lvars186743%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp187733 __tmp187731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp187734
                                                  __tmp187730)))
                                              (__tmp187725
                                               (let ((__tmp187728
                                                      (map (lambda (_%lvar186763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar186764%_)
                     (cons (cons _%tlvar186764%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar186763%_))
                                 '())))
                   _%lvars186743%_
                   _%tlvars186745%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp187726
                                                      (_%k186654%_
                                                       (let ((__tmp187727
                                                              (lambda (_%svar186766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar186767%_
                               _%r186768%_)
                        (cons (cons _%svar186766%_ _%tlvar186767%_)
                              _%r186768%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp187727
                  _%vars186756%_
                  _%svars186741%_
                  _%tlvars186745%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp187728
                                                  __tmp187726))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp187735
                                           __tmp187729
                                           __tmp187725))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp187736
                                    __tmp187724))
                                 '()))
                     '()))
              (__tmp187722
               (cons _%$lp186733%_ (cons _%$target186727%_ _%linit186749%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp187723
                                                   __tmp187722)))))
                                      (let ((_%body186754%_
                                             (let ((__tmp187738
                                                    (cons (cons (cons _%$target186727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl186731%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target186652%_
                                 _%rlen186725%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp187737
                                                    (_%recur186559%_
                                                     _%tl186722%_
                                                     _%vars186651%_
                                                     _%$tl186731%_
                                                     _%E186653%_
                                                     _%make-loop186752%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp187738
                                                __tmp187737))))
                                        (let ((__tmp187742
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target186652%_)))
                                              (__tmp187739
                                               (if (zero? _%rlen186725%_)
                                                   _%body186754%_
                                                   (let ((__tmp187740
                                                          (let ((__tmp187741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target186652%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp187741 _%rlen186725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp187740
                                                      _%body186754%_
                                                      _%E186653%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp187742
                                           __tmp187739
                                           _%E186653%_))))))))
                          (if (pair? _%body186708186715%_)
                              (let ((_%hd186712186773%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body186708186715%_)))
                                    (_%tl186713186775%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body186708186715%_))))
                                (let* ((_%hd186778%_ _%hd186712186773%_)
                                       (_%tl186780%_ _%tl186713186775%_))
                                  (_%K186711186770%_
                                   _%tl186780%_
                                   _%hd186778%_)))
                              (_%E186710186719%_)))
                        (if (eq? 'null _%$e186672%_)
                            (let ((__tmp187744
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target186652%_)))
                                  (__tmp187743 (_%k186654%_ _%vars186651%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp187744
                               __tmp187743
                               _%E186653%_))
                            (if (eq? 'vector _%$e186672%_)
                                (let ((_%$e186782%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp187749
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target186652%_)))
                                        (__tmp187745
                                         (let ((__tmp187747
                                                (cons (cons (cons _%$e186782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp187748
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e186366%_
                                    _%target186652%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp187748))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp187746
                                                (_%recur186559%_
                                                 _%body186669%_
                                                 _%vars186651%_
                                                 _%$e186782%_
                                                 _%E186653%_
                                                 _%k186654%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp187747
                                            __tmp187746))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp187749
                                     __tmp187745
                                     _%E186653%_)))
                                (if (eq? 'box _%$e186672%_)
                                    (let ((_%$e186784%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp187754
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target186652%_)))
                                            (__tmp187750
                                             (let ((__tmp187752
                                                    (cons (cons (cons _%$e186784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp187753
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e186366%_
                                        _%target186652%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp187753))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp187751
                                                    (_%recur186559%_
                                                     _%body186669%_
                                                     _%vars186651%_
                                                     _%$e186784%_
                                                     _%E186653%_
                                                     _%k186654%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp187752
                                                __tmp187751))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp187754
                                         __tmp187750
                                         _%E186653%_)))
                                    (if (eq? 'datum _%$e186672%_)
                                        (let ((_%$e186786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp187760
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target186652%_)))
                                                (__tmp187755
                                                 (let ((__tmp187759
                                                        (cons (cons (cons _%$e186786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target186652%_))
                                  '()))
                      '()))
               (__tmp187756
                (let ((__tmp187758
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e186786%_ _%body186669%_)))
                      (__tmp187757 (_%k186654%_ _%vars186651%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp187758 __tmp187757 _%E186653%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp187759
                                                    __tmp187756))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp187760
                                             __tmp187755
                                             _%E186653%_)))
                                        (_%BUG186558%_
                                         _%e186650%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e186655186662%_)
                                      (let ((_%hd186659186791%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e186655186662%_)))
                                            (_%tl186660186793%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e186655186662%_))))
                                        (let* ((_%tag186796%_
                                                _%hd186659186791%_)
                                               (_%body186798%_
                                                _%tl186660186793%_))
                                          (_%K186658186788%_
                                           _%body186798%_
                                           _%tag186796%_)))
                                      (_%E186657186666%_)))))
                             (_%splice-rlen186560%_
                              (lambda (_%e186612%_)
                                (let _%lp186614%_ ((_%e186616%_ _%e186612%_)
                                                   (_%n186617%_ '0))
                                  (let* ((_%e186618186625%_ _%e186616%_)
                                         (_%E186620186629%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e186618186625%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K186621186638%_
                                          (lambda (_%body186632%_
                                                   _%tag186633%_)
                                            (let ((_%$e186635%_ _%tag186633%_))
                                              (if (eq? 'splice _%$e186635%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx186364%_
                                                     _%where186551%_))
                                                  (if (eq? 'cons _%$e186635%_)
                                                      (_%lp186614%_
                                                       (cdr _%body186632%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n186617%_
                                                                '1)))
                                                      _%n186617%_))))))
                                    (if (pair? _%e186618186625%_)
                                        (let ((_%hd186622186641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e186618186625%_)))
                                              (_%tl186623186643%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e186618186625%_))))
                                          (let* ((_%tag186646%_
                                                  _%hd186622186641%_)
                                                 (_%body186648%_
                                                  _%tl186623186643%_))
                                            (_%K186621186638%_
                                             _%body186648%_
                                             _%tag186646%_)))
                                        (_%E186620186629%_))))))
                             (_%splice-vars186561%_
                              (lambda (_%e186568%_)
                                (let _%recur186570%_ ((_%e186572%_ _%e186568%_)
                                                      (_%vars186573%_ '()))
                                  (let* ((_%e186574186581%_ _%e186572%_)
                                         (_%E186576186585%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e186574186581%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K186577186600%_
                                          (lambda (_%body186588%_
                                                   _%tag186589%_)
                                            (let ((_%$e186591%_ _%tag186589%_))
                                              (if (eq? 'var _%$e186591%_)
                                                  (cons _%body186588%_
                                                        _%vars186573%_)
                                                  (if (or (eq? 'cons
                                                               _%$e186591%_)
                                                          (eq? 'splice
                                                               _%$e186591%_))
                                                      (_%recur186570%_
                                                       (cdr _%body186588%_)
                                                       (_%recur186570%_
                                                        (car _%body186588%_)
                                                        _%vars186573%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e186591%_)
                      (eq? 'box _%$e186591%_))
                  (_%recur186570%_ _%body186588%_ _%vars186573%_)
                  _%vars186573%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e186574186581%_)
                                        (let ((_%hd186578186603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e186574186581%_)))
                                              (_%tl186579186605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e186574186581%_))))
                                          (let* ((_%tag186608%_
                                                  _%hd186578186603%_)
                                                 (_%body186610%_
                                                  _%tl186579186605%_))
                                            (_%K186577186600%_
                                             _%body186610%_
                                             _%tag186608%_)))
                                        (_%E186576186585%_))))))
                             (_%make-body186562%_
                              (lambda (_%vars186564%_)
                                (cons _%K186555%_
                                      (map (lambda (_%mvar186566%_)
                                             (let ((__tmp187761
                                                    (car _%mvar186566%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp187761
                                                _%vars186564%_
                                                _%BUG186558%_)))
                                           _%mvars186554%_)))))
                      (_%recur186559%_
                       _%hd186553%_
                       '()
                       _%target186552%_
                       _%E186556%_
                       _%make-body186562%_))))
                 (_%parse-clause186373%_
                  (lambda (_%hd186445%_ _%ids186446%_)
                    (let _%recur186448%_ ((_%e186450%_ _%hd186445%_)
                                          (_%vars186451%_ '())
                                          (_%depth186452%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e186450%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e186450%_))
                              (values '(any) _%vars186451%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e186450%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx186364%_
                                     _%hd186445%_))
                                  (if (let ((__tmp187762
                                             (lambda (_%id186457%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e186450%_
                                                  _%id186457%_)))))
                                        (declare (not safe))
                                        (__find __tmp187762 _%ids186446%_))
                                      (values (cons 'id _%e186450%_)
                                              _%vars186451%_)
                                      (if (let ((__tmp187763
                                                 (lambda (_%var186460%_)
                                                   (let ((__tmp187764
                                                          (car _%var186460%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e186450%_
                                                      __tmp187764)))))
                                            (declare (not safe))
                                            (__find __tmp187763
                                                    _%vars186451%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx186364%_
                                             _%e186450%_))
                                          (values (cons 'var _%e186450%_)
                                                  (cons (cons _%e186450%_
                                                              _%depth186452%_)
                                                        _%vars186451%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e186450%_))
                              (let* ((_%e186464186471%_ _%e186450%_)
                                     (_%E186466186475%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e186464186471%_))))
                                     (_%E186465186536%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e186464186471%_))
                                            (let ((_%e186467186479%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e186464186471%_))))
                                              (let ((_%hd186468186482%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e186467186479%_)))
                                                    (_%tl186469186484%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e186467186479%_))))
                                                (let* ((_%hd186487%_
                                                        _%hd186468186482%_)
                                                       (_%rest186489%_
                                                        _%tl186469186484%_)
                                                       (_%make-pair186504%_
                                                        (lambda (_%tag186491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd186492%_
                         _%tl186493%_)
                  (let* ((_%hd-depth186495%_
                          (if (eq? _%tag186491%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth186452%_ '1))
                              _%depth186452%_))
                         (_g187765_
                          (_%recur186448%_
                           _%hd186492%_
                           _%vars186451%_
                           _%hd-depth186495%_)))
                    (begin
                      (let ((_g187766_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g187765_)
                                   (##values-length _g187765_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g187766_ 2)))
                            (error "Context expects 2 values" _g187766_)))
                      (let ((_%hd186497%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g187765_ 0)))
                            (_%vars186498%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g187765_ 1))))
                        (let ((_g187767_
                               (_%recur186448%_
                                _%tl186493%_
                                _%vars186498%_
                                _%depth186452%_)))
                          (begin
                            (let ((_g187768_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g187767_)
                                         (##values-length _g187767_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g187768_ 2)))
                                  (error "Context expects 2 values"
                                         _g187768_)))
                            (let ((_%tl186500%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g187767_ 0)))
                                  (_%vars186501%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g187767_ 1))))
                              (values (cons _%tag186491%_
                                            (cons _%hd186497%_ _%tl186500%_))
                                      _%vars186501%_)))))))))
               (_%e186505186512%_ _%rest186489%_)
               (_%E186507186516%_
                (lambda ()
                  (_%make-pair186504%_ 'cons _%hd186487%_ _%rest186489%_)))
               (_%E186506186532%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e186505186512%_))
                      (let ((_%e186508186520%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e186505186512%_))))
                        (let ((_%hd186509186523%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186508186520%_)))
                              (_%tl186510186525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186508186520%_))))
                          (let* ((_%rest-hd186528%_ _%hd186509186523%_)
                                 (_%rest-tl186530%_ _%tl186510186525%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd186528%_))
                                (_%make-pair186504%_
                                 'splice
                                 _%hd186487%_
                                 _%rest-tl186530%_)
                                (_%make-pair186504%_
                                 'cons
                                 _%hd186487%_
                                 _%rest186489%_)))))
                      (_%E186507186516%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186506186532%_))))
                                            (_%E186466186475%_)))))
                                (_%E186465186536%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e186450%_))
                                  (values '(null) _%vars186451%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e186450%_))
                                      (let ((_g187769_
                                             (_%recur186448%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e186450%_)))
                                              _%vars186451%_
                                              _%depth186452%_)))
                                        (begin
                                          (let ((_g187770_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g187769_)
                                                       (##values-length
                                                        _g187769_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g187770_ 2)))
                                                (error "Context expects 2 values"
                                                       _g187770_)))
                                          (let ((_%e186542%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g187769_ 0)))
                                                (_%vars186543%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g187769_
                                                    1))))
                                            (values (cons 'vector _%e186542%_)
                                                    _%vars186543%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e186450%_))
                                          (let ((_g187771_
                                                 (_%recur186448%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e186450%_)))
                                                  _%vars186451%_
                                                  _%depth186452%_)))
                                            (begin
                                              (let ((_g187772_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g187771_)
                                                           (##values-length
                                                            _g187771_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g187772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g187772_)))
                                              (let ((_%e186546%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g187771_
                                                        0)))
                                                    (_%vars186547%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g187771_
                                                        1))))
                                                (values (cons 'box _%e186546%_)
                                                        _%vars186547%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e186450%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e186450%_)))
                                                      _%vars186451%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx186364%_
                                                 _%e186450%_))))))))))))
          (let* ((_%e186374186387%_ _%stx186364%_)
                 (_%E186376186391%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e186374186387%_))))
                 (_%E186375186441%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e186374186387%_))
                        (let ((_%e186377186395%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e186374186387%_))))
                          (let ((_%hd186378186398%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e186377186395%_)))
                                (_%tl186379186400%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e186377186395%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl186379186400%_))
                                (let ((_%e186380186403%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl186379186400%_))))
                                  (let ((_%hd186381186406%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e186380186403%_)))
                                        (_%tl186382186408%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e186380186403%_))))
                                    (let ((_%expr186411%_ _%hd186381186406%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl186382186408%_))
                                          (let ((_%e186383186413%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl186382186408%_))))
                                            (let ((_%hd186384186416%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e186383186413%_)))
                                                  (_%tl186385186418%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e186383186413%_))))
                                              (let* ((_%ids186421%_
                                                      _%hd186384186416%_)
                                                     (_%clauses186423%_
                                                      _%tl186385186418%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids186421%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses186423%_))
                                                        (let* ((_%ids186428%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids186421%_)))
                       (_%clauses186430%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses186423%_)))
                       (_%clause-ids186432%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses186430%_)))
                       (_%E186434%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target186436%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first186438%_
                        (if (null? _%clauses186430%_)
                            _%E186434%_
                            (car _%clause-ids186432%_))))
                  (let ((__tmp187774
                         (let ((__tmp187775
                                (let ((__tmp187777
                                       (let ((__tmp187779
                                              (cons (cons (cons _%E186434%_
                                                                '())
                                                          (cons (let ((__tmp187781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target186436%_ '()))
                              (__tmp187780
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target186436%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp187781 __tmp187780))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp187778
                                              (_%generate-body186370%_
                                               (_%generate-bindings186369%_
                                                _%target186436%_
                                                _%ids186428%_
                                                _%clauses186430%_
                                                _%clause-ids186432%_
                                                _%E186434%_)
                                               (cons _%first186438%_
                                                     (cons _%expr186411%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp187779
                                          __tmp187778)))
                                      (__tmp187776
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx186364%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp187777
                                   __tmp187776))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp187775)))
                        (__tmp187773
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx186364%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp187774 __tmp187773)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx186364%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx186364%_
                                                       _%ids186421%_))))))
                                          (_%E186376186391%_)))))
                                (_%E186376186391%_))))
                        (_%E186376186391%_)))))
            (_%E186375186441%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx187089%_)
        (let* ((_%identifier=?187091%_ 'free-identifier=?)
               (_%unwrap-e187093%_ 'syntax-e)
               (_%wrap-e187095%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx187089%_
           _%identifier=?187091%_
           _%unwrap-e187093%_
           _%wrap-e187095%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx187097%_ _%identifier=?187098%_)
        (let* ((_%unwrap-e187100%_ 'syntax-e) (_%wrap-e187102%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx187097%_
           _%identifier=?187098%_
           _%unwrap-e187100%_
           _%wrap-e187102%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx187104%_ _%identifier=?187105%_ _%unwrap-e187106%_)
        (let ((_%wrap-e187108%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx187104%_
           _%identifier=?187105%_
           _%unwrap-e187106%_
           _%wrap-e187108%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g187782_
        (let ((_g187783_ (let () (declare (not safe)) (##length _g187782_))))
          (cond ((let () (declare (not safe)) (##fx= _g187783_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g187782_))
                ((let () (declare (not safe)) (##fx= _g187783_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g187782_))
                ((let () (declare (not safe)) (##fx= _g187783_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g187782_))
                ((let () (declare (not safe)) (##fx= _g187783_ 4))
                 (apply gx#macro-expand-syntax-case__% _g187782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g187782_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx186361%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx186361%_))
            (let ((__tmp187784
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx186361%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp187784 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd186319%_ . _%rest186320%_)
        (let ((_%len186322%_ (length _%hd186319%_)))
          (let _%lp186324%_ ((_%rest186326%_ _%rest186320%_))
            (let* ((_%rest186327186335%_ _%rest186326%_)
                   (_%else186329186343%_ (lambda () '#!void))
                   (_%K186331186349%_
                    (lambda (_%rest186346%_ _%hd186347%_)
                      (if (let ((__tmp187785 (length _%hd186347%_)))
                            (declare (not safe))
                            (##fx= _%len186322%_ __tmp187785))
                          (_%lp186324%_ _%rest186346%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd186347%_))))))
              (if (pair? _%rest186327186335%_)
                  (let ((_%hd186332186352%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest186327186335%_)))
                        (_%tl186333186354%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest186327186335%_))))
                    (let* ((_%hd186357%_ _%hd186332186352%_)
                           (_%rest186359%_ _%tl186333186354%_))
                      (_%K186331186349%_ _%rest186359%_ _%hd186357%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx186269%_ _%n186270%_)
        (let _%lp186272%_ ((_%rest186275%_ _%stx186269%_) (_%r186277%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest186275%_))
              (let* ((_%g186279186286%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest186275%_)))
                     (_%E186281186290%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g186279186286%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K186282186297%_
                      (lambda (_%rest186293%_ _%hd186294%_)
                        (_%lp186272%_
                         _%rest186293%_
                         (cons _%hd186294%_ _%r186277%_)))))
                (if (pair? _%g186279186286%_)
                    (let ((_%hd186283186300%_
                           (let ()
                             (declare (not safe))
                             (##car _%g186279186286%_)))
                          (_%tl186284186302%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g186279186286%_))))
                      (let* ((_%hd186305%_ _%hd186283186300%_)
                             (_%rest186307%_ _%tl186284186302%_))
                        (_%K186282186297%_ _%rest186307%_ _%hd186305%_)))
                    (_%E186281186290%_)))
              (let _%lp186309%_ ((_%n186311%_ _%n186270%_)
                                 (_%l186312%_ _%r186277%_)
                                 (_%r186314%_ _%rest186275%_))
                (if (null? _%l186312%_)
                    (values _%l186312%_ _%r186314%_)
                    (if (fxpositive? _%n186311%_)
                        (_%lp186309%_
                         (let () (declare (not safe)) (##fx- _%n186311%_ '1))
                         (cdr _%l186312%_)
                         (cons (car _%l186312%_) _%r186314%_))
                        (values (reverse! _%l186312%_) _%r186314%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx186219%_ _%n186220%_)
        (let _%lp186222%_ ((_%rest186225%_ _%stx186219%_) (_%r186227%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest186225%_))
              (let* ((_%g186229186236%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest186225%_)))
                     (_%E186231186240%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g186229186236%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K186232186247%_
                      (lambda (_%rest186243%_ _%hd186244%_)
                        (_%lp186222%_
                         _%rest186243%_
                         (cons _%hd186244%_ _%r186227%_)))))
                (if (pair? _%g186229186236%_)
                    (let ((_%hd186233186250%_
                           (let ()
                             (declare (not safe))
                             (##car _%g186229186236%_)))
                          (_%tl186234186252%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g186229186236%_))))
                      (let* ((_%hd186255%_ _%hd186233186250%_)
                             (_%rest186257%_ _%tl186234186252%_))
                        (_%K186232186247%_ _%rest186257%_ _%hd186255%_)))
                    (_%E186231186240%_)))
              (let _%lp186259%_ ((_%n186261%_ _%n186220%_)
                                 (_%l186262%_ _%r186227%_)
                                 (_%r186264%_ _%rest186225%_))
                (if (null? _%l186262%_)
                    (vector _%l186262%_ _%r186264%_)
                    (if (fxpositive? _%n186261%_)
                        (_%lp186259%_
                         (let () (declare (not safe)) (##fx- _%n186261%_ '1))
                         (cdr _%l186262%_)
                         (cons (car _%l186262%_) _%r186264%_))
                        (vector (reverse! _%l186262%_) _%r186264%_))))))))))
