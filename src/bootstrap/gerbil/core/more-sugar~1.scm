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
    (lambda _%$args40389%_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setq-macro::t|
             _%$args40389%_)))
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
    (lambda _%$args40385%_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setf-macro::t|
             _%$args40385%_)))
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
    (lambda (_%stx40382%_)
      (if (gx#identifier? _%stx40382%_)
          (let ((__tmp41607 (gx#syntax-local-value _%stx40382%_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setf-macro::t|
             __tmp41607))
          '#f)))
  (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
    (lambda (_%stx40379%_)
      (if (gx#identifier? _%stx40379%_)
          (let ((__tmp41608 (gx#syntax-local-value _%stx40379%_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setq-macro::t|
             __tmp41608))
          '#f)))
  (define |gerbil/core/more-sugar[1]#expand-set!|
    (lambda (_%stx40004%_)
      (let* ((_%__stx4144641447%_ _%stx40004%_)
             (_%g4001040073%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4144641447%_))))
        (let ((_%__kont4144941450%_
               (lambda (_%L40356%_ _%L40358%_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _%L40358%_)
                  _%stx40004%_)))
              (_%__kont4145141452%_
               (lambda (_%L40245%_ _%L40247%_ _%L40248%_)
                 (let* ((_%g4027040278%_
                         (lambda (_%g4027140274%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4027140274%_)))
                        (_%g4026940305%_
                         (lambda (_%g4027140282%_)
                           ((lambda (_%L40285%_)
                              (cons _%L40285%_
                                    (foldr (lambda (_%g4029640299%_
                                                    _%g4029740302%_)
                                             (cons _%g4029640299%_
                                                   _%g4029740302%_))
                                           (cons _%L40245%_ '())
                                           _%L40247%_)))
                            _%g4027140282%_))))
                   (_%g4026940305%_
                    (gx#stx-identifier _%L40248%_ _%L40248%_ '"-set!")))))
              (_%__kont4145541456%_
               (lambda (_%L40155%_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _%L40155%_)
                  _%stx40004%_)))
              (_%__kont4145741458%_
               (lambda (_%L40110%_ _%L40112%_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _%L40112%_ (cons _%L40110%_ '()))))))
          (let* ((_%__match4154541546%_
                  (lambda (_%e4005940080%_
                           _%hd4006040084%_
                           _%tl4006140087%_
                           _%e4006240090%_
                           _%hd4006340094%_
                           _%tl4006440097%_
                           _%e4006540100%_
                           _%hd4006640104%_
                           _%tl4006740107%_)
                    (let ((_%L40110%_ _%hd4006640104%_)
                          (_%L40112%_ _%hd4006340094%_))
                      (if (gx#identifier? _%L40112%_)
                          (_%__kont4145741458%_ _%L40110%_ _%L40112%_)
                          (let () (declare (not safe)) (_%g4001040073%_))))))
                 (_%__match4152541526%_
                  (lambda (_%e4005140135%_
                           _%hd4005240139%_
                           _%tl4005340142%_
                           _%e4005440145%_
                           _%hd4005540149%_
                           _%tl4005640152%_)
                    (let ((_%L40155%_ _%hd4005540149%_))
                      (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                           _%L40155%_)
                          (_%__kont4145541456%_ _%L40155%_)
                          (if (gx#stx-pair? _%tl4005640152%_)
                              (let ((_%e4006540100%_
                                     (gx#syntax-e _%tl4005640152%_)))
                                (let ((_%tl4006740107%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4006540100%_)))
                                      (_%hd4006640104%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4006540100%_))))
                                  (if (gx#stx-null? _%tl4006740107%_)
                                      (_%__match4154541546%_
                                       _%e4005140135%_
                                       _%hd4005240139%_
                                       _%tl4005340142%_
                                       _%e4005440145%_
                                       _%hd4005540149%_
                                       _%tl4005640152%_
                                       _%e4006540100%_
                                       _%hd4006640104%_
                                       _%tl4006740107%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4001040073%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4001040073%_)))))))
                 (_%__match4151341514%_
                  (lambda (_%e4002940175%_
                           _%hd4003040179%_
                           _%tl4003140182%_
                           _%e4003240185%_
                           _%hd4003340189%_
                           _%tl4003440192%_
                           _%e4003540195%_
                           _%hd4003640199%_
                           _%tl4003740202%_
                           _%__splice4145341454%_
                           _%target4003840205%_
                           _%tl4004040208%_)
                    (letrec ((_%loop4004140211%_
                              (lambda (_%hd4003940215%_ _%arg4004540218%_)
                                (if (gx#stx-pair? _%hd4003940215%_)
                                    (let ((_%e4004240221%_
                                           (gx#syntax-e _%hd4003940215%_)))
                                      (let ((_%lp-tl4004440228%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4004240221%_)))
                                            (_%lp-hd4004340225%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4004240221%_))))
                                        (_%loop4004140211%_
                                         _%lp-tl4004440228%_
                                         (cons _%lp-hd4004340225%_
                                               _%arg4004540218%_))))
                                    (let ((_%arg4004640231%_
                                           (reverse _%arg4004540218%_)))
                                      (if (gx#stx-pair? _%tl4003440192%_)
                                          (let ((_%e4004740235%_
                                                 (gx#syntax-e
                                                  _%tl4003440192%_)))
                                            (let ((_%tl4004940242%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4004740235%_)))
                                                  (_%hd4004840239%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4004740235%_))))
                                              (if (gx#stx-null?
                                                   _%tl4004940242%_)
                                                  (let ((_%L40245%_
                                                         _%hd4004840239%_)
                                                        (_%L40247%_
                                                         _%arg4004640231%_)
                                                        (_%L40248%_
                                                         _%hd4003640199%_))
                                                    (if (gx#identifier?
                                                         _%L40248%_)
                                                        (_%__kont4145141452%_
                                                         _%L40245%_
                                                         _%L40247%_
                                                         _%L40248%_)
                                                        (_%__match4152541526%_
                                                         _%e4002940175%_
                                                         _%hd4003040179%_
                                                         _%tl4003140182%_
                                                         _%e4003240185%_
                                                         _%hd4003340189%_
                                                         _%tl4003440192%_)))
                                                  (_%__match4152541526%_
                                                   _%e4002940175%_
                                                   _%hd4003040179%_
                                                   _%tl4003140182%_
                                                   _%e4003240185%_
                                                   _%hd4003340189%_
                                                   _%tl4003440192%_))))
                                          (_%__match4152541526%_
                                           _%e4002940175%_
                                           _%hd4003040179%_
                                           _%tl4003140182%_
                                           _%e4003240185%_
                                           _%hd4003340189%_
                                           _%tl4003440192%_)))))))
                      (_%loop4004140211%_ _%target4003840205%_ '())))))
            (if (gx#stx-pair? _%__stx4144641447%_)
                (let ((_%e4001440316%_ (gx#syntax-e _%__stx4144641447%_)))
                  (let ((_%tl4001640323%_
                         (let () (declare (not safe)) (##cdr _%e4001440316%_)))
                        (_%hd4001540320%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4001440316%_))))
                    (if (gx#stx-pair? _%tl4001640323%_)
                        (let ((_%e4001740326%_ (gx#syntax-e _%tl4001640323%_)))
                          (let ((_%tl4001940333%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4001740326%_)))
                                (_%hd4001840330%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4001740326%_))))
                            (if (gx#stx-pair? _%hd4001840330%_)
                                (let ((_%e4002040336%_
                                       (gx#syntax-e _%hd4001840330%_)))
                                  (let ((_%tl4002240343%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4002040336%_)))
                                        (_%hd4002140340%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4002040336%_))))
                                    (if (gx#stx-pair? _%tl4001940333%_)
                                        (let ((_%e4002340346%_
                                               (gx#syntax-e _%tl4001940333%_)))
                                          (let ((_%tl4002540353%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4002340346%_)))
                                                (_%hd4002440350%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4002340346%_))))
                                            (if (gx#stx-null? _%tl4002540353%_)
                                                (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                     (gx#datum->syntax
                                                      '#f
                                                      'setfid))
                                                    (let ((_%L40356%_
                                                           _%hd4002440350%_)
                                                          (_%L40358%_
                                                           _%hd4002140340%_))
                                                      (_%__kont4144941450%_
                                                       _%L40356%_
                                                       _%L40358%_))
                                                    (if (gx#stx-pair/null?
                                                         _%tl4002240343%_)
                                                        (let ((_%__splice4145341454%_
                                                               (gx#syntax-split-splice
                                                                _%tl4002240343%_
                                                                '0)))
                                                          (let ((_%tl4004040208%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4145341454%_ '1)))
                        (_%target4003840205%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4145341454%_ '0))))
                    (if (gx#stx-null? _%tl4004040208%_)
                        (_%__match4151341514%_
                         _%e4001440316%_
                         _%hd4001540320%_
                         _%tl4001640323%_
                         _%e4001740326%_
                         _%hd4001840330%_
                         _%tl4001940333%_
                         _%e4002040336%_
                         _%hd4002140340%_
                         _%tl4002240343%_
                         _%__splice4145341454%_
                         _%target4003840205%_
                         _%tl4004040208%_)
                        (_%__match4152541526%_
                         _%e4001440316%_
                         _%hd4001540320%_
                         _%tl4001640323%_
                         _%e4001740326%_
                         _%hd4001840330%_
                         _%tl4001940333%_))))
                (_%__match4152541526%_
                 _%e4001440316%_
                 _%hd4001540320%_
                 _%tl4001640323%_
                 _%e4001740326%_
                 _%hd4001840330%_
                 _%tl4001940333%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%tl4002240343%_)
                                                    (let ((_%__splice4145341454%_
                                                           (gx#syntax-split-splice
                                                            _%tl4002240343%_
                                                            '0)))
                                                      (let ((_%tl4004040208%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4145341454%_ '1)))
                    (_%target4003840205%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4145341454%_ '0))))
                (if (gx#stx-null? _%tl4004040208%_)
                    (_%__match4151341514%_
                     _%e4001440316%_
                     _%hd4001540320%_
                     _%tl4001640323%_
                     _%e4001740326%_
                     _%hd4001840330%_
                     _%tl4001940333%_
                     _%e4002040336%_
                     _%hd4002140340%_
                     _%tl4002240343%_
                     _%__splice4145341454%_
                     _%target4003840205%_
                     _%tl4004040208%_)
                    (_%__match4152541526%_
                     _%e4001440316%_
                     _%hd4001540320%_
                     _%tl4001640323%_
                     _%e4001740326%_
                     _%hd4001840330%_
                     _%tl4001940333%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match4152541526%_
                                                     _%e4001440316%_
                                                     _%hd4001540320%_
                                                     _%tl4001640323%_
                                                     _%e4001740326%_
                                                     _%hd4001840330%_
                                                     _%tl4001940333%_)))))
                                        (if (gx#stx-pair/null?
                                             _%tl4002240343%_)
                                            (let ((_%__splice4145341454%_
                                                   (gx#syntax-split-splice
                                                    _%tl4002240343%_
                                                    '0)))
                                              (let ((_%tl4004040208%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4145341454%_
                                                        '1)))
                                                    (_%target4003840205%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4145341454%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4004040208%_)
                                                    (_%__match4151341514%_
                                                     _%e4001440316%_
                                                     _%hd4001540320%_
                                                     _%tl4001640323%_
                                                     _%e4001740326%_
                                                     _%hd4001840330%_
                                                     _%tl4001940333%_
                                                     _%e4002040336%_
                                                     _%hd4002140340%_
                                                     _%tl4002240343%_
                                                     _%__splice4145341454%_
                                                     _%target4003840205%_
                                                     _%tl4004040208%_)
                                                    (_%__match4152541526%_
                                                     _%e4001440316%_
                                                     _%hd4001540320%_
                                                     _%tl4001640323%_
                                                     _%e4001740326%_
                                                     _%hd4001840330%_
                                                     _%tl4001940333%_))))
                                            (_%__match4152541526%_
                                             _%e4001440316%_
                                             _%hd4001540320%_
                                             _%tl4001640323%_
                                             _%e4001740326%_
                                             _%hd4001840330%_
                                             _%tl4001940333%_)))))
                                (_%__match4152541526%_
                                 _%e4001440316%_
                                 _%hd4001540320%_
                                 _%tl4001640323%_
                                 _%e4001740326%_
                                 _%hd4001840330%_
                                 _%tl4001940333%_))))
                        (let () (declare (not safe)) (_%g4001040073%_)))))
                (let () (declare (not safe)) (_%g4001040073%_))))))))
  (define |gerbil/core/more-sugar[:0:]#set!|
    (lambda (_%stx40394%_)
      (|gerbil/core/more-sugar[1]#expand-set!| _%stx40394%_)))
  (define |gerbil/core/more-sugar[:0:]#values-set!|
    (lambda (_%stx40397%_)
      (let* ((_%g4040040424%_
              (lambda (_%g4040140420%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4040140420%_)))
             (_%g4039940602%_
              (lambda (_%g4040140428%_)
                (if (gx#stx-pair? _%g4040140428%_)
                    (let ((_%e4040440431%_ (gx#syntax-e _%g4040140428%_)))
                      (let ((_%hd4040540435%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4040440431%_)))
                            (_%tl4040640438%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4040440431%_))))
                        (if (gx#stx-pair/null? _%tl4040640438%_)
                            (if (let ((__tmp41609
                                       (gx#stx-length _%tl4040640438%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp41609 '1))
                                (let ((_g41610_
                                       (gx#syntax-split-splice
                                        _%tl4040640438%_
                                        '1)))
                                  (begin
                                    (let ((_g41611_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g41610_)
                                                 (##values-length _g41610_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g41611_ 2)))
                                          (error "Context expects 2 values"
                                                 _g41611_)))
                                    (let ((_%target4040740441%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g41610_ 0)))
                                          (_%tl4040940444%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g41610_ 1))))
                                      (if (gx#stx-pair? _%tl4040940444%_)
                                          (let ((_%e4041640447%_
                                                 (gx#syntax-e
                                                  _%tl4040940444%_)))
                                            (let ((_%hd4041740451%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4041640447%_)))
                                                  (_%tl4041840454%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4041640447%_))))
                                              (if (gx#stx-null?
                                                   _%tl4041840454%_)
                                                  (letrec ((_%loop4041040457%_
                                                            (lambda (_%hd4040840461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%tgt4041440464%_)
                      (if (gx#stx-pair? _%hd4040840461%_)
                          (let ((_%e4041140467%_
                                 (gx#syntax-e _%hd4040840461%_)))
                            (let ((_%lp-hd4041240471%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4041140467%_)))
                                  (_%lp-tl4041340474%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4041140467%_))))
                              (_%loop4041040457%_
                               _%lp-tl4041340474%_
                               (cons _%lp-hd4041240471%_ _%tgt4041440464%_))))
                          (let ((_%tgt4041540477%_
                                 (reverse _%tgt4041440464%_)))
                            ((lambda (_%L40481%_ _%L40483%_)
                               (let* ((_%g4050140518%_
                                       (lambda (_%g4050240514%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g4050240514%_)))
                                      (_%g4050040590%_
                                       (lambda (_%g4050240522%_)
                                         (if (gx#stx-pair/null?
                                              _%g4050240522%_)
                                             (let ((_g41612_
                                                    (gx#syntax-split-splice
                                                     _%g4050240522%_
                                                     '0)))
                                               (begin
                                                 (let ((_g41613_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g41612_)
                                                              (##values-length
                                                               _g41612_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g41613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g41613_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target4050440525%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g41612_
                                                           0)))
                                                       (_%tl4050640528%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g41612_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl4050640528%_)
                                                       (letrec ((_%loop4050740531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd4050540535%_ _%$e4051140538%_)
                           (if (gx#stx-pair? _%hd4050540535%_)
                               (let ((_%e4050840541%_
                                      (gx#syntax-e _%hd4050540535%_)))
                                 (let ((_%lp-hd4050940545%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4050840541%_)))
                                       (_%lp-tl4051040548%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4050840541%_))))
                                   (_%loop4050740531%_
                                    _%lp-tl4051040548%_
                                    (cons _%lp-hd4050940545%_
                                          _%$e4051140538%_))))
                               (let ((_%$e4051240551%_
                                      (reverse _%$e4051140538%_)))
                                 ((lambda (_%L40555%_)
                                    (cons (gx#datum->syntax '#f 'let-values)
                                          (cons (cons (cons (foldr (lambda (_%g4057340576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4057440579%_)
                             (cons _%g4057340576%_ _%g4057440579%_))
                           '()
                           _%L40555%_)
                    (cons _%L40481%_ '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L40555%_
                                                   _%L40483%_)
                                                  (foldr (lambda (_%g4057040582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4057140585%_
                          _%g4057240587%_)
                   (cons (cons (gx#datum->syntax '#f 'set!)
                               (cons _%g4057140585%_
                                     (cons _%g4057040582%_ '())))
                         _%g4057240587%_))
                 '()
                 _%L40555%_
                 _%L40483%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%$e4051240551%_))))))
                 (_%loop4050740531%_ _%target4050440525%_ '()))
               (_%g4050140518%_ _%g4050240522%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4050140518%_
                                              _%g4050240522%_)))))
                                 (_%g4050040590%_
                                  (gx#gentemps
                                   (foldr (lambda (_%g4059340596%_
                                                   _%g4059440599%_)
                                            (cons _%g4059340596%_
                                                  _%g4059440599%_))
                                          '()
                                          _%L40483%_)))))
                             _%hd4041740451%_
                             _%tgt4041540477%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4041040457%_
                                                     _%target4040740441%_
                                                     '()))
                                                  (_%g4040040424%_
                                                   _%g4040140428%_))))
                                          (_%g4040040424%_ _%g4040140428%_)))))
                                (_%g4040040424%_ _%g4040140428%_))
                            (_%g4040040424%_ _%g4040140428%_))))
                    (_%g4040040424%_ _%g4040140428%_)))))
        (_%g4039940602%_ _%stx40397%_))))
  (define |gerbil/core/more-sugar[:0:]#parameterize|
    (lambda (_%stx40608%_)
      (let* ((_%__stx4154841549%_ _%stx40608%_)
             (_%g4061240670%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4154841549%_))))
        (let ((_%__kont4155141552%_
               (lambda (_%L41004%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (foldr (lambda (_%g4102041023%_ _%g4102141026%_)
                                      (cons _%g4102041023%_ _%g4102141026%_))
                                    '()
                                    _%L41004%_)))))
              (_%__kont4155541556%_
               (lambda (_%L40781%_ _%L40783%_ _%L40784%_)
                 (let* ((_%g4080740815%_
                         (lambda (_%g4080840811%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4080840811%_)))
                        (_%g4080640935%_
                         (lambda (_%g4080840819%_)
                           ((lambda (_%L40822%_)
                              (let* ((_%g4083440851%_
                                      (lambda (_%g4083540847%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g4083540847%_)))
                                     (_%g4083340915%_
                                      (lambda (_%g4083540855%_)
                                        (if (gx#stx-pair/null? _%g4083540855%_)
                                            (let ((_g41614_
                                                   (gx#syntax-split-splice
                                                    _%g4083540855%_
                                                    '0)))
                                              (begin
                                                (let ((_g41615_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g41614_)
                                                             (##values-length
                                                              _g41614_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g41615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g41615_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target4083740858%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g41614_
                                                          0)))
                                                      (_%tl4083940861%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g41614_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl4083940861%_)
                                                      (letrec ((_%loop4084040864%_
                                                                (lambda (_%hd4083840868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%arg4084440871%_)
                          (if (gx#stx-pair? _%hd4083840868%_)
                              (let ((_%e4084140874%_
                                     (gx#syntax-e _%hd4083840868%_)))
                                (let ((_%lp-hd4084240878%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4084140874%_)))
                                      (_%lp-tl4084340881%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4084140874%_))))
                                  (_%loop4084040864%_
                                   _%lp-tl4084340881%_
                                   (cons _%lp-hd4084240878%_
                                         _%arg4084440871%_))))
                              (let ((_%arg4084540884%_
                                     (reverse _%arg4084440871%_)))
                                ((lambda (_%L40888%_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'call-with-parameters)
                                         (cons _%L40822%_
                                               (foldr (lambda (_%g4090640909%_
                                                               _%g4090740912%_)
                                                        (cons _%g4090640909%_
                                                              _%g4090740912%_))
                                                      '()
                                                      _%L40888%_))))
                                 _%arg4084540884%_))))))
                (_%loop4084040864%_ _%target4083740858%_ '()))
              (_%g4083440851%_ _%g4083540855%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4083440851%_
                                             _%g4083540855%_)))))
                                (_%g4083340915%_
                                 (foldr cons*
                                        '()
                                        (gx#syntax->list
                                         (foldr (lambda (_%g4091840921%_
                                                         _%g4091940924%_)
                                                  (cons _%g4091840921%_
                                                        _%g4091940924%_))
                                                '()
                                                _%L40784%_))
                                        (gx#syntax->list
                                         (foldr (lambda (_%g4092640929%_
                                                         _%g4092740932%_)
                                                  (cons _%g4092640929%_
                                                        _%g4092740932%_))
                                                '()
                                                _%L40783%_))))))
                            _%g4080840819%_))))
                   (_%g4080640935%_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (foldr (lambda (_%g4093840941%_
                                                 _%g4093940944%_)
                                          (cons _%g4093840941%_
                                                _%g4093940944%_))
                                        '()
                                        _%L40781%_)))
                     (gx#stx-source _%stx40608%_)))))))
          (let* ((_%__match4160341604%_
                  (lambda (_%e4063340677%_
                           _%hd4063440681%_
                           _%tl4063540684%_
                           _%e4063640687%_
                           _%hd4063740691%_
                           _%tl4063840694%_
                           _%__splice4155741558%_
                           _%target4063940697%_
                           _%tl4064140700%_)
                    (letrec ((_%loop4064240703%_
                              (lambda (_%hd4064040707%_
                                       _%expr4064640710%_
                                       _%param4064740712%_)
                                (if (gx#stx-pair? _%hd4064040707%_)
                                    (let ((_%e4064340715%_
                                           (gx#syntax-e _%hd4064040707%_)))
                                      (let ((_%lp-tl4064540722%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4064340715%_)))
                                            (_%lp-hd4064440719%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4064340715%_))))
                                        (if (gx#stx-pair? _%lp-hd4064440719%_)
                                            (let ((_%e4065940725%_
                                                   (gx#syntax-e
                                                    _%lp-hd4064440719%_)))
                                              (let ((_%tl4066140732%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4065940725%_)))
                                                    (_%hd4066040729%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4065940725%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4066140732%_)
                                                    (let ((_%e4066240735%_
                                                           (gx#syntax-e
                                                            _%tl4066140732%_)))
                                                      (let ((_%tl4066440742%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4066240735%_)))
                    (_%hd4066340739%_
                     (let () (declare (not safe)) (##car _%e4066240735%_))))
                (if (gx#stx-null? _%tl4066440742%_)
                    (_%loop4064240703%_
                     _%lp-tl4064540722%_
                     (cons _%hd4066340739%_ _%expr4064640710%_)
                     (cons _%hd4066040729%_ _%param4064740712%_))
                    (let () (declare (not safe)) (_%g4061240670%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4061240670%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4061240670%_)))))
                                    (let ((_%param4064940748%_
                                           (reverse _%param4064740712%_))
                                          (_%expr4064840745%_
                                           (reverse _%expr4064640710%_)))
                                      (if (gx#stx-pair/null? _%tl4063840694%_)
                                          (let ((_%__splice4155941560%_
                                                 (gx#syntax-split-splice
                                                  _%tl4063840694%_
                                                  '0)))
                                            (let ((_%tl4065240754%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4155941560%_
                                                      '1)))
                                                  (_%target4065040751%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4155941560%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4065240754%_)
                                                  (letrec ((_%loop4065340757%_
                                                            (lambda (_%hd4065140761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body4065740764%_)
                      (if (gx#stx-pair? _%hd4065140761%_)
                          (let ((_%e4065440767%_
                                 (gx#syntax-e _%hd4065140761%_)))
                            (let ((_%lp-tl4065640774%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4065440767%_)))
                                  (_%lp-hd4065540771%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4065440767%_))))
                              (_%loop4065340757%_
                               _%lp-tl4065640774%_
                               (cons _%lp-hd4065540771%_ _%body4065740764%_))))
                          (let ((_%body4065840777%_
                                 (reverse _%body4065740764%_)))
                            (_%__kont4155541556%_
                             _%body4065840777%_
                             _%expr4064840745%_
                             _%param4064940748%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4065340757%_
                                                     _%target4065040751%_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4061240670%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4061240670%_))))))))
                      (_%loop4064240703%_ _%target4063940697%_ '() '()))))
                 (_%__match4158341584%_
                  (lambda (_%e4061540954%_
                           _%hd4061640958%_
                           _%tl4061740961%_
                           _%e4061840964%_
                           _%hd4061940968%_
                           _%tl4062040971%_
                           _%__splice4155341554%_
                           _%target4062140974%_
                           _%tl4062340977%_)
                    (letrec ((_%loop4062440980%_
                              (lambda (_%hd4062240984%_ _%body4062840987%_)
                                (if (gx#stx-pair? _%hd4062240984%_)
                                    (let ((_%e4062540990%_
                                           (gx#syntax-e _%hd4062240984%_)))
                                      (let ((_%lp-tl4062740997%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4062540990%_)))
                                            (_%lp-hd4062640994%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4062540990%_))))
                                        (_%loop4062440980%_
                                         _%lp-tl4062740997%_
                                         (cons _%lp-hd4062640994%_
                                               _%body4062840987%_))))
                                    (let ((_%body4062941000%_
                                           (reverse _%body4062840987%_)))
                                      (_%__kont4155141552%_
                                       _%body4062941000%_))))))
                      (_%loop4062440980%_ _%target4062140974%_ '())))))
            (if (gx#stx-pair? _%__stx4154841549%_)
                (let ((_%e4061540954%_ (gx#syntax-e _%__stx4154841549%_)))
                  (let ((_%tl4061740961%_
                         (let () (declare (not safe)) (##cdr _%e4061540954%_)))
                        (_%hd4061640958%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4061540954%_))))
                    (if (gx#stx-pair? _%tl4061740961%_)
                        (let ((_%e4061840964%_ (gx#syntax-e _%tl4061740961%_)))
                          (let ((_%tl4062040971%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4061840964%_)))
                                (_%hd4061940968%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4061840964%_))))
                            (if (gx#stx-null? _%hd4061940968%_)
                                (if (gx#stx-pair/null? _%tl4062040971%_)
                                    (let ((_%__splice4155341554%_
                                           (gx#syntax-split-splice
                                            _%tl4062040971%_
                                            '0)))
                                      (let ((_%tl4062340977%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4155341554%_
                                                '1)))
                                            (_%target4062140974%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4155341554%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4062340977%_)
                                            (_%__match4158341584%_
                                             _%e4061540954%_
                                             _%hd4061640958%_
                                             _%tl4061740961%_
                                             _%e4061840964%_
                                             _%hd4061940968%_
                                             _%tl4062040971%_
                                             _%__splice4155341554%_
                                             _%target4062140974%_
                                             _%tl4062340977%_)
                                            (if (gx#stx-pair/null?
                                                 _%hd4061940968%_)
                                                (let ((_%__splice4155741558%_
                                                       (gx#syntax-split-splice
                                                        _%hd4061940968%_
                                                        '0)))
                                                  (let ((_%tl4064140700%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4155741558%_
                                                            '1)))
                                                        (_%target4063940697%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4155741558%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4064140700%_)
                                                        (_%__match4160341604%_
                                                         _%e4061540954%_
                                                         _%hd4061640958%_
                                                         _%tl4061740961%_
                                                         _%e4061840964%_
                                                         _%hd4061940968%_
                                                         _%tl4062040971%_
                                                         _%__splice4155741558%_
                                                         _%target4063940697%_
                                                         _%tl4064140700%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4061240670%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4061240670%_))))))
                                    (if (gx#stx-pair/null? _%hd4061940968%_)
                                        (let ((_%__splice4155741558%_
                                               (gx#syntax-split-splice
                                                _%hd4061940968%_
                                                '0)))
                                          (let ((_%tl4064140700%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4155741558%_
                                                    '1)))
                                                (_%target4063940697%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4155741558%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4064140700%_)
                                                (_%__match4160341604%_
                                                 _%e4061540954%_
                                                 _%hd4061640958%_
                                                 _%tl4061740961%_
                                                 _%e4061840964%_
                                                 _%hd4061940968%_
                                                 _%tl4062040971%_
                                                 _%__splice4155741558%_
                                                 _%target4063940697%_
                                                 _%tl4064140700%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4061240670%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4061240670%_))))
                                (if (gx#stx-pair/null? _%hd4061940968%_)
                                    (let ((_%__splice4155741558%_
                                           (gx#syntax-split-splice
                                            _%hd4061940968%_
                                            '0)))
                                      (let ((_%tl4064140700%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4155741558%_
                                                '1)))
                                            (_%target4063940697%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4155741558%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4064140700%_)
                                            (_%__match4160341604%_
                                             _%e4061540954%_
                                             _%hd4061640958%_
                                             _%tl4061740961%_
                                             _%e4061840964%_
                                             _%hd4061940968%_
                                             _%tl4062040971%_
                                             _%__splice4155741558%_
                                             _%target4063940697%_
                                             _%tl4064140700%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4061240670%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4061240670%_))))))
                        (let () (declare (not safe)) (_%g4061240670%_)))))
                (let () (declare (not safe)) (_%g4061240670%_))))))))
  (define |gerbil/core/more-sugar[:0:]#let/cc|
    (lambda (_%$stx41037%_)
      (let* ((_%g4104141065%_
              (lambda (_%g4104241061%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4104241061%_)))
             (_%g4104041150%_
              (lambda (_%g4104241069%_)
                (if (gx#stx-pair? _%g4104241069%_)
                    (let ((_%e4104541072%_ (gx#syntax-e _%g4104241069%_)))
                      (let ((_%hd4104641076%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4104541072%_)))
                            (_%tl4104741079%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4104541072%_))))
                        (if (gx#stx-pair? _%tl4104741079%_)
                            (let ((_%e4104841082%_
                                   (gx#syntax-e _%tl4104741079%_)))
                              (let ((_%hd4104941086%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4104841082%_)))
                                    (_%tl4105041089%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4104841082%_))))
                                (if (gx#stx-pair/null? _%tl4105041089%_)
                                    (let ((_g41616_
                                           (gx#syntax-split-splice
                                            _%tl4105041089%_
                                            '0)))
                                      (begin
                                        (let ((_g41617_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g41616_)
                                                     (##values-length _g41616_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g41617_ 2)))
                                              (error "Context expects 2 values"
                                                     _g41617_)))
                                        (let ((_%target4105141092%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g41616_ 0)))
                                              (_%tl4105341095%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g41616_ 1))))
                                          (if (gx#stx-null? _%tl4105341095%_)
                                              (letrec ((_%loop4105441098%_
                                                        (lambda (_%hd4105241102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body4105841105%_)
                  (if (gx#stx-pair? _%hd4105241102%_)
                      (let ((_%e4105541108%_ (gx#syntax-e _%hd4105241102%_)))
                        (let ((_%lp-hd4105641112%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4105541108%_)))
                              (_%lp-tl4105741115%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4105541108%_))))
                          (_%loop4105441098%_
                           _%lp-tl4105741115%_
                           (cons _%lp-hd4105641112%_ _%body4105841105%_))))
                      (let ((_%body4105941118%_ (reverse _%body4105841105%_)))
                        ((lambda (_%L41122%_ _%L41124%_)
                           (if (gx#identifier? _%L41124%_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _%L41124%_ '())
                                                       (foldr (lambda (_%g4114141144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4114241147%_)
                        (cons _%g4114141144%_ _%g4114241147%_))
                      '()
                      _%L41122%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_%g4104141065%_ _%g4104241069%_)))
                         _%body4105941118%_
                         _%hd4104941086%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop4105441098%_
                                                 _%target4105141092%_
                                                 '()))
                                              (_%g4104141065%_
                                               _%g4104241069%_)))))
                                    (_%g4104141065%_ _%g4104241069%_))))
                            (_%g4104141065%_ _%g4104241069%_))))
                    (_%g4104141065%_ _%g4104241069%_)))))
        (_%g4104041150%_ _%$stx41037%_))))
  (define |gerbil/core/more-sugar[:0:]#unwind-protect|
    (lambda (_%$stx41155%_)
      (let* ((_%g4115941187%_
              (lambda (_%g4116041183%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4116041183%_)))
             (_%g4115841286%_
              (lambda (_%g4116041191%_)
                (if (gx#stx-pair? _%g4116041191%_)
                    (let ((_%e4116441194%_ (gx#syntax-e _%g4116041191%_)))
                      (let ((_%hd4116541198%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4116441194%_)))
                            (_%tl4116641201%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4116441194%_))))
                        (if (gx#stx-pair? _%tl4116641201%_)
                            (let ((_%e4116741204%_
                                   (gx#syntax-e _%tl4116641201%_)))
                              (let ((_%hd4116841208%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4116741204%_)))
                                    (_%tl4116941211%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4116741204%_))))
                                (if (gx#stx-pair? _%tl4116941211%_)
                                    (let ((_%e4117041214%_
                                           (gx#syntax-e _%tl4116941211%_)))
                                      (let ((_%hd4117141218%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4117041214%_)))
                                            (_%tl4117241221%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4117041214%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4117241221%_)
                                            (let ((_g41618_
                                                   (gx#syntax-split-splice
                                                    _%tl4117241221%_
                                                    '0)))
                                              (begin
                                                (let ((_g41619_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g41618_)
                                                             (##values-length
                                                              _g41618_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g41619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g41619_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target4117341224%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g41618_
                                                          0)))
                                                      (_%tl4117541227%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g41618_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl4117541227%_)
                                                      (letrec ((_%loop4117641230%_
                                                                (lambda (_%hd4117441234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%rest4118041237%_)
                          (if (gx#stx-pair? _%hd4117441234%_)
                              (let ((_%e4117741240%_
                                     (gx#syntax-e _%hd4117441234%_)))
                                (let ((_%lp-hd4117841244%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4117741240%_)))
                                      (_%lp-tl4117941247%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4117741240%_))))
                                  (_%loop4117641230%_
                                   _%lp-tl4117941247%_
                                   (cons _%lp-hd4117841244%_
                                         _%rest4118041237%_))))
                              (let ((_%rest4118141250%_
                                     (reverse _%rest4118041237%_)))
                                ((lambda (_%L41254%_ _%L41256%_ _%L41257%_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _%L41257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L41256%_
                               (foldr (lambda (_%g4127741280%_ _%g4127841283%_)
                                        (cons _%g4127741280%_ _%g4127841283%_))
                                      '()
                                      _%L41254%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _%rest4118141250%_
                                 _%hd4117141218%_
                                 _%hd4116841208%_))))))
                (_%loop4117641230%_ _%target4117341224%_ '()))
              (_%g4115941187%_ _%g4116041191%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4115941187%_
                                             _%g4116041191%_))))
                                    (_%g4115941187%_ _%g4116041191%_))))
                            (_%g4115941187%_ _%g4116041191%_))))
                    (_%g4115941187%_ _%g4116041191%_)))))
        (_%g4115841286%_ _%$stx41155%_))))
  (define |gerbil/core/more-sugar[:0:]#@bytes|
    (lambda (_%stx41291%_)
      (let* ((_%g4129441308%_
              (lambda (_%g4129541304%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4129541304%_)))
             (_%g4129341380%_
              (lambda (_%g4129541312%_)
                (if (gx#stx-pair? _%g4129541312%_)
                    (let ((_%e4129741315%_ (gx#syntax-e _%g4129541312%_)))
                      (let ((_%hd4129841319%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4129741315%_)))
                            (_%tl4129941322%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4129741315%_))))
                        (if (gx#stx-pair? _%tl4129941322%_)
                            (let ((_%e4130041325%_
                                   (gx#syntax-e _%tl4129941322%_)))
                              (let ((_%hd4130141329%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4130041325%_)))
                                    (_%tl4130241332%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4130041325%_))))
                                (if (gx#stx-null? _%tl4130241332%_)
                                    ((lambda (_%L41335%_)
                                       (if (gx#stx-string? _%L41335%_)
                                           (let* ((_%g4134941357%_
                                                   (lambda (_%g4135041353%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4135041353%_)))
                                                  (_%g4134841376%_
                                                   (lambda (_%g4135041361%_)
                                                     ((lambda (_%L41364%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _%L41364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
              _%g4135041361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4134841376%_
                                              (string->bytes
                                               (gx#stx-e _%L41335%_))))
                                           (_%g4129441308%_ _%g4129541312%_)))
                                     _%hd4130141329%_)
                                    (_%g4129441308%_ _%g4129541312%_))))
                            (_%g4129441308%_ _%g4129541312%_))))
                    (_%g4129441308%_ _%g4129541312%_)))))
        (_%g4129341380%_ _%stx41291%_))))
  (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
    (lambda (_%stx41384%_)
      (let* ((_%g4138741401%_
              (lambda (_%g4138841397%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4138841397%_)))
             (_%g4138641442%_
              (lambda (_%g4138841405%_)
                (if (gx#stx-pair? _%g4138841405%_)
                    (let ((_%e4139041408%_ (gx#syntax-e _%g4138841405%_)))
                      (let ((_%hd4139141412%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4139041408%_)))
                            (_%tl4139241415%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4139041408%_))))
                        (if (gx#stx-pair? _%tl4139241415%_)
                            (let ((_%e4139341418%_
                                   (gx#syntax-e _%tl4139241415%_)))
                              (let ((_%hd4139441422%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4139341418%_)))
                                    (_%tl4139541425%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4139341418%_))))
                                (if (gx#stx-null? _%tl4139541425%_)
                                    ((lambda (_%L41428%_)
                                       (if (gx#current-expander-compiling?)
                                           (gx#eval-syntax _%L41428%_)
                                           '#!void)
                                       (cons (gx#datum->syntax '#f 'void) '()))
                                     _%hd4139441422%_)
                                    (_%g4138741401%_ _%g4138841405%_))))
                            (_%g4138741401%_ _%g4138841405%_))))
                    (_%g4138741401%_ _%g4138841405%_)))))
        (_%g4138641442%_ _%stx41384%_)))))
