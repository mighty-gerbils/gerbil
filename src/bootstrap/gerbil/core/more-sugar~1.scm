(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#setq-macro::t|
    (make-class-type
     'gerbil.core#setq-macro::t
     'setq-macro
     (list gerbil/core/macro-object#macro-object::t)
     '()
     '()
     '#f))
  (define |gerbil/core/more-sugar[1]#setq-macro?|
    (make-class-predicate |gerbil/core/more-sugar[1]#setq-macro::t|))
  (define |gerbil/core/more-sugar[1]#make-setq-macro|
    (lambda _%$args40206%_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setq-macro::t|
             _%$args40206%_)))
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
     'gerbil.core#setf-macro::t
     'setf-macro
     (list gerbil/core/macro-object#macro-object::t)
     '()
     '()
     '#f))
  (define |gerbil/core/more-sugar[1]#setf-macro?|
    (make-class-predicate |gerbil/core/more-sugar[1]#setf-macro::t|))
  (define |gerbil/core/more-sugar[1]#make-setf-macro|
    (lambda _%$args40202%_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setf-macro::t|
             _%$args40202%_)))
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
    (lambda (_%stx40199%_)
      (if (gx#identifier? _%stx40199%_)
          (let ((__tmp41770 (gx#syntax-local-value _%stx40199%_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setf-macro::t|
             __tmp41770))
          '#f)))
  (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
    (lambda (_%stx40196%_)
      (if (gx#identifier? _%stx40196%_)
          (let ((__tmp41771 (gx#syntax-local-value _%stx40196%_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setq-macro::t|
             __tmp41771))
          '#f)))
  (define |gerbil/core/more-sugar[:0:]#set!|
    (lambda (_%stx40210%_)
      (let* ((_%__stx4161741618%_ _%stx40210%_)
             (_%g4021640275%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4161741618%_))))
        (let ((_%__kont4162041621%_
               (lambda (_%L40548%_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _%L40548%_)
                  _%stx40210%_)))
              (_%__kont4162241623%_
               (lambda (_%L40447%_ _%L40449%_ _%L40450%_)
                 (let* ((_%g4047240480%_
                         (lambda (_%g4047340476%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4047340476%_)))
                        (_%g4047140507%_
                         (lambda (_%g4047340484%_)
                           ((lambda (_%L40487%_)
                              (let ()
                                (cons _%L40487%_
                                      (foldr (lambda (_%g4049840501%_
                                                      _%g4049940504%_)
                                               (cons _%g4049840501%_
                                                     _%g4049940504%_))
                                             (cons _%L40447%_ '())
                                             _%L40449%_))))
                            _%g4047340484%_))))
                   (_%g4047140507%_
                    (gx#stx-identifier _%L40450%_ _%L40450%_ '"-set!")))))
              (_%__kont4162641627%_
               (lambda (_%L40357%_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _%L40357%_)
                  _%stx40210%_)))
              (_%__kont4162841629%_
               (lambda (_%L40312%_ _%L40314%_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _%L40314%_ (cons _%L40312%_ '()))))))
          (let* ((_%__match4170841709%_
                  (lambda (_%e4026340282%_
                           _%hd4026240286%_
                           _%tl4026140289%_
                           _%e4026640292%_
                           _%hd4026540296%_
                           _%tl4026440299%_
                           _%e4026940302%_
                           _%hd4026840306%_
                           _%tl4026740309%_)
                    (let ((_%L40312%_ _%hd4026840306%_)
                          (_%L40314%_ _%hd4026540296%_))
                      (if (gx#identifier? _%L40314%_)
                          (_%__kont4162841629%_ _%L40312%_ _%L40314%_)
                          (let () (declare (not safe)) (_%g4021640275%_))))))
                 (_%__match4168841689%_
                  (lambda (_%e4025540337%_
                           _%hd4025440341%_
                           _%tl4025340344%_
                           _%e4025840347%_
                           _%hd4025740351%_
                           _%tl4025640354%_)
                    (let ((_%L40357%_ _%hd4025740351%_))
                      (if (let ()
                            (declare (not safe))
                            (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%L40357%_))
                          (_%__kont4162641627%_ _%L40357%_)
                          (if (gx#stx-pair? _%tl4025640354%_)
                              (let ((_%e4026940302%_
                                     (gx#syntax-e _%tl4025640354%_)))
                                (let ((_%tl4026740309%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4026940302%_)))
                                      (_%hd4026840306%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4026940302%_))))
                                  (if (gx#stx-null? _%tl4026740309%_)
                                      (_%__match4170841709%_
                                       _%e4025540337%_
                                       _%hd4025440341%_
                                       _%tl4025340344%_
                                       _%e4025840347%_
                                       _%hd4025740351%_
                                       _%tl4025640354%_
                                       _%e4026940302%_
                                       _%hd4026840306%_
                                       _%tl4026740309%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4021640275%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4021640275%_)))))))
                 (_%__match4167641677%_
                  (lambda (_%e4023340377%_
                           _%hd4023240381%_
                           _%tl4023140384%_
                           _%e4023640387%_
                           _%hd4023540391%_
                           _%tl4023440394%_
                           _%e4023940397%_
                           _%hd4023840401%_
                           _%tl4023740404%_
                           _%__splice4162441625%_
                           _%target4024040407%_
                           _%tl4024240410%_)
                    (letrec ((_%loop4024340413%_
                              (lambda (_%hd4024140417%_ _%arg4024740420%_)
                                (if (gx#stx-pair? _%hd4024140417%_)
                                    (let ((_%e4024440423%_
                                           (gx#syntax-e _%hd4024140417%_)))
                                      (let ((_%lp-tl4024640430%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4024440423%_)))
                                            (_%lp-hd4024540427%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4024440423%_))))
                                        (_%loop4024340413%_
                                         _%lp-tl4024640430%_
                                         (cons _%lp-hd4024540427%_
                                               _%arg4024740420%_))))
                                    (let ((_%arg4024840433%_
                                           (reverse _%arg4024740420%_)))
                                      (if (gx#stx-pair? _%tl4023440394%_)
                                          (let ((_%e4025140437%_
                                                 (gx#syntax-e
                                                  _%tl4023440394%_)))
                                            (let ((_%tl4024940444%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4025140437%_)))
                                                  (_%hd4025040441%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4025140437%_))))
                                              (if (gx#stx-null?
                                                   _%tl4024940444%_)
                                                  (let ((_%L40447%_
                                                         _%hd4025040441%_)
                                                        (_%L40449%_
                                                         _%arg4024840433%_)
                                                        (_%L40450%_
                                                         _%hd4023840401%_))
                                                    (if (gx#identifier?
                                                         _%L40450%_)
                                                        (_%__kont4162241623%_
                                                         _%L40447%_
                                                         _%L40449%_
                                                         _%L40450%_)
                                                        (_%__match4168841689%_
                                                         _%e4023340377%_
                                                         _%hd4023240381%_
                                                         _%tl4023140384%_
                                                         _%e4023640387%_
                                                         _%hd4023540391%_
                                                         _%tl4023440394%_)))
                                                  (_%__match4168841689%_
                                                   _%e4023340377%_
                                                   _%hd4023240381%_
                                                   _%tl4023140384%_
                                                   _%e4023640387%_
                                                   _%hd4023540391%_
                                                   _%tl4023440394%_))))
                                          (_%__match4168841689%_
                                           _%e4023340377%_
                                           _%hd4023240381%_
                                           _%tl4023140384%_
                                           _%e4023640387%_
                                           _%hd4023540391%_
                                           _%tl4023440394%_)))))))
                      (_%loop4024340413%_ _%target4024040407%_ '())))))
            (if (gx#stx-pair? _%__stx4161741618%_)
                (let ((_%e4022140518%_ (gx#syntax-e _%__stx4161741618%_)))
                  (let ((_%tl4021940525%_
                         (let () (declare (not safe)) (##cdr _%e4022140518%_)))
                        (_%hd4022040522%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4022140518%_))))
                    (if (gx#stx-pair? _%tl4021940525%_)
                        (let ((_%e4022440528%_ (gx#syntax-e _%tl4021940525%_)))
                          (let ((_%tl4022240535%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4022440528%_)))
                                (_%hd4022340532%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4022440528%_))))
                            (if (gx#stx-pair? _%hd4022340532%_)
                                (let ((_%e4022740538%_
                                       (gx#syntax-e _%hd4022340532%_)))
                                  (let ((_%tl4022540545%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4022740538%_)))
                                        (_%hd4022640542%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4022740538%_))))
                                    (if (let ((__tmp41772
                                               (gx#datum->syntax '#f 'setfid)))
                                          (declare (not safe))
                                          (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                           __tmp41772))
                                        (let ((_%L40548%_ _%hd4022640542%_))
                                          (_%__kont4162041621%_ _%L40548%_))
                                        (if (gx#stx-pair/null?
                                             _%tl4022540545%_)
                                            (let ((_%__splice4162441625%_
                                                   (gx#syntax-split-splice
                                                    _%tl4022540545%_
                                                    '0)))
                                              (let ((_%tl4024240410%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4162441625%_
                                                        '1)))
                                                    (_%target4024040407%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4162441625%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4024240410%_)
                                                    (_%__match4167641677%_
                                                     _%e4022140518%_
                                                     _%hd4022040522%_
                                                     _%tl4021940525%_
                                                     _%e4022440528%_
                                                     _%hd4022340532%_
                                                     _%tl4022240535%_
                                                     _%e4022740538%_
                                                     _%hd4022640542%_
                                                     _%tl4022540545%_
                                                     _%__splice4162441625%_
                                                     _%target4024040407%_
                                                     _%tl4024240410%_)
                                                    (_%__match4168841689%_
                                                     _%e4022140518%_
                                                     _%hd4022040522%_
                                                     _%tl4021940525%_
                                                     _%e4022440528%_
                                                     _%hd4022340532%_
                                                     _%tl4022240535%_))))
                                            (_%__match4168841689%_
                                             _%e4022140518%_
                                             _%hd4022040522%_
                                             _%tl4021940525%_
                                             _%e4022440528%_
                                             _%hd4022340532%_
                                             _%tl4022240535%_)))))
                                (_%__match4168841689%_
                                 _%e4022140518%_
                                 _%hd4022040522%_
                                 _%tl4021940525%_
                                 _%e4022440528%_
                                 _%hd4022340532%_
                                 _%tl4022240535%_))))
                        (let () (declare (not safe)) (_%g4021640275%_)))))
                (let () (declare (not safe)) (_%g4021640275%_))))))))
  (define |gerbil/core/more-sugar[:0:]#values-set!|
    (lambda (_%stx40568%_)
      (let* ((_%g4057140595%_
              (lambda (_%g4057240591%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4057240591%_)))
             (_%g4057040773%_
              (lambda (_%g4057240599%_)
                (if (gx#stx-pair? _%g4057240599%_)
                    (let ((_%e4057740602%_ (gx#syntax-e _%g4057240599%_)))
                      (let ((_%hd4057640606%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4057740602%_)))
                            (_%tl4057540609%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4057740602%_))))
                        (if (gx#stx-pair/null? _%tl4057540609%_)
                            (if (let ((__tmp41773
                                       (gx#stx-length _%tl4057540609%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp41773 '1))
                                (let ((_g41774_
                                       (gx#syntax-split-splice
                                        _%tl4057540609%_
                                        '1)))
                                  (begin
                                    (let ((_g41775_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g41774_)
                                                 (##vector-length _g41774_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g41775_ 2)))
                                          (error "Context expects 2 values"
                                                 _g41775_)))
                                    (let ((_%target4057840612%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g41774_ 0)))
                                          (_%tl4058040615%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g41774_ 1))))
                                      (if (gx#stx-pair? _%tl4058040615%_)
                                          (let ((_%e4058940618%_
                                                 (gx#syntax-e
                                                  _%tl4058040615%_)))
                                            (let ((_%hd4058840622%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4058940618%_)))
                                                  (_%tl4058740625%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4058940618%_))))
                                              (if (gx#stx-null?
                                                   _%tl4058740625%_)
                                                  (letrec ((_%loop4058140628%_
                                                            (lambda (_%hd4057940632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%tgt4058540635%_)
                      (if (gx#stx-pair? _%hd4057940632%_)
                          (let ((_%e4058240638%_
                                 (gx#syntax-e _%hd4057940632%_)))
                            (let ((_%lp-hd4058340642%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4058240638%_)))
                                  (_%lp-tl4058440645%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4058240638%_))))
                              (_%loop4058140628%_
                               _%lp-tl4058440645%_
                               (cons _%lp-hd4058340642%_ _%tgt4058540635%_))))
                          (let ((_%tgt4058640648%_
                                 (reverse _%tgt4058540635%_)))
                            ((lambda (_%L40652%_ _%L40654%_)
                               (let* ((_%g4067240689%_
                                       (lambda (_%g4067340685%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g4067340685%_)))
                                      (_%g4067140761%_
                                       (lambda (_%g4067340693%_)
                                         (if (gx#stx-pair/null?
                                              _%g4067340693%_)
                                             (let ((_g41776_
                                                    (gx#syntax-split-splice
                                                     _%g4067340693%_
                                                     '0)))
                                               (begin
                                                 (let ((_g41777_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g41776_)
                                                              (##vector-length
                                                               _g41776_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g41777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g41777_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target4067540696%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g41776_
                                                           0)))
                                                       (_%tl4067740699%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g41776_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl4067740699%_)
                                                       (letrec ((_%loop4067840702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd4067640706%_ _%$e4068240709%_)
                           (if (gx#stx-pair? _%hd4067640706%_)
                               (let ((_%e4067940712%_
                                      (gx#syntax-e _%hd4067640706%_)))
                                 (let ((_%lp-hd4068040716%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4067940712%_)))
                                       (_%lp-tl4068140719%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4067940712%_))))
                                   (_%loop4067840702%_
                                    _%lp-tl4068140719%_
                                    (cons _%lp-hd4068040716%_
                                          _%$e4068240709%_))))
                               (let ((_%$e4068340722%_
                                      (reverse _%$e4068240709%_)))
                                 ((lambda (_%L40726%_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_%g4074440747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g4074540750%_)
                               (cons _%g4074440747%_ _%g4074540750%_))
                             '()
                             _%L40726%_)
                      (cons _%L40652%_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%L40726%_
                                                     _%L40654%_)
                                                    (foldr (lambda (_%g4074140753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4074240756%_
                            _%g4074340758%_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _%g4074240756%_
                                       (cons _%g4074140753%_ '())))
                           _%g4074340758%_))
                   '()
                   _%L40726%_
                   _%L40654%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%$e4068340722%_))))))
                 (_%loop4067840702%_ _%target4067540696%_ '()))
               (_%g4067240689%_ _%g4067340693%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4067240689%_
                                              _%g4067340693%_)))))
                                 (_%g4067140761%_
                                  (gx#gentemps
                                   (foldr (lambda (_%g4076440767%_
                                                   _%g4076540770%_)
                                            (cons _%g4076440767%_
                                                  _%g4076540770%_))
                                          '()
                                          _%L40654%_)))))
                             _%hd4058840622%_
                             _%tgt4058640648%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4058140628%_
                                                     _%target4057840612%_
                                                     '()))
                                                  (_%g4057140595%_
                                                   _%g4057240599%_))))
                                          (_%g4057140595%_ _%g4057240599%_)))))
                                (_%g4057140595%_ _%g4057240599%_))
                            (_%g4057140595%_ _%g4057240599%_))))
                    (_%g4057140595%_ _%g4057240599%_)))))
        (_%g4057040773%_ _%stx40568%_))))
  (define |gerbil/core/more-sugar[:0:]#parameterize|
    (lambda (_%stx40779%_)
      (let* ((_%__stx4171141712%_ _%stx40779%_)
             (_%g4078340841%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4171141712%_))))
        (let ((_%__kont4171441715%_
               (lambda (_%L41175%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (foldr (lambda (_%g4119141194%_ _%g4119241197%_)
                                      (cons _%g4119141194%_ _%g4119241197%_))
                                    '()
                                    _%L41175%_)))))
              (_%__kont4171841719%_
               (lambda (_%L40952%_ _%L40954%_ _%L40955%_)
                 (let* ((_%g4097840986%_
                         (lambda (_%g4097940982%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4097940982%_)))
                        (_%g4097741106%_
                         (lambda (_%g4097940990%_)
                           ((lambda (_%L40993%_)
                              (let ()
                                (let* ((_%g4100541022%_
                                        (lambda (_%g4100641018%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g4100641018%_)))
                                       (_%g4100441086%_
                                        (lambda (_%g4100641026%_)
                                          (if (gx#stx-pair/null?
                                               _%g4100641026%_)
                                              (let ((_g41778_
                                                     (gx#syntax-split-splice
                                                      _%g4100641026%_
                                                      '0)))
                                                (begin
                                                  (let ((_g41779_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g41778_)
                                                               (##vector-length
                                                                _g41778_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g41779_ 2)))
                (error "Context expects 2 values" _g41779_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4100841029%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g41778_
                                                            0)))
                                                        (_%tl4101041032%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g41778_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4101041032%_)
                                                        (letrec ((_%loop4101141035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4100941039%_ _%arg4101541042%_)
                            (if (gx#stx-pair? _%hd4100941039%_)
                                (let ((_%e4101241045%_
                                       (gx#syntax-e _%hd4100941039%_)))
                                  (let ((_%lp-hd4101341049%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4101241045%_)))
                                        (_%lp-tl4101441052%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4101241045%_))))
                                    (_%loop4101141035%_
                                     _%lp-tl4101441052%_
                                     (cons _%lp-hd4101341049%_
                                           _%arg4101541042%_))))
                                (let ((_%arg4101641055%_
                                       (reverse _%arg4101541042%_)))
                                  ((lambda (_%L41059%_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax
                                                '#f
                                                'call-with-parameters)
                                               (cons _%L40993%_
                                                     (foldr (lambda (_%g4107741080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4107841083%_)
                      (cons _%g4107741080%_ _%g4107841083%_))
                    '()
                    _%L41059%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%arg4101641055%_))))))
                  (_%loop4101141035%_ _%target4100841029%_ '()))
                (_%g4100541022%_ _%g4100641026%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4100541022%_
                                               _%g4100641026%_)))))
                                  (_%g4100441086%_
                                   (foldr cons*
                                          '()
                                          (gx#syntax->list
                                           (foldr (lambda (_%g4108941092%_
                                                           _%g4109041095%_)
                                                    (cons _%g4108941092%_
                                                          _%g4109041095%_))
                                                  '()
                                                  _%L40955%_))
                                          (gx#syntax->list
                                           (foldr (lambda (_%g4109741100%_
                                                           _%g4109841103%_)
                                                    (cons _%g4109741100%_
                                                          _%g4109841103%_))
                                                  '()
                                                  _%L40954%_)))))))
                            _%g4097940990%_))))
                   (_%g4097741106%_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (foldr (lambda (_%g4110941112%_
                                                 _%g4111041115%_)
                                          (cons _%g4110941112%_
                                                _%g4111041115%_))
                                        '()
                                        _%L40952%_)))
                     (gx#stx-source _%stx40779%_)))))))
          (let* ((_%__match4176641767%_
                  (lambda (_%e4080640848%_
                           _%hd4080540852%_
                           _%tl4080440855%_
                           _%e4080940858%_
                           _%hd4080840862%_
                           _%tl4080740865%_
                           _%__splice4172041721%_
                           _%target4081040868%_
                           _%tl4081240871%_)
                    (letrec ((_%loop4081340874%_
                              (lambda (_%hd4081140878%_
                                       _%expr4081740881%_
                                       _%param4081840883%_)
                                (if (gx#stx-pair? _%hd4081140878%_)
                                    (let ((_%e4081440886%_
                                           (gx#syntax-e _%hd4081140878%_)))
                                      (let ((_%lp-tl4081640893%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4081440886%_)))
                                            (_%lp-hd4081540890%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4081440886%_))))
                                        (if (gx#stx-pair? _%lp-hd4081540890%_)
                                            (let ((_%e4082340896%_
                                                   (gx#syntax-e
                                                    _%lp-hd4081540890%_)))
                                              (let ((_%tl4082140903%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4082340896%_)))
                                                    (_%hd4082240900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4082340896%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4082140903%_)
                                                    (let ((_%e4082640906%_
                                                           (gx#syntax-e
                                                            _%tl4082140903%_)))
                                                      (let ((_%tl4082440913%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4082640906%_)))
                    (_%hd4082540910%_
                     (let () (declare (not safe)) (##car _%e4082640906%_))))
                (if (gx#stx-null? _%tl4082440913%_)
                    (_%loop4081340874%_
                     _%lp-tl4081640893%_
                     (cons _%hd4082540910%_ _%expr4081740881%_)
                     (cons _%hd4082240900%_ _%param4081840883%_))
                    (let () (declare (not safe)) (_%g4078340841%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4078340841%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4078340841%_)))))
                                    (let ((_%param4082040919%_
                                           (reverse _%param4081840883%_))
                                          (_%expr4081940916%_
                                           (reverse _%expr4081740881%_)))
                                      (if (gx#stx-pair/null? _%tl4080740865%_)
                                          (let ((_%__splice4172241723%_
                                                 (gx#syntax-split-splice
                                                  _%tl4080740865%_
                                                  '0)))
                                            (let ((_%tl4082940925%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4172241723%_
                                                      '1)))
                                                  (_%target4082740922%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4172241723%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4082940925%_)
                                                  (letrec ((_%loop4083040928%_
                                                            (lambda (_%hd4082840932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body4083440935%_)
                      (if (gx#stx-pair? _%hd4082840932%_)
                          (let ((_%e4083140938%_
                                 (gx#syntax-e _%hd4082840932%_)))
                            (let ((_%lp-tl4083340945%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4083140938%_)))
                                  (_%lp-hd4083240942%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4083140938%_))))
                              (_%loop4083040928%_
                               _%lp-tl4083340945%_
                               (cons _%lp-hd4083240942%_ _%body4083440935%_))))
                          (let ((_%body4083540948%_
                                 (reverse _%body4083440935%_)))
                            (_%__kont4171841719%_
                             _%body4083540948%_
                             _%expr4081940916%_
                             _%param4082040919%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4083040928%_
                                                     _%target4082740922%_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4078340841%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4078340841%_))))))))
                      (_%loop4081340874%_ _%target4081040868%_ '() '()))))
                 (_%__match4174641747%_
                  (lambda (_%e4078841125%_
                           _%hd4078741129%_
                           _%tl4078641132%_
                           _%e4079141135%_
                           _%hd4079041139%_
                           _%tl4078941142%_
                           _%__splice4171641717%_
                           _%target4079241145%_
                           _%tl4079441148%_)
                    (letrec ((_%loop4079541151%_
                              (lambda (_%hd4079341155%_ _%body4079941158%_)
                                (if (gx#stx-pair? _%hd4079341155%_)
                                    (let ((_%e4079641161%_
                                           (gx#syntax-e _%hd4079341155%_)))
                                      (let ((_%lp-tl4079841168%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4079641161%_)))
                                            (_%lp-hd4079741165%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4079641161%_))))
                                        (_%loop4079541151%_
                                         _%lp-tl4079841168%_
                                         (cons _%lp-hd4079741165%_
                                               _%body4079941158%_))))
                                    (let ((_%body4080041171%_
                                           (reverse _%body4079941158%_)))
                                      (_%__kont4171441715%_
                                       _%body4080041171%_))))))
                      (_%loop4079541151%_ _%target4079241145%_ '())))))
            (if (gx#stx-pair? _%__stx4171141712%_)
                (let ((_%e4078841125%_ (gx#syntax-e _%__stx4171141712%_)))
                  (let ((_%tl4078641132%_
                         (let () (declare (not safe)) (##cdr _%e4078841125%_)))
                        (_%hd4078741129%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4078841125%_))))
                    (if (gx#stx-pair? _%tl4078641132%_)
                        (let ((_%e4079141135%_ (gx#syntax-e _%tl4078641132%_)))
                          (let ((_%tl4078941142%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4079141135%_)))
                                (_%hd4079041139%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4079141135%_))))
                            (if (gx#stx-null? _%hd4079041139%_)
                                (if (gx#stx-pair/null? _%tl4078941142%_)
                                    (let ((_%__splice4171641717%_
                                           (gx#syntax-split-splice
                                            _%tl4078941142%_
                                            '0)))
                                      (let ((_%tl4079441148%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4171641717%_
                                                '1)))
                                            (_%target4079241145%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4171641717%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4079441148%_)
                                            (_%__match4174641747%_
                                             _%e4078841125%_
                                             _%hd4078741129%_
                                             _%tl4078641132%_
                                             _%e4079141135%_
                                             _%hd4079041139%_
                                             _%tl4078941142%_
                                             _%__splice4171641717%_
                                             _%target4079241145%_
                                             _%tl4079441148%_)
                                            (if (gx#stx-pair/null?
                                                 _%hd4079041139%_)
                                                (let ((_%__splice4172041721%_
                                                       (gx#syntax-split-splice
                                                        _%hd4079041139%_
                                                        '0)))
                                                  (let ((_%tl4081240871%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4172041721%_
                                                            '1)))
                                                        (_%target4081040868%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4172041721%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4081240871%_)
                                                        (_%__match4176641767%_
                                                         _%e4078841125%_
                                                         _%hd4078741129%_
                                                         _%tl4078641132%_
                                                         _%e4079141135%_
                                                         _%hd4079041139%_
                                                         _%tl4078941142%_
                                                         _%__splice4172041721%_
                                                         _%target4081040868%_
                                                         _%tl4081240871%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4078340841%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4078340841%_))))))
                                    (if (gx#stx-pair/null? _%hd4079041139%_)
                                        (let ((_%__splice4172041721%_
                                               (gx#syntax-split-splice
                                                _%hd4079041139%_
                                                '0)))
                                          (let ((_%tl4081240871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4172041721%_
                                                    '1)))
                                                (_%target4081040868%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4172041721%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4081240871%_)
                                                (_%__match4176641767%_
                                                 _%e4078841125%_
                                                 _%hd4078741129%_
                                                 _%tl4078641132%_
                                                 _%e4079141135%_
                                                 _%hd4079041139%_
                                                 _%tl4078941142%_
                                                 _%__splice4172041721%_
                                                 _%target4081040868%_
                                                 _%tl4081240871%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4078340841%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4078340841%_))))
                                (if (gx#stx-pair/null? _%hd4079041139%_)
                                    (let ((_%__splice4172041721%_
                                           (gx#syntax-split-splice
                                            _%hd4079041139%_
                                            '0)))
                                      (let ((_%tl4081240871%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4172041721%_
                                                '1)))
                                            (_%target4081040868%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4172041721%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4081240871%_)
                                            (_%__match4176641767%_
                                             _%e4078841125%_
                                             _%hd4078741129%_
                                             _%tl4078641132%_
                                             _%e4079141135%_
                                             _%hd4079041139%_
                                             _%tl4078941142%_
                                             _%__splice4172041721%_
                                             _%target4081040868%_
                                             _%tl4081240871%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4078340841%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4078340841%_))))))
                        (let () (declare (not safe)) (_%g4078340841%_)))))
                (let () (declare (not safe)) (_%g4078340841%_))))))))
  (define |gerbil/core/more-sugar[:0:]#let/cc|
    (lambda (_%$stx41208%_)
      (let* ((_%g4121241236%_
              (lambda (_%g4121341232%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4121341232%_)))
             (_%g4121141321%_
              (lambda (_%g4121341240%_)
                (if (gx#stx-pair? _%g4121341240%_)
                    (let ((_%e4121841243%_ (gx#syntax-e _%g4121341240%_)))
                      (let ((_%hd4121741247%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4121841243%_)))
                            (_%tl4121641250%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4121841243%_))))
                        (if (gx#stx-pair? _%tl4121641250%_)
                            (let ((_%e4122141253%_
                                   (gx#syntax-e _%tl4121641250%_)))
                              (let ((_%hd4122041257%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4122141253%_)))
                                    (_%tl4121941260%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4122141253%_))))
                                (if (gx#stx-pair/null? _%tl4121941260%_)
                                    (let ((_g41780_
                                           (gx#syntax-split-splice
                                            _%tl4121941260%_
                                            '0)))
                                      (begin
                                        (let ((_g41781_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g41780_)
                                                     (##vector-length _g41780_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g41781_ 2)))
                                              (error "Context expects 2 values"
                                                     _g41781_)))
                                        (let ((_%target4122241263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g41780_ 0)))
                                              (_%tl4122441266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g41780_ 1))))
                                          (if (gx#stx-null? _%tl4122441266%_)
                                              (letrec ((_%loop4122541269%_
                                                        (lambda (_%hd4122341273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body4122941276%_)
                  (if (gx#stx-pair? _%hd4122341273%_)
                      (let ((_%e4122641279%_ (gx#syntax-e _%hd4122341273%_)))
                        (let ((_%lp-hd4122741283%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4122641279%_)))
                              (_%lp-tl4122841286%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4122641279%_))))
                          (_%loop4122541269%_
                           _%lp-tl4122841286%_
                           (cons _%lp-hd4122741283%_ _%body4122941276%_))))
                      (let ((_%body4123041289%_ (reverse _%body4122941276%_)))
                        ((lambda (_%L41293%_ _%L41295%_)
                           (if (gx#identifier? _%L41295%_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _%L41295%_ '())
                                                       (foldr (lambda (_%g4131241315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4131341318%_)
                        (cons _%g4131241315%_ _%g4131341318%_))
                      '()
                      _%L41293%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_%g4121241236%_ _%g4121341240%_)))
                         _%body4123041289%_
                         _%hd4122041257%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop4122541269%_
                                                 _%target4122241263%_
                                                 '()))
                                              (_%g4121241236%_
                                               _%g4121341240%_)))))
                                    (_%g4121241236%_ _%g4121341240%_))))
                            (_%g4121241236%_ _%g4121341240%_))))
                    (_%g4121241236%_ _%g4121341240%_)))))
        (_%g4121141321%_ _%$stx41208%_))))
  (define |gerbil/core/more-sugar[:0:]#unwind-protect|
    (lambda (_%$stx41326%_)
      (let* ((_%g4133041358%_
              (lambda (_%g4133141354%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4133141354%_)))
             (_%g4132941457%_
              (lambda (_%g4133141362%_)
                (if (gx#stx-pair? _%g4133141362%_)
                    (let ((_%e4133741365%_ (gx#syntax-e _%g4133141362%_)))
                      (let ((_%hd4133641369%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4133741365%_)))
                            (_%tl4133541372%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4133741365%_))))
                        (if (gx#stx-pair? _%tl4133541372%_)
                            (let ((_%e4134041375%_
                                   (gx#syntax-e _%tl4133541372%_)))
                              (let ((_%hd4133941379%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4134041375%_)))
                                    (_%tl4133841382%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4134041375%_))))
                                (if (gx#stx-pair? _%tl4133841382%_)
                                    (let ((_%e4134341385%_
                                           (gx#syntax-e _%tl4133841382%_)))
                                      (let ((_%hd4134241389%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4134341385%_)))
                                            (_%tl4134141392%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4134341385%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4134141392%_)
                                            (let ((_g41782_
                                                   (gx#syntax-split-splice
                                                    _%tl4134141392%_
                                                    '0)))
                                              (begin
                                                (let ((_g41783_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g41782_)
                                                             (##vector-length
                                                              _g41782_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g41783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g41783_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target4134441395%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41782_
                                                          0)))
                                                      (_%tl4134641398%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41782_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl4134641398%_)
                                                      (letrec ((_%loop4134741401%_
                                                                (lambda (_%hd4134541405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%rest4135141408%_)
                          (if (gx#stx-pair? _%hd4134541405%_)
                              (let ((_%e4134841411%_
                                     (gx#syntax-e _%hd4134541405%_)))
                                (let ((_%lp-hd4134941415%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4134841411%_)))
                                      (_%lp-tl4135041418%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4134841411%_))))
                                  (_%loop4134741401%_
                                   _%lp-tl4135041418%_
                                   (cons _%lp-hd4134941415%_
                                         _%rest4135141408%_))))
                              (let ((_%rest4135241421%_
                                     (reverse _%rest4135141408%_)))
                                ((lambda (_%L41425%_ _%L41427%_ _%L41428%_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _%L41428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L41427%_
                               (foldr (lambda (_%g4144841451%_ _%g4144941454%_)
                                        (cons _%g4144841451%_ _%g4144941454%_))
                                      '()
                                      _%L41425%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _%rest4135241421%_
                                 _%hd4134241389%_
                                 _%hd4133941379%_))))))
                (_%loop4134741401%_ _%target4134441395%_ '()))
              (_%g4133041358%_ _%g4133141362%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4133041358%_
                                             _%g4133141362%_))))
                                    (_%g4133041358%_ _%g4133141362%_))))
                            (_%g4133041358%_ _%g4133141362%_))))
                    (_%g4133041358%_ _%g4133141362%_)))))
        (_%g4132941457%_ _%$stx41326%_))))
  (define |gerbil/core/more-sugar[:0:]#@bytes|
    (lambda (_%stx41462%_)
      (let* ((_%g4146541479%_
              (lambda (_%g4146641475%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4146641475%_)))
             (_%g4146441551%_
              (lambda (_%g4146641483%_)
                (if (gx#stx-pair? _%g4146641483%_)
                    (let ((_%e4147041486%_ (gx#syntax-e _%g4146641483%_)))
                      (let ((_%hd4146941490%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4147041486%_)))
                            (_%tl4146841493%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4147041486%_))))
                        (if (gx#stx-pair? _%tl4146841493%_)
                            (let ((_%e4147341496%_
                                   (gx#syntax-e _%tl4146841493%_)))
                              (let ((_%hd4147241500%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4147341496%_)))
                                    (_%tl4147141503%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4147341496%_))))
                                (if (gx#stx-null? _%tl4147141503%_)
                                    ((lambda (_%L41506%_)
                                       (if (gx#stx-string? _%L41506%_)
                                           (let* ((_%g4152041528%_
                                                   (lambda (_%g4152141524%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4152141524%_)))
                                                  (_%g4151941547%_
                                                   (lambda (_%g4152141532%_)
                                                     ((lambda (_%L41535%_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L41535%_ '()))))
              _%g4152141532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4151941547%_
                                              (string->bytes
                                               (gx#stx-e _%L41506%_))))
                                           (_%g4146541479%_ _%g4146641483%_)))
                                     _%hd4147241500%_)
                                    (_%g4146541479%_ _%g4146641483%_))))
                            (_%g4146541479%_ _%g4146641483%_))))
                    (_%g4146541479%_ _%g4146641483%_)))))
        (_%g4146441551%_ _%stx41462%_))))
  (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
    (lambda (_%stx41555%_)
      (let* ((_%g4155841572%_
              (lambda (_%g4155941568%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4155941568%_)))
             (_%g4155741613%_
              (lambda (_%g4155941576%_)
                (if (gx#stx-pair? _%g4155941576%_)
                    (let ((_%e4156341579%_ (gx#syntax-e _%g4155941576%_)))
                      (let ((_%hd4156241583%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4156341579%_)))
                            (_%tl4156141586%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4156341579%_))))
                        (if (gx#stx-pair? _%tl4156141586%_)
                            (let ((_%e4156641589%_
                                   (gx#syntax-e _%tl4156141586%_)))
                              (let ((_%hd4156541593%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4156641589%_)))
                                    (_%tl4156441596%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4156641589%_))))
                                (if (gx#stx-null? _%tl4156441596%_)
                                    ((lambda (_%L41599%_)
                                       (if (gx#current-expander-compiling?)
                                           (gx#eval-syntax _%L41599%_)
                                           '#!void)
                                       (cons (gx#datum->syntax '#f 'void) '()))
                                     _%hd4156541593%_)
                                    (_%g4155841572%_ _%g4155941576%_))))
                            (_%g4155841572%_ _%g4155941576%_))))
                    (_%g4155841572%_ _%g4155941576%_)))))
        (_%g4155741613%_ _%stx41555%_)))))
