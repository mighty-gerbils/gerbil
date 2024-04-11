(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
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
    (lambda _%$args40371%_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setq-macro::t|
             _%$args40371%_)))
  (define |gerbil/core/more-sugar[1]#setq-macro-macro|
    (make-class-slot-accessor
     |gerbil/core/more-sugar[1]#setq-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#setq-macro-macro-set!|
    (make-class-slot-mutator |gerbil/core/more-sugar[1]#setq-macro::t| 'macro))
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
    (lambda _%$args40367%_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setf-macro::t|
             _%$args40367%_)))
  (define |gerbil/core/more-sugar[1]#setf-macro-macro|
    (make-class-slot-accessor
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#setf-macro-macro-set!|
    (make-class-slot-mutator |gerbil/core/more-sugar[1]#setf-macro::t| 'macro))
  (define |gerbil/core/more-sugar[1]#&setf-macro-macro|
    (make-class-slot-unchecked-accessor
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#&setf-macro-macro-set!|
    (make-class-slot-unchecked-mutator
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
    (lambda (_%stx40364%_)
      (if (gx#identifier? _%stx40364%_)
          (let ((__tmp41589 (gx#syntax-local-value _%stx40364%_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setf-macro::t|
             __tmp41589))
          '#f)))
  (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
    (lambda (_%stx40361%_)
      (if (gx#identifier? _%stx40361%_)
          (let ((__tmp41590 (gx#syntax-local-value _%stx40361%_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setq-macro::t|
             __tmp41590))
          '#f)))
  (define |gerbil/core/more-sugar[1]#expand-set!|
    (lambda (_%stx39986%_)
      (let* ((_%__stx4142841429%_ _%stx39986%_)
             (_%g3999240055%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4142841429%_))))
        (let ((_%__kont4143141432%_
               (lambda (_%L40338%_ _%L40340%_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _%L40340%_)
                  _%stx39986%_)))
              (_%__kont4143341434%_
               (lambda (_%L40227%_ _%L40229%_ _%L40230%_)
                 (let* ((_%g4025240260%_
                         (lambda (_%g4025340256%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4025340256%_)))
                        (_%g4025140287%_
                         (lambda (_%g4025340264%_)
                           ((lambda (_%L40267%_)
                              (cons _%L40267%_
                                    (foldr (lambda (_%g4027840281%_
                                                    _%g4027940284%_)
                                             (cons _%g4027840281%_
                                                   _%g4027940284%_))
                                           (cons _%L40227%_ '())
                                           _%L40229%_)))
                            _%g4025340264%_))))
                   (_%g4025140287%_
                    (gx#stx-identifier _%L40230%_ _%L40230%_ '"-set!")))))
              (_%__kont4143741438%_
               (lambda (_%L40137%_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _%L40137%_)
                  _%stx39986%_)))
              (_%__kont4143941440%_
               (lambda (_%L40092%_ _%L40094%_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _%L40094%_ (cons _%L40092%_ '()))))))
          (let* ((_%__match4152741528%_
                  (lambda (_%e4004140062%_
                           _%hd4004240066%_
                           _%tl4004340069%_
                           _%e4004440072%_
                           _%hd4004540076%_
                           _%tl4004640079%_
                           _%e4004740082%_
                           _%hd4004840086%_
                           _%tl4004940089%_)
                    (let ((_%L40092%_ _%hd4004840086%_)
                          (_%L40094%_ _%hd4004540076%_))
                      (if (gx#identifier? _%L40094%_)
                          (_%__kont4143941440%_ _%L40092%_ _%L40094%_)
                          (let () (declare (not safe)) (_%g3999240055%_))))))
                 (_%__match4150741508%_
                  (lambda (_%e4003340117%_
                           _%hd4003440121%_
                           _%tl4003540124%_
                           _%e4003640127%_
                           _%hd4003740131%_
                           _%tl4003840134%_)
                    (let ((_%L40137%_ _%hd4003740131%_))
                      (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                           _%L40137%_)
                          (_%__kont4143741438%_ _%L40137%_)
                          (if (gx#stx-pair? _%tl4003840134%_)
                              (let ((_%e4004740082%_
                                     (gx#syntax-e _%tl4003840134%_)))
                                (let ((_%tl4004940089%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4004740082%_)))
                                      (_%hd4004840086%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4004740082%_))))
                                  (if (gx#stx-null? _%tl4004940089%_)
                                      (_%__match4152741528%_
                                       _%e4003340117%_
                                       _%hd4003440121%_
                                       _%tl4003540124%_
                                       _%e4003640127%_
                                       _%hd4003740131%_
                                       _%tl4003840134%_
                                       _%e4004740082%_
                                       _%hd4004840086%_
                                       _%tl4004940089%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3999240055%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3999240055%_)))))))
                 (_%__match4149541496%_
                  (lambda (_%e4001140157%_
                           _%hd4001240161%_
                           _%tl4001340164%_
                           _%e4001440167%_
                           _%hd4001540171%_
                           _%tl4001640174%_
                           _%e4001740177%_
                           _%hd4001840181%_
                           _%tl4001940184%_
                           _%__splice4143541436%_
                           _%target4002040187%_
                           _%tl4002240190%_)
                    (letrec ((_%loop4002340193%_
                              (lambda (_%hd4002140197%_ _%arg4002740200%_)
                                (if (gx#stx-pair? _%hd4002140197%_)
                                    (let ((_%e4002440203%_
                                           (gx#syntax-e _%hd4002140197%_)))
                                      (let ((_%lp-tl4002640210%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4002440203%_)))
                                            (_%lp-hd4002540207%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4002440203%_))))
                                        (_%loop4002340193%_
                                         _%lp-tl4002640210%_
                                         (cons _%lp-hd4002540207%_
                                               _%arg4002740200%_))))
                                    (let ((_%arg4002840213%_
                                           (reverse _%arg4002740200%_)))
                                      (if (gx#stx-pair? _%tl4001640174%_)
                                          (let ((_%e4002940217%_
                                                 (gx#syntax-e
                                                  _%tl4001640174%_)))
                                            (let ((_%tl4003140224%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4002940217%_)))
                                                  (_%hd4003040221%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4002940217%_))))
                                              (if (gx#stx-null?
                                                   _%tl4003140224%_)
                                                  (let ((_%L40227%_
                                                         _%hd4003040221%_)
                                                        (_%L40229%_
                                                         _%arg4002840213%_)
                                                        (_%L40230%_
                                                         _%hd4001840181%_))
                                                    (if (gx#identifier?
                                                         _%L40230%_)
                                                        (_%__kont4143341434%_
                                                         _%L40227%_
                                                         _%L40229%_
                                                         _%L40230%_)
                                                        (_%__match4150741508%_
                                                         _%e4001140157%_
                                                         _%hd4001240161%_
                                                         _%tl4001340164%_
                                                         _%e4001440167%_
                                                         _%hd4001540171%_
                                                         _%tl4001640174%_)))
                                                  (_%__match4150741508%_
                                                   _%e4001140157%_
                                                   _%hd4001240161%_
                                                   _%tl4001340164%_
                                                   _%e4001440167%_
                                                   _%hd4001540171%_
                                                   _%tl4001640174%_))))
                                          (_%__match4150741508%_
                                           _%e4001140157%_
                                           _%hd4001240161%_
                                           _%tl4001340164%_
                                           _%e4001440167%_
                                           _%hd4001540171%_
                                           _%tl4001640174%_)))))))
                      (_%loop4002340193%_ _%target4002040187%_ '())))))
            (if (gx#stx-pair? _%__stx4142841429%_)
                (let ((_%e3999640298%_ (gx#syntax-e _%__stx4142841429%_)))
                  (let ((_%tl3999840305%_
                         (let () (declare (not safe)) (##cdr _%e3999640298%_)))
                        (_%hd3999740302%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3999640298%_))))
                    (if (gx#stx-pair? _%tl3999840305%_)
                        (let ((_%e3999940308%_ (gx#syntax-e _%tl3999840305%_)))
                          (let ((_%tl4000140315%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3999940308%_)))
                                (_%hd4000040312%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3999940308%_))))
                            (if (gx#stx-pair? _%hd4000040312%_)
                                (let ((_%e4000240318%_
                                       (gx#syntax-e _%hd4000040312%_)))
                                  (let ((_%tl4000440325%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4000240318%_)))
                                        (_%hd4000340322%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4000240318%_))))
                                    (if (gx#stx-pair? _%tl4000140315%_)
                                        (let ((_%e4000540328%_
                                               (gx#syntax-e _%tl4000140315%_)))
                                          (let ((_%tl4000740335%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4000540328%_)))
                                                (_%hd4000640332%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4000540328%_))))
                                            (if (gx#stx-null? _%tl4000740335%_)
                                                (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                     (gx#datum->syntax
                                                      '#f
                                                      'setfid))
                                                    (let ((_%L40338%_
                                                           _%hd4000640332%_)
                                                          (_%L40340%_
                                                           _%hd4000340322%_))
                                                      (_%__kont4143141432%_
                                                       _%L40338%_
                                                       _%L40340%_))
                                                    (if (gx#stx-pair/null?
                                                         _%tl4000440325%_)
                                                        (let ((_%__splice4143541436%_
                                                               (gx#syntax-split-splice
                                                                _%tl4000440325%_
                                                                '0)))
                                                          (let ((_%tl4002240190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4143541436%_ '1)))
                        (_%target4002040187%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4143541436%_ '0))))
                    (if (gx#stx-null? _%tl4002240190%_)
                        (_%__match4149541496%_
                         _%e3999640298%_
                         _%hd3999740302%_
                         _%tl3999840305%_
                         _%e3999940308%_
                         _%hd4000040312%_
                         _%tl4000140315%_
                         _%e4000240318%_
                         _%hd4000340322%_
                         _%tl4000440325%_
                         _%__splice4143541436%_
                         _%target4002040187%_
                         _%tl4002240190%_)
                        (_%__match4150741508%_
                         _%e3999640298%_
                         _%hd3999740302%_
                         _%tl3999840305%_
                         _%e3999940308%_
                         _%hd4000040312%_
                         _%tl4000140315%_))))
                (_%__match4150741508%_
                 _%e3999640298%_
                 _%hd3999740302%_
                 _%tl3999840305%_
                 _%e3999940308%_
                 _%hd4000040312%_
                 _%tl4000140315%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%tl4000440325%_)
                                                    (let ((_%__splice4143541436%_
                                                           (gx#syntax-split-splice
                                                            _%tl4000440325%_
                                                            '0)))
                                                      (let ((_%tl4002240190%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4143541436%_ '1)))
                    (_%target4002040187%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4143541436%_ '0))))
                (if (gx#stx-null? _%tl4002240190%_)
                    (_%__match4149541496%_
                     _%e3999640298%_
                     _%hd3999740302%_
                     _%tl3999840305%_
                     _%e3999940308%_
                     _%hd4000040312%_
                     _%tl4000140315%_
                     _%e4000240318%_
                     _%hd4000340322%_
                     _%tl4000440325%_
                     _%__splice4143541436%_
                     _%target4002040187%_
                     _%tl4002240190%_)
                    (_%__match4150741508%_
                     _%e3999640298%_
                     _%hd3999740302%_
                     _%tl3999840305%_
                     _%e3999940308%_
                     _%hd4000040312%_
                     _%tl4000140315%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match4150741508%_
                                                     _%e3999640298%_
                                                     _%hd3999740302%_
                                                     _%tl3999840305%_
                                                     _%e3999940308%_
                                                     _%hd4000040312%_
                                                     _%tl4000140315%_)))))
                                        (if (gx#stx-pair/null?
                                             _%tl4000440325%_)
                                            (let ((_%__splice4143541436%_
                                                   (gx#syntax-split-splice
                                                    _%tl4000440325%_
                                                    '0)))
                                              (let ((_%tl4002240190%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4143541436%_
                                                        '1)))
                                                    (_%target4002040187%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4143541436%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4002240190%_)
                                                    (_%__match4149541496%_
                                                     _%e3999640298%_
                                                     _%hd3999740302%_
                                                     _%tl3999840305%_
                                                     _%e3999940308%_
                                                     _%hd4000040312%_
                                                     _%tl4000140315%_
                                                     _%e4000240318%_
                                                     _%hd4000340322%_
                                                     _%tl4000440325%_
                                                     _%__splice4143541436%_
                                                     _%target4002040187%_
                                                     _%tl4002240190%_)
                                                    (_%__match4150741508%_
                                                     _%e3999640298%_
                                                     _%hd3999740302%_
                                                     _%tl3999840305%_
                                                     _%e3999940308%_
                                                     _%hd4000040312%_
                                                     _%tl4000140315%_))))
                                            (_%__match4150741508%_
                                             _%e3999640298%_
                                             _%hd3999740302%_
                                             _%tl3999840305%_
                                             _%e3999940308%_
                                             _%hd4000040312%_
                                             _%tl4000140315%_)))))
                                (_%__match4150741508%_
                                 _%e3999640298%_
                                 _%hd3999740302%_
                                 _%tl3999840305%_
                                 _%e3999940308%_
                                 _%hd4000040312%_
                                 _%tl4000140315%_))))
                        (let () (declare (not safe)) (_%g3999240055%_)))))
                (let () (declare (not safe)) (_%g3999240055%_))))))))
  (define |gerbil/core/more-sugar[:0:]#set!|
    (lambda (_%stx40376%_)
      (|gerbil/core/more-sugar[1]#expand-set!| _%stx40376%_)))
  (define |gerbil/core/more-sugar[:0:]#values-set!|
    (lambda (_%stx40379%_)
      (let* ((_%g4038240406%_
              (lambda (_%g4038340402%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4038340402%_)))
             (_%g4038140584%_
              (lambda (_%g4038340410%_)
                (if (gx#stx-pair? _%g4038340410%_)
                    (let ((_%e4038640413%_ (gx#syntax-e _%g4038340410%_)))
                      (let ((_%hd4038740417%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4038640413%_)))
                            (_%tl4038840420%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4038640413%_))))
                        (if (gx#stx-pair/null? _%tl4038840420%_)
                            (if (let ((__tmp41591
                                       (gx#stx-length _%tl4038840420%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp41591 '1))
                                (let ((_g41592_
                                       (gx#syntax-split-splice
                                        _%tl4038840420%_
                                        '1)))
                                  (begin
                                    (let ((_g41593_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g41592_)
                                                 (##vector-length _g41592_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g41593_ 2)))
                                          (error "Context expects 2 values"
                                                 _g41593_)))
                                    (let ((_%target4038940423%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g41592_ 0)))
                                          (_%tl4039140426%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g41592_ 1))))
                                      (if (gx#stx-pair? _%tl4039140426%_)
                                          (let ((_%e4039840429%_
                                                 (gx#syntax-e
                                                  _%tl4039140426%_)))
                                            (let ((_%hd4039940433%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4039840429%_)))
                                                  (_%tl4040040436%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4039840429%_))))
                                              (if (gx#stx-null?
                                                   _%tl4040040436%_)
                                                  (letrec ((_%loop4039240439%_
                                                            (lambda (_%hd4039040443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%tgt4039640446%_)
                      (if (gx#stx-pair? _%hd4039040443%_)
                          (let ((_%e4039340449%_
                                 (gx#syntax-e _%hd4039040443%_)))
                            (let ((_%lp-hd4039440453%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4039340449%_)))
                                  (_%lp-tl4039540456%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4039340449%_))))
                              (_%loop4039240439%_
                               _%lp-tl4039540456%_
                               (cons _%lp-hd4039440453%_ _%tgt4039640446%_))))
                          (let ((_%tgt4039740459%_
                                 (reverse _%tgt4039640446%_)))
                            ((lambda (_%L40463%_ _%L40465%_)
                               (let* ((_%g4048340500%_
                                       (lambda (_%g4048440496%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g4048440496%_)))
                                      (_%g4048240572%_
                                       (lambda (_%g4048440504%_)
                                         (if (gx#stx-pair/null?
                                              _%g4048440504%_)
                                             (let ((_g41594_
                                                    (gx#syntax-split-splice
                                                     _%g4048440504%_
                                                     '0)))
                                               (begin
                                                 (let ((_g41595_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g41594_)
                                                              (##vector-length
                                                               _g41594_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g41595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g41595_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target4048640507%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g41594_
                                                           0)))
                                                       (_%tl4048840510%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g41594_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl4048840510%_)
                                                       (letrec ((_%loop4048940513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd4048740517%_ _%$e4049340520%_)
                           (if (gx#stx-pair? _%hd4048740517%_)
                               (let ((_%e4049040523%_
                                      (gx#syntax-e _%hd4048740517%_)))
                                 (let ((_%lp-hd4049140527%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4049040523%_)))
                                       (_%lp-tl4049240530%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4049040523%_))))
                                   (_%loop4048940513%_
                                    _%lp-tl4049240530%_
                                    (cons _%lp-hd4049140527%_
                                          _%$e4049340520%_))))
                               (let ((_%$e4049440533%_
                                      (reverse _%$e4049340520%_)))
                                 ((lambda (_%L40537%_)
                                    (cons (gx#datum->syntax '#f 'let-values)
                                          (cons (cons (cons (foldr (lambda (_%g4055540558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4055640561%_)
                             (cons _%g4055540558%_ _%g4055640561%_))
                           '()
                           _%L40537%_)
                    (cons _%L40463%_ '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L40537%_
                                                   _%L40465%_)
                                                  (foldr (lambda (_%g4055240564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4055340567%_
                          _%g4055440569%_)
                   (cons (cons (gx#datum->syntax '#f 'set!)
                               (cons _%g4055340567%_
                                     (cons _%g4055240564%_ '())))
                         _%g4055440569%_))
                 '()
                 _%L40537%_
                 _%L40465%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%$e4049440533%_))))))
                 (_%loop4048940513%_ _%target4048640507%_ '()))
               (_%g4048340500%_ _%g4048440504%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4048340500%_
                                              _%g4048440504%_)))))
                                 (_%g4048240572%_
                                  (gx#gentemps
                                   (foldr (lambda (_%g4057540578%_
                                                   _%g4057640581%_)
                                            (cons _%g4057540578%_
                                                  _%g4057640581%_))
                                          '()
                                          _%L40465%_)))))
                             _%hd4039940433%_
                             _%tgt4039740459%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4039240439%_
                                                     _%target4038940423%_
                                                     '()))
                                                  (_%g4038240406%_
                                                   _%g4038340410%_))))
                                          (_%g4038240406%_ _%g4038340410%_)))))
                                (_%g4038240406%_ _%g4038340410%_))
                            (_%g4038240406%_ _%g4038340410%_))))
                    (_%g4038240406%_ _%g4038340410%_)))))
        (_%g4038140584%_ _%stx40379%_))))
  (define |gerbil/core/more-sugar[:0:]#parameterize|
    (lambda (_%stx40590%_)
      (let* ((_%__stx4153041531%_ _%stx40590%_)
             (_%g4059440652%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4153041531%_))))
        (let ((_%__kont4153341534%_
               (lambda (_%L40986%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (foldr (lambda (_%g4100241005%_ _%g4100341008%_)
                                      (cons _%g4100241005%_ _%g4100341008%_))
                                    '()
                                    _%L40986%_)))))
              (_%__kont4153741538%_
               (lambda (_%L40763%_ _%L40765%_ _%L40766%_)
                 (let* ((_%g4078940797%_
                         (lambda (_%g4079040793%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4079040793%_)))
                        (_%g4078840917%_
                         (lambda (_%g4079040801%_)
                           ((lambda (_%L40804%_)
                              (let* ((_%g4081640833%_
                                      (lambda (_%g4081740829%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g4081740829%_)))
                                     (_%g4081540897%_
                                      (lambda (_%g4081740837%_)
                                        (if (gx#stx-pair/null? _%g4081740837%_)
                                            (let ((_g41596_
                                                   (gx#syntax-split-splice
                                                    _%g4081740837%_
                                                    '0)))
                                              (begin
                                                (let ((_g41597_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g41596_)
                                                             (##vector-length
                                                              _g41596_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g41597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g41597_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target4081940840%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41596_
                                                          0)))
                                                      (_%tl4082140843%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41596_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl4082140843%_)
                                                      (letrec ((_%loop4082240846%_
                                                                (lambda (_%hd4082040850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%arg4082640853%_)
                          (if (gx#stx-pair? _%hd4082040850%_)
                              (let ((_%e4082340856%_
                                     (gx#syntax-e _%hd4082040850%_)))
                                (let ((_%lp-hd4082440860%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4082340856%_)))
                                      (_%lp-tl4082540863%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4082340856%_))))
                                  (_%loop4082240846%_
                                   _%lp-tl4082540863%_
                                   (cons _%lp-hd4082440860%_
                                         _%arg4082640853%_))))
                              (let ((_%arg4082740866%_
                                     (reverse _%arg4082640853%_)))
                                ((lambda (_%L40870%_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'call-with-parameters)
                                         (cons _%L40804%_
                                               (foldr (lambda (_%g4088840891%_
                                                               _%g4088940894%_)
                                                        (cons _%g4088840891%_
                                                              _%g4088940894%_))
                                                      '()
                                                      _%L40870%_))))
                                 _%arg4082740866%_))))))
                (_%loop4082240846%_ _%target4081940840%_ '()))
              (_%g4081640833%_ _%g4081740837%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4081640833%_
                                             _%g4081740837%_)))))
                                (_%g4081540897%_
                                 (foldr cons*
                                        '()
                                        (gx#syntax->list
                                         (foldr (lambda (_%g4090040903%_
                                                         _%g4090140906%_)
                                                  (cons _%g4090040903%_
                                                        _%g4090140906%_))
                                                '()
                                                _%L40766%_))
                                        (gx#syntax->list
                                         (foldr (lambda (_%g4090840911%_
                                                         _%g4090940914%_)
                                                  (cons _%g4090840911%_
                                                        _%g4090940914%_))
                                                '()
                                                _%L40765%_))))))
                            _%g4079040801%_))))
                   (_%g4078840917%_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (foldr (lambda (_%g4092040923%_
                                                 _%g4092140926%_)
                                          (cons _%g4092040923%_
                                                _%g4092140926%_))
                                        '()
                                        _%L40763%_)))
                     (gx#stx-source _%stx40590%_)))))))
          (let* ((_%__match4158541586%_
                  (lambda (_%e4061540659%_
                           _%hd4061640663%_
                           _%tl4061740666%_
                           _%e4061840669%_
                           _%hd4061940673%_
                           _%tl4062040676%_
                           _%__splice4153941540%_
                           _%target4062140679%_
                           _%tl4062340682%_)
                    (letrec ((_%loop4062440685%_
                              (lambda (_%hd4062240689%_
                                       _%expr4062840692%_
                                       _%param4062940694%_)
                                (if (gx#stx-pair? _%hd4062240689%_)
                                    (let ((_%e4062540697%_
                                           (gx#syntax-e _%hd4062240689%_)))
                                      (let ((_%lp-tl4062740704%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4062540697%_)))
                                            (_%lp-hd4062640701%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4062540697%_))))
                                        (if (gx#stx-pair? _%lp-hd4062640701%_)
                                            (let ((_%e4064140707%_
                                                   (gx#syntax-e
                                                    _%lp-hd4062640701%_)))
                                              (let ((_%tl4064340714%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4064140707%_)))
                                                    (_%hd4064240711%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4064140707%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4064340714%_)
                                                    (let ((_%e4064440717%_
                                                           (gx#syntax-e
                                                            _%tl4064340714%_)))
                                                      (let ((_%tl4064640724%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4064440717%_)))
                    (_%hd4064540721%_
                     (let () (declare (not safe)) (##car _%e4064440717%_))))
                (if (gx#stx-null? _%tl4064640724%_)
                    (_%loop4062440685%_
                     _%lp-tl4062740704%_
                     (cons _%hd4064540721%_ _%expr4062840692%_)
                     (cons _%hd4064240711%_ _%param4062940694%_))
                    (let () (declare (not safe)) (_%g4059440652%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4059440652%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4059440652%_)))))
                                    (let ((_%param4063140730%_
                                           (reverse _%param4062940694%_))
                                          (_%expr4063040727%_
                                           (reverse _%expr4062840692%_)))
                                      (if (gx#stx-pair/null? _%tl4062040676%_)
                                          (let ((_%__splice4154141542%_
                                                 (gx#syntax-split-splice
                                                  _%tl4062040676%_
                                                  '0)))
                                            (let ((_%tl4063440736%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4154141542%_
                                                      '1)))
                                                  (_%target4063240733%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4154141542%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4063440736%_)
                                                  (letrec ((_%loop4063540739%_
                                                            (lambda (_%hd4063340743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body4063940746%_)
                      (if (gx#stx-pair? _%hd4063340743%_)
                          (let ((_%e4063640749%_
                                 (gx#syntax-e _%hd4063340743%_)))
                            (let ((_%lp-tl4063840756%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4063640749%_)))
                                  (_%lp-hd4063740753%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4063640749%_))))
                              (_%loop4063540739%_
                               _%lp-tl4063840756%_
                               (cons _%lp-hd4063740753%_ _%body4063940746%_))))
                          (let ((_%body4064040759%_
                                 (reverse _%body4063940746%_)))
                            (_%__kont4153741538%_
                             _%body4064040759%_
                             _%expr4063040727%_
                             _%param4063140730%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4063540739%_
                                                     _%target4063240733%_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4059440652%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4059440652%_))))))))
                      (_%loop4062440685%_ _%target4062140679%_ '() '()))))
                 (_%__match4156541566%_
                  (lambda (_%e4059740936%_
                           _%hd4059840940%_
                           _%tl4059940943%_
                           _%e4060040946%_
                           _%hd4060140950%_
                           _%tl4060240953%_
                           _%__splice4153541536%_
                           _%target4060340956%_
                           _%tl4060540959%_)
                    (letrec ((_%loop4060640962%_
                              (lambda (_%hd4060440966%_ _%body4061040969%_)
                                (if (gx#stx-pair? _%hd4060440966%_)
                                    (let ((_%e4060740972%_
                                           (gx#syntax-e _%hd4060440966%_)))
                                      (let ((_%lp-tl4060940979%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4060740972%_)))
                                            (_%lp-hd4060840976%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4060740972%_))))
                                        (_%loop4060640962%_
                                         _%lp-tl4060940979%_
                                         (cons _%lp-hd4060840976%_
                                               _%body4061040969%_))))
                                    (let ((_%body4061140982%_
                                           (reverse _%body4061040969%_)))
                                      (_%__kont4153341534%_
                                       _%body4061140982%_))))))
                      (_%loop4060640962%_ _%target4060340956%_ '())))))
            (if (gx#stx-pair? _%__stx4153041531%_)
                (let ((_%e4059740936%_ (gx#syntax-e _%__stx4153041531%_)))
                  (let ((_%tl4059940943%_
                         (let () (declare (not safe)) (##cdr _%e4059740936%_)))
                        (_%hd4059840940%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4059740936%_))))
                    (if (gx#stx-pair? _%tl4059940943%_)
                        (let ((_%e4060040946%_ (gx#syntax-e _%tl4059940943%_)))
                          (let ((_%tl4060240953%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4060040946%_)))
                                (_%hd4060140950%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4060040946%_))))
                            (if (gx#stx-null? _%hd4060140950%_)
                                (if (gx#stx-pair/null? _%tl4060240953%_)
                                    (let ((_%__splice4153541536%_
                                           (gx#syntax-split-splice
                                            _%tl4060240953%_
                                            '0)))
                                      (let ((_%tl4060540959%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4153541536%_
                                                '1)))
                                            (_%target4060340956%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4153541536%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4060540959%_)
                                            (_%__match4156541566%_
                                             _%e4059740936%_
                                             _%hd4059840940%_
                                             _%tl4059940943%_
                                             _%e4060040946%_
                                             _%hd4060140950%_
                                             _%tl4060240953%_
                                             _%__splice4153541536%_
                                             _%target4060340956%_
                                             _%tl4060540959%_)
                                            (if (gx#stx-pair/null?
                                                 _%hd4060140950%_)
                                                (let ((_%__splice4153941540%_
                                                       (gx#syntax-split-splice
                                                        _%hd4060140950%_
                                                        '0)))
                                                  (let ((_%tl4062340682%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4153941540%_
                                                            '1)))
                                                        (_%target4062140679%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4153941540%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4062340682%_)
                                                        (_%__match4158541586%_
                                                         _%e4059740936%_
                                                         _%hd4059840940%_
                                                         _%tl4059940943%_
                                                         _%e4060040946%_
                                                         _%hd4060140950%_
                                                         _%tl4060240953%_
                                                         _%__splice4153941540%_
                                                         _%target4062140679%_
                                                         _%tl4062340682%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4059440652%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4059440652%_))))))
                                    (if (gx#stx-pair/null? _%hd4060140950%_)
                                        (let ((_%__splice4153941540%_
                                               (gx#syntax-split-splice
                                                _%hd4060140950%_
                                                '0)))
                                          (let ((_%tl4062340682%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4153941540%_
                                                    '1)))
                                                (_%target4062140679%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4153941540%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4062340682%_)
                                                (_%__match4158541586%_
                                                 _%e4059740936%_
                                                 _%hd4059840940%_
                                                 _%tl4059940943%_
                                                 _%e4060040946%_
                                                 _%hd4060140950%_
                                                 _%tl4060240953%_
                                                 _%__splice4153941540%_
                                                 _%target4062140679%_
                                                 _%tl4062340682%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4059440652%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4059440652%_))))
                                (if (gx#stx-pair/null? _%hd4060140950%_)
                                    (let ((_%__splice4153941540%_
                                           (gx#syntax-split-splice
                                            _%hd4060140950%_
                                            '0)))
                                      (let ((_%tl4062340682%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4153941540%_
                                                '1)))
                                            (_%target4062140679%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4153941540%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4062340682%_)
                                            (_%__match4158541586%_
                                             _%e4059740936%_
                                             _%hd4059840940%_
                                             _%tl4059940943%_
                                             _%e4060040946%_
                                             _%hd4060140950%_
                                             _%tl4060240953%_
                                             _%__splice4153941540%_
                                             _%target4062140679%_
                                             _%tl4062340682%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4059440652%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4059440652%_))))))
                        (let () (declare (not safe)) (_%g4059440652%_)))))
                (let () (declare (not safe)) (_%g4059440652%_))))))))
  (define |gerbil/core/more-sugar[:0:]#let/cc|
    (lambda (_%$stx41019%_)
      (let* ((_%g4102341047%_
              (lambda (_%g4102441043%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4102441043%_)))
             (_%g4102241132%_
              (lambda (_%g4102441051%_)
                (if (gx#stx-pair? _%g4102441051%_)
                    (let ((_%e4102741054%_ (gx#syntax-e _%g4102441051%_)))
                      (let ((_%hd4102841058%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4102741054%_)))
                            (_%tl4102941061%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4102741054%_))))
                        (if (gx#stx-pair? _%tl4102941061%_)
                            (let ((_%e4103041064%_
                                   (gx#syntax-e _%tl4102941061%_)))
                              (let ((_%hd4103141068%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4103041064%_)))
                                    (_%tl4103241071%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4103041064%_))))
                                (if (gx#stx-pair/null? _%tl4103241071%_)
                                    (let ((_g41598_
                                           (gx#syntax-split-splice
                                            _%tl4103241071%_
                                            '0)))
                                      (begin
                                        (let ((_g41599_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g41598_)
                                                     (##vector-length _g41598_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g41599_ 2)))
                                              (error "Context expects 2 values"
                                                     _g41599_)))
                                        (let ((_%target4103341074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g41598_ 0)))
                                              (_%tl4103541077%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g41598_ 1))))
                                          (if (gx#stx-null? _%tl4103541077%_)
                                              (letrec ((_%loop4103641080%_
                                                        (lambda (_%hd4103441084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body4104041087%_)
                  (if (gx#stx-pair? _%hd4103441084%_)
                      (let ((_%e4103741090%_ (gx#syntax-e _%hd4103441084%_)))
                        (let ((_%lp-hd4103841094%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4103741090%_)))
                              (_%lp-tl4103941097%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4103741090%_))))
                          (_%loop4103641080%_
                           _%lp-tl4103941097%_
                           (cons _%lp-hd4103841094%_ _%body4104041087%_))))
                      (let ((_%body4104141100%_ (reverse _%body4104041087%_)))
                        ((lambda (_%L41104%_ _%L41106%_)
                           (if (gx#identifier? _%L41106%_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _%L41106%_ '())
                                                       (foldr (lambda (_%g4112341126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4112441129%_)
                        (cons _%g4112341126%_ _%g4112441129%_))
                      '()
                      _%L41104%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_%g4102341047%_ _%g4102441051%_)))
                         _%body4104141100%_
                         _%hd4103141068%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop4103641080%_
                                                 _%target4103341074%_
                                                 '()))
                                              (_%g4102341047%_
                                               _%g4102441051%_)))))
                                    (_%g4102341047%_ _%g4102441051%_))))
                            (_%g4102341047%_ _%g4102441051%_))))
                    (_%g4102341047%_ _%g4102441051%_)))))
        (_%g4102241132%_ _%$stx41019%_))))
  (define |gerbil/core/more-sugar[:0:]#unwind-protect|
    (lambda (_%$stx41137%_)
      (let* ((_%g4114141169%_
              (lambda (_%g4114241165%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4114241165%_)))
             (_%g4114041268%_
              (lambda (_%g4114241173%_)
                (if (gx#stx-pair? _%g4114241173%_)
                    (let ((_%e4114641176%_ (gx#syntax-e _%g4114241173%_)))
                      (let ((_%hd4114741180%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4114641176%_)))
                            (_%tl4114841183%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4114641176%_))))
                        (if (gx#stx-pair? _%tl4114841183%_)
                            (let ((_%e4114941186%_
                                   (gx#syntax-e _%tl4114841183%_)))
                              (let ((_%hd4115041190%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4114941186%_)))
                                    (_%tl4115141193%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4114941186%_))))
                                (if (gx#stx-pair? _%tl4115141193%_)
                                    (let ((_%e4115241196%_
                                           (gx#syntax-e _%tl4115141193%_)))
                                      (let ((_%hd4115341200%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4115241196%_)))
                                            (_%tl4115441203%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4115241196%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4115441203%_)
                                            (let ((_g41600_
                                                   (gx#syntax-split-splice
                                                    _%tl4115441203%_
                                                    '0)))
                                              (begin
                                                (let ((_g41601_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g41600_)
                                                             (##vector-length
                                                              _g41600_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g41601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g41601_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target4115541206%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41600_
                                                          0)))
                                                      (_%tl4115741209%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41600_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl4115741209%_)
                                                      (letrec ((_%loop4115841212%_
                                                                (lambda (_%hd4115641216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%rest4116241219%_)
                          (if (gx#stx-pair? _%hd4115641216%_)
                              (let ((_%e4115941222%_
                                     (gx#syntax-e _%hd4115641216%_)))
                                (let ((_%lp-hd4116041226%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4115941222%_)))
                                      (_%lp-tl4116141229%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4115941222%_))))
                                  (_%loop4115841212%_
                                   _%lp-tl4116141229%_
                                   (cons _%lp-hd4116041226%_
                                         _%rest4116241219%_))))
                              (let ((_%rest4116341232%_
                                     (reverse _%rest4116241219%_)))
                                ((lambda (_%L41236%_ _%L41238%_ _%L41239%_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _%L41239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L41238%_
                               (foldr (lambda (_%g4125941262%_ _%g4126041265%_)
                                        (cons _%g4125941262%_ _%g4126041265%_))
                                      '()
                                      _%L41236%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _%rest4116341232%_
                                 _%hd4115341200%_
                                 _%hd4115041190%_))))))
                (_%loop4115841212%_ _%target4115541206%_ '()))
              (_%g4114141169%_ _%g4114241173%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4114141169%_
                                             _%g4114241173%_))))
                                    (_%g4114141169%_ _%g4114241173%_))))
                            (_%g4114141169%_ _%g4114241173%_))))
                    (_%g4114141169%_ _%g4114241173%_)))))
        (_%g4114041268%_ _%$stx41137%_))))
  (define |gerbil/core/more-sugar[:0:]#@bytes|
    (lambda (_%stx41273%_)
      (let* ((_%g4127641290%_
              (lambda (_%g4127741286%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4127741286%_)))
             (_%g4127541362%_
              (lambda (_%g4127741294%_)
                (if (gx#stx-pair? _%g4127741294%_)
                    (let ((_%e4127941297%_ (gx#syntax-e _%g4127741294%_)))
                      (let ((_%hd4128041301%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4127941297%_)))
                            (_%tl4128141304%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4127941297%_))))
                        (if (gx#stx-pair? _%tl4128141304%_)
                            (let ((_%e4128241307%_
                                   (gx#syntax-e _%tl4128141304%_)))
                              (let ((_%hd4128341311%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4128241307%_)))
                                    (_%tl4128441314%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4128241307%_))))
                                (if (gx#stx-null? _%tl4128441314%_)
                                    ((lambda (_%L41317%_)
                                       (if (gx#stx-string? _%L41317%_)
                                           (let* ((_%g4133141339%_
                                                   (lambda (_%g4133241335%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4133241335%_)))
                                                  (_%g4133041358%_
                                                   (lambda (_%g4133241343%_)
                                                     ((lambda (_%L41346%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _%L41346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
              _%g4133241343%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4133041358%_
                                              (string->bytes
                                               (gx#stx-e _%L41317%_))))
                                           (_%g4127641290%_ _%g4127741294%_)))
                                     _%hd4128341311%_)
                                    (_%g4127641290%_ _%g4127741294%_))))
                            (_%g4127641290%_ _%g4127741294%_))))
                    (_%g4127641290%_ _%g4127741294%_)))))
        (_%g4127541362%_ _%stx41273%_))))
  (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
    (lambda (_%stx41366%_)
      (let* ((_%g4136941383%_
              (lambda (_%g4137041379%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4137041379%_)))
             (_%g4136841424%_
              (lambda (_%g4137041387%_)
                (if (gx#stx-pair? _%g4137041387%_)
                    (let ((_%e4137241390%_ (gx#syntax-e _%g4137041387%_)))
                      (let ((_%hd4137341394%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4137241390%_)))
                            (_%tl4137441397%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4137241390%_))))
                        (if (gx#stx-pair? _%tl4137441397%_)
                            (let ((_%e4137541400%_
                                   (gx#syntax-e _%tl4137441397%_)))
                              (let ((_%hd4137641404%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4137541400%_)))
                                    (_%tl4137741407%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4137541400%_))))
                                (if (gx#stx-null? _%tl4137741407%_)
                                    ((lambda (_%L41410%_)
                                       (if (gx#current-expander-compiling?)
                                           (gx#eval-syntax _%L41410%_)
                                           '#!void)
                                       (cons (gx#datum->syntax '#f 'void) '()))
                                     _%hd4137641404%_)
                                    (_%g4136941383%_ _%g4137041387%_))))
                            (_%g4136941383%_ _%g4137041387%_))))
                    (_%g4136941383%_ _%g4137041387%_)))))
        (_%g4136841424%_ _%stx41366%_)))))
