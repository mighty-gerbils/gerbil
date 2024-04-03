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
    (lambda _%$args40581%_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setq-macro::t|
             _%$args40581%_)))
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
    (lambda _%$args40577%_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setf-macro::t|
             _%$args40577%_)))
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
    (lambda (_%stx40574%_)
      (if (gx#identifier? _%stx40574%_)
          (let ((__tmp41799 (gx#syntax-local-value _%stx40574%_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setf-macro::t|
             __tmp41799))
          '#f)))
  (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
    (lambda (_%stx40571%_)
      (if (gx#identifier? _%stx40571%_)
          (let ((__tmp41800 (gx#syntax-local-value _%stx40571%_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setq-macro::t|
             __tmp41800))
          '#f)))
  (define |gerbil/core/more-sugar[1]#expand-set!|
    (lambda (_%stx40196%_)
      (let* ((_%__stx4163841639%_ _%stx40196%_)
             (_%g4020240265%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4163841639%_))))
        (let ((_%__kont4164141642%_
               (lambda (_%L40548%_ _%L40550%_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _%L40550%_)
                  _%stx40196%_)))
              (_%__kont4164341644%_
               (lambda (_%L40437%_ _%L40439%_ _%L40440%_)
                 (let* ((_%g4046240470%_
                         (lambda (_%g4046340466%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4046340466%_)))
                        (_%g4046140497%_
                         (lambda (_%g4046340474%_)
                           ((lambda (_%L40477%_)
                              (let ()
                                (cons _%L40477%_
                                      (foldr (lambda (_%g4048840491%_
                                                      _%g4048940494%_)
                                               (cons _%g4048840491%_
                                                     _%g4048940494%_))
                                             (cons _%L40437%_ '())
                                             _%L40439%_))))
                            _%g4046340474%_)))
                        (__tmp41801
                         (gx#stx-identifier _%L40440%_ _%L40440%_ '"-set!")))
                   (declare (not safe))
                   (_%g4046140497%_ __tmp41801))))
              (_%__kont4164741648%_
               (lambda (_%L40347%_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _%L40347%_)
                  _%stx40196%_)))
              (_%__kont4164941650%_
               (lambda (_%L40302%_ _%L40304%_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _%L40304%_ (cons _%L40302%_ '()))))))
          (let* ((_%__match4173741738%_
                  (lambda (_%e4025340272%_
                           _%hd4025240276%_
                           _%tl4025140279%_
                           _%e4025640282%_
                           _%hd4025540286%_
                           _%tl4025440289%_
                           _%e4025940292%_
                           _%hd4025840296%_
                           _%tl4025740299%_)
                    (let ((_%L40302%_ _%hd4025840296%_)
                          (_%L40304%_ _%hd4025540286%_))
                      (if (gx#identifier? _%L40304%_)
                          (_%__kont4164941650%_ _%L40302%_ _%L40304%_)
                          (let () (declare (not safe)) (_%g4020240265%_))))))
                 (_%__match4171741718%_
                  (lambda (_%e4024540327%_
                           _%hd4024440331%_
                           _%tl4024340334%_
                           _%e4024840337%_
                           _%hd4024740341%_
                           _%tl4024640344%_)
                    (let ((_%L40347%_ _%hd4024740341%_))
                      (if (let ()
                            (declare (not safe))
                            (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%L40347%_))
                          (_%__kont4164741648%_ _%L40347%_)
                          (if (gx#stx-pair? _%tl4024640344%_)
                              (let ((_%e4025940292%_
                                     (gx#syntax-e _%tl4024640344%_)))
                                (let ((_%tl4025740299%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4025940292%_)))
                                      (_%hd4025840296%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4025940292%_))))
                                  (if (gx#stx-null? _%tl4025740299%_)
                                      (_%__match4173741738%_
                                       _%e4024540327%_
                                       _%hd4024440331%_
                                       _%tl4024340334%_
                                       _%e4024840337%_
                                       _%hd4024740341%_
                                       _%tl4024640344%_
                                       _%e4025940292%_
                                       _%hd4025840296%_
                                       _%tl4025740299%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4020240265%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4020240265%_)))))))
                 (_%__match4170541706%_
                  (lambda (_%e4022340367%_
                           _%hd4022240371%_
                           _%tl4022140374%_
                           _%e4022640377%_
                           _%hd4022540381%_
                           _%tl4022440384%_
                           _%e4022940387%_
                           _%hd4022840391%_
                           _%tl4022740394%_
                           _%__splice4164541646%_
                           _%target4023040397%_
                           _%tl4023240400%_)
                    (letrec ((_%loop4023340403%_
                              (lambda (_%hd4023140407%_ _%arg4023740410%_)
                                (if (gx#stx-pair? _%hd4023140407%_)
                                    (let ((_%e4023440413%_
                                           (gx#syntax-e _%hd4023140407%_)))
                                      (let ((_%lp-tl4023640420%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4023440413%_)))
                                            (_%lp-hd4023540417%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4023440413%_))))
                                        (let ((__tmp41802
                                               (cons _%lp-hd4023540417%_
                                                     _%arg4023740410%_)))
                                          (declare (not safe))
                                          (_%loop4023340403%_
                                           _%lp-tl4023640420%_
                                           __tmp41802))))
                                    (let ((_%arg4023840423%_
                                           (reverse _%arg4023740410%_)))
                                      (if (gx#stx-pair? _%tl4022440384%_)
                                          (let ((_%e4024140427%_
                                                 (gx#syntax-e
                                                  _%tl4022440384%_)))
                                            (let ((_%tl4023940434%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4024140427%_)))
                                                  (_%hd4024040431%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4024140427%_))))
                                              (if (gx#stx-null?
                                                   _%tl4023940434%_)
                                                  (let ((_%L40437%_
                                                         _%hd4024040431%_)
                                                        (_%L40439%_
                                                         _%arg4023840423%_)
                                                        (_%L40440%_
                                                         _%hd4022840391%_))
                                                    (if (gx#identifier?
                                                         _%L40440%_)
                                                        (_%__kont4164341644%_
                                                         _%L40437%_
                                                         _%L40439%_
                                                         _%L40440%_)
                                                        (_%__match4171741718%_
                                                         _%e4022340367%_
                                                         _%hd4022240371%_
                                                         _%tl4022140374%_
                                                         _%e4022640377%_
                                                         _%hd4022540381%_
                                                         _%tl4022440384%_)))
                                                  (_%__match4171741718%_
                                                   _%e4022340367%_
                                                   _%hd4022240371%_
                                                   _%tl4022140374%_
                                                   _%e4022640377%_
                                                   _%hd4022540381%_
                                                   _%tl4022440384%_))))
                                          (_%__match4171741718%_
                                           _%e4022340367%_
                                           _%hd4022240371%_
                                           _%tl4022140374%_
                                           _%e4022640377%_
                                           _%hd4022540381%_
                                           _%tl4022440384%_)))))))
                      (let ()
                        (declare (not safe))
                        (_%loop4023340403%_ _%target4023040397%_ '()))))))
            (if (gx#stx-pair? _%__stx4163841639%_)
                (let ((_%e4020840508%_ (gx#syntax-e _%__stx4163841639%_)))
                  (let ((_%tl4020640515%_
                         (let () (declare (not safe)) (##cdr _%e4020840508%_)))
                        (_%hd4020740512%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4020840508%_))))
                    (if (gx#stx-pair? _%tl4020640515%_)
                        (let ((_%e4021140518%_ (gx#syntax-e _%tl4020640515%_)))
                          (let ((_%tl4020940525%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4021140518%_)))
                                (_%hd4021040522%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4021140518%_))))
                            (if (gx#stx-pair? _%hd4021040522%_)
                                (let ((_%e4021440528%_
                                       (gx#syntax-e _%hd4021040522%_)))
                                  (let ((_%tl4021240535%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4021440528%_)))
                                        (_%hd4021340532%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4021440528%_))))
                                    (if (gx#stx-pair? _%tl4020940525%_)
                                        (let ((_%e4021740538%_
                                               (gx#syntax-e _%tl4020940525%_)))
                                          (let ((_%tl4021540545%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4021740538%_)))
                                                (_%hd4021640542%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4021740538%_))))
                                            (if (gx#stx-null? _%tl4021540545%_)
                                                (if (let ((__tmp41803
                                                           (gx#datum->syntax
                                                            '#f
                                                            'setfid)))
                                                      (declare (not safe))
                                                      (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       __tmp41803))
                                                    (let ((_%L40548%_
                                                           _%hd4021640542%_)
                                                          (_%L40550%_
                                                           _%hd4021340532%_))
                                                      (_%__kont4164141642%_
                                                       _%L40548%_
                                                       _%L40550%_))
                                                    (if (gx#stx-pair/null?
                                                         _%tl4021240535%_)
                                                        (let ((_%__splice4164541646%_
                                                               (gx#syntax-split-splice
                                                                _%tl4021240535%_
                                                                '0)))
                                                          (let ((_%tl4023240400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4164541646%_ '1)))
                        (_%target4023040397%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4164541646%_ '0))))
                    (if (gx#stx-null? _%tl4023240400%_)
                        (_%__match4170541706%_
                         _%e4020840508%_
                         _%hd4020740512%_
                         _%tl4020640515%_
                         _%e4021140518%_
                         _%hd4021040522%_
                         _%tl4020940525%_
                         _%e4021440528%_
                         _%hd4021340532%_
                         _%tl4021240535%_
                         _%__splice4164541646%_
                         _%target4023040397%_
                         _%tl4023240400%_)
                        (_%__match4171741718%_
                         _%e4020840508%_
                         _%hd4020740512%_
                         _%tl4020640515%_
                         _%e4021140518%_
                         _%hd4021040522%_
                         _%tl4020940525%_))))
                (_%__match4171741718%_
                 _%e4020840508%_
                 _%hd4020740512%_
                 _%tl4020640515%_
                 _%e4021140518%_
                 _%hd4021040522%_
                 _%tl4020940525%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%tl4021240535%_)
                                                    (let ((_%__splice4164541646%_
                                                           (gx#syntax-split-splice
                                                            _%tl4021240535%_
                                                            '0)))
                                                      (let ((_%tl4023240400%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4164541646%_ '1)))
                    (_%target4023040397%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4164541646%_ '0))))
                (if (gx#stx-null? _%tl4023240400%_)
                    (_%__match4170541706%_
                     _%e4020840508%_
                     _%hd4020740512%_
                     _%tl4020640515%_
                     _%e4021140518%_
                     _%hd4021040522%_
                     _%tl4020940525%_
                     _%e4021440528%_
                     _%hd4021340532%_
                     _%tl4021240535%_
                     _%__splice4164541646%_
                     _%target4023040397%_
                     _%tl4023240400%_)
                    (_%__match4171741718%_
                     _%e4020840508%_
                     _%hd4020740512%_
                     _%tl4020640515%_
                     _%e4021140518%_
                     _%hd4021040522%_
                     _%tl4020940525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match4171741718%_
                                                     _%e4020840508%_
                                                     _%hd4020740512%_
                                                     _%tl4020640515%_
                                                     _%e4021140518%_
                                                     _%hd4021040522%_
                                                     _%tl4020940525%_)))))
                                        (if (gx#stx-pair/null?
                                             _%tl4021240535%_)
                                            (let ((_%__splice4164541646%_
                                                   (gx#syntax-split-splice
                                                    _%tl4021240535%_
                                                    '0)))
                                              (let ((_%tl4023240400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4164541646%_
                                                        '1)))
                                                    (_%target4023040397%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4164541646%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4023240400%_)
                                                    (_%__match4170541706%_
                                                     _%e4020840508%_
                                                     _%hd4020740512%_
                                                     _%tl4020640515%_
                                                     _%e4021140518%_
                                                     _%hd4021040522%_
                                                     _%tl4020940525%_
                                                     _%e4021440528%_
                                                     _%hd4021340532%_
                                                     _%tl4021240535%_
                                                     _%__splice4164541646%_
                                                     _%target4023040397%_
                                                     _%tl4023240400%_)
                                                    (_%__match4171741718%_
                                                     _%e4020840508%_
                                                     _%hd4020740512%_
                                                     _%tl4020640515%_
                                                     _%e4021140518%_
                                                     _%hd4021040522%_
                                                     _%tl4020940525%_))))
                                            (_%__match4171741718%_
                                             _%e4020840508%_
                                             _%hd4020740512%_
                                             _%tl4020640515%_
                                             _%e4021140518%_
                                             _%hd4021040522%_
                                             _%tl4020940525%_)))))
                                (_%__match4171741718%_
                                 _%e4020840508%_
                                 _%hd4020740512%_
                                 _%tl4020640515%_
                                 _%e4021140518%_
                                 _%hd4021040522%_
                                 _%tl4020940525%_))))
                        (let () (declare (not safe)) (_%g4020240265%_)))))
                (let () (declare (not safe)) (_%g4020240265%_))))))))
  (define |gerbil/core/more-sugar[:0:]#set!|
    (lambda (_%stx40586%_)
      (let ()
        (declare (not safe))
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx40586%_))))
  (define |gerbil/core/more-sugar[:0:]#values-set!|
    (lambda (_%stx40589%_)
      (let* ((_%g4059240616%_
              (lambda (_%g4059340612%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4059340612%_)))
             (_%g4059140794%_
              (lambda (_%g4059340620%_)
                (if (gx#stx-pair? _%g4059340620%_)
                    (let ((_%e4059840623%_ (gx#syntax-e _%g4059340620%_)))
                      (let ((_%hd4059740627%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4059840623%_)))
                            (_%tl4059640630%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4059840623%_))))
                        (if (gx#stx-pair/null? _%tl4059640630%_)
                            (if (let ((__tmp41804
                                       (gx#stx-length _%tl4059640630%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp41804 '1))
                                (let ((_g41805_
                                       (gx#syntax-split-splice
                                        _%tl4059640630%_
                                        '1)))
                                  (begin
                                    (let ((_g41806_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g41805_)
                                                 (##vector-length _g41805_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g41806_ 2)))
                                          (error "Context expects 2 values"
                                                 _g41806_)))
                                    (let ((_%target4059940633%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g41805_ 0)))
                                          (_%tl4060140636%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g41805_ 1))))
                                      (if (gx#stx-pair? _%tl4060140636%_)
                                          (let ((_%e4061040639%_
                                                 (gx#syntax-e
                                                  _%tl4060140636%_)))
                                            (let ((_%hd4060940643%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4061040639%_)))
                                                  (_%tl4060840646%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4061040639%_))))
                                              (if (gx#stx-null?
                                                   _%tl4060840646%_)
                                                  (letrec ((_%loop4060240649%_
                                                            (lambda (_%hd4060040653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%tgt4060640656%_)
                      (if (gx#stx-pair? _%hd4060040653%_)
                          (let ((_%e4060340659%_
                                 (gx#syntax-e _%hd4060040653%_)))
                            (let ((_%lp-hd4060440663%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4060340659%_)))
                                  (_%lp-tl4060540666%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4060340659%_))))
                              (_%loop4060240649%_
                               _%lp-tl4060540666%_
                               (cons _%lp-hd4060440663%_ _%tgt4060640656%_))))
                          (let ((_%tgt4060740669%_
                                 (reverse _%tgt4060640656%_)))
                            ((lambda (_%L40673%_ _%L40675%_)
                               (let* ((_%g4069340710%_
                                       (lambda (_%g4069440706%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g4069440706%_)))
                                      (_%g4069240782%_
                                       (lambda (_%g4069440714%_)
                                         (if (gx#stx-pair/null?
                                              _%g4069440714%_)
                                             (let ((_g41807_
                                                    (gx#syntax-split-splice
                                                     _%g4069440714%_
                                                     '0)))
                                               (begin
                                                 (let ((_g41808_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g41807_)
                                                              (##vector-length
                                                               _g41807_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g41808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g41808_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target4069640717%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g41807_
                                                           0)))
                                                       (_%tl4069840720%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g41807_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl4069840720%_)
                                                       (letrec ((_%loop4069940723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd4069740727%_ _%$e4070340730%_)
                           (if (gx#stx-pair? _%hd4069740727%_)
                               (let ((_%e4070040733%_
                                      (gx#syntax-e _%hd4069740727%_)))
                                 (let ((_%lp-hd4070140737%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4070040733%_)))
                                       (_%lp-tl4070240740%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4070040733%_))))
                                   (_%loop4069940723%_
                                    _%lp-tl4070240740%_
                                    (cons _%lp-hd4070140737%_
                                          _%$e4070340730%_))))
                               (let ((_%$e4070440743%_
                                      (reverse _%$e4070340730%_)))
                                 ((lambda (_%L40747%_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_%g4076540768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g4076640771%_)
                               (cons _%g4076540768%_ _%g4076640771%_))
                             '()
                             _%L40747%_)
                      (cons _%L40673%_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%L40747%_
                                                     _%L40675%_)
                                                    (foldr (lambda (_%g4076240774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4076340777%_
                            _%g4076440779%_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _%g4076340777%_
                                       (cons _%g4076240774%_ '())))
                           _%g4076440779%_))
                   '()
                   _%L40747%_
                   _%L40675%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%$e4070440743%_))))))
                 (_%loop4069940723%_ _%target4069640717%_ '()))
               (_%g4069340710%_ _%g4069440714%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4069340710%_
                                              _%g4069440714%_)))))
                                 (_%g4069240782%_
                                  (gx#gentemps
                                   (foldr (lambda (_%g4078540788%_
                                                   _%g4078640791%_)
                                            (cons _%g4078540788%_
                                                  _%g4078640791%_))
                                          '()
                                          _%L40675%_)))))
                             _%hd4060940643%_
                             _%tgt4060740669%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4060240649%_
                                                     _%target4059940633%_
                                                     '()))
                                                  (_%g4059240616%_
                                                   _%g4059340620%_))))
                                          (_%g4059240616%_ _%g4059340620%_)))))
                                (_%g4059240616%_ _%g4059340620%_))
                            (_%g4059240616%_ _%g4059340620%_))))
                    (_%g4059240616%_ _%g4059340620%_)))))
        (_%g4059140794%_ _%stx40589%_))))
  (define |gerbil/core/more-sugar[:0:]#parameterize|
    (lambda (_%stx40800%_)
      (let* ((_%__stx4174041741%_ _%stx40800%_)
             (_%g4080440862%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4174041741%_))))
        (let ((_%__kont4174341744%_
               (lambda (_%L41196%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (foldr (lambda (_%g4121241215%_ _%g4121341218%_)
                                      (cons _%g4121241215%_ _%g4121341218%_))
                                    '()
                                    _%L41196%_)))))
              (_%__kont4174741748%_
               (lambda (_%L40973%_ _%L40975%_ _%L40976%_)
                 (let* ((_%g4099941007%_
                         (lambda (_%g4100041003%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4100041003%_)))
                        (_%g4099841127%_
                         (lambda (_%g4100041011%_)
                           ((lambda (_%L41014%_)
                              (let ()
                                (let* ((_%g4102641043%_
                                        (lambda (_%g4102741039%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g4102741039%_)))
                                       (_%g4102541107%_
                                        (lambda (_%g4102741047%_)
                                          (if (gx#stx-pair/null?
                                               _%g4102741047%_)
                                              (let ((_g41809_
                                                     (gx#syntax-split-splice
                                                      _%g4102741047%_
                                                      '0)))
                                                (begin
                                                  (let ((_g41810_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g41809_)
                                                               (##vector-length
                                                                _g41809_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g41810_ 2)))
                (error "Context expects 2 values" _g41810_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4102941050%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g41809_
                                                            0)))
                                                        (_%tl4103141053%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g41809_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4103141053%_)
                                                        (letrec ((_%loop4103241056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4103041060%_ _%arg4103641063%_)
                            (if (gx#stx-pair? _%hd4103041060%_)
                                (let ((_%e4103341066%_
                                       (gx#syntax-e _%hd4103041060%_)))
                                  (let ((_%lp-hd4103441070%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4103341066%_)))
                                        (_%lp-tl4103541073%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4103341066%_))))
                                    (_%loop4103241056%_
                                     _%lp-tl4103541073%_
                                     (cons _%lp-hd4103441070%_
                                           _%arg4103641063%_))))
                                (let ((_%arg4103741076%_
                                       (reverse _%arg4103641063%_)))
                                  ((lambda (_%L41080%_)
                                     (let ()
                                       (cons (gx#datum->syntax
                                              '#f
                                              'call-with-parameters)
                                             (cons _%L41014%_
                                                   (foldr (lambda (_%g4109841101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4109941104%_)
                    (cons _%g4109841101%_ _%g4109941104%_))
                  '()
                  _%L41080%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%arg4103741076%_))))))
                  (_%loop4103241056%_ _%target4102941050%_ '()))
                (_%g4102641043%_ _%g4102741047%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4102641043%_
                                               _%g4102741047%_)))))
                                  (_%g4102541107%_
                                   (foldr cons*
                                          '()
                                          (gx#syntax->list
                                           (foldr (lambda (_%g4111041113%_
                                                           _%g4111141116%_)
                                                    (cons _%g4111041113%_
                                                          _%g4111141116%_))
                                                  '()
                                                  _%L40976%_))
                                          (gx#syntax->list
                                           (foldr (lambda (_%g4111841121%_
                                                           _%g4111941124%_)
                                                    (cons _%g4111841121%_
                                                          _%g4111941124%_))
                                                  '()
                                                  _%L40975%_)))))))
                            _%g4100041011%_))))
                   (_%g4099841127%_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (foldr (lambda (_%g4113041133%_
                                                 _%g4113141136%_)
                                          (cons _%g4113041133%_
                                                _%g4113141136%_))
                                        '()
                                        _%L40973%_)))
                     (gx#stx-source _%stx40800%_)))))))
          (let* ((_%__match4179541796%_
                  (lambda (_%e4082740869%_
                           _%hd4082640873%_
                           _%tl4082540876%_
                           _%e4083040879%_
                           _%hd4082940883%_
                           _%tl4082840886%_
                           _%__splice4174941750%_
                           _%target4083140889%_
                           _%tl4083340892%_)
                    (letrec ((_%loop4083440895%_
                              (lambda (_%hd4083240899%_
                                       _%expr4083840902%_
                                       _%param4083940904%_)
                                (if (gx#stx-pair? _%hd4083240899%_)
                                    (let ((_%e4083540907%_
                                           (gx#syntax-e _%hd4083240899%_)))
                                      (let ((_%lp-tl4083740914%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4083540907%_)))
                                            (_%lp-hd4083640911%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4083540907%_))))
                                        (if (gx#stx-pair? _%lp-hd4083640911%_)
                                            (let ((_%e4084440917%_
                                                   (gx#syntax-e
                                                    _%lp-hd4083640911%_)))
                                              (let ((_%tl4084240924%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4084440917%_)))
                                                    (_%hd4084340921%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4084440917%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4084240924%_)
                                                    (let ((_%e4084740927%_
                                                           (gx#syntax-e
                                                            _%tl4084240924%_)))
                                                      (let ((_%tl4084540934%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4084740927%_)))
                    (_%hd4084640931%_
                     (let () (declare (not safe)) (##car _%e4084740927%_))))
                (if (gx#stx-null? _%tl4084540934%_)
                    (_%loop4083440895%_
                     _%lp-tl4083740914%_
                     (cons _%hd4084640931%_ _%expr4083840902%_)
                     (cons _%hd4084340921%_ _%param4083940904%_))
                    (let () (declare (not safe)) (_%g4080440862%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4080440862%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4080440862%_)))))
                                    (let ((_%param4084140940%_
                                           (reverse _%param4083940904%_))
                                          (_%expr4084040937%_
                                           (reverse _%expr4083840902%_)))
                                      (if (gx#stx-pair/null? _%tl4082840886%_)
                                          (let ((_%__splice4175141752%_
                                                 (gx#syntax-split-splice
                                                  _%tl4082840886%_
                                                  '0)))
                                            (let ((_%tl4085040946%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4175141752%_
                                                      '1)))
                                                  (_%target4084840943%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4175141752%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4085040946%_)
                                                  (letrec ((_%loop4085140949%_
                                                            (lambda (_%hd4084940953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body4085540956%_)
                      (if (gx#stx-pair? _%hd4084940953%_)
                          (let ((_%e4085240959%_
                                 (gx#syntax-e _%hd4084940953%_)))
                            (let ((_%lp-tl4085440966%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4085240959%_)))
                                  (_%lp-hd4085340963%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4085240959%_))))
                              (_%loop4085140949%_
                               _%lp-tl4085440966%_
                               (cons _%lp-hd4085340963%_ _%body4085540956%_))))
                          (let ((_%body4085640969%_
                                 (reverse _%body4085540956%_)))
                            (_%__kont4174741748%_
                             _%body4085640969%_
                             _%expr4084040937%_
                             _%param4084140940%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4085140949%_
                                                     _%target4084840943%_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4080440862%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4080440862%_))))))))
                      (_%loop4083440895%_ _%target4083140889%_ '() '()))))
                 (_%__match4177541776%_
                  (lambda (_%e4080941146%_
                           _%hd4080841150%_
                           _%tl4080741153%_
                           _%e4081241156%_
                           _%hd4081141160%_
                           _%tl4081041163%_
                           _%__splice4174541746%_
                           _%target4081341166%_
                           _%tl4081541169%_)
                    (letrec ((_%loop4081641172%_
                              (lambda (_%hd4081441176%_ _%body4082041179%_)
                                (if (gx#stx-pair? _%hd4081441176%_)
                                    (let ((_%e4081741182%_
                                           (gx#syntax-e _%hd4081441176%_)))
                                      (let ((_%lp-tl4081941189%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4081741182%_)))
                                            (_%lp-hd4081841186%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4081741182%_))))
                                        (_%loop4081641172%_
                                         _%lp-tl4081941189%_
                                         (cons _%lp-hd4081841186%_
                                               _%body4082041179%_))))
                                    (let ((_%body4082141192%_
                                           (reverse _%body4082041179%_)))
                                      (_%__kont4174341744%_
                                       _%body4082141192%_))))))
                      (_%loop4081641172%_ _%target4081341166%_ '())))))
            (if (gx#stx-pair? _%__stx4174041741%_)
                (let ((_%e4080941146%_ (gx#syntax-e _%__stx4174041741%_)))
                  (let ((_%tl4080741153%_
                         (let () (declare (not safe)) (##cdr _%e4080941146%_)))
                        (_%hd4080841150%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4080941146%_))))
                    (if (gx#stx-pair? _%tl4080741153%_)
                        (let ((_%e4081241156%_ (gx#syntax-e _%tl4080741153%_)))
                          (let ((_%tl4081041163%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4081241156%_)))
                                (_%hd4081141160%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4081241156%_))))
                            (if (gx#stx-null? _%hd4081141160%_)
                                (if (gx#stx-pair/null? _%tl4081041163%_)
                                    (let ((_%__splice4174541746%_
                                           (gx#syntax-split-splice
                                            _%tl4081041163%_
                                            '0)))
                                      (let ((_%tl4081541169%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4174541746%_
                                                '1)))
                                            (_%target4081341166%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4174541746%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4081541169%_)
                                            (_%__match4177541776%_
                                             _%e4080941146%_
                                             _%hd4080841150%_
                                             _%tl4080741153%_
                                             _%e4081241156%_
                                             _%hd4081141160%_
                                             _%tl4081041163%_
                                             _%__splice4174541746%_
                                             _%target4081341166%_
                                             _%tl4081541169%_)
                                            (if (gx#stx-pair/null?
                                                 _%hd4081141160%_)
                                                (let ((_%__splice4174941750%_
                                                       (gx#syntax-split-splice
                                                        _%hd4081141160%_
                                                        '0)))
                                                  (let ((_%tl4083340892%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4174941750%_
                                                            '1)))
                                                        (_%target4083140889%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4174941750%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4083340892%_)
                                                        (_%__match4179541796%_
                                                         _%e4080941146%_
                                                         _%hd4080841150%_
                                                         _%tl4080741153%_
                                                         _%e4081241156%_
                                                         _%hd4081141160%_
                                                         _%tl4081041163%_
                                                         _%__splice4174941750%_
                                                         _%target4083140889%_
                                                         _%tl4083340892%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4080440862%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4080440862%_))))))
                                    (if (gx#stx-pair/null? _%hd4081141160%_)
                                        (let ((_%__splice4174941750%_
                                               (gx#syntax-split-splice
                                                _%hd4081141160%_
                                                '0)))
                                          (let ((_%tl4083340892%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4174941750%_
                                                    '1)))
                                                (_%target4083140889%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4174941750%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4083340892%_)
                                                (_%__match4179541796%_
                                                 _%e4080941146%_
                                                 _%hd4080841150%_
                                                 _%tl4080741153%_
                                                 _%e4081241156%_
                                                 _%hd4081141160%_
                                                 _%tl4081041163%_
                                                 _%__splice4174941750%_
                                                 _%target4083140889%_
                                                 _%tl4083340892%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4080440862%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4080440862%_))))
                                (if (gx#stx-pair/null? _%hd4081141160%_)
                                    (let ((_%__splice4174941750%_
                                           (gx#syntax-split-splice
                                            _%hd4081141160%_
                                            '0)))
                                      (let ((_%tl4083340892%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4174941750%_
                                                '1)))
                                            (_%target4083140889%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4174941750%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4083340892%_)
                                            (_%__match4179541796%_
                                             _%e4080941146%_
                                             _%hd4080841150%_
                                             _%tl4080741153%_
                                             _%e4081241156%_
                                             _%hd4081141160%_
                                             _%tl4081041163%_
                                             _%__splice4174941750%_
                                             _%target4083140889%_
                                             _%tl4083340892%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4080440862%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4080440862%_))))))
                        (let () (declare (not safe)) (_%g4080440862%_)))))
                (let () (declare (not safe)) (_%g4080440862%_))))))))
  (define |gerbil/core/more-sugar[:0:]#let/cc|
    (lambda (_%$stx41229%_)
      (let* ((_%g4123341257%_
              (lambda (_%g4123441253%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4123441253%_)))
             (_%g4123241342%_
              (lambda (_%g4123441261%_)
                (if (gx#stx-pair? _%g4123441261%_)
                    (let ((_%e4123941264%_ (gx#syntax-e _%g4123441261%_)))
                      (let ((_%hd4123841268%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4123941264%_)))
                            (_%tl4123741271%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4123941264%_))))
                        (if (gx#stx-pair? _%tl4123741271%_)
                            (let ((_%e4124241274%_
                                   (gx#syntax-e _%tl4123741271%_)))
                              (let ((_%hd4124141278%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4124241274%_)))
                                    (_%tl4124041281%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4124241274%_))))
                                (if (gx#stx-pair/null? _%tl4124041281%_)
                                    (let ((_g41811_
                                           (gx#syntax-split-splice
                                            _%tl4124041281%_
                                            '0)))
                                      (begin
                                        (let ((_g41812_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g41811_)
                                                     (##vector-length _g41811_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g41812_ 2)))
                                              (error "Context expects 2 values"
                                                     _g41812_)))
                                        (let ((_%target4124341284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g41811_ 0)))
                                              (_%tl4124541287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g41811_ 1))))
                                          (if (gx#stx-null? _%tl4124541287%_)
                                              (letrec ((_%loop4124641290%_
                                                        (lambda (_%hd4124441294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body4125041297%_)
                  (if (gx#stx-pair? _%hd4124441294%_)
                      (let ((_%e4124741300%_ (gx#syntax-e _%hd4124441294%_)))
                        (let ((_%lp-hd4124841304%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4124741300%_)))
                              (_%lp-tl4124941307%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4124741300%_))))
                          (_%loop4124641290%_
                           _%lp-tl4124941307%_
                           (cons _%lp-hd4124841304%_ _%body4125041297%_))))
                      (let ((_%body4125141310%_ (reverse _%body4125041297%_)))
                        ((lambda (_%L41314%_ _%L41316%_)
                           (if (gx#identifier? _%L41316%_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _%L41316%_ '())
                                                       (foldr (lambda (_%g4133341336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4133441339%_)
                        (cons _%g4133341336%_ _%g4133441339%_))
                      '()
                      _%L41314%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_%g4123341257%_ _%g4123441261%_)))
                         _%body4125141310%_
                         _%hd4124141278%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop4124641290%_
                                                 _%target4124341284%_
                                                 '()))
                                              (_%g4123341257%_
                                               _%g4123441261%_)))))
                                    (_%g4123341257%_ _%g4123441261%_))))
                            (_%g4123341257%_ _%g4123441261%_))))
                    (_%g4123341257%_ _%g4123441261%_)))))
        (_%g4123241342%_ _%$stx41229%_))))
  (define |gerbil/core/more-sugar[:0:]#unwind-protect|
    (lambda (_%$stx41347%_)
      (let* ((_%g4135141379%_
              (lambda (_%g4135241375%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4135241375%_)))
             (_%g4135041478%_
              (lambda (_%g4135241383%_)
                (if (gx#stx-pair? _%g4135241383%_)
                    (let ((_%e4135841386%_ (gx#syntax-e _%g4135241383%_)))
                      (let ((_%hd4135741390%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4135841386%_)))
                            (_%tl4135641393%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4135841386%_))))
                        (if (gx#stx-pair? _%tl4135641393%_)
                            (let ((_%e4136141396%_
                                   (gx#syntax-e _%tl4135641393%_)))
                              (let ((_%hd4136041400%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4136141396%_)))
                                    (_%tl4135941403%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4136141396%_))))
                                (if (gx#stx-pair? _%tl4135941403%_)
                                    (let ((_%e4136441406%_
                                           (gx#syntax-e _%tl4135941403%_)))
                                      (let ((_%hd4136341410%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4136441406%_)))
                                            (_%tl4136241413%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4136441406%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4136241413%_)
                                            (let ((_g41813_
                                                   (gx#syntax-split-splice
                                                    _%tl4136241413%_
                                                    '0)))
                                              (begin
                                                (let ((_g41814_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g41813_)
                                                             (##vector-length
                                                              _g41813_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g41814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g41814_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target4136541416%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41813_
                                                          0)))
                                                      (_%tl4136741419%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41813_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl4136741419%_)
                                                      (letrec ((_%loop4136841422%_
                                                                (lambda (_%hd4136641426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%rest4137241429%_)
                          (if (gx#stx-pair? _%hd4136641426%_)
                              (let ((_%e4136941432%_
                                     (gx#syntax-e _%hd4136641426%_)))
                                (let ((_%lp-hd4137041436%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4136941432%_)))
                                      (_%lp-tl4137141439%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4136941432%_))))
                                  (_%loop4136841422%_
                                   _%lp-tl4137141439%_
                                   (cons _%lp-hd4137041436%_
                                         _%rest4137241429%_))))
                              (let ((_%rest4137341442%_
                                     (reverse _%rest4137241429%_)))
                                ((lambda (_%L41446%_ _%L41448%_ _%L41449%_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _%L41449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L41448%_
                               (foldr (lambda (_%g4146941472%_ _%g4147041475%_)
                                        (cons _%g4146941472%_ _%g4147041475%_))
                                      '()
                                      _%L41446%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _%rest4137341442%_
                                 _%hd4136341410%_
                                 _%hd4136041400%_))))))
                (_%loop4136841422%_ _%target4136541416%_ '()))
              (_%g4135141379%_ _%g4135241383%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4135141379%_
                                             _%g4135241383%_))))
                                    (_%g4135141379%_ _%g4135241383%_))))
                            (_%g4135141379%_ _%g4135241383%_))))
                    (_%g4135141379%_ _%g4135241383%_)))))
        (_%g4135041478%_ _%$stx41347%_))))
  (define |gerbil/core/more-sugar[:0:]#@bytes|
    (lambda (_%stx41483%_)
      (let* ((_%g4148641500%_
              (lambda (_%g4148741496%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4148741496%_)))
             (_%g4148541572%_
              (lambda (_%g4148741504%_)
                (if (gx#stx-pair? _%g4148741504%_)
                    (let ((_%e4149141507%_ (gx#syntax-e _%g4148741504%_)))
                      (let ((_%hd4149041511%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4149141507%_)))
                            (_%tl4148941514%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4149141507%_))))
                        (if (gx#stx-pair? _%tl4148941514%_)
                            (let ((_%e4149441517%_
                                   (gx#syntax-e _%tl4148941514%_)))
                              (let ((_%hd4149341521%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4149441517%_)))
                                    (_%tl4149241524%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4149441517%_))))
                                (if (gx#stx-null? _%tl4149241524%_)
                                    ((lambda (_%L41527%_)
                                       (if (gx#stx-string? _%L41527%_)
                                           (let* ((_%g4154141549%_
                                                   (lambda (_%g4154241545%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4154241545%_)))
                                                  (_%g4154041568%_
                                                   (lambda (_%g4154241553%_)
                                                     ((lambda (_%L41556%_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L41556%_ '()))))
              _%g4154241553%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4154041568%_
                                              (string->bytes
                                               (gx#stx-e _%L41527%_))))
                                           (_%g4148641500%_ _%g4148741504%_)))
                                     _%hd4149341521%_)
                                    (_%g4148641500%_ _%g4148741504%_))))
                            (_%g4148641500%_ _%g4148741504%_))))
                    (_%g4148641500%_ _%g4148741504%_)))))
        (_%g4148541572%_ _%stx41483%_))))
  (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
    (lambda (_%stx41576%_)
      (let* ((_%g4157941593%_
              (lambda (_%g4158041589%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4158041589%_)))
             (_%g4157841634%_
              (lambda (_%g4158041597%_)
                (if (gx#stx-pair? _%g4158041597%_)
                    (let ((_%e4158441600%_ (gx#syntax-e _%g4158041597%_)))
                      (let ((_%hd4158341604%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4158441600%_)))
                            (_%tl4158241607%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4158441600%_))))
                        (if (gx#stx-pair? _%tl4158241607%_)
                            (let ((_%e4158741610%_
                                   (gx#syntax-e _%tl4158241607%_)))
                              (let ((_%hd4158641614%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4158741610%_)))
                                    (_%tl4158541617%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4158741610%_))))
                                (if (gx#stx-null? _%tl4158541617%_)
                                    ((lambda (_%L41620%_)
                                       (if (gx#current-expander-compiling?)
                                           (gx#eval-syntax _%L41620%_)
                                           '#!void)
                                       (cons (gx#datum->syntax '#f 'void) '()))
                                     _%hd4158641614%_)
                                    (_%g4157941593%_ _%g4158041597%_))))
                            (_%g4157941593%_ _%g4158041597%_))))
                    (_%g4157941593%_ _%g4158041597%_)))))
        (_%g4157841634%_ _%stx41576%_)))))
