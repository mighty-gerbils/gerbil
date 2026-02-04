(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g45065_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g45068_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45069_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45070_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45071_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-sugar[1]#setq-macro::t|
      (make-class-type
       'gerbil/core/more-sugar#setq-macro::t
       'setq-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/more-sugar[1]#setq-macro?|
      (make-class-predicate |gerbil/core/more-sugar[1]#setq-macro::t|))
    (define |gerbil/core/more-sugar[1]#make-setq-macro|
      (lambda _%$args40398%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args40398%_)))
    (define |gerbil/core/more-sugar[1]#setq-macro-macro|
      (make-class-slot-accessor
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setq-macro-macro-set!|
      (make-class-slot-mutator
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setq-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setq-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setf-macro::t|
      (make-class-type
       'gerbil/core/more-sugar#setf-macro::t
       'setf-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/more-sugar[1]#setf-macro?|
      (make-class-predicate |gerbil/core/more-sugar[1]#setf-macro::t|))
    (define |gerbil/core/more-sugar[1]#make-setf-macro|
      (lambda _%$args40394%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args40394%_)))
    (define |gerbil/core/more-sugar[1]#setf-macro-macro|
      (make-class-slot-accessor
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setf-macro-macro-set!|
      (make-class-slot-mutator
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setf-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setf-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
      (lambda (_%stx40391%_)
        (if (gx#identifier? _%stx40391%_)
            (let ((__tmp45028 (gx#syntax-local-value _%stx40391%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp45028))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx40388%_)
        (if (gx#identifier? _%stx40388%_)
            (let ((__tmp45029 (gx#syntax-local-value _%stx40388%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp45029))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx40015%_)
        (let* ((_%__stx4455744558%_ _%stx40015%_)
               (_%g4002140084%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4455744558%_))))
          (let ((_%__kont4456044561%_
                 (lambda (_%g4002340365%_ _%g4002440367%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g4002440367%_)
                    _%stx40015%_)))
                (_%__kont4456244563%_
                 (lambda (_%g4003740254%_ _%g4003840256%_ _%g4003940257%_)
                   (let* ((_%g4027940287%_
                           (lambda (_%g4028040283%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4028040283%_)))
                          (_%g4027840314%_
                           (lambda (_%g4028040291%_)
                             ((lambda (_%g4028140294%_)
                                (cons _%g4028140294%_
                                      (foldr (lambda (_%g4030540308%_
                                                      _%g4030640311%_)
                                               (cons _%g4030540308%_
                                                     _%g4030640311%_))
                                             (cons _%g4003740254%_ '())
                                             _%g4003840256%_)))
                              _%g4028040291%_))))
                     (_%g4027840314%_
                      (gx#stx-identifier
                       _%g4003940257%_
                       _%g4003940257%_
                       '"-set!")))))
                (_%__kont4456644567%_
                 (lambda (_%g4006140166%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g4006140166%_)
                    _%stx40015%_)))
                (_%__kont4456844569%_
                 (lambda (_%g4006840121%_ _%g4006940123%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%g4006940123%_ (cons _%g4006840121%_ '()))))))
            (let* ((_%__match4465644657%_
                    (lambda (_%e4007040091%_
                             _%hd4007140095%_
                             _%tl4007240098%_
                             _%e4007340101%_
                             _%hd4007440105%_
                             _%tl4007540108%_
                             _%e4007640111%_
                             _%hd4007740115%_
                             _%tl4007840118%_)
                      (let ((_%g4006840121%_ _%hd4007740115%_)
                            (_%g4006940123%_ _%hd4007440105%_))
                        (if (gx#identifier? _%g4006940123%_)
                            (_%__kont4456844569%_
                             _%g4006840121%_
                             _%g4006940123%_)
                            (let () (declare (not safe)) (_%g4002140084%_))))))
                   (_%__match4463644637%_
                    (lambda (_%e4006240146%_
                             _%hd4006340150%_
                             _%tl4006440153%_
                             _%e4006540156%_
                             _%hd4006640160%_
                             _%tl4006740163%_)
                      (let ((_%g4006140166%_ _%hd4006640160%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%g4006140166%_)
                            (_%__kont4456644567%_ _%g4006140166%_)
                            (if (gx#stx-pair? _%tl4006740163%_)
                                (let ((_%e4007640111%_
                                       (gx#syntax-e _%tl4006740163%_)))
                                  (let ((_%tl4007840118%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4007640111%_)))
                                        (_%hd4007740115%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4007640111%_))))
                                    (if (gx#stx-null? _%tl4007840118%_)
                                        (_%__match4465644657%_
                                         _%e4006240146%_
                                         _%hd4006340150%_
                                         _%tl4006440153%_
                                         _%e4006540156%_
                                         _%hd4006640160%_
                                         _%tl4006740163%_
                                         _%e4007640111%_
                                         _%hd4007740115%_
                                         _%tl4007840118%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4002140084%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4002140084%_)))))))
                   (_%__match4462444625%_
                    (lambda (_%e4004040186%_
                             _%hd4004140190%_
                             _%tl4004240193%_
                             _%e4004340196%_
                             _%hd4004440200%_
                             _%tl4004540203%_
                             _%e4004640206%_
                             _%hd4004740210%_
                             _%tl4004840213%_
                             _%__splice4456444565%_
                             _%target4004940216%_
                             _%tl4005140219%_)
                      (letrec ((_%loop4005240222%_
                                (lambda (_%hd4005040226%_ _%arg4005640229%_)
                                  (if (gx#stx-pair? _%hd4005040226%_)
                                      (let ((_%e4005340231%_
                                             (gx#syntax-e _%hd4005040226%_)))
                                        (let ((_%lp-tl4005540238%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4005340231%_)))
                                              (_%lp-hd4005440235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4005340231%_))))
                                          (_%loop4005240222%_
                                           _%lp-tl4005540238%_
                                           (cons _%lp-hd4005440235%_
                                                 _%arg4005640229%_))))
                                      (let ((_%arg4005740241%_
                                             (reverse _%arg4005640229%_)))
                                        (if (gx#stx-pair? _%tl4004540203%_)
                                            (let ((_%e4005840244%_
                                                   (gx#syntax-e
                                                    _%tl4004540203%_)))
                                              (let ((_%tl4006040251%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4005840244%_)))
                                                    (_%hd4005940248%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4005840244%_))))
                                                (if (gx#stx-null?
                                                     _%tl4006040251%_)
                                                    (let ((_%g4003740254%_
                                                           _%hd4005940248%_)
                                                          (_%g4003840256%_
                                                           _%arg4005740241%_)
                                                          (_%g4003940257%_
                                                           _%hd4004740210%_))
                                                      (if (gx#identifier?
                                                           _%g4003940257%_)
                                                          (_%__kont4456244563%_
                                                           _%g4003740254%_
                                                           _%g4003840256%_
                                                           _%g4003940257%_)
                                                          (_%__match4463644637%_
                                                           _%e4004040186%_
                                                           _%hd4004140190%_
                                                           _%tl4004240193%_
                                                           _%e4004340196%_
                                                           _%hd4004440200%_
                                                           _%tl4004540203%_)))
                                                    (_%__match4463644637%_
                                                     _%e4004040186%_
                                                     _%hd4004140190%_
                                                     _%tl4004240193%_
                                                     _%e4004340196%_
                                                     _%hd4004440200%_
                                                     _%tl4004540203%_))))
                                            (_%__match4463644637%_
                                             _%e4004040186%_
                                             _%hd4004140190%_
                                             _%tl4004240193%_
                                             _%e4004340196%_
                                             _%hd4004440200%_
                                             _%tl4004540203%_)))))))
                        (_%loop4005240222%_ _%target4004940216%_ '())))))
              (if (gx#stx-pair? _%__stx4455744558%_)
                  (let ((_%e4002540325%_ (gx#syntax-e _%__stx4455744558%_)))
                    (let ((_%tl4002740332%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4002540325%_)))
                          (_%hd4002640329%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4002540325%_))))
                      (if (gx#stx-pair? _%tl4002740332%_)
                          (let ((_%e4002840335%_
                                 (gx#syntax-e _%tl4002740332%_)))
                            (let ((_%tl4003040342%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4002840335%_)))
                                  (_%hd4002940339%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4002840335%_))))
                              (if (gx#stx-pair? _%hd4002940339%_)
                                  (let ((_%e4003140345%_
                                         (gx#syntax-e _%hd4002940339%_)))
                                    (let ((_%tl4003340352%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4003140345%_)))
                                          (_%hd4003240349%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4003140345%_))))
                                      (if (gx#stx-pair? _%tl4003040342%_)
                                          (let ((_%e4003440355%_
                                                 (gx#syntax-e
                                                  _%tl4003040342%_)))
                                            (let ((_%tl4003640362%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4003440355%_)))
                                                  (_%hd4003540359%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4003440355%_))))
                                              (if (gx#stx-null?
                                                   _%tl4003640362%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%g4002340365%_
                                                             _%hd4003540359%_)
                                                            (_%g4002440367%_
                                                             _%hd4003240349%_))
                                                        (_%__kont4456044561%_
                                                         _%g4002340365%_
                                                         _%g4002440367%_))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4003340352%_)
                                                          (let ((_%__splice4456444565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4003340352%_ '0)))
                    (let ((_%tl4005140219%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4456444565%_ '1)))
                          (_%target4004940216%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4456444565%_ '0))))
                      (if (gx#stx-null? _%tl4005140219%_)
                          (_%__match4462444625%_
                           _%e4002540325%_
                           _%hd4002640329%_
                           _%tl4002740332%_
                           _%e4002840335%_
                           _%hd4002940339%_
                           _%tl4003040342%_
                           _%e4003140345%_
                           _%hd4003240349%_
                           _%tl4003340352%_
                           _%__splice4456444565%_
                           _%target4004940216%_
                           _%tl4005140219%_)
                          (_%__match4463644637%_
                           _%e4002540325%_
                           _%hd4002640329%_
                           _%tl4002740332%_
                           _%e4002840335%_
                           _%hd4002940339%_
                           _%tl4003040342%_))))
                  (_%__match4463644637%_
                   _%e4002540325%_
                   _%hd4002640329%_
                   _%tl4002740332%_
                   _%e4002840335%_
                   _%hd4002940339%_
                   _%tl4003040342%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4003340352%_)
                                                      (let ((_%__splice4456444565%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4003340352%_
                                                              '0)))
                                                        (let ((_%tl4005140219%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4456444565%_ '1)))
                      (_%target4004940216%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4456444565%_ '0))))
                  (if (gx#stx-null? _%tl4005140219%_)
                      (_%__match4462444625%_
                       _%e4002540325%_
                       _%hd4002640329%_
                       _%tl4002740332%_
                       _%e4002840335%_
                       _%hd4002940339%_
                       _%tl4003040342%_
                       _%e4003140345%_
                       _%hd4003240349%_
                       _%tl4003340352%_
                       _%__splice4456444565%_
                       _%target4004940216%_
                       _%tl4005140219%_)
                      (_%__match4463644637%_
                       _%e4002540325%_
                       _%hd4002640329%_
                       _%tl4002740332%_
                       _%e4002840335%_
                       _%hd4002940339%_
                       _%tl4003040342%_))))
              (_%__match4463644637%_
               _%e4002540325%_
               _%hd4002640329%_
               _%tl4002740332%_
               _%e4002840335%_
               _%hd4002940339%_
               _%tl4003040342%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4003340352%_)
                                              (let ((_%__splice4456444565%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4003340352%_
                                                      '0)))
                                                (let ((_%tl4005140219%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4456444565%_
                                                          '1)))
                                                      (_%target4004940216%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4456444565%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4005140219%_)
                                                      (_%__match4462444625%_
                                                       _%e4002540325%_
                                                       _%hd4002640329%_
                                                       _%tl4002740332%_
                                                       _%e4002840335%_
                                                       _%hd4002940339%_
                                                       _%tl4003040342%_
                                                       _%e4003140345%_
                                                       _%hd4003240349%_
                                                       _%tl4003340352%_
                                                       _%__splice4456444565%_
                                                       _%target4004940216%_
                                                       _%tl4005140219%_)
                                                      (_%__match4463644637%_
                                                       _%e4002540325%_
                                                       _%hd4002640329%_
                                                       _%tl4002740332%_
                                                       _%e4002840335%_
                                                       _%hd4002940339%_
                                                       _%tl4003040342%_))))
                                              (_%__match4463644637%_
                                               _%e4002540325%_
                                               _%hd4002640329%_
                                               _%tl4002740332%_
                                               _%e4002840335%_
                                               _%hd4002940339%_
                                               _%tl4003040342%_)))))
                                  (_%__match4463644637%_
                                   _%e4002540325%_
                                   _%hd4002640329%_
                                   _%tl4002740332%_
                                   _%e4002840335%_
                                   _%hd4002940339%_
                                   _%tl4003040342%_))))
                          (let () (declare (not safe)) (_%g4002140084%_)))))
                  (let () (declare (not safe)) (_%g4002140084%_))))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx40403%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx40403%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx40406%_)
        (let* ((_%g4040940433%_
                (lambda (_%g4041040429%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4041040429%_)))
               (_%g4040840607%_
                (lambda (_%g4041040437%_)
                  (if (gx#stx-pair? _%g4041040437%_)
                      (let ((_%e4041340440%_ (gx#syntax-e _%g4041040437%_)))
                        (let ((_%hd4041440444%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4041340440%_)))
                              (_%tl4041540447%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4041340440%_))))
                          (if (gx#stx-pair/null? _%tl4041540447%_)
                              (if (let ((__tmp45030
                                         (gx#stx-length _%tl4041540447%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp45030 '1))
                                  (let ((_g45031_
                                         (gx#syntax-split-splice
                                          _%tl4041540447%_
                                          '1)))
                                    (begin
                                      (let ((_g45032_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g45031_)
                                                   (##values-length _g45031_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g45032_ 2)))
                                            (error "Context expects 2 values"
                                                   _g45032_)))
                                      (let ((_%target4041640450%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45031_ 0)))
                                            (_%tl4041840453%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45031_ 1))))
                                        (if (gx#stx-pair? _%tl4041840453%_)
                                            (let ((_%e4042540456%_
                                                   (gx#syntax-e
                                                    _%tl4041840453%_)))
                                              (let ((_%hd4042640460%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4042540456%_)))
                                                    (_%tl4042740463%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4042540456%_))))
                                                (if (gx#stx-null?
                                                     _%tl4042740463%_)
                                                    (letrec ((_%loop4041940466%_
                                                              (lambda (_%hd4041740470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tgt4042340473%_)
                        (if (gx#stx-pair? _%hd4041740470%_)
                            (let ((_%e4042040475%_
                                   (gx#syntax-e _%hd4041740470%_)))
                              (let ((_%lp-hd4042140479%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4042040475%_)))
                                    (_%lp-tl4042240482%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4042040475%_))))
                                (_%loop4041940466%_
                                 _%lp-tl4042240482%_
                                 (cons _%lp-hd4042140479%_
                                       _%tgt4042340473%_))))
                            (let ((_%tgt4042440485%_
                                   (reverse _%tgt4042340473%_)))
                              ((lambda (_%g4041140488%_ _%g4041240490%_)
                                 (let* ((_%g4050840525%_
                                         (lambda (_%g4050940521%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g4050940521%_)))
                                        (_%g4050740595%_
                                         (lambda (_%g4050940529%_)
                                           (if (gx#stx-pair/null?
                                                _%g4050940529%_)
                                               (let ((_g45033_
                                                      (gx#syntax-split-splice
                                                       _%g4050940529%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g45034_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g45033_)
                        (##values-length _g45033_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g45034_ 2)))
                 (error "Context expects 2 values" _g45034_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target4051140532%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g45033_
                                                             0)))
                                                         (_%tl4051340535%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g45033_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl4051340535%_)
                                                         (letrec ((_%loop4051440538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd4051240542%_ _%$e4051840545%_)
                             (if (gx#stx-pair? _%hd4051240542%_)
                                 (let ((_%e4051540547%_
                                        (gx#syntax-e _%hd4051240542%_)))
                                   (let ((_%lp-hd4051640551%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4051540547%_)))
                                         (_%lp-tl4051740554%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4051540547%_))))
                                     (_%loop4051440538%_
                                      _%lp-tl4051740554%_
                                      (cons _%lp-hd4051640551%_
                                            _%$e4051840545%_))))
                                 (let ((_%$e4051940557%_
                                        (reverse _%$e4051840545%_)))
                                   ((lambda (_%g4051040560%_)
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_%g4057540581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g4057640584%_)
                               (cons _%g4057540581%_ _%g4057640584%_))
                             '()
                             _%g4051040560%_)
                      (cons _%g4041140488%_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%g4051040560%_
                                                     _%g4041240490%_)
                                                    (foldr (lambda (_%g4057740587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4057840590%_
                            _%g4057940592%_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _%g4057840590%_
                                       (cons _%g4057740587%_ '())))
                           _%g4057940592%_))
                   '()
                   _%g4051040560%_
                   _%g4041240490%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$e4051940557%_))))))
                   (_%loop4051440538%_ _%target4051140532%_ '()))
                 (_%g4050840525%_ _%g4050940529%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4050840525%_
                                                _%g4050940529%_)))))
                                   (_%g4050740595%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g4059840601%_
                                                     _%g4059940604%_)
                                              (cons _%g4059840601%_
                                                    _%g4059940604%_))
                                            '()
                                            _%g4041240490%_)))))
                               _%hd4042640460%_
                               _%tgt4042440485%_))))))
              (_%loop4041940466%_ _%target4041640450%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4040940433%_
                                                     _%g4041040437%_))))
                                            (_%g4040940433%_
                                             _%g4041040437%_)))))
                                  (_%g4040940433%_ _%g4041040437%_))
                              (_%g4040940433%_ _%g4041040437%_))))
                      (_%g4040940433%_ _%g4041040437%_)))))
          (_%g4040840607%_ _%stx40406%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx40613%_)
        (let* ((_%__stx4465944660%_ _%$stx40613%_)
               (_%g4061940707%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4465944660%_))))
          (let ((_%__kont4466244663%_
                 (lambda (_%g4062141047%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4106341066%_ _%g4106441069%_)
                                        (cons _%g4106341066%_ _%g4106441069%_))
                                      '()
                                      _%g4062141047%_)))))
                (_%__kont4466644667%_
                 (lambda (_%g4063740957%_ _%g4063840959%_ _%g4063940960%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%g4098340986%_
                                                           _%g4098440989%_)
                                                    (cons _%g4098340986%_
                                                          _%g4098440989%_))
                                                  '()
                                                  _%g4063740957%_)))
                               (cons _%g4063940960%_
                                     (cons _%g4063840959%_ '()))))))
                (_%__kont4467044671%_
                 (lambda (_%g4066440820%_
                          _%g4066540822%_
                          _%g4066640823%_
                          _%g4066740824%_
                          _%g4066840825%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%g4066840825%_
                                                       (cons (foldr (lambda (_%g4085540860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4085640863%_)
                              (cons _%g4085540860%_ _%g4085640863%_))
                            '()
                            _%g4066540822%_)
                     (foldr (lambda (_%g4085740866%_ _%g4085840869%_)
                              (cons _%g4085740866%_ _%g4085840869%_))
                            '()
                            _%g4066440820%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g4066740824%_
                                     (cons _%g4066640823%_ '())))))))
            (let* ((_%__match4478044781%_
                    (lambda (_%e4066940714%_
                             _%hd4067040718%_
                             _%tl4067140721%_
                             _%e4067240724%_
                             _%hd4067340728%_
                             _%tl4067440731%_
                             _%e4067540734%_
                             _%hd4067640738%_
                             _%tl4067740741%_
                             _%e4067840744%_
                             _%hd4067940748%_
                             _%tl4068040751%_
                             _%e4068140754%_
                             _%hd4068240758%_
                             _%tl4068340761%_
                             _%__splice4467244673%_
                             _%target4068440764%_
                             _%tl4068640767%_)
                      (letrec ((_%loop4068740770%_
                                (lambda (_%hd4068540774%_ _%rest4069140777%_)
                                  (if (gx#stx-pair? _%hd4068540774%_)
                                      (let ((_%e4068840779%_
                                             (gx#syntax-e _%hd4068540774%_)))
                                        (let ((_%lp-tl4069040786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4068840779%_)))
                                              (_%lp-hd4068940783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4068840779%_))))
                                          (_%loop4068740770%_
                                           _%lp-tl4069040786%_
                                           (cons _%lp-hd4068940783%_
                                                 _%rest4069140777%_))))
                                      (let ((_%rest4069240789%_
                                             (reverse _%rest4069140777%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl4067440731%_)
                                            (let ((_%__splice4467444675%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4067440731%_
                                                    '0)))
                                              (let ((_%tl4069540795%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4467444675%_
                                                        '1)))
                                                    (_%target4069340792%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4467444675%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4069540795%_)
                                                    (letrec ((_%loop4069640798%_
                                                              (lambda (_%hd4069440802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body4070040805%_)
                        (if (gx#stx-pair? _%hd4069440802%_)
                            (let ((_%e4069740807%_
                                   (gx#syntax-e _%hd4069440802%_)))
                              (let ((_%lp-tl4069940814%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4069740807%_)))
                                    (_%lp-hd4069840811%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4069740807%_))))
                                (_%loop4069640798%_
                                 _%lp-tl4069940814%_
                                 (cons _%lp-hd4069840811%_
                                       _%body4070040805%_))))
                            (let ((_%body4070140817%_
                                   (reverse _%body4070040805%_)))
                              (_%__kont4467044671%_
                               _%body4070140817%_
                               _%rest4069240789%_
                               _%hd4068240758%_
                               _%hd4067940748%_
                               _%hd4067040718%_))))))
              (_%loop4069640798%_ _%target4069340792%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4061940707%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4061940707%_))))))))
                        (_%loop4068740770%_ _%target4068440764%_ '()))))
                   (_%__match4474044741%_
                    (lambda (_%e4064040879%_
                             _%hd4064140883%_
                             _%tl4064240886%_
                             _%e4064340889%_
                             _%hd4064440893%_
                             _%tl4064540896%_
                             _%e4064640899%_
                             _%hd4064740903%_
                             _%tl4064840906%_
                             _%e4064940909%_
                             _%hd4065040913%_
                             _%tl4065140916%_
                             _%e4065240919%_
                             _%hd4065340923%_
                             _%tl4065440926%_
                             _%__splice4466844669%_
                             _%target4065540929%_
                             _%tl4065740932%_)
                      (letrec ((_%loop4065840935%_
                                (lambda (_%hd4065640939%_ _%body4066240942%_)
                                  (if (gx#stx-pair? _%hd4065640939%_)
                                      (let ((_%e4065940944%_
                                             (gx#syntax-e _%hd4065640939%_)))
                                        (let ((_%lp-tl4066140951%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4065940944%_)))
                                              (_%lp-hd4066040948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4065940944%_))))
                                          (_%loop4065840935%_
                                           _%lp-tl4066140951%_
                                           (cons _%lp-hd4066040948%_
                                                 _%body4066240942%_))))
                                      (let ((_%body4066340954%_
                                             (reverse _%body4066240942%_)))
                                        (_%__kont4466644667%_
                                         _%body4066340954%_
                                         _%hd4065340923%_
                                         _%hd4065040913%_))))))
                        (_%loop4065840935%_ _%target4065540929%_ '()))))
                   (_%__match4469844699%_
                    (lambda (_%e4062240999%_
                             _%hd4062341003%_
                             _%tl4062441006%_
                             _%e4062541009%_
                             _%hd4062641013%_
                             _%tl4062741016%_
                             _%__splice4466444665%_
                             _%target4062841019%_
                             _%tl4063041022%_)
                      (letrec ((_%loop4063141025%_
                                (lambda (_%hd4062941029%_ _%body4063541032%_)
                                  (if (gx#stx-pair? _%hd4062941029%_)
                                      (let ((_%e4063241034%_
                                             (gx#syntax-e _%hd4062941029%_)))
                                        (let ((_%lp-tl4063441041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4063241034%_)))
                                              (_%lp-hd4063341038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4063241034%_))))
                                          (_%loop4063141025%_
                                           _%lp-tl4063441041%_
                                           (cons _%lp-hd4063341038%_
                                                 _%body4063541032%_))))
                                      (let ((_%body4063641044%_
                                             (reverse _%body4063541032%_)))
                                        (_%__kont4466244663%_
                                         _%body4063641044%_))))))
                        (_%loop4063141025%_ _%target4062841019%_ '())))))
              (if (gx#stx-pair? _%__stx4465944660%_)
                  (let ((_%e4062240999%_ (gx#syntax-e _%__stx4465944660%_)))
                    (let ((_%tl4062441006%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4062240999%_)))
                          (_%hd4062341003%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4062240999%_))))
                      (if (gx#stx-pair? _%tl4062441006%_)
                          (let ((_%e4062541009%_
                                 (gx#syntax-e _%tl4062441006%_)))
                            (let ((_%tl4062741016%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4062541009%_)))
                                  (_%hd4062641013%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4062541009%_))))
                              (if (gx#stx-null? _%hd4062641013%_)
                                  (if (gx#stx-pair/null? _%tl4062741016%_)
                                      (let ((_%__splice4466444665%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4062741016%_
                                              '0)))
                                        (let ((_%tl4063041022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4466444665%_
                                                  '1)))
                                              (_%target4062841019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4466444665%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4063041022%_)
                                              (_%__match4469844699%_
                                               _%e4062240999%_
                                               _%hd4062341003%_
                                               _%tl4062441006%_
                                               _%e4062541009%_
                                               _%hd4062641013%_
                                               _%tl4062741016%_
                                               _%__splice4466444665%_
                                               _%target4062841019%_
                                               _%tl4063041022%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4061940707%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4061940707%_)))
                                  (if (gx#stx-pair? _%hd4062641013%_)
                                      (let ((_%e4064640899%_
                                             (gx#syntax-e _%hd4062641013%_)))
                                        (let ((_%tl4064840906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4064640899%_)))
                                              (_%hd4064740903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4064640899%_))))
                                          (if (gx#stx-pair? _%hd4064740903%_)
                                              (let ((_%e4064940909%_
                                                     (gx#syntax-e
                                                      _%hd4064740903%_)))
                                                (let ((_%tl4065140916%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4064940909%_)))
                                                      (_%hd4065040913%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4064940909%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4065140916%_)
                                                      (let ((_%e4065240919%_
                                                             (gx#syntax-e
                                                              _%tl4065140916%_)))
                                                        (let ((_%tl4065440926%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4065240919%_)))
                      (_%hd4065340923%_
                       (let () (declare (not safe)) (##car _%e4065240919%_))))
                  (if (gx#stx-null? _%tl4065440926%_)
                      (if (gx#stx-null? _%tl4064840906%_)
                          (if (gx#stx-pair/null? _%tl4062741016%_)
                              (let ((_%__splice4466844669%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4062741016%_
                                      '0)))
                                (let ((_%tl4065740932%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4466844669%_
                                          '1)))
                                      (_%target4065540929%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4466844669%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4065740932%_)
                                      (_%__match4474044741%_
                                       _%e4062240999%_
                                       _%hd4062341003%_
                                       _%tl4062441006%_
                                       _%e4062541009%_
                                       _%hd4062641013%_
                                       _%tl4062741016%_
                                       _%e4064640899%_
                                       _%hd4064740903%_
                                       _%tl4064840906%_
                                       _%e4064940909%_
                                       _%hd4065040913%_
                                       _%tl4065140916%_
                                       _%e4065240919%_
                                       _%hd4065340923%_
                                       _%tl4065440926%_
                                       _%__splice4466844669%_
                                       _%target4065540929%_
                                       _%tl4065740932%_)
                                      (if (gx#stx-pair/null? _%tl4064840906%_)
                                          (let ((_%__splice4467244673%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4064840906%_
                                                  '0)))
                                            (let ((_%tl4068640767%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4467244673%_
                                                      '1)))
                                                  (_%target4068440764%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4467244673%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4068640767%_)
                                                  (_%__match4478044781%_
                                                   _%e4062240999%_
                                                   _%hd4062341003%_
                                                   _%tl4062441006%_
                                                   _%e4062541009%_
                                                   _%hd4062641013%_
                                                   _%tl4062741016%_
                                                   _%e4064640899%_
                                                   _%hd4064740903%_
                                                   _%tl4064840906%_
                                                   _%e4064940909%_
                                                   _%hd4065040913%_
                                                   _%tl4065140916%_
                                                   _%e4065240919%_
                                                   _%hd4065340923%_
                                                   _%tl4065440926%_
                                                   _%__splice4467244673%_
                                                   _%target4068440764%_
                                                   _%tl4068640767%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4061940707%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4061940707%_))))))
                              (if (gx#stx-pair/null? _%tl4064840906%_)
                                  (let ((_%__splice4467244673%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4064840906%_
                                          '0)))
                                    (let ((_%tl4068640767%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4467244673%_
                                              '1)))
                                          (_%target4068440764%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4467244673%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4068640767%_)
                                          (_%__match4478044781%_
                                           _%e4062240999%_
                                           _%hd4062341003%_
                                           _%tl4062441006%_
                                           _%e4062541009%_
                                           _%hd4062641013%_
                                           _%tl4062741016%_
                                           _%e4064640899%_
                                           _%hd4064740903%_
                                           _%tl4064840906%_
                                           _%e4064940909%_
                                           _%hd4065040913%_
                                           _%tl4065140916%_
                                           _%e4065240919%_
                                           _%hd4065340923%_
                                           _%tl4065440926%_
                                           _%__splice4467244673%_
                                           _%target4068440764%_
                                           _%tl4068640767%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4061940707%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4061940707%_))))
                          (if (gx#stx-pair/null? _%tl4064840906%_)
                              (let ((_%__splice4467244673%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4064840906%_
                                      '0)))
                                (let ((_%tl4068640767%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4467244673%_
                                          '1)))
                                      (_%target4068440764%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4467244673%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4068640767%_)
                                      (_%__match4478044781%_
                                       _%e4062240999%_
                                       _%hd4062341003%_
                                       _%tl4062441006%_
                                       _%e4062541009%_
                                       _%hd4062641013%_
                                       _%tl4062741016%_
                                       _%e4064640899%_
                                       _%hd4064740903%_
                                       _%tl4064840906%_
                                       _%e4064940909%_
                                       _%hd4065040913%_
                                       _%tl4065140916%_
                                       _%e4065240919%_
                                       _%hd4065340923%_
                                       _%tl4065440926%_
                                       _%__splice4467244673%_
                                       _%target4068440764%_
                                       _%tl4068640767%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4061940707%_)))))
                              (let () (declare (not safe)) (_%g4061940707%_))))
                      (let () (declare (not safe)) (_%g4061940707%_)))))
              (let () (declare (not safe)) (_%g4061940707%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4061940707%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4061940707%_))))))
                          (let () (declare (not safe)) (_%g4061940707%_)))))
                  (let () (declare (not safe)) (_%g4061940707%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx41080%_)
        (let* ((_%g4108441108%_
                (lambda (_%g4108541104%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4108541104%_)))
               (_%g4108341191%_
                (lambda (_%g4108541112%_)
                  (if (gx#stx-pair? _%g4108541112%_)
                      (let ((_%e4108841115%_ (gx#syntax-e _%g4108541112%_)))
                        (let ((_%hd4108941119%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4108841115%_)))
                              (_%tl4109041122%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4108841115%_))))
                          (if (gx#stx-pair? _%tl4109041122%_)
                              (let ((_%e4109141125%_
                                     (gx#syntax-e _%tl4109041122%_)))
                                (let ((_%hd4109241129%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4109141125%_)))
                                      (_%tl4109341132%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4109141125%_))))
                                  (if (gx#stx-pair/null? _%tl4109341132%_)
                                      (let ((_g45035_
                                             (gx#syntax-split-splice
                                              _%tl4109341132%_
                                              '0)))
                                        (begin
                                          (let ((_g45036_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45035_)
                                                       (##values-length
                                                        _g45035_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45036_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45036_)))
                                          (let ((_%target4109441135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45035_ 0)))
                                                (_%tl4109641138%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45035_ 1))))
                                            (if (gx#stx-null? _%tl4109641138%_)
                                                (letrec ((_%loop4109741141%_
                                                          (lambda (_%hd4109541145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4110141148%_)
                    (if (gx#stx-pair? _%hd4109541145%_)
                        (let ((_%e4109841150%_ (gx#syntax-e _%hd4109541145%_)))
                          (let ((_%lp-hd4109941154%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4109841150%_)))
                                (_%lp-tl4110041157%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4109841150%_))))
                            (_%loop4109741141%_
                             _%lp-tl4110041157%_
                             (cons _%lp-hd4109941154%_ _%body4110141148%_))))
                        (let ((_%body4110241160%_
                               (reverse _%body4110141148%_)))
                          ((lambda (_%g4108641163%_ _%g4108741165%_)
                             (if (gx#identifier? _%g4108741165%_)
                                 (cons (gx#datum->syntax '#f 'call/cc)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g4108741165%_
                                                               '())
                                                         (foldr (lambda (_%g4118241185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4118341188%_)
                          (cons _%g4118241185%_ _%g4118341188%_))
                        '()
                        _%g4108641163%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (_%g4108441108%_ _%g4108541112%_)))
                           _%body4110241160%_
                           _%hd4109241129%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4109741141%_
                                                   _%target4109441135%_
                                                   '()))
                                                (_%g4108441108%_
                                                 _%g4108541112%_)))))
                                      (_%g4108441108%_ _%g4108541112%_))))
                              (_%g4108441108%_ _%g4108541112%_))))
                      (_%g4108441108%_ _%g4108541112%_)))))
          (_%g4108341191%_ _%$stx41080%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx41196%_)
        (let* ((_%g4120041228%_
                (lambda (_%g4120141224%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4120141224%_)))
               (_%g4119941325%_
                (lambda (_%g4120141232%_)
                  (if (gx#stx-pair? _%g4120141232%_)
                      (let ((_%e4120541235%_ (gx#syntax-e _%g4120141232%_)))
                        (let ((_%hd4120641239%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4120541235%_)))
                              (_%tl4120741242%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4120541235%_))))
                          (if (gx#stx-pair? _%tl4120741242%_)
                              (let ((_%e4120841245%_
                                     (gx#syntax-e _%tl4120741242%_)))
                                (let ((_%hd4120941249%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4120841245%_)))
                                      (_%tl4121041252%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4120841245%_))))
                                  (if (gx#stx-pair? _%tl4121041252%_)
                                      (let ((_%e4121141255%_
                                             (gx#syntax-e _%tl4121041252%_)))
                                        (let ((_%hd4121241259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4121141255%_)))
                                              (_%tl4121341262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4121141255%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4121341262%_)
                                              (let ((_g45037_
                                                     (gx#syntax-split-splice
                                                      _%tl4121341262%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45038_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45037_)
                                                               (##values-length
                                                                _g45037_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45038_ 2)))
                (error "Context expects 2 values" _g45038_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4121441265%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45037_
                                                            0)))
                                                        (_%tl4121641268%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45037_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4121641268%_)
                                                        (letrec ((_%loop4121741271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4121541275%_ _%rest4122141278%_)
                            (if (gx#stx-pair? _%hd4121541275%_)
                                (let ((_%e4121841280%_
                                       (gx#syntax-e _%hd4121541275%_)))
                                  (let ((_%lp-hd4121941284%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4121841280%_)))
                                        (_%lp-tl4122041287%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4121841280%_))))
                                    (_%loop4121741271%_
                                     _%lp-tl4122041287%_
                                     (cons _%lp-hd4121941284%_
                                           _%rest4122141278%_))))
                                (let ((_%rest4122241290%_
                                       (reverse _%rest4122141278%_)))
                                  ((lambda (_%g4120241293%_
                                            _%g4120341295%_
                                            _%g4120441296%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'with-unwind-protect)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons '()
                                                             (cons _%g4120441296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g4120341295%_
                                 (foldr (lambda (_%g4131641319%_
                                                 _%g4131741322%_)
                                          (cons _%g4131641319%_
                                                _%g4131741322%_))
                                        '()
                                        _%g4120241293%_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest4122241290%_
                                   _%hd4121241259%_
                                   _%hd4120941249%_))))))
                  (_%loop4121741271%_ _%target4121441265%_ '()))
                (_%g4120041228%_ _%g4120141232%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4120041228%_
                                               _%g4120141232%_))))
                                      (_%g4120041228%_ _%g4120141232%_))))
                              (_%g4120041228%_ _%g4120141232%_))))
                      (_%g4120041228%_ _%g4120141232%_)))))
          (_%g4119941325%_ _%$stx41196%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx41330%_)
        (let* ((_%g4133441405%_
                (lambda (_%g4133541401%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4133541401%_)))
               (_%g4133341682%_
                (lambda (_%g4133541409%_)
                  (if (gx#stx-pair? _%g4133541409%_)
                      (let ((_%e4134241412%_ (gx#syntax-e _%g4133541409%_)))
                        (let ((_%hd4134341416%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4134241412%_)))
                              (_%tl4134441419%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4134241412%_))))
                          (if (gx#stx-pair? _%tl4134441419%_)
                              (let ((_%e4134541422%_
                                     (gx#syntax-e _%tl4134441419%_)))
                                (let ((_%hd4134641426%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4134541422%_)))
                                      (_%tl4134741429%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4134541422%_))))
                                  (if (gx#stx-pair/null? _%hd4134641426%_)
                                      (let ((_g45039_
                                             (gx#syntax-split-splice
                                              _%hd4134641426%_
                                              '0)))
                                        (begin
                                          (let ((_g45040_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45039_)
                                                       (##values-length
                                                        _g45039_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45040_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45040_)))
                                          (let ((_%target4134841432%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45039_ 0)))
                                                (_%tl4135041435%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45039_ 1))))
                                            (if (gx#stx-null? _%tl4135041435%_)
                                                (letrec ((_%loop4135141438%_
                                                          (lambda (_%hd4134941442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4135541445%_
                           _%init4135641446%_
                           _%var4135741447%_)
                    (if (gx#stx-pair? _%hd4134941442%_)
                        (let ((_%e4135241449%_ (gx#syntax-e _%hd4134941442%_)))
                          (let ((_%lp-hd4135341453%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4135241449%_)))
                                (_%lp-tl4135441456%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4135241449%_))))
                            (if (gx#stx-pair? _%lp-hd4135341453%_)
                                (let ((_%e4136141459%_
                                       (gx#syntax-e _%lp-hd4135341453%_)))
                                  (let ((_%hd4136241463%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4136141459%_)))
                                        (_%tl4136341466%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4136141459%_))))
                                    (if (gx#stx-pair? _%tl4136341466%_)
                                        (let ((_%e4136441469%_
                                               (gx#syntax-e _%tl4136341466%_)))
                                          (let ((_%hd4136541473%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4136441469%_)))
                                                (_%tl4136641476%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4136441469%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4136641476%_)
                                                (let ((_g45041_
                                                       (gx#syntax-split-splice
                                                        _%tl4136641476%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45042_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45041_)
                         (##values-length _g45041_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45042_ 2)))
                  (error "Context expects 2 values" _g45042_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4136741479%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45041_
                                                              0)))
                                                          (_%tl4136941482%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45041_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4136941482%_)
                                                          (letrec ((_%loop4137041485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4136841489%_ _%step4137441492%_)
                              (if (gx#stx-pair? _%hd4136841489%_)
                                  (let ((_%e4137141494%_
                                         (gx#syntax-e _%hd4136841489%_)))
                                    (let ((_%lp-hd4137241498%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4137141494%_)))
                                          (_%lp-tl4137341501%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4137141494%_))))
                                      (_%loop4137041485%_
                                       _%lp-tl4137341501%_
                                       (cons _%lp-hd4137241498%_
                                             _%step4137441492%_))))
                                  (let ((_%step4137541504%_
                                         (reverse _%step4137441492%_)))
                                    (_%loop4135141438%_
                                     _%lp-tl4135441456%_
                                     (cons _%step4137541504%_
                                           _%step4135541445%_)
                                     (cons _%hd4136541473%_ _%init4135641446%_)
                                     (cons _%hd4136241463%_
                                           _%var4135741447%_)))))))
                    (_%loop4137041485%_ _%target4136741479%_ '()))
                  (_%g4133441405%_ _%g4133541409%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4133441405%_
                                                 _%g4133541409%_))))
                                        (_%g4133441405%_ _%g4133541409%_))))
                                (_%g4133441405%_ _%g4133541409%_))))
                        (let ((_%step4135841507%_ (reverse _%step4135541445%_))
                              (_%init4135941509%_ (reverse _%init4135641446%_))
                              (_%var4136041510%_ (reverse _%var4135741447%_)))
                          (if (gx#stx-pair? _%tl4134741429%_)
                              (let ((_%e4137641512%_
                                     (gx#syntax-e _%tl4134741429%_)))
                                (let ((_%hd4137741516%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4137641512%_)))
                                      (_%tl4137841519%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4137641512%_))))
                                  (if (gx#stx-pair? _%hd4137741516%_)
                                      (let ((_%e4137941522%_
                                             (gx#syntax-e _%hd4137741516%_)))
                                        (let ((_%hd4138041526%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4137941522%_)))
                                              (_%tl4138141529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4137941522%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4138141529%_)
                                              (let ((_g45043_
                                                     (gx#syntax-split-splice
                                                      _%tl4138141529%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45044_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45043_)
                                                               (##values-length
                                                                _g45043_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45044_ 2)))
                (error "Context expects 2 values" _g45044_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4138241532%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45043_
                                                            0)))
                                                        (_%tl4138441535%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45043_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4138441535%_)
                                                        (letrec ((_%loop4138541538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4138341542%_ _%fini4138941545%_)
                            (if (gx#stx-pair? _%hd4138341542%_)
                                (let ((_%e4138641547%_
                                       (gx#syntax-e _%hd4138341542%_)))
                                  (let ((_%lp-hd4138741551%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4138641547%_)))
                                        (_%lp-tl4138841554%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4138641547%_))))
                                    (_%loop4138541538%_
                                     _%lp-tl4138841554%_
                                     (cons _%lp-hd4138741551%_
                                           _%fini4138941545%_))))
                                (let ((_%fini4139041557%_
                                       (reverse _%fini4138941545%_)))
                                  (if (gx#stx-pair/null? _%tl4137841519%_)
                                      (let ((_g45045_
                                             (gx#syntax-split-splice
                                              _%tl4137841519%_
                                              '0)))
                                        (begin
                                          (let ((_g45046_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45045_)
                                                       (##values-length
                                                        _g45045_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45046_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45046_)))
                                          (let ((_%target4139141560%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45045_ 0)))
                                                (_%tl4139341563%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45045_ 1))))
                                            (if (gx#stx-null? _%tl4139341563%_)
                                                (letrec ((_%loop4139441566%_
                                                          (lambda (_%hd4139241570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4139841573%_)
                    (if (gx#stx-pair? _%hd4139241570%_)
                        (let ((_%e4139541575%_ (gx#syntax-e _%hd4139241570%_)))
                          (let ((_%lp-hd4139641579%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4139541575%_)))
                                (_%lp-tl4139741582%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4139541575%_))))
                            (_%loop4139441566%_
                             _%lp-tl4139741582%_
                             (cons _%lp-hd4139641579%_ _%body4139841573%_))))
                        (let ((_%body4139941585%_
                               (reverse _%body4139841573%_)))
                          ((lambda (_%g4133641588%_
                                    _%g4133741590%_
                                    _%g4133841591%_
                                    _%g4133941592%_
                                    _%g4134041593%_
                                    _%g4134141594%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4162741630%_
                                                  _%g4162841633%_)
                                           (cons _%g4162741630%_
                                                 _%g4162841633%_))
                                         '()
                                         _%g4134141594%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g4134041593%_
                                                      _%g4134141594%_)
                                                     (foldr (lambda (_%g4163541648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4163641651%_
                             _%g4163741653%_)
                      (cons (cons _%g4163641651%_ (cons _%g4163541648%_ '()))
                            _%g4163741653%_))
                    '()
                    _%g4134041593%_
                    _%g4134141594%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%g4133841591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g4163841656%_
                                                               _%g4163941659%_)
                                                        (cons _%g4163841656%_
                                                              _%g4163941659%_))
                                                      '()
                                                      _%g4133741590%_)))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4164041662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4164141665%_)
                      (cons _%g4164041662%_ _%g4164141665%_))
                    (cons (cons (gx#datum->syntax '#f '$loop)
                                (begin
                                  (gx#syntax-check-splice-targets
                                   _%g4133941592%_
                                   _%g4134141594%_)
                                  (foldr (lambda (_%g4164241668%_
                                                  _%g4164341671%_
                                                  _%g4164441673%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons _%g4164341671%_
                                                             (foldr (lambda (_%g4164541676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4164641679%_)
                              (cons _%g4164541676%_ _%g4164641679%_))
                            '()
                            _%g4164241668%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g4164441673%_))
                                         '()
                                         _%g4133941592%_
                                         _%g4134141594%_)))
                          '())
                    _%g4133641588%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4133441405%_ _%g4133541409%_)))
                           _%body4139941585%_
                           _%fini4139041557%_
                           _%hd4138041526%_
                           _%step4135841507%_
                           _%init4135941509%_
                           _%var4136041510%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4139441566%_
                                                   _%target4139141560%_
                                                   '()))
                                                (_%g4133441405%_
                                                 _%g4133541409%_)))))
                                      (_%g4133441405%_ _%g4133541409%_)))))))
                  (_%loop4138541538%_ _%target4138241532%_ '()))
                (_%g4133441405%_ _%g4133541409%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4133441405%_
                                               _%g4133541409%_))))
                                      (_%g4133441405%_ _%g4133541409%_))))
                              (_%g4133441405%_ _%g4133541409%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4135141438%_
                                                   _%target4134841432%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4133441405%_
                                                 _%g4133541409%_)))))
                                      (_%g4133441405%_ _%g4133541409%_))))
                              (_%g4133441405%_ _%g4133541409%_))))
                      (_%g4133441405%_ _%g4133541409%_)))))
          (_%g4133341682%_ _%$stx41330%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx41690%_)
        (let* ((_%g4169441765%_
                (lambda (_%g4169541761%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4169541761%_)))
               (_%g4169342042%_
                (lambda (_%g4169541769%_)
                  (if (gx#stx-pair? _%g4169541769%_)
                      (let ((_%e4170241772%_ (gx#syntax-e _%g4169541769%_)))
                        (let ((_%hd4170341776%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4170241772%_)))
                              (_%tl4170441779%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4170241772%_))))
                          (if (gx#stx-pair? _%tl4170441779%_)
                              (let ((_%e4170541782%_
                                     (gx#syntax-e _%tl4170441779%_)))
                                (let ((_%hd4170641786%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4170541782%_)))
                                      (_%tl4170741789%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4170541782%_))))
                                  (if (gx#stx-pair/null? _%hd4170641786%_)
                                      (let ((_g45047_
                                             (gx#syntax-split-splice
                                              _%hd4170641786%_
                                              '0)))
                                        (begin
                                          (let ((_g45048_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45047_)
                                                       (##values-length
                                                        _g45047_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45048_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45048_)))
                                          (let ((_%target4170841792%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45047_ 0)))
                                                (_%tl4171041795%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45047_ 1))))
                                            (if (gx#stx-null? _%tl4171041795%_)
                                                (letrec ((_%loop4171141798%_
                                                          (lambda (_%hd4170941802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4171541805%_
                           _%init4171641806%_
                           _%var4171741807%_)
                    (if (gx#stx-pair? _%hd4170941802%_)
                        (let ((_%e4171241809%_ (gx#syntax-e _%hd4170941802%_)))
                          (let ((_%lp-hd4171341813%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4171241809%_)))
                                (_%lp-tl4171441816%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4171241809%_))))
                            (if (gx#stx-pair? _%lp-hd4171341813%_)
                                (let ((_%e4172141819%_
                                       (gx#syntax-e _%lp-hd4171341813%_)))
                                  (let ((_%hd4172241823%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4172141819%_)))
                                        (_%tl4172341826%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4172141819%_))))
                                    (if (gx#stx-pair? _%tl4172341826%_)
                                        (let ((_%e4172441829%_
                                               (gx#syntax-e _%tl4172341826%_)))
                                          (let ((_%hd4172541833%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4172441829%_)))
                                                (_%tl4172641836%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4172441829%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4172641836%_)
                                                (let ((_g45049_
                                                       (gx#syntax-split-splice
                                                        _%tl4172641836%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45050_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45049_)
                         (##values-length _g45049_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45050_ 2)))
                  (error "Context expects 2 values" _g45050_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4172741839%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45049_
                                                              0)))
                                                          (_%tl4172941842%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45049_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4172941842%_)
                                                          (letrec ((_%loop4173041845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4172841849%_ _%step4173441852%_)
                              (if (gx#stx-pair? _%hd4172841849%_)
                                  (let ((_%e4173141854%_
                                         (gx#syntax-e _%hd4172841849%_)))
                                    (let ((_%lp-hd4173241858%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4173141854%_)))
                                          (_%lp-tl4173341861%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4173141854%_))))
                                      (_%loop4173041845%_
                                       _%lp-tl4173341861%_
                                       (cons _%lp-hd4173241858%_
                                             _%step4173441852%_))))
                                  (let ((_%step4173541864%_
                                         (reverse _%step4173441852%_)))
                                    (_%loop4171141798%_
                                     _%lp-tl4171441816%_
                                     (cons _%step4173541864%_
                                           _%step4171541805%_)
                                     (cons _%hd4172541833%_ _%init4171641806%_)
                                     (cons _%hd4172241823%_
                                           _%var4171741807%_)))))))
                    (_%loop4173041845%_ _%target4172741839%_ '()))
                  (_%g4169441765%_ _%g4169541769%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4169441765%_
                                                 _%g4169541769%_))))
                                        (_%g4169441765%_ _%g4169541769%_))))
                                (_%g4169441765%_ _%g4169541769%_))))
                        (let ((_%step4171841867%_ (reverse _%step4171541805%_))
                              (_%init4171941869%_ (reverse _%init4171641806%_))
                              (_%var4172041870%_ (reverse _%var4171741807%_)))
                          (if (gx#stx-pair? _%tl4170741789%_)
                              (let ((_%e4173641872%_
                                     (gx#syntax-e _%tl4170741789%_)))
                                (let ((_%hd4173741876%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4173641872%_)))
                                      (_%tl4173841879%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4173641872%_))))
                                  (if (gx#stx-pair? _%hd4173741876%_)
                                      (let ((_%e4173941882%_
                                             (gx#syntax-e _%hd4173741876%_)))
                                        (let ((_%hd4174041886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4173941882%_)))
                                              (_%tl4174141889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4173941882%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4174141889%_)
                                              (let ((_g45051_
                                                     (gx#syntax-split-splice
                                                      _%tl4174141889%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45052_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45051_)
                                                               (##values-length
                                                                _g45051_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45052_ 2)))
                (error "Context expects 2 values" _g45052_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4174241892%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45051_
                                                            0)))
                                                        (_%tl4174441895%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45051_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4174441895%_)
                                                        (letrec ((_%loop4174541898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4174341902%_ _%fini4174941905%_)
                            (if (gx#stx-pair? _%hd4174341902%_)
                                (let ((_%e4174641907%_
                                       (gx#syntax-e _%hd4174341902%_)))
                                  (let ((_%lp-hd4174741911%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4174641907%_)))
                                        (_%lp-tl4174841914%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4174641907%_))))
                                    (_%loop4174541898%_
                                     _%lp-tl4174841914%_
                                     (cons _%lp-hd4174741911%_
                                           _%fini4174941905%_))))
                                (let ((_%fini4175041917%_
                                       (reverse _%fini4174941905%_)))
                                  (if (gx#stx-pair/null? _%tl4173841879%_)
                                      (let ((_g45053_
                                             (gx#syntax-split-splice
                                              _%tl4173841879%_
                                              '0)))
                                        (begin
                                          (let ((_g45054_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45053_)
                                                       (##values-length
                                                        _g45053_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45054_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45054_)))
                                          (let ((_%target4175141920%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45053_ 0)))
                                                (_%tl4175341923%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45053_ 1))))
                                            (if (gx#stx-null? _%tl4175341923%_)
                                                (letrec ((_%loop4175441926%_
                                                          (lambda (_%hd4175241930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4175841933%_)
                    (if (gx#stx-pair? _%hd4175241930%_)
                        (let ((_%e4175541935%_ (gx#syntax-e _%hd4175241930%_)))
                          (let ((_%lp-hd4175641939%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4175541935%_)))
                                (_%lp-tl4175741942%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4175541935%_))))
                            (_%loop4175441926%_
                             _%lp-tl4175741942%_
                             (cons _%lp-hd4175641939%_ _%body4175841933%_))))
                        (let ((_%body4175941945%_
                               (reverse _%body4175841933%_)))
                          ((lambda (_%g4169641948%_
                                    _%g4169741950%_
                                    _%g4169841951%_
                                    _%g4169941952%_
                                    _%g4170041953%_
                                    _%g4170141954%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4198741990%_
                                                  _%g4198841993%_)
                                           (cons _%g4198741990%_
                                                 _%g4198841993%_))
                                         '()
                                         _%g4170141954%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g4170041953%_
                                                      _%g4170141954%_)
                                                     (foldr (lambda (_%g4199542008%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4199642011%_
                             _%g4199742013%_)
                      (cons (cons _%g4199642011%_ (cons _%g4199542008%_ '()))
                            _%g4199742013%_))
                    '()
                    _%g4170041953%_
                    _%g4170141954%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (foldr (lambda (_%g4199842016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4199942019%_)
                    (cons _%g4199842016%_ _%g4199942019%_))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons _%g4169841951%_
                                    (cons (cons (gx#datum->syntax '#f '$loop)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%g4169941952%_
                                                   _%g4170141954%_)
                                                  (foldr (lambda (_%g4200042022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4200142025%_
                          _%g4200242027%_)
                   (cons (cons (gx#datum->syntax '#f 'begin)
                               (cons _%g4200142025%_
                                     (foldr (lambda (_%g4200342030%_
                                                     _%g4200442033%_)
                                              (cons _%g4200342030%_
                                                    _%g4200442033%_))
                                            '()
                                            _%g4200042022%_)))
                         _%g4200242027%_))
                 '()
                 _%g4169941952%_
                 _%g4170141954%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons '#!void
                                                            (foldr (lambda (_%g4200542036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4200642039%_)
                             (cons _%g4200542036%_ _%g4200642039%_))
                           '()
                           _%g4169741950%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())
                  _%g4169641948%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4169441765%_ _%g4169541769%_)))
                           _%body4175941945%_
                           _%fini4175041917%_
                           _%hd4174041886%_
                           _%step4171841867%_
                           _%init4171941869%_
                           _%var4172041870%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4175441926%_
                                                   _%target4175141920%_
                                                   '()))
                                                (_%g4169441765%_
                                                 _%g4169541769%_)))))
                                      (_%g4169441765%_ _%g4169541769%_)))))))
                  (_%loop4174541898%_ _%target4174241892%_ '()))
                (_%g4169441765%_ _%g4169541769%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4169441765%_
                                               _%g4169541769%_))))
                                      (_%g4169441765%_ _%g4169541769%_))))
                              (_%g4169441765%_ _%g4169541769%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4171141798%_
                                                   _%target4170841792%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4169441765%_
                                                 _%g4169541769%_)))))
                                      (_%g4169441765%_ _%g4169541769%_))))
                              (_%g4169441765%_ _%g4169541769%_))))
                      (_%g4169441765%_ _%g4169541769%_)))))
          (_%g4169342042%_ _%$stx41690%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx42050%_)
        (let* ((_%g4205442078%_
                (lambda (_%g4205542074%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4205542074%_)))
               (_%g4205342161%_
                (lambda (_%g4205542082%_)
                  (if (gx#stx-pair? _%g4205542082%_)
                      (let ((_%e4205842085%_ (gx#syntax-e _%g4205542082%_)))
                        (let ((_%hd4205942089%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4205842085%_)))
                              (_%tl4206042092%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4205842085%_))))
                          (if (gx#stx-pair? _%tl4206042092%_)
                              (let ((_%e4206142095%_
                                     (gx#syntax-e _%tl4206042092%_)))
                                (let ((_%hd4206242099%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4206142095%_)))
                                      (_%tl4206342102%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4206142095%_))))
                                  (if (gx#stx-pair/null? _%tl4206342102%_)
                                      (let ((_g45055_
                                             (gx#syntax-split-splice
                                              _%tl4206342102%_
                                              '0)))
                                        (begin
                                          (let ((_g45056_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45055_)
                                                       (##values-length
                                                        _g45055_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45056_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45056_)))
                                          (let ((_%target4206442105%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45055_ 0)))
                                                (_%tl4206642108%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45055_ 1))))
                                            (if (gx#stx-null? _%tl4206642108%_)
                                                (letrec ((_%loop4206742111%_
                                                          (lambda (_%hd4206542115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4207142118%_)
                    (if (gx#stx-pair? _%hd4206542115%_)
                        (let ((_%e4206842120%_ (gx#syntax-e _%hd4206542115%_)))
                          (let ((_%lp-hd4206942124%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4206842120%_)))
                                (_%lp-tl4207042127%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4206842120%_))))
                            (_%loop4206742111%_
                             _%lp-tl4207042127%_
                             (cons _%lp-hd4206942124%_ _%body4207142118%_))))
                        (let ((_%body4207242130%_
                               (reverse _%body4207142118%_)))
                          ((lambda (_%g4205642133%_ _%g4205742135%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'when)
                                                           (cons _%g4205742135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4215242155%_ _%g4215342158%_)
                                  (cons _%g4215242155%_ _%g4215342158%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g4205642133%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4207242130%_
                           _%hd4206242099%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4206742111%_
                                                   _%target4206442105%_
                                                   '()))
                                                (_%g4205442078%_
                                                 _%g4205542082%_)))))
                                      (_%g4205442078%_ _%g4205542082%_))))
                              (_%g4205442078%_ _%g4205542082%_))))
                      (_%g4205442078%_ _%g4205542082%_)))))
          (_%g4205342161%_ _%$stx42050%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx42166%_)
        (let* ((_%g4217042194%_
                (lambda (_%g4217142190%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4217142190%_)))
               (_%g4216942277%_
                (lambda (_%g4217142198%_)
                  (if (gx#stx-pair? _%g4217142198%_)
                      (let ((_%e4217442201%_ (gx#syntax-e _%g4217142198%_)))
                        (let ((_%hd4217542205%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4217442201%_)))
                              (_%tl4217642208%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4217442201%_))))
                          (if (gx#stx-pair? _%tl4217642208%_)
                              (let ((_%e4217742211%_
                                     (gx#syntax-e _%tl4217642208%_)))
                                (let ((_%hd4217842215%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4217742211%_)))
                                      (_%tl4217942218%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4217742211%_))))
                                  (if (gx#stx-pair/null? _%tl4217942218%_)
                                      (let ((_g45057_
                                             (gx#syntax-split-splice
                                              _%tl4217942218%_
                                              '0)))
                                        (begin
                                          (let ((_g45058_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45057_)
                                                       (##values-length
                                                        _g45057_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45058_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45058_)))
                                          (let ((_%target4218042221%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45057_ 0)))
                                                (_%tl4218242224%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45057_ 1))))
                                            (if (gx#stx-null? _%tl4218242224%_)
                                                (letrec ((_%loop4218342227%_
                                                          (lambda (_%hd4218142231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4218742234%_)
                    (if (gx#stx-pair? _%hd4218142231%_)
                        (let ((_%e4218442236%_ (gx#syntax-e _%hd4218142231%_)))
                          (let ((_%lp-hd4218542240%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4218442236%_)))
                                (_%lp-tl4218642243%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4218442236%_))))
                            (_%loop4218342227%_
                             _%lp-tl4218642243%_
                             (cons _%lp-hd4218542240%_ _%body4218742234%_))))
                        (let ((_%body4218842246%_
                               (reverse _%body4218742234%_)))
                          ((lambda (_%g4217242249%_ _%g4217342251%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'unless)
                                                           (cons _%g4217342251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4226842271%_ _%g4226942274%_)
                                  (cons _%g4226842271%_ _%g4226942274%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g4217242249%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4218842246%_
                           _%hd4217842215%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4218342227%_
                                                   _%target4218042221%_
                                                   '()))
                                                (_%g4217042194%_
                                                 _%g4217142198%_)))))
                                      (_%g4217042194%_ _%g4217142198%_))))
                              (_%g4217042194%_ _%g4217142198%_))))
                      (_%g4217042194%_ _%g4217142198%_)))))
          (_%g4216942277%_ _%$stx42166%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx42282%_)
        (let ((_%g4228542292%_
               (lambda (_%g4228642288%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4228642288%_))))
          (_%g4228542292%_ _%$stx42282%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx42296%_)
        (let ((_%g4229942306%_
               (lambda (_%g4230042302%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4230042302%_))))
          (_%g4229942306%_ _%$stx42296%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx42310%_)
        (letrec ((_%generate-thunk42313%_
                  (lambda (_%body43632%_)
                    (if (null? _%body43632%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx42310%_)
                        (let* ((_%g4363543652%_
                                (lambda (_%g4363643648%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g4363643648%_)))
                               (_%g4363443711%_
                                (lambda (_%g4363643656%_)
                                  (if (gx#stx-pair/null? _%g4363643656%_)
                                      (let ((_g45059_
                                             (gx#syntax-split-splice
                                              _%g4363643656%_
                                              '0)))
                                        (begin
                                          (let ((_g45060_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45059_)
                                                       (##values-length
                                                        _g45059_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45060_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45060_)))
                                          (let ((_%target4363843659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45059_ 0)))
                                                (_%tl4364043662%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45059_ 1))))
                                            (if (gx#stx-null? _%tl4364043662%_)
                                                (letrec ((_%loop4364143665%_
                                                          (lambda (_%hd4363943669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e4364543672%_)
                    (if (gx#stx-pair? _%hd4363943669%_)
                        (let ((_%e4364243674%_ (gx#syntax-e _%hd4363943669%_)))
                          (let ((_%lp-hd4364343678%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4364243674%_)))
                                (_%lp-tl4364443681%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4364243674%_))))
                            (_%loop4364143665%_
                             _%lp-tl4364443681%_
                             (cons _%lp-hd4364343678%_ _%e4364543672%_))))
                        (let ((_%e4364643684%_ (reverse _%e4364543672%_)))
                          ((lambda (_%g4363743687%_)
                             (cons (gx#datum->syntax '#f 'lambda)
                                   (cons '()
                                         (foldr (lambda (_%g4370243705%_
                                                         _%g4370343708%_)
                                                  (cons _%g4370243705%_
                                                        _%g4370343708%_))
                                                '()
                                                _%g4363743687%_))))
                           _%e4364643684%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4364143665%_
                                                   _%target4363843659%_
                                                   '()))
                                                (_%g4363543652%_
                                                 _%g4363643656%_)))))
                                      (_%g4363543652%_ _%g4363643656%_)))))
                          (_%g4363443711%_ (reverse _%body43632%_))))))
                 (_%generate-fini42315%_
                  (lambda (_%thunk43515%_ _%fini43517%_)
                    (let* ((_%g4351943543%_
                            (lambda (_%g4352043539%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4352043539%_)))
                           (_%g4351843628%_
                            (lambda (_%g4352043547%_)
                              (if (gx#stx-pair? _%g4352043547%_)
                                  (let ((_%e4352343550%_
                                         (gx#syntax-e _%g4352043547%_)))
                                    (let ((_%hd4352443554%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4352343550%_)))
                                          (_%tl4352543557%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4352343550%_))))
                                      (if (gx#stx-pair? _%tl4352543557%_)
                                          (let ((_%e4352643560%_
                                                 (gx#syntax-e
                                                  _%tl4352543557%_)))
                                            (let ((_%hd4352743564%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4352643560%_)))
                                                  (_%tl4352843567%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4352643560%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4352743564%_)
                                                  (let ((_g45061_
                                                         (gx#syntax-split-splice
                                                          _%hd4352743564%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g45062_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g45061_)
                           (##values-length _g45061_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g45062_ 2)))
                    (error "Context expects 2 values" _g45062_)))
              (let ((_%target4352943570%_
                     (let () (declare (not safe)) (##values-ref _g45061_ 0)))
                    (_%tl4353143573%_
                     (let () (declare (not safe)) (##values-ref _g45061_ 1))))
                (if (gx#stx-null? _%tl4353143573%_)
                    (letrec ((_%loop4353243576%_
                              (lambda (_%hd4353043580%_ _%e4353643583%_)
                                (if (gx#stx-pair? _%hd4353043580%_)
                                    (let ((_%e4353343585%_
                                           (gx#syntax-e _%hd4353043580%_)))
                                      (let ((_%lp-hd4353443589%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4353343585%_)))
                                            (_%lp-tl4353543592%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4353343585%_))))
                                        (_%loop4353243576%_
                                         _%lp-tl4353543592%_
                                         (cons _%lp-hd4353443589%_
                                               _%e4353643583%_))))
                                    (let ((_%e4353743595%_
                                           (reverse _%e4353643583%_)))
                                      (if (gx#stx-null? _%tl4352843567%_)
                                          ((lambda (_%g4352143598%_
                                                    _%g4352243600%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'with-unwind-protect)
                                                   (cons _%g4352243600%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '()
                                   (foldr (lambda (_%g4361943622%_
                                                   _%g4362043625%_)
                                            (cons _%g4361943622%_
                                                  _%g4362043625%_))
                                          '()
                                          _%g4352143598%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%e4353743595%_
                                           _%hd4352443554%_)
                                          (_%g4351943543%_
                                           _%g4352043547%_)))))))
                      (_%loop4353243576%_ _%target4352943570%_ '()))
                    (_%g4351943543%_ _%g4352043547%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4351943543%_
                                                   _%g4352043547%_))))
                                          (_%g4351943543%_ _%g4352043547%_))))
                                  (_%g4351943543%_ _%g4352043547%_)))))
                      (_%g4351843628%_ (list _%thunk43515%_ _%fini43517%_)))))
                 (_%generate-catch42316%_
                  (lambda (_%handlers42930%_ _%thunk42932%_)
                    (let* ((_%g4293442942%_
                            (lambda (_%g4293542938%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4293542938%_)))
                           (_%g4293343511%_
                            (lambda (_%g4293542946%_)
                              ((lambda (_%g4293642949%_)
                                 (let _%lp42961%_ ((_%rest42964%_
                                                    _%handlers42930%_)
                                                   (_%clauses42966%_ '()))
                                   (let* ((_%rest4296742975%_ _%rest42964%_)
                                          (_%else4296943106%_
                                           (lambda ()
                                             (let* ((_%g4298743011%_
                                                     (lambda (_%g4298843007%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4298843007%_)))
                                                    (_%g4298643102%_
                                                     (lambda (_%g4298843015%_)
                                                       (if (gx#stx-pair?
                                                            _%g4298843015%_)
                                                           (let ((_%e4299143018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g4298843015%_)))
                     (let ((_%hd4299243022%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4299143018%_)))
                           (_%tl4299343025%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4299143018%_))))
                       (if (gx#stx-pair/null? _%hd4299243022%_)
                           (let ((_g45063_
                                  (gx#syntax-split-splice
                                   _%hd4299243022%_
                                   '0)))
                             (begin
                               (let ((_g45064_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g45063_)
                                            (##values-length _g45063_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g45064_ 2)))
                                     (error "Context expects 2 values"
                                            _g45064_)))
                               (let ((_%target4299443028%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g45063_ 0)))
                                     (_%tl4299643031%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g45063_ 1))))
                                 (if (gx#stx-null? _%tl4299643031%_)
                                     (letrec ((_%loop4299743034%_
                                               (lambda (_%hd4299543038%_
                                                        _%clause4300143041%_)
                                                 (if (gx#stx-pair?
                                                      _%hd4299543038%_)
                                                     (let ((_%e4299843043%_
                                                            (gx#syntax-e
                                                             _%hd4299543038%_)))
                                                       (let ((_%lp-hd4299943047%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e4299843043%_)))
                     (_%lp-tl4300043050%_
                      (let () (declare (not safe)) (##cdr _%e4299843043%_))))
                 (_%loop4299743034%_
                  _%lp-tl4300043050%_
                  (cons _%lp-hd4299943047%_ _%clause4300143041%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause4300243053%_
                                                            (reverse _%clause4300143041%_)))
                                                       (if (gx#stx-pair?
                                                            _%tl4299343025%_)
                                                           (let ((_%e4300343056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4299343025%_)))
                     (let ((_%hd4300443060%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4300343056%_)))
                           (_%tl4300543063%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4300343056%_))))
                       (if (gx#stx-null? _%tl4300543063%_)
                           ((lambda (_%g4298943066%_ _%g4299043068%_)
                              (cons (gx#datum->syntax '#f 'with-catch)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%g4293642949%_
                                                            '())
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cond)
                          (foldr (lambda (_%g4309343096%_ _%g4309443099%_)
                                   (cons _%g4309343096%_ _%g4309443099%_))
                                 (cons (cons (gx#datum->syntax '#f 'else)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'raise)
                                                         (cons _%g4293642949%_
                                                               '()))
                                                   '()))
                                       '())
                                 _%g4299043068%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _%g4298943066%_ '()))))
                            _%hd4300443060%_
                            _%clause4300243053%_)
                           (_%g4298743011%_ _%g4298843015%_))))
                   (_%g4298743011%_ _%g4298843015%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop4299743034%_
                                        _%target4299443028%_
                                        '()))
                                     (_%g4298743011%_ _%g4298843015%_)))))
                           (_%g4298743011%_ _%g4298843015%_))))
                   (_%g4298743011%_ _%g4298843015%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4298643102%_
                                                (list _%clauses42966%_
                                                      _%thunk42932%_)))))
                                          (_%K4297143495%_
                                           (lambda (_%rest43110%_ _%hd43112%_)
                                             (let* ((_%__stx4478344784%_
                                                     _%hd43112%_)
                                                    (_%g4311743187%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx4478344784%_))))
                                               (let ((_%__kont4478644787%_
                                                      (lambda (_%g4311943474%_
                                                               _%g4312043476%_)
                                                        (_%lp42961%_
                                                         _%rest43110%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g4312043476%_ '()))
                                   (cons _%g4293642949%_ '()))
                             (cons (gx#datum->syntax '#f '=>)
                                   (cons _%g4311943474%_ '())))
                       _%clauses42966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4478844789%_
                                                      (lambda (_%g4313043406%_
                                                               _%g4313143408%_
                                                               _%g4313243409%_)
                                                        (_%lp42961%_
                                                         _%rest43110%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g4313243409%_ '()))
                                   (cons _%g4293642949%_ '()))
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g4313143408%_
                                                           (cons _%g4293642949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4342843431%_
                                                               _%g4342943434%_)
                                                        (cons _%g4342843431%_
                                                              _%g4342943434%_))
                                                      '()
                                                      _%g4313043406%_)))
                                   '()))
                       _%clauses42966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4479244793%_
                                                      (lambda (_%g4315143314%_
                                                               _%g4315243316%_)
                                                        (_%lp42961%_
                                                         _%rest43110%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g4315243316%_
                                                           (cons _%g4293642949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4333243335%_
                                                               _%g4333343338%_)
                                                        (cons _%g4333243335%_
                                                              _%g4333343338%_))
                                                      '()
                                                      _%g4315143314%_)))
                                   '()))
                       _%clauses42966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4479644797%_
                                                      (lambda (_%g4316843232%_
                                                               _%g4316943234%_)
                                                        (_%lp42961%_
                                                         _%rest43110%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (foldr (lambda (_%g4325043253%_
                                                         _%g4325143256%_)
                                                  (cons _%g4325043253%_
                                                        _%g4325143256%_))
                                                '()
                                                _%g4316843232%_))
                                   '()))
                       _%clauses42966%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__match4488844889%_
                                                         (lambda (_%e4317043194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd4317143198%_
                          _%tl4317243201%_
                          _%__splice4479844799%_
                          _%target4317343204%_
                          _%tl4317543207%_)
                   (letrec ((_%loop4317643210%_
                             (lambda (_%hd4317443214%_ _%body4318043217%_)
                               (if (gx#stx-pair? _%hd4317443214%_)
                                   (let ((_%e4317743219%_
                                          (gx#syntax-e _%hd4317443214%_)))
                                     (let ((_%lp-tl4317943226%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4317743219%_)))
                                           (_%lp-hd4317843223%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4317743219%_))))
                                       (_%loop4317643210%_
                                        _%lp-tl4317943226%_
                                        (cons _%lp-hd4317843223%_
                                              _%body4318043217%_))))
                                   (let ((_%body4318143229%_
                                          (reverse _%body4318043217%_)))
                                     (let ((_%g4316843232%_ _%body4318143229%_)
                                           (_%g4316943234%_ _%hd4317143198%_))
                                       (if (gx#underscore? _%g4316943234%_)
                                           (_%__kont4479644797%_
                                            _%g4316843232%_
                                            _%g4316943234%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g4311743187%_)))))))))
                     (_%loop4317643210%_ _%target4317343204%_ '()))))
                (_%__match4487444875%_
                 (lambda (_%e4315343266%_
                          _%hd4315443270%_
                          _%tl4315543273%_
                          _%e4315643276%_
                          _%hd4315743280%_
                          _%tl4315843283%_
                          _%__splice4479444795%_
                          _%target4315943286%_
                          _%tl4316143289%_)
                   (letrec ((_%loop4316243292%_
                             (lambda (_%hd4316043296%_ _%body4316643299%_)
                               (if (gx#stx-pair? _%hd4316043296%_)
                                   (let ((_%e4316343301%_
                                          (gx#syntax-e _%hd4316043296%_)))
                                     (let ((_%lp-tl4316543308%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4316343301%_)))
                                           (_%lp-hd4316443305%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4316343301%_))))
                                       (_%loop4316243292%_
                                        _%lp-tl4316543308%_
                                        (cons _%lp-hd4316443305%_
                                              _%body4316643299%_))))
                                   (let ((_%body4316743311%_
                                          (reverse _%body4316643299%_)))
                                     (let ((_%g4315143314%_ _%body4316743311%_)
                                           (_%g4315243316%_ _%hd4315743280%_))
                                       (if (gx#identifier? _%g4315243316%_)
                                           (_%__kont4479244793%_
                                            _%g4315143314%_
                                            _%g4315243316%_)
                                           (_%__match4488844889%_
                                            _%e4315343266%_
                                            _%hd4315443270%_
                                            _%tl4315543273%_
                                            _%__splice4479444795%_
                                            _%target4315943286%_
                                            _%tl4316143289%_))))))))
                     (_%loop4316243292%_ _%target4315943286%_ '()))))
                (_%__match4485244853%_
                 (lambda (_%e4313343348%_
                          _%hd4313443352%_
                          _%tl4313543355%_
                          _%e4313643358%_
                          _%hd4313743362%_
                          _%tl4313843365%_
                          _%e4313943368%_
                          _%hd4314043372%_
                          _%tl4314143375%_
                          _%__splice4479044791%_
                          _%target4314243378%_
                          _%tl4314443381%_)
                   (letrec ((_%loop4314543384%_
                             (lambda (_%hd4314343388%_ _%body4314943391%_)
                               (if (gx#stx-pair? _%hd4314343388%_)
                                   (let ((_%e4314643393%_
                                          (gx#syntax-e _%hd4314343388%_)))
                                     (let ((_%lp-tl4314843400%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4314643393%_)))
                                           (_%lp-hd4314743397%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4314643393%_))))
                                       (_%loop4314543384%_
                                        _%lp-tl4314843400%_
                                        (cons _%lp-hd4314743397%_
                                              _%body4314943391%_))))
                                   (let ((_%body4315043403%_
                                          (reverse _%body4314943391%_)))
                                     (let ((_%g4313043406%_ _%body4315043403%_)
                                           (_%g4313143408%_ _%hd4314043372%_)
                                           (_%g4313243409%_ _%hd4313743362%_))
                                       (if (gx#identifier? _%g4313143408%_)
                                           (_%__kont4478844789%_
                                            _%g4313043406%_
                                            _%g4313143408%_
                                            _%g4313243409%_)
                                           (_%__match4488844889%_
                                            _%e4313343348%_
                                            _%hd4313443352%_
                                            _%tl4313543355%_
                                            _%__splice4479044791%_
                                            _%target4314243378%_
                                            _%tl4314443381%_))))))))
                     (_%loop4314543384%_ _%target4314243378%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _%__stx4478344784%_)
                                                       (let ((_%e4312143444%_
                                                              (gx#syntax-e
                                                               _%__stx4478344784%_)))
                                                         (let ((_%tl4312343451%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e4312143444%_)))
                       (_%hd4312243448%_
                        (let () (declare (not safe)) (##car _%e4312143444%_))))
                   (if (gx#stx-pair? _%tl4312343451%_)
                       (let ((_%e4312443454%_ (gx#syntax-e _%tl4312343451%_)))
                         (let ((_%tl4312643461%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4312443454%_)))
                               (_%hd4312543458%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4312443454%_))))
                           (if (gx#identifier? _%hd4312543458%_)
                               (if (gx#free-identifier=?
                                    |gerbil/core/more-sugar[1]#_g45065_|
                                    _%hd4312543458%_)
                                   (if (gx#stx-pair? _%tl4312643461%_)
                                       (let ((_%e4312743464%_
                                              (gx#syntax-e _%tl4312643461%_)))
                                         (let ((_%tl4312943471%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4312743464%_)))
                                               (_%hd4312843468%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4312743464%_))))
                                           (if (gx#stx-null? _%tl4312943471%_)
                                               (_%__kont4478644787%_
                                                _%hd4312843468%_
                                                _%hd4312243448%_)
                                               (if (gx#stx-pair?
                                                    _%hd4312243448%_)
                                                   (let ((_%e4313643358%_
                                                          (gx#syntax-e
                                                           _%hd4312243448%_)))
                                                     (let ((_%tl4313843365%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4313643358%_)))
                                                           (_%hd4313743362%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4313643358%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl4313843365%_)
                                                           (let ((_%e4313943368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4313843365%_)))
                     (let ((_%tl4314143375%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4313943368%_)))
                           (_%hd4314043372%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4313943368%_))))
                       (if (gx#stx-null? _%tl4314143375%_)
                           (if (gx#stx-pair/null? _%tl4312343451%_)
                               (let ((_%__splice4479044791%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4312343451%_
                                       '0)))
                                 (let ((_%tl4314443381%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4479044791%_
                                           '1)))
                                       (_%target4314243378%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4479044791%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4314443381%_)
                                       (_%__match4485244853%_
                                        _%e4312143444%_
                                        _%hd4312243448%_
                                        _%tl4312343451%_
                                        _%e4313643358%_
                                        _%hd4313743362%_
                                        _%tl4313843365%_
                                        _%e4313943368%_
                                        _%hd4314043372%_
                                        _%tl4314143375%_
                                        _%__splice4479044791%_
                                        _%target4314243378%_
                                        _%tl4314443381%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4311743187%_)))))
                               (let () (declare (not safe)) (_%g4311743187%_)))
                           (if (gx#stx-pair/null? _%tl4312343451%_)
                               (let ((_%__splice4479844799%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4312343451%_
                                       '0)))
                                 (let ((_%tl4317543207%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4479844799%_
                                           '1)))
                                       (_%target4317343204%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4479844799%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4317543207%_)
                                       (_%__match4488844889%_
                                        _%e4312143444%_
                                        _%hd4312243448%_
                                        _%tl4312343451%_
                                        _%__splice4479844799%_
                                        _%target4317343204%_
                                        _%tl4317543207%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4311743187%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4311743187%_))))))
                   (if (gx#stx-null? _%tl4313843365%_)
                       (if (gx#stx-pair/null? _%tl4312343451%_)
                           (let ((_%__splice4479444795%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4312343451%_
                                   '0)))
                             (let ((_%tl4316143289%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4479444795%_
                                       '1)))
                                   (_%target4315943286%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4479444795%_
                                       '0))))
                               (if (gx#stx-null? _%tl4316143289%_)
                                   (_%__match4487444875%_
                                    _%e4312143444%_
                                    _%hd4312243448%_
                                    _%tl4312343451%_
                                    _%e4313643358%_
                                    _%hd4313743362%_
                                    _%tl4313843365%_
                                    _%__splice4479444795%_
                                    _%target4315943286%_
                                    _%tl4316143289%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4311743187%_)))))
                           (let () (declare (not safe)) (_%g4311743187%_)))
                       (if (gx#stx-pair/null? _%tl4312343451%_)
                           (let ((_%__splice4479844799%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4312343451%_
                                   '0)))
                             (let ((_%tl4317543207%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4479844799%_
                                       '1)))
                                   (_%target4317343204%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4479844799%_
                                       '0))))
                               (if (gx#stx-null? _%tl4317543207%_)
                                   (_%__match4488844889%_
                                    _%e4312143444%_
                                    _%hd4312243448%_
                                    _%tl4312343451%_
                                    _%__splice4479844799%_
                                    _%target4317343204%_
                                    _%tl4317543207%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4311743187%_)))))
                           (let () (declare (not safe)) (_%g4311743187%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4312343451%_)
                                                       (let ((_%__splice4479844799%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4312343451%_
                                                               '0)))
                                                         (let ((_%tl4317543207%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4479844799%_ '1)))
                       (_%target4317343204%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4479844799%_ '0))))
                   (if (gx#stx-null? _%tl4317543207%_)
                       (_%__match4488844889%_
                        _%e4312143444%_
                        _%hd4312243448%_
                        _%tl4312343451%_
                        _%__splice4479844799%_
                        _%target4317343204%_
                        _%tl4317543207%_)
                       (let () (declare (not safe)) (_%g4311743187%_)))))
               (let () (declare (not safe)) (_%g4311743187%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? _%hd4312243448%_)
                                           (let ((_%e4313643358%_
                                                  (gx#syntax-e
                                                   _%hd4312243448%_)))
                                             (let ((_%tl4313843365%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4313643358%_)))
                                                   (_%hd4313743362%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4313643358%_))))
                                               (if (gx#stx-pair?
                                                    _%tl4313843365%_)
                                                   (let ((_%e4313943368%_
                                                          (gx#syntax-e
                                                           _%tl4313843365%_)))
                                                     (let ((_%tl4314143375%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4313943368%_)))
                                                           (_%hd4314043372%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4313943368%_))))
                                                       (if (gx#stx-null?
                                                            _%tl4314143375%_)
                                                           (if (gx#stx-pair/null?
                                                                _%tl4312343451%_)
                                                               (let ((_%__splice4479044791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-split-splice->vector
                               _%tl4312343451%_
                               '0)))
                         (let ((_%tl4314443381%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4479044791%_ '1)))
                               (_%target4314243378%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4479044791%_ '0))))
                           (if (gx#stx-null? _%tl4314443381%_)
                               (_%__match4485244853%_
                                _%e4312143444%_
                                _%hd4312243448%_
                                _%tl4312343451%_
                                _%e4313643358%_
                                _%hd4313743362%_
                                _%tl4313843365%_
                                _%e4313943368%_
                                _%hd4314043372%_
                                _%tl4314143375%_
                                _%__splice4479044791%_
                                _%target4314243378%_
                                _%tl4314443381%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4311743187%_)))))
                       (let () (declare (not safe)) (_%g4311743187%_)))
                   (if (gx#stx-pair/null? _%tl4312343451%_)
                       (let ((_%__splice4479844799%_
                              (gx#syntax-split-splice->vector
                               _%tl4312343451%_
                               '0)))
                         (let ((_%tl4317543207%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4479844799%_ '1)))
                               (_%target4317343204%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4479844799%_ '0))))
                           (if (gx#stx-null? _%tl4317543207%_)
                               (_%__match4488844889%_
                                _%e4312143444%_
                                _%hd4312243448%_
                                _%tl4312343451%_
                                _%__splice4479844799%_
                                _%target4317343204%_
                                _%tl4317543207%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4311743187%_)))))
                       (let () (declare (not safe)) (_%g4311743187%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-null?
                                                        _%tl4313843365%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4312343451%_)
                                                           (let ((_%__splice4479444795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4312343451%_
                           '0)))
                     (let ((_%tl4316143289%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4479444795%_ '1)))
                           (_%target4315943286%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4479444795%_ '0))))
                       (if (gx#stx-null? _%tl4316143289%_)
                           (_%__match4487444875%_
                            _%e4312143444%_
                            _%hd4312243448%_
                            _%tl4312343451%_
                            _%e4313643358%_
                            _%hd4313743362%_
                            _%tl4313843365%_
                            _%__splice4479444795%_
                            _%target4315943286%_
                            _%tl4316143289%_)
                           (let () (declare (not safe)) (_%g4311743187%_)))))
                   (let () (declare (not safe)) (_%g4311743187%_)))
               (if (gx#stx-pair/null? _%tl4312343451%_)
                   (let ((_%__splice4479844799%_
                          (gx#syntax-split-splice->vector
                           _%tl4312343451%_
                           '0)))
                     (let ((_%tl4317543207%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4479844799%_ '1)))
                           (_%target4317343204%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4479844799%_ '0))))
                       (if (gx#stx-null? _%tl4317543207%_)
                           (_%__match4488844889%_
                            _%e4312143444%_
                            _%hd4312243448%_
                            _%tl4312343451%_
                            _%__splice4479844799%_
                            _%target4317343204%_
                            _%tl4317543207%_)
                           (let () (declare (not safe)) (_%g4311743187%_)))))
                   (let () (declare (not safe)) (_%g4311743187%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair/null?
                                                _%tl4312343451%_)
                                               (let ((_%__splice4479844799%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4312343451%_
                                                       '0)))
                                                 (let ((_%tl4317543207%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4479844799%_
                                                           '1)))
                                                       (_%target4317343204%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4479844799%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4317543207%_)
                                                       (_%__match4488844889%_
                                                        _%e4312143444%_
                                                        _%hd4312243448%_
                                                        _%tl4312343451%_
                                                        _%__splice4479844799%_
                                                        _%target4317343204%_
                                                        _%tl4317543207%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4311743187%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4311743187%_)))))
                                   (if (gx#stx-pair? _%hd4312243448%_)
                                       (let ((_%e4313643358%_
                                              (gx#syntax-e _%hd4312243448%_)))
                                         (let ((_%tl4313843365%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4313643358%_)))
                                               (_%hd4313743362%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4313643358%_))))
                                           (if (gx#stx-pair? _%tl4313843365%_)
                                               (let ((_%e4313943368%_
                                                      (gx#syntax-e
                                                       _%tl4313843365%_)))
                                                 (let ((_%tl4314143375%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4313943368%_)))
                                                       (_%hd4314043372%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4313943368%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4314143375%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4312343451%_)
                                                           (let ((_%__splice4479044791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4312343451%_
                           '0)))
                     (let ((_%tl4314443381%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4479044791%_ '1)))
                           (_%target4314243378%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4479044791%_ '0))))
                       (if (gx#stx-null? _%tl4314443381%_)
                           (_%__match4485244853%_
                            _%e4312143444%_
                            _%hd4312243448%_
                            _%tl4312343451%_
                            _%e4313643358%_
                            _%hd4313743362%_
                            _%tl4313843365%_
                            _%e4313943368%_
                            _%hd4314043372%_
                            _%tl4314143375%_
                            _%__splice4479044791%_
                            _%target4314243378%_
                            _%tl4314443381%_)
                           (let () (declare (not safe)) (_%g4311743187%_)))))
                   (let () (declare (not safe)) (_%g4311743187%_)))
               (if (gx#stx-pair/null? _%tl4312343451%_)
                   (let ((_%__splice4479844799%_
                          (gx#syntax-split-splice->vector
                           _%tl4312343451%_
                           '0)))
                     (let ((_%tl4317543207%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4479844799%_ '1)))
                           (_%target4317343204%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4479844799%_ '0))))
                       (if (gx#stx-null? _%tl4317543207%_)
                           (_%__match4488844889%_
                            _%e4312143444%_
                            _%hd4312243448%_
                            _%tl4312343451%_
                            _%__splice4479844799%_
                            _%target4317343204%_
                            _%tl4317543207%_)
                           (let () (declare (not safe)) (_%g4311743187%_)))))
                   (let () (declare (not safe)) (_%g4311743187%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-null?
                                                    _%tl4313843365%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4312343451%_)
                                                       (let ((_%__splice4479444795%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4312343451%_
                                                               '0)))
                                                         (let ((_%tl4316143289%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4479444795%_ '1)))
                       (_%target4315943286%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4479444795%_ '0))))
                   (if (gx#stx-null? _%tl4316143289%_)
                       (_%__match4487444875%_
                        _%e4312143444%_
                        _%hd4312243448%_
                        _%tl4312343451%_
                        _%e4313643358%_
                        _%hd4313743362%_
                        _%tl4313843365%_
                        _%__splice4479444795%_
                        _%target4315943286%_
                        _%tl4316143289%_)
                       (let () (declare (not safe)) (_%g4311743187%_)))))
               (let () (declare (not safe)) (_%g4311743187%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4312343451%_)
                                                       (let ((_%__splice4479844799%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4312343451%_
                                                               '0)))
                                                         (let ((_%tl4317543207%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4479844799%_ '1)))
                       (_%target4317343204%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4479844799%_ '0))))
                   (if (gx#stx-null? _%tl4317543207%_)
                       (_%__match4488844889%_
                        _%e4312143444%_
                        _%hd4312243448%_
                        _%tl4312343451%_
                        _%__splice4479844799%_
                        _%target4317343204%_
                        _%tl4317543207%_)
                       (let () (declare (not safe)) (_%g4311743187%_)))))
               (let () (declare (not safe)) (_%g4311743187%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair/null? _%tl4312343451%_)
                                           (let ((_%__splice4479844799%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4312343451%_
                                                   '0)))
                                             (let ((_%tl4317543207%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4479844799%_
                                                       '1)))
                                                   (_%target4317343204%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4479844799%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4317543207%_)
                                                   (_%__match4488844889%_
                                                    _%e4312143444%_
                                                    _%hd4312243448%_
                                                    _%tl4312343451%_
                                                    _%__splice4479844799%_
                                                    _%target4317343204%_
                                                    _%tl4317543207%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4311743187%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4311743187%_)))))
                               (if (gx#stx-pair? _%hd4312243448%_)
                                   (let ((_%e4313643358%_
                                          (gx#syntax-e _%hd4312243448%_)))
                                     (let ((_%tl4313843365%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4313643358%_)))
                                           (_%hd4313743362%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4313643358%_))))
                                       (if (gx#stx-pair? _%tl4313843365%_)
                                           (let ((_%e4313943368%_
                                                  (gx#syntax-e
                                                   _%tl4313843365%_)))
                                             (let ((_%tl4314143375%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4313943368%_)))
                                                   (_%hd4314043372%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4313943368%_))))
                                               (if (gx#stx-null?
                                                    _%tl4314143375%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4312343451%_)
                                                       (let ((_%__splice4479044791%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4312343451%_
                                                               '0)))
                                                         (let ((_%tl4314443381%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4479044791%_ '1)))
                       (_%target4314243378%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4479044791%_ '0))))
                   (if (gx#stx-null? _%tl4314443381%_)
                       (_%__match4485244853%_
                        _%e4312143444%_
                        _%hd4312243448%_
                        _%tl4312343451%_
                        _%e4313643358%_
                        _%hd4313743362%_
                        _%tl4313843365%_
                        _%e4313943368%_
                        _%hd4314043372%_
                        _%tl4314143375%_
                        _%__splice4479044791%_
                        _%target4314243378%_
                        _%tl4314443381%_)
                       (let () (declare (not safe)) (_%g4311743187%_)))))
               (let () (declare (not safe)) (_%g4311743187%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4312343451%_)
                                                       (let ((_%__splice4479844799%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4312343451%_
                                                               '0)))
                                                         (let ((_%tl4317543207%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4479844799%_ '1)))
                       (_%target4317343204%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4479844799%_ '0))))
                   (if (gx#stx-null? _%tl4317543207%_)
                       (_%__match4488844889%_
                        _%e4312143444%_
                        _%hd4312243448%_
                        _%tl4312343451%_
                        _%__splice4479844799%_
                        _%target4317343204%_
                        _%tl4317543207%_)
                       (let () (declare (not safe)) (_%g4311743187%_)))))
               (let () (declare (not safe)) (_%g4311743187%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-null? _%tl4313843365%_)
                                               (if (gx#stx-pair/null?
                                                    _%tl4312343451%_)
                                                   (let ((_%__splice4479444795%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4312343451%_
                                                           '0)))
                                                     (let ((_%tl4316143289%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4479444795%_
                                                               '1)))
                                                           (_%target4315943286%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4479444795%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4316143289%_)
                                                           (_%__match4487444875%_
                                                            _%e4312143444%_
                                                            _%hd4312243448%_
                                                            _%tl4312343451%_
                                                            _%e4313643358%_
                                                            _%hd4313743362%_
                                                            _%tl4313843365%_
                                                            _%__splice4479444795%_
                                                            _%target4315943286%_
                                                            _%tl4316143289%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4311743187%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4311743187%_)))
                                               (if (gx#stx-pair/null?
                                                    _%tl4312343451%_)
                                                   (let ((_%__splice4479844799%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4312343451%_
                                                           '0)))
                                                     (let ((_%tl4317543207%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4479844799%_
                                                               '1)))
                                                           (_%target4317343204%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4479844799%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4317543207%_)
                                                           (_%__match4488844889%_
                                                            _%e4312143444%_
                                                            _%hd4312243448%_
                                                            _%tl4312343451%_
                                                            _%__splice4479844799%_
                                                            _%target4317343204%_
                                                            _%tl4317543207%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4311743187%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4311743187%_)))))))
                                   (if (gx#stx-pair/null? _%tl4312343451%_)
                                       (let ((_%__splice4479844799%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4312343451%_
                                               '0)))
                                         (let ((_%tl4317543207%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4479844799%_
                                                   '1)))
                                               (_%target4317343204%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4479844799%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4317543207%_)
                                               (_%__match4488844889%_
                                                _%e4312143444%_
                                                _%hd4312243448%_
                                                _%tl4312343451%_
                                                _%__splice4479844799%_
                                                _%target4317343204%_
                                                _%tl4317543207%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4311743187%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4311743187%_)))))))
                       (if (gx#stx-pair? _%hd4312243448%_)
                           (let ((_%e4313643358%_
                                  (gx#syntax-e _%hd4312243448%_)))
                             (let ((_%tl4313843365%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4313643358%_)))
                                   (_%hd4313743362%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4313643358%_))))
                               (if (gx#stx-pair? _%tl4313843365%_)
                                   (let ((_%e4313943368%_
                                          (gx#syntax-e _%tl4313843365%_)))
                                     (let ((_%tl4314143375%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4313943368%_)))
                                           (_%hd4314043372%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4313943368%_))))
                                       (if (gx#stx-null? _%tl4314143375%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4312343451%_)
                                               (let ((_%__splice4479044791%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4312343451%_
                                                       '0)))
                                                 (let ((_%tl4314443381%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4479044791%_
                                                           '1)))
                                                       (_%target4314243378%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4479044791%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4314443381%_)
                                                       (_%__match4485244853%_
                                                        _%e4312143444%_
                                                        _%hd4312243448%_
                                                        _%tl4312343451%_
                                                        _%e4313643358%_
                                                        _%hd4313743362%_
                                                        _%tl4313843365%_
                                                        _%e4313943368%_
                                                        _%hd4314043372%_
                                                        _%tl4314143375%_
                                                        _%__splice4479044791%_
                                                        _%target4314243378%_
                                                        _%tl4314443381%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4311743187%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4311743187%_)))
                                           (if (gx#stx-pair/null?
                                                _%tl4312343451%_)
                                               (let ((_%__splice4479844799%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4312343451%_
                                                       '0)))
                                                 (let ((_%tl4317543207%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4479844799%_
                                                           '1)))
                                                       (_%target4317343204%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4479844799%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4317543207%_)
                                                       (_%__match4488844889%_
                                                        _%e4312143444%_
                                                        _%hd4312243448%_
                                                        _%tl4312343451%_
                                                        _%__splice4479844799%_
                                                        _%target4317343204%_
                                                        _%tl4317543207%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4311743187%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4311743187%_))))))
                                   (if (gx#stx-null? _%tl4313843365%_)
                                       (if (gx#stx-pair/null? _%tl4312343451%_)
                                           (let ((_%__splice4479444795%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4312343451%_
                                                   '0)))
                                             (let ((_%tl4316143289%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4479444795%_
                                                       '1)))
                                                   (_%target4315943286%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4479444795%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4316143289%_)
                                                   (_%__match4487444875%_
                                                    _%e4312143444%_
                                                    _%hd4312243448%_
                                                    _%tl4312343451%_
                                                    _%e4313643358%_
                                                    _%hd4313743362%_
                                                    _%tl4313843365%_
                                                    _%__splice4479444795%_
                                                    _%target4315943286%_
                                                    _%tl4316143289%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4311743187%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4311743187%_)))
                                       (if (gx#stx-pair/null? _%tl4312343451%_)
                                           (let ((_%__splice4479844799%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4312343451%_
                                                   '0)))
                                             (let ((_%tl4317543207%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4479844799%_
                                                       '1)))
                                                   (_%target4317343204%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4479844799%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4317543207%_)
                                                   (_%__match4488844889%_
                                                    _%e4312143444%_
                                                    _%hd4312243448%_
                                                    _%tl4312343451%_
                                                    _%__splice4479844799%_
                                                    _%target4317343204%_
                                                    _%tl4317543207%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4311743187%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4311743187%_)))))))
                           (if (gx#stx-pair/null? _%tl4312343451%_)
                               (let ((_%__splice4479844799%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4312343451%_
                                       '0)))
                                 (let ((_%tl4317543207%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4479844799%_
                                           '1)))
                                       (_%target4317343204%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4479844799%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4317543207%_)
                                       (_%__match4488844889%_
                                        _%e4312143444%_
                                        _%hd4312243448%_
                                        _%tl4312343451%_
                                        _%__splice4479844799%_
                                        _%target4317343204%_
                                        _%tl4317543207%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4311743187%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4311743187%_)))))))
               (let () (declare (not safe)) (_%g4311743187%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (pair? _%rest4296742975%_)
                                         (let ((_%hd4297243499%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%rest4296742975%_)))
                                               (_%tl4297343502%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest4296742975%_))))
                                           (let* ((_%hd43505%_
                                                   _%hd4297243499%_)
                                                  (_%rest43508%_
                                                   _%tl4297343502%_))
                                             (_%K4297143495%_
                                              _%rest43508%_
                                              _%hd43505%_)))
                                         (_%else4296943106%_)))))
                               _%g4293542946%_))))
                      (_%g4293343511%_ (gx#genident))))))
          (let* ((_%g4231842338%_
                  (lambda (_%g4231942334%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g4231942334%_)))
                 (_%g4231742926%_
                  (lambda (_%g4231942342%_)
                    (if (gx#stx-pair? _%g4231942342%_)
                        (let ((_%e4232142345%_ (gx#syntax-e _%g4231942342%_)))
                          (let ((_%hd4232242349%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4232142345%_)))
                                (_%tl4232342352%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4232142345%_))))
                            (if (gx#stx-pair/null? _%tl4232342352%_)
                                (let ((_g45066_
                                       (gx#syntax-split-splice
                                        _%tl4232342352%_
                                        '0)))
                                  (begin
                                    (let ((_g45067_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g45066_)
                                                 (##values-length _g45066_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g45067_ 2)))
                                          (error "Context expects 2 values"
                                                 _g45067_)))
                                    (let ((_%target4232442355%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45066_ 0)))
                                          (_%tl4232642358%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45066_ 1))))
                                      (if (gx#stx-null? _%tl4232642358%_)
                                          (letrec ((_%loop4232742361%_
                                                    (lambda (_%hd4232542365%_
                                                             _%e4233142368%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4232542365%_)
                                                          (let ((_%e4232842370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4232542365%_)))
                    (let ((_%lp-hd4232942374%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4232842370%_)))
                          (_%lp-tl4233042377%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4232842370%_))))
                      (_%loop4232742361%_
                       _%lp-tl4233042377%_
                       (cons _%lp-hd4232942374%_ _%e4233142368%_))))
                  (let ((_%e4233242380%_ (reverse _%e4233142368%_)))
                    ((lambda (_%g4232042383%_)
                       (let _%lp42400%_ ((_%rest42403%_
                                          (foldr (lambda (_%g4291742920%_
                                                          _%g4291842923%_)
                                                   (cons _%g4291742920%_
                                                         _%g4291842923%_))
                                                 '()
                                                 _%g4232042383%_))
                                         (_%body42405%_ '()))
                         (let* ((_%__stx4500945010%_ _%rest42403%_)
                                (_%g4240842420%_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%__stx4500945010%_))))
                           (let ((_%__kont4501245013%_
                                  (lambda (_%g4241042448%_ _%g4241142450%_)
                                    (let* ((_%__stx4495744958%_
                                            _%g4241142450%_)
                                           (_%g4246742500%_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%__stx4495744958%_))))
                                      (let ((_%__kont4496044961%_
                                             (lambda (_%g4246942887%_)
                                               (if (gx#stx-null?
                                                    _%g4241042448%_)
                                                   (_%generate-fini42315%_
                                                    (_%generate-thunk42313%_
                                                     _%body42405%_)
                                                    (foldr (lambda (_%g4290142904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4290242907%_)
                     (cons _%g4290142904%_ _%g4290242907%_))
                   '()
                   _%g4246942887%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Misplaced finally clause"
                                                    _%stx42310%_))))
                                            (_%__kont4496444965%_
                                             (lambda (_%g4248242556%_)
                                               (let _%lp42573%_ ((_%rest42576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4241042448%_)
                         (_%handlers42578%_
                          (cons (foldr (lambda (_%g4283342836%_
                                                _%g4283442839%_)
                                         (cons _%g4283342836%_
                                               _%g4283442839%_))
                                       '()
                                       _%g4248242556%_)
                                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__stx4489144892%_
                                                         _%rest42576%_)
                                                        (_%g4258242622%_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%__stx4489144892%_))))
                                                   (let ((_%__kont4489444895%_
                                                          (lambda (_%g4258442803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4258542805%_)
                    (_%lp42573%_
                     _%g4258442803%_
                     (cons (foldr (lambda (_%g4282142824%_ _%g4282242827%_)
                                    (cons _%g4282142824%_ _%g4282242827%_))
                                  '()
                                  _%g4258542805%_)
                           _%handlers42578%_))))
                 (_%__kont4489844899%_
                  (lambda (_%g4260142688%_)
                    (let* ((_%g4270942717%_
                            (lambda (_%g4271042713%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4271042713%_)))
                           (_%g4270842744%_
                            (lambda (_%g4271042721%_)
                              ((lambda (_%g4271142724%_)
                                 (_%generate-fini42315%_
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '() (cons _%g4271142724%_ '())))
                                  (foldr (lambda (_%g4273542738%_
                                                  _%g4273642741%_)
                                           (cons _%g4273542738%_
                                                 _%g4273642741%_))
                                         '()
                                         _%g4260142688%_)))
                               _%g4271042721%_))))
                      (_%g4270842744%_
                       (_%generate-catch42316%_
                        _%handlers42578%_
                        (_%generate-thunk42313%_ _%body42405%_))))))
                 (_%__kont4490244903%_
                  (lambda ()
                    (_%generate-catch42316%_
                     _%handlers42578%_
                     (_%generate-thunk42313%_ _%body42405%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%g4258142633%_
                                                             (lambda ()
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%__stx4489144892%_)
                           (_%__kont4490244903%_)
                           (let () (declare (not safe)) (_%g4258242622%_)))))
                    (_%__match4495244953%_
                     (lambda (_%e4260242640%_
                              _%hd4260342644%_
                              _%tl4260442647%_
                              _%e4260542650%_
                              _%hd4260642654%_
                              _%tl4260742657%_
                              _%__splice4490044901%_
                              _%target4260842660%_
                              _%tl4261042663%_)
                       (letrec ((_%loop4261142666%_
                                 (lambda (_%hd4260942670%_ _%fini4261542673%_)
                                   (if (gx#stx-pair? _%hd4260942670%_)
                                       (let ((_%e4261242675%_
                                              (gx#syntax-e _%hd4260942670%_)))
                                         (let ((_%lp-tl4261442682%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4261242675%_)))
                                               (_%lp-hd4261342679%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4261242675%_))))
                                           (_%loop4261142666%_
                                            _%lp-tl4261442682%_
                                            (cons _%lp-hd4261342679%_
                                                  _%fini4261542673%_))))
                                       (let ((_%fini4261642685%_
                                              (reverse _%fini4261542673%_)))
                                         (if (gx#stx-null? _%tl4260442647%_)
                                             (_%__kont4489844899%_
                                              _%fini4261642685%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4258242622%_))))))))
                         (_%loop4261142666%_ _%target4260842660%_ '()))))
                    (_%__match4492844929%_
                     (lambda (_%e4258642755%_
                              _%hd4258742759%_
                              _%tl4258842762%_
                              _%e4258942765%_
                              _%hd4259042769%_
                              _%tl4259142772%_
                              _%__splice4489644897%_
                              _%target4259242775%_
                              _%tl4259442778%_)
                       (letrec ((_%loop4259542781%_
                                 (lambda (_%hd4259342785%_
                                          _%handler4259942788%_)
                                   (if (gx#stx-pair? _%hd4259342785%_)
                                       (let ((_%e4259642790%_
                                              (gx#syntax-e _%hd4259342785%_)))
                                         (let ((_%lp-tl4259842797%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4259642790%_)))
                                               (_%lp-hd4259742794%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4259642790%_))))
                                           (_%loop4259542781%_
                                            _%lp-tl4259842797%_
                                            (cons _%lp-hd4259742794%_
                                                  _%handler4259942788%_))))
                                       (let ((_%handler4260042800%_
                                              (reverse _%handler4259942788%_)))
                                         (_%__kont4489444895%_
                                          _%tl4258842762%_
                                          _%handler4260042800%_))))))
                         (_%loop4259542781%_ _%target4259242775%_ '())))))
               (if (gx#stx-pair? _%__stx4489144892%_)
                   (let ((_%e4258642755%_ (gx#syntax-e _%__stx4489144892%_)))
                     (let ((_%tl4258842762%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4258642755%_)))
                           (_%hd4258742759%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4258642755%_))))
                       (if (gx#stx-pair? _%hd4258742759%_)
                           (let ((_%e4258942765%_
                                  (gx#syntax-e _%hd4258742759%_)))
                             (let ((_%tl4259142772%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4258942765%_)))
                                   (_%hd4259042769%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4258942765%_))))
                               (if (gx#identifier? _%hd4259042769%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/more-sugar[1]#_g45068_|
                                        _%hd4259042769%_)
                                       (if (gx#stx-pair/null? _%tl4259142772%_)
                                           (let ((_%__splice4489644897%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4259142772%_
                                                   '0)))
                                             (let ((_%tl4259442778%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4489644897%_
                                                       '1)))
                                                   (_%target4259242775%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4489644897%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4259442778%_)
                                                   (_%__match4492844929%_
                                                    _%e4258642755%_
                                                    _%hd4258742759%_
                                                    _%tl4258842762%_
                                                    _%e4258942765%_
                                                    _%hd4259042769%_
                                                    _%tl4259142772%_
                                                    _%__splice4489644897%_
                                                    _%target4259242775%_
                                                    _%tl4259442778%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4258242622%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4258242622%_)))
                                       (if (gx#free-identifier=?
                                            |gerbil/core/more-sugar[1]#_g45069_|
                                            _%hd4259042769%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4259142772%_)
                                               (let ((_%__splice4490044901%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4259142772%_
                                                       '0)))
                                                 (let ((_%tl4261042663%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4490044901%_
                                                           '1)))
                                                       (_%target4260842660%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4490044901%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4261042663%_)
                                                       (_%__match4495244953%_
                                                        _%e4258642755%_
                                                        _%hd4258742759%_
                                                        _%tl4258842762%_
                                                        _%e4258942765%_
                                                        _%hd4259042769%_
                                                        _%tl4259142772%_
                                                        _%__splice4490044901%_
                                                        _%target4260842660%_
                                                        _%tl4261042663%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4258242622%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4258242622%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4258242622%_))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4258242622%_)))))
                           (let () (declare (not safe)) (_%g4258242622%_)))))
                   (let () (declare (not safe)) (_%g4258142633%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont4496844969%_
                                             (lambda ()
                                               (_%lp42400%_
                                                _%g4241042448%_
                                                (cons _%g4241142450%_
                                                      _%body42405%_)))))
                                        (let* ((_%__match4500645007%_
                                                (lambda (_%e4248342518%_
                                                         _%hd4248442522%_
                                                         _%tl4248542525%_
                                                         _%__splice4496644967%_
                                                         _%target4248642528%_
                                                         _%tl4248842531%_)
                                                  (letrec ((_%loop4248942534%_
                                                            (lambda (_%hd4248742538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%handler4249342541%_)
                      (if (gx#stx-pair? _%hd4248742538%_)
                          (let ((_%e4249042543%_
                                 (gx#syntax-e _%hd4248742538%_)))
                            (let ((_%lp-tl4249242550%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4249042543%_)))
                                  (_%lp-hd4249142547%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4249042543%_))))
                              (_%loop4248942534%_
                               _%lp-tl4249242550%_
                               (cons _%lp-hd4249142547%_
                                     _%handler4249342541%_))))
                          (let ((_%handler4249442553%_
                                 (reverse _%handler4249342541%_)))
                            (_%__kont4496444965%_ _%handler4249442553%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4248942534%_
                                                     _%target4248642528%_
                                                     '()))))
                                               (_%__match4498844989%_
                                                (lambda (_%e4247042849%_
                                                         _%hd4247142853%_
                                                         _%tl4247242856%_
                                                         _%__splice4496244963%_
                                                         _%target4247342859%_
                                                         _%tl4247542862%_)
                                                  (letrec ((_%loop4247642865%_
                                                            (lambda (_%hd4247442869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%fini4248042872%_)
                      (if (gx#stx-pair? _%hd4247442869%_)
                          (let ((_%e4247742874%_
                                 (gx#syntax-e _%hd4247442869%_)))
                            (let ((_%lp-tl4247942881%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4247742874%_)))
                                  (_%lp-hd4247842878%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4247742874%_))))
                              (_%loop4247642865%_
                               _%lp-tl4247942881%_
                               (cons _%lp-hd4247842878%_ _%fini4248042872%_))))
                          (let ((_%fini4248142884%_
                                 (reverse _%fini4248042872%_)))
                            (_%__kont4496044961%_ _%fini4248142884%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4247642865%_
                                                     _%target4247342859%_
                                                     '())))))
                                          (if (gx#stx-pair?
                                               _%__stx4495744958%_)
                                              (let ((_%e4247042849%_
                                                     (gx#syntax-e
                                                      _%__stx4495744958%_)))
                                                (let ((_%tl4247242856%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4247042849%_)))
                                                      (_%hd4247142853%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4247042849%_))))
                                                  (if (gx#identifier?
                                                       _%hd4247142853%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/more-sugar[1]#_g45070_|
                                                           _%hd4247142853%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4247242856%_)
                                                              (let ((_%__splice4496244963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4247242856%_
                              '0)))
                        (let ((_%tl4247542862%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4496244963%_ '1)))
                              (_%target4247342859%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4496244963%_ '0))))
                          (if (gx#stx-null? _%tl4247542862%_)
                              (_%__match4498844989%_
                               _%e4247042849%_
                               _%hd4247142853%_
                               _%tl4247242856%_
                               _%__splice4496244963%_
                               _%target4247342859%_
                               _%tl4247542862%_)
                              (_%__kont4496844969%_))))
                      (_%__kont4496844969%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/more-sugar[1]#_g45071_|
                       _%hd4247142853%_)
                      (if (gx#stx-pair/null? _%tl4247242856%_)
                          (let ((_%__splice4496644967%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4247242856%_
                                  '0)))
                            (let ((_%tl4248842531%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice4496644967%_ '1)))
                                  (_%target4248642528%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice4496644967%_
                                      '0))))
                              (if (gx#stx-null? _%tl4248842531%_)
                                  (_%__match4500645007%_
                                   _%e4247042849%_
                                   _%hd4247142853%_
                                   _%tl4247242856%_
                                   _%__splice4496644967%_
                                   _%target4248642528%_
                                   _%tl4248842531%_)
                                  (_%__kont4496844969%_))))
                          (_%__kont4496844969%_))
                      (_%__kont4496844969%_)))
              (_%__kont4496844969%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont4496844969%_)))))))
                                 (_%__kont4501445015%_
                                  (lambda ()
                                    (cons 'begin (reverse _%body42405%_)))))
                             (let ((_%g4240742431%_
                                    (lambda ()
                                      (if (gx#stx-null? _%__stx4500945010%_)
                                          (_%__kont4501445015%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4240842420%_))))))
                               (if (gx#stx-pair? _%__stx4500945010%_)
                                   (let ((_%e4241242438%_
                                          (gx#syntax-e _%__stx4500945010%_)))
                                     (let ((_%tl4241442445%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4241242438%_)))
                                           (_%hd4241342442%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4241242438%_))))
                                       (_%__kont4501245013%_
                                        _%tl4241442445%_
                                        _%hd4241342442%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4240742431%_))))))))
                     _%e4233242380%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop4232742361%_
                                             _%target4232442355%_
                                             '()))
                                          (_%g4231842338%_ _%g4231942342%_)))))
                                (_%g4231842338%_ _%g4231942342%_))))
                        (_%g4231842338%_ _%g4231942342%_)))))
            (_%g4231742926%_ _%stx42310%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx43726%_)
        (let* ((_%g4373043759%_
                (lambda (_%g4373143755%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4373143755%_)))
               (_%g4372943855%_
                (lambda (_%g4373143763%_)
                  (if (gx#stx-pair? _%g4373143763%_)
                      (let ((_%e4373443766%_ (gx#syntax-e _%g4373143763%_)))
                        (let ((_%hd4373543770%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4373443766%_)))
                              (_%tl4373643773%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4373443766%_))))
                          (if (gx#stx-pair/null? _%tl4373643773%_)
                              (let ((_g45072_
                                     (gx#syntax-split-splice
                                      _%tl4373643773%_
                                      '0)))
                                (begin
                                  (let ((_g45073_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45072_)
                                               (##values-length _g45072_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45073_ 2)))
                                        (error "Context expects 2 values"
                                               _g45073_)))
                                  (let ((_%target4373743776%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45072_ 0)))
                                        (_%tl4373943779%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45072_ 1))))
                                    (if (gx#stx-null? _%tl4373943779%_)
                                        (letrec ((_%loop4374043782%_
                                                  (lambda (_%hd4373843786%_
                                                           _%val4374443789%_
                                                           _%key4374543790%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4373843786%_)
                                                        (let ((_%e4374143792%_
                                                               (gx#syntax-e
                                                                _%hd4373843786%_)))
                                                          (let ((_%lp-hd4374243796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4374143792%_)))
                        (_%lp-tl4374343799%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4374143792%_))))
                    (if (gx#stx-pair? _%lp-hd4374243796%_)
                        (let ((_%e4374843802%_
                               (gx#syntax-e _%lp-hd4374243796%_)))
                          (let ((_%hd4374943806%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4374843802%_)))
                                (_%tl4375043809%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4374843802%_))))
                            (if (gx#stx-pair? _%tl4375043809%_)
                                (let ((_%e4375143812%_
                                       (gx#syntax-e _%tl4375043809%_)))
                                  (let ((_%hd4375243816%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4375143812%_)))
                                        (_%tl4375343819%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4375143812%_))))
                                    (if (gx#stx-null? _%tl4375343819%_)
                                        (_%loop4374043782%_
                                         _%lp-tl4374343799%_
                                         (cons _%hd4375243816%_
                                               _%val4374443789%_)
                                         (cons _%hd4374943806%_
                                               _%key4374543790%_))
                                        (_%g4373043759%_ _%g4373143763%_))))
                                (_%g4373043759%_ _%g4373143763%_))))
                        (_%g4373043759%_ _%g4373143763%_))))
                (let ((_%val4374643822%_ (reverse _%val4374443789%_))
                      (_%key4374743824%_ (reverse _%key4374543790%_)))
                  ((lambda (_%g4373243826%_ _%g4373343828%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4373243826%_
                                    _%g4373343828%_)
                                   (foldr (lambda (_%g4384343847%_
                                                   _%g4384443850%_
                                                   _%g4384543852%_)
                                            (cons (cons _%g4384443850%_
                                                        (cons _%g4384343847%_
                                                              '()))
                                                  _%g4384543852%_))
                                          '()
                                          _%g4373243826%_
                                          _%g4373343828%_)))))
                   _%val4374643822%_
                   _%key4374743824%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4374043782%_
                                           _%target4373743776%_
                                           '()
                                           '()))
                                        (_%g4373043759%_ _%g4373143763%_)))))
                              (_%g4373043759%_ _%g4373143763%_))))
                      (_%g4373043759%_ _%g4373143763%_)))))
          (_%g4372943855%_ _%$stx43726%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx43860%_)
        (let* ((_%g4386443893%_
                (lambda (_%g4386543889%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4386543889%_)))
               (_%g4386343989%_
                (lambda (_%g4386543897%_)
                  (if (gx#stx-pair? _%g4386543897%_)
                      (let ((_%e4386843900%_ (gx#syntax-e _%g4386543897%_)))
                        (let ((_%hd4386943904%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4386843900%_)))
                              (_%tl4387043907%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4386843900%_))))
                          (if (gx#stx-pair/null? _%tl4387043907%_)
                              (let ((_g45074_
                                     (gx#syntax-split-splice
                                      _%tl4387043907%_
                                      '0)))
                                (begin
                                  (let ((_g45075_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45074_)
                                               (##values-length _g45074_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45075_ 2)))
                                        (error "Context expects 2 values"
                                               _g45075_)))
                                  (let ((_%target4387143910%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45074_ 0)))
                                        (_%tl4387343913%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45074_ 1))))
                                    (if (gx#stx-null? _%tl4387343913%_)
                                        (letrec ((_%loop4387443916%_
                                                  (lambda (_%hd4387243920%_
                                                           _%val4387843923%_
                                                           _%key4387943924%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4387243920%_)
                                                        (let ((_%e4387543926%_
                                                               (gx#syntax-e
                                                                _%hd4387243920%_)))
                                                          (let ((_%lp-hd4387643930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4387543926%_)))
                        (_%lp-tl4387743933%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4387543926%_))))
                    (if (gx#stx-pair? _%lp-hd4387643930%_)
                        (let ((_%e4388243936%_
                               (gx#syntax-e _%lp-hd4387643930%_)))
                          (let ((_%hd4388343940%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4388243936%_)))
                                (_%tl4388443943%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4388243936%_))))
                            (if (gx#stx-pair? _%tl4388443943%_)
                                (let ((_%e4388543946%_
                                       (gx#syntax-e _%tl4388443943%_)))
                                  (let ((_%hd4388643950%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4388543946%_)))
                                        (_%tl4388743953%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4388543946%_))))
                                    (if (gx#stx-null? _%tl4388743953%_)
                                        (_%loop4387443916%_
                                         _%lp-tl4387743933%_
                                         (cons _%hd4388643950%_
                                               _%val4387843923%_)
                                         (cons _%hd4388343940%_
                                               _%key4387943924%_))
                                        (_%g4386443893%_ _%g4386543897%_))))
                                (_%g4386443893%_ _%g4386543897%_))))
                        (_%g4386443893%_ _%g4386543897%_))))
                (let ((_%val4388043956%_ (reverse _%val4387843923%_))
                      (_%key4388143958%_ (reverse _%key4387943924%_)))
                  ((lambda (_%g4386643960%_ _%g4386743962%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4386643960%_
                                    _%g4386743962%_)
                                   (foldr (lambda (_%g4397743981%_
                                                   _%g4397843984%_
                                                   _%g4397943986%_)
                                            (cons (cons _%g4397843984%_
                                                        (cons _%g4397743981%_
                                                              '()))
                                                  _%g4397943986%_))
                                          '()
                                          _%g4386643960%_
                                          _%g4386743962%_)))))
                   _%val4388043956%_
                   _%key4388143958%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4387443916%_
                                           _%target4387143910%_
                                           '()
                                           '()))
                                        (_%g4386443893%_ _%g4386543897%_)))))
                              (_%g4386443893%_ _%g4386543897%_))))
                      (_%g4386443893%_ _%g4386543897%_)))))
          (_%g4386343989%_ _%$stx43860%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx43994%_)
        (let* ((_%g4399844027%_
                (lambda (_%g4399944023%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4399944023%_)))
               (_%g4399744123%_
                (lambda (_%g4399944031%_)
                  (if (gx#stx-pair? _%g4399944031%_)
                      (let ((_%e4400244034%_ (gx#syntax-e _%g4399944031%_)))
                        (let ((_%hd4400344038%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4400244034%_)))
                              (_%tl4400444041%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4400244034%_))))
                          (if (gx#stx-pair/null? _%tl4400444041%_)
                              (let ((_g45076_
                                     (gx#syntax-split-splice
                                      _%tl4400444041%_
                                      '0)))
                                (begin
                                  (let ((_g45077_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45076_)
                                               (##values-length _g45076_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45077_ 2)))
                                        (error "Context expects 2 values"
                                               _g45077_)))
                                  (let ((_%target4400544044%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45076_ 0)))
                                        (_%tl4400744047%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45076_ 1))))
                                    (if (gx#stx-null? _%tl4400744047%_)
                                        (letrec ((_%loop4400844050%_
                                                  (lambda (_%hd4400644054%_
                                                           _%val4401244057%_
                                                           _%key4401344058%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4400644054%_)
                                                        (let ((_%e4400944060%_
                                                               (gx#syntax-e
                                                                _%hd4400644054%_)))
                                                          (let ((_%lp-hd4401044064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4400944060%_)))
                        (_%lp-tl4401144067%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4400944060%_))))
                    (if (gx#stx-pair? _%lp-hd4401044064%_)
                        (let ((_%e4401644070%_
                               (gx#syntax-e _%lp-hd4401044064%_)))
                          (let ((_%hd4401744074%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4401644070%_)))
                                (_%tl4401844077%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4401644070%_))))
                            (if (gx#stx-pair? _%tl4401844077%_)
                                (let ((_%e4401944080%_
                                       (gx#syntax-e _%tl4401844077%_)))
                                  (let ((_%hd4402044084%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4401944080%_)))
                                        (_%tl4402144087%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4401944080%_))))
                                    (if (gx#stx-null? _%tl4402144087%_)
                                        (_%loop4400844050%_
                                         _%lp-tl4401144067%_
                                         (cons _%hd4402044084%_
                                               _%val4401244057%_)
                                         (cons _%hd4401744074%_
                                               _%key4401344058%_))
                                        (_%g4399844027%_ _%g4399944031%_))))
                                (_%g4399844027%_ _%g4399944031%_))))
                        (_%g4399844027%_ _%g4399944031%_))))
                (let ((_%val4401444090%_ (reverse _%val4401244057%_))
                      (_%key4401544092%_ (reverse _%key4401344058%_)))
                  ((lambda (_%g4400044094%_ _%g4400144096%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4400044094%_
                                    _%g4400144096%_)
                                   (foldr (lambda (_%g4411144115%_
                                                   _%g4411244118%_
                                                   _%g4411344120%_)
                                            (cons (cons _%g4411244118%_
                                                        (cons _%g4411144115%_
                                                              '()))
                                                  _%g4411344120%_))
                                          '()
                                          _%g4400044094%_
                                          _%g4400144096%_)))))
                   _%val4401444090%_
                   _%key4401544092%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4400844050%_
                                           _%target4400544044%_
                                           '()
                                           '()))
                                        (_%g4399844027%_ _%g4399944031%_)))))
                              (_%g4399844027%_ _%g4399944031%_))))
                      (_%g4399844027%_ _%g4399944031%_)))))
          (_%g4399744123%_ _%$stx43994%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx44128%_)
        (let* ((_%g4413144155%_
                (lambda (_%g4413244151%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4413244151%_)))
               (_%g4413044396%_
                (lambda (_%g4413244159%_)
                  (if (gx#stx-pair? _%g4413244159%_)
                      (let ((_%e4413544162%_ (gx#syntax-e _%g4413244159%_)))
                        (let ((_%hd4413644166%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4413544162%_)))
                              (_%tl4413744169%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4413544162%_))))
                          (if (gx#stx-pair? _%tl4413744169%_)
                              (let ((_%e4413844172%_
                                     (gx#syntax-e _%tl4413744169%_)))
                                (let ((_%hd4413944176%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4413844172%_)))
                                      (_%tl4414044179%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4413844172%_))))
                                  (if (gx#stx-pair/null? _%tl4414044179%_)
                                      (let ((_g45078_
                                             (gx#syntax-split-splice
                                              _%tl4414044179%_
                                              '0)))
                                        (begin
                                          (let ((_g45079_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45078_)
                                                       (##values-length
                                                        _g45078_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45079_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45079_)))
                                          (let ((_%target4414144182%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45078_ 0)))
                                                (_%tl4414344185%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45078_ 1))))
                                            (if (gx#stx-null? _%tl4414344185%_)
                                                (letrec ((_%loop4414444188%_
                                                          (lambda (_%hd4414244192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%entry4414844195%_)
                    (if (gx#stx-pair? _%hd4414244192%_)
                        (let ((_%e4414544197%_ (gx#syntax-e _%hd4414244192%_)))
                          (let ((_%lp-hd4414644201%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4414544197%_)))
                                (_%lp-tl4414744204%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4414544197%_))))
                            (_%loop4414444188%_
                             _%lp-tl4414744204%_
                             (cons _%lp-hd4414644201%_ _%entry4414844195%_))))
                        (let ((_%entry4414944207%_
                               (reverse _%entry4414844195%_)))
                          ((lambda (_%g4413344210%_ _%g4413444212%_)
                             (let* ((_%g4423044238%_
                                     (lambda (_%g4423144234%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g4423144234%_)))
                                    (_%g4422944384%_
                                     (lambda (_%g4423144242%_)
                                       ((lambda (_%g4423244245%_)
                                          (let* ((_%g4425744283%_
                                                  (lambda (_%g4425844279%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g4425844279%_)))
                                                 (_%g4425644372%_
                                                  (lambda (_%g4425844287%_)
                                                    (if (gx#stx-pair/null?
                                                         _%g4425844287%_)
                                                        (let ((_g45080_
                                                               (gx#syntax-split-splice
                                                                _%g4425844287%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g45081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g45080_)
                                 (##values-length _g45080_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g45081_ 2)))
                          (error "Context expects 2 values" _g45081_)))
                    (let ((_%target4426144290%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g45080_ 0)))
                          (_%tl4426344293%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g45080_ 1))))
                      (if (gx#stx-null? _%tl4426344293%_)
                          (letrec ((_%loop4426444296%_
                                    (lambda (_%hd4426244300%_
                                             _%val4426844303%_
                                             _%key4426944304%_)
                                      (if (gx#stx-pair? _%hd4426244300%_)
                                          (let ((_%e4426544306%_
                                                 (gx#syntax-e
                                                  _%hd4426244300%_)))
                                            (let ((_%lp-hd4426644310%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4426544306%_)))
                                                  (_%lp-tl4426744313%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4426544306%_))))
                                              (if (gx#stx-pair?
                                                   _%lp-hd4426644310%_)
                                                  (let ((_%e4427244316%_
                                                         (gx#syntax-e
                                                          _%lp-hd4426644310%_)))
                                                    (let ((_%hd4427344320%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4427244316%_)))
                                                          (_%tl4427444323%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4427244316%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4427444323%_)
                                                          (let ((_%e4427544326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4427444323%_)))
                    (let ((_%hd4427644330%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4427544326%_)))
                          (_%tl4427744333%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4427544326%_))))
                      (if (gx#stx-null? _%tl4427744333%_)
                          (_%loop4426444296%_
                           _%lp-tl4426744313%_
                           (cons _%hd4427644330%_ _%val4426844303%_)
                           (cons _%hd4427344320%_ _%key4426944304%_))
                          (_%g4425744283%_ _%g4425844287%_))))
                  (_%g4425744283%_ _%g4425844287%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4425744283%_
                                                   _%g4425844287%_))))
                                          (let ((_%val4427044336%_
                                                 (reverse _%val4426844303%_))
                                                (_%key4427144338%_
                                                 (reverse _%key4426944304%_)))
                                            ((lambda (_%g4425944340%_
                                                      _%g4426044342%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ht)
                         (cons (cons _%g4413444212%_
                                     (cons 'size: (cons _%g4423244245%_ '())))
                               '()))
                   (begin
                     (gx#syntax-check-splice-targets
                      _%g4425944340%_
                      _%g4426044342%_)
                     (foldr (lambda (_%g4436044364%_
                                     _%g4436144367%_
                                     _%g4436244369%_)
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'ht)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            (cons _%g4436144367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g4436044364%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g4436244369%_))
                            (cons (gx#datum->syntax '#f 'ht) '())
                            _%g4425944340%_
                            _%g4426044342%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%val4427044336%_
                                             _%key4427144338%_))))))
                            (_%loop4426444296%_ _%target4426144290%_ '() '()))
                          (_%g4425744283%_ _%g4425844287%_)))))
                (_%g4425744283%_ _%g4425844287%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4425644372%_
                                             (foldr (lambda (_%g4437544378%_
                                                             _%g4437644381%_)
                                                      (cons _%g4437544378%_
                                                            _%g4437644381%_))
                                                    '()
                                                    _%g4413344210%_))))
                                        _%g4423144242%_))))
                               (_%g4422944384%_
                                (gx#stx-length
                                 (foldr (lambda (_%g4438744390%_
                                                 _%g4438844393%_)
                                          (cons _%g4438744390%_
                                                _%g4438844393%_))
                                        '()
                                        _%g4413344210%_)))))
                           _%entry4414944207%_
                           _%hd4413944176%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4414444188%_
                                                   _%target4414144182%_
                                                   '()))
                                                (_%g4413144155%_
                                                 _%g4413244159%_)))))
                                      (_%g4413144155%_ _%g4413244159%_))))
                              (_%g4413144155%_ _%g4413244159%_))))
                      (_%g4413144155%_ _%g4413244159%_)))))
          (_%g4413044396%_ _%stx44128%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx44402%_)
        (let* ((_%g4440544419%_
                (lambda (_%g4440644415%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4440644415%_)))
               (_%g4440444491%_
                (lambda (_%g4440644423%_)
                  (if (gx#stx-pair? _%g4440644423%_)
                      (let ((_%e4440844426%_ (gx#syntax-e _%g4440644423%_)))
                        (let ((_%hd4440944430%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4440844426%_)))
                              (_%tl4441044433%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4440844426%_))))
                          (if (gx#stx-pair? _%tl4441044433%_)
                              (let ((_%e4441144436%_
                                     (gx#syntax-e _%tl4441044433%_)))
                                (let ((_%hd4441244440%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4441144436%_)))
                                      (_%tl4441344443%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4441144436%_))))
                                  (if (gx#stx-null? _%tl4441344443%_)
                                      ((lambda (_%g4440744446%_)
                                         (if (gx#stx-string? _%g4440744446%_)
                                             (let* ((_%g4446044468%_
                                                     (lambda (_%g4446144464%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4446144464%_)))
                                                    (_%g4445944487%_
                                                     (lambda (_%g4446144472%_)
                                                       ((lambda (_%g4446244475%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g4446244475%_ '())))
                _%g4446144472%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4445944487%_
                                                (string->bytes
                                                 (gx#stx-e _%g4440744446%_))))
                                             (_%g4440544419%_
                                              _%g4440644423%_)))
                                       _%hd4441244440%_)
                                      (_%g4440544419%_ _%g4440644423%_))))
                              (_%g4440544419%_ _%g4440644423%_))))
                      (_%g4440544419%_ _%g4440644423%_)))))
          (_%g4440444491%_ _%stx44402%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx44495%_)
        (let* ((_%g4449844512%_
                (lambda (_%g4449944508%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4449944508%_)))
               (_%g4449744553%_
                (lambda (_%g4449944516%_)
                  (if (gx#stx-pair? _%g4449944516%_)
                      (let ((_%e4450144519%_ (gx#syntax-e _%g4449944516%_)))
                        (let ((_%hd4450244523%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4450144519%_)))
                              (_%tl4450344526%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4450144519%_))))
                          (if (gx#stx-pair? _%tl4450344526%_)
                              (let ((_%e4450444529%_
                                     (gx#syntax-e _%tl4450344526%_)))
                                (let ((_%hd4450544533%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4450444529%_)))
                                      (_%tl4450644536%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4450444529%_))))
                                  (if (gx#stx-null? _%tl4450644536%_)
                                      ((lambda (_%g4450044539%_)
                                         (if (gx#current-expander-compiling?)
                                             (gx#eval-syntax _%g4450044539%_)
                                             '#!void)
                                         (cons (gx#datum->syntax '#f 'void)
                                               '()))
                                       _%hd4450544533%_)
                                      (_%g4449844512%_ _%g4449944516%_))))
                              (_%g4449844512%_ _%g4449944516%_))))
                      (_%g4449844512%_ _%g4449944516%_)))))
          (_%g4449744553%_ _%stx44495%_))))))
