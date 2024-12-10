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
    (lambda _%$args40326%_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setq-macro::t|
             _%$args40326%_)))
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
    (lambda _%$args40322%_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setf-macro::t|
             _%$args40322%_)))
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
    (lambda (_%stx40319%_)
      (if (gx#identifier? _%stx40319%_)
          (let ((__tmp41544 (gx#syntax-local-value _%stx40319%_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setf-macro::t|
             __tmp41544))
          '#f)))
  (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
    (lambda (_%stx40316%_)
      (if (gx#identifier? _%stx40316%_)
          (let ((__tmp41545 (gx#syntax-local-value _%stx40316%_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setq-macro::t|
             __tmp41545))
          '#f)))
  (define |gerbil/core/more-sugar[1]#expand-set!|
    (lambda (_%stx39941%_)
      (let* ((_%__stx4138341384%_ _%stx39941%_)
             (_%g3994740010%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4138341384%_))))
        (let ((_%__kont4138641387%_
               (lambda (_%L40293%_ _%L40295%_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _%L40295%_)
                  _%stx39941%_)))
              (_%__kont4138841389%_
               (lambda (_%L40182%_ _%L40184%_ _%L40185%_)
                 (let* ((_%g4020740215%_
                         (lambda (_%g4020840211%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4020840211%_)))
                        (_%g4020640242%_
                         (lambda (_%g4020840219%_)
                           ((lambda (_%L40222%_)
                              (cons _%L40222%_
                                    (foldr (lambda (_%g4023340236%_
                                                    _%g4023440239%_)
                                             (cons _%g4023340236%_
                                                   _%g4023440239%_))
                                           (cons _%L40182%_ '())
                                           _%L40184%_)))
                            _%g4020840219%_))))
                   (_%g4020640242%_
                    (gx#stx-identifier _%L40185%_ _%L40185%_ '"-set!")))))
              (_%__kont4139241393%_
               (lambda (_%L40092%_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _%L40092%_)
                  _%stx39941%_)))
              (_%__kont4139441395%_
               (lambda (_%L40047%_ _%L40049%_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _%L40049%_ (cons _%L40047%_ '()))))))
          (let* ((_%__match4148241483%_
                  (lambda (_%e3999640017%_
                           _%hd3999740021%_
                           _%tl3999840024%_
                           _%e3999940027%_
                           _%hd4000040031%_
                           _%tl4000140034%_
                           _%e4000240037%_
                           _%hd4000340041%_
                           _%tl4000440044%_)
                    (let ((_%L40047%_ _%hd4000340041%_)
                          (_%L40049%_ _%hd4000040031%_))
                      (if (gx#identifier? _%L40049%_)
                          (_%__kont4139441395%_ _%L40047%_ _%L40049%_)
                          (let () (declare (not safe)) (_%g3994740010%_))))))
                 (_%__match4146241463%_
                  (lambda (_%e3998840072%_
                           _%hd3998940076%_
                           _%tl3999040079%_
                           _%e3999140082%_
                           _%hd3999240086%_
                           _%tl3999340089%_)
                    (let ((_%L40092%_ _%hd3999240086%_))
                      (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                           _%L40092%_)
                          (_%__kont4139241393%_ _%L40092%_)
                          (if (gx#stx-pair? _%tl3999340089%_)
                              (let ((_%e4000240037%_
                                     (gx#syntax-e _%tl3999340089%_)))
                                (let ((_%tl4000440044%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4000240037%_)))
                                      (_%hd4000340041%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4000240037%_))))
                                  (if (gx#stx-null? _%tl4000440044%_)
                                      (_%__match4148241483%_
                                       _%e3998840072%_
                                       _%hd3998940076%_
                                       _%tl3999040079%_
                                       _%e3999140082%_
                                       _%hd3999240086%_
                                       _%tl3999340089%_
                                       _%e4000240037%_
                                       _%hd4000340041%_
                                       _%tl4000440044%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3994740010%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3994740010%_)))))))
                 (_%__match4145041451%_
                  (lambda (_%e3996640112%_
                           _%hd3996740116%_
                           _%tl3996840119%_
                           _%e3996940122%_
                           _%hd3997040126%_
                           _%tl3997140129%_
                           _%e3997240132%_
                           _%hd3997340136%_
                           _%tl3997440139%_
                           _%__splice4139041391%_
                           _%target3997540142%_
                           _%tl3997740145%_)
                    (letrec ((_%loop3997840148%_
                              (lambda (_%hd3997640152%_ _%arg3998240155%_)
                                (if (gx#stx-pair? _%hd3997640152%_)
                                    (let ((_%e3997940158%_
                                           (gx#syntax-e _%hd3997640152%_)))
                                      (let ((_%lp-tl3998140165%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3997940158%_)))
                                            (_%lp-hd3998040162%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3997940158%_))))
                                        (_%loop3997840148%_
                                         _%lp-tl3998140165%_
                                         (cons _%lp-hd3998040162%_
                                               _%arg3998240155%_))))
                                    (let ((_%arg3998340168%_
                                           (reverse _%arg3998240155%_)))
                                      (if (gx#stx-pair? _%tl3997140129%_)
                                          (let ((_%e3998440172%_
                                                 (gx#syntax-e
                                                  _%tl3997140129%_)))
                                            (let ((_%tl3998640179%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3998440172%_)))
                                                  (_%hd3998540176%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3998440172%_))))
                                              (if (gx#stx-null?
                                                   _%tl3998640179%_)
                                                  (let ((_%L40182%_
                                                         _%hd3998540176%_)
                                                        (_%L40184%_
                                                         _%arg3998340168%_)
                                                        (_%L40185%_
                                                         _%hd3997340136%_))
                                                    (if (gx#identifier?
                                                         _%L40185%_)
                                                        (_%__kont4138841389%_
                                                         _%L40182%_
                                                         _%L40184%_
                                                         _%L40185%_)
                                                        (_%__match4146241463%_
                                                         _%e3996640112%_
                                                         _%hd3996740116%_
                                                         _%tl3996840119%_
                                                         _%e3996940122%_
                                                         _%hd3997040126%_
                                                         _%tl3997140129%_)))
                                                  (_%__match4146241463%_
                                                   _%e3996640112%_
                                                   _%hd3996740116%_
                                                   _%tl3996840119%_
                                                   _%e3996940122%_
                                                   _%hd3997040126%_
                                                   _%tl3997140129%_))))
                                          (_%__match4146241463%_
                                           _%e3996640112%_
                                           _%hd3996740116%_
                                           _%tl3996840119%_
                                           _%e3996940122%_
                                           _%hd3997040126%_
                                           _%tl3997140129%_)))))))
                      (_%loop3997840148%_ _%target3997540142%_ '())))))
            (if (gx#stx-pair? _%__stx4138341384%_)
                (let ((_%e3995140253%_ (gx#syntax-e _%__stx4138341384%_)))
                  (let ((_%tl3995340260%_
                         (let () (declare (not safe)) (##cdr _%e3995140253%_)))
                        (_%hd3995240257%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3995140253%_))))
                    (if (gx#stx-pair? _%tl3995340260%_)
                        (let ((_%e3995440263%_ (gx#syntax-e _%tl3995340260%_)))
                          (let ((_%tl3995640270%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3995440263%_)))
                                (_%hd3995540267%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3995440263%_))))
                            (if (gx#stx-pair? _%hd3995540267%_)
                                (let ((_%e3995740273%_
                                       (gx#syntax-e _%hd3995540267%_)))
                                  (let ((_%tl3995940280%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3995740273%_)))
                                        (_%hd3995840277%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3995740273%_))))
                                    (if (gx#stx-pair? _%tl3995640270%_)
                                        (let ((_%e3996040283%_
                                               (gx#syntax-e _%tl3995640270%_)))
                                          (let ((_%tl3996240290%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3996040283%_)))
                                                (_%hd3996140287%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3996040283%_))))
                                            (if (gx#stx-null? _%tl3996240290%_)
                                                (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                     (gx#datum->syntax
                                                      '#f
                                                      'setfid))
                                                    (let ((_%L40293%_
                                                           _%hd3996140287%_)
                                                          (_%L40295%_
                                                           _%hd3995840277%_))
                                                      (_%__kont4138641387%_
                                                       _%L40293%_
                                                       _%L40295%_))
                                                    (if (gx#stx-pair/null?
                                                         _%tl3995940280%_)
                                                        (let ((_%__splice4139041391%_
                                                               (gx#syntax-split-splice
                                                                _%tl3995940280%_
                                                                '0)))
                                                          (let ((_%tl3997740145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4139041391%_ '1)))
                        (_%target3997540142%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4139041391%_ '0))))
                    (if (gx#stx-null? _%tl3997740145%_)
                        (_%__match4145041451%_
                         _%e3995140253%_
                         _%hd3995240257%_
                         _%tl3995340260%_
                         _%e3995440263%_
                         _%hd3995540267%_
                         _%tl3995640270%_
                         _%e3995740273%_
                         _%hd3995840277%_
                         _%tl3995940280%_
                         _%__splice4139041391%_
                         _%target3997540142%_
                         _%tl3997740145%_)
                        (_%__match4146241463%_
                         _%e3995140253%_
                         _%hd3995240257%_
                         _%tl3995340260%_
                         _%e3995440263%_
                         _%hd3995540267%_
                         _%tl3995640270%_))))
                (_%__match4146241463%_
                 _%e3995140253%_
                 _%hd3995240257%_
                 _%tl3995340260%_
                 _%e3995440263%_
                 _%hd3995540267%_
                 _%tl3995640270%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%tl3995940280%_)
                                                    (let ((_%__splice4139041391%_
                                                           (gx#syntax-split-splice
                                                            _%tl3995940280%_
                                                            '0)))
                                                      (let ((_%tl3997740145%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4139041391%_ '1)))
                    (_%target3997540142%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4139041391%_ '0))))
                (if (gx#stx-null? _%tl3997740145%_)
                    (_%__match4145041451%_
                     _%e3995140253%_
                     _%hd3995240257%_
                     _%tl3995340260%_
                     _%e3995440263%_
                     _%hd3995540267%_
                     _%tl3995640270%_
                     _%e3995740273%_
                     _%hd3995840277%_
                     _%tl3995940280%_
                     _%__splice4139041391%_
                     _%target3997540142%_
                     _%tl3997740145%_)
                    (_%__match4146241463%_
                     _%e3995140253%_
                     _%hd3995240257%_
                     _%tl3995340260%_
                     _%e3995440263%_
                     _%hd3995540267%_
                     _%tl3995640270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match4146241463%_
                                                     _%e3995140253%_
                                                     _%hd3995240257%_
                                                     _%tl3995340260%_
                                                     _%e3995440263%_
                                                     _%hd3995540267%_
                                                     _%tl3995640270%_)))))
                                        (if (gx#stx-pair/null?
                                             _%tl3995940280%_)
                                            (let ((_%__splice4139041391%_
                                                   (gx#syntax-split-splice
                                                    _%tl3995940280%_
                                                    '0)))
                                              (let ((_%tl3997740145%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4139041391%_
                                                        '1)))
                                                    (_%target3997540142%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4139041391%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3997740145%_)
                                                    (_%__match4145041451%_
                                                     _%e3995140253%_
                                                     _%hd3995240257%_
                                                     _%tl3995340260%_
                                                     _%e3995440263%_
                                                     _%hd3995540267%_
                                                     _%tl3995640270%_
                                                     _%e3995740273%_
                                                     _%hd3995840277%_
                                                     _%tl3995940280%_
                                                     _%__splice4139041391%_
                                                     _%target3997540142%_
                                                     _%tl3997740145%_)
                                                    (_%__match4146241463%_
                                                     _%e3995140253%_
                                                     _%hd3995240257%_
                                                     _%tl3995340260%_
                                                     _%e3995440263%_
                                                     _%hd3995540267%_
                                                     _%tl3995640270%_))))
                                            (_%__match4146241463%_
                                             _%e3995140253%_
                                             _%hd3995240257%_
                                             _%tl3995340260%_
                                             _%e3995440263%_
                                             _%hd3995540267%_
                                             _%tl3995640270%_)))))
                                (_%__match4146241463%_
                                 _%e3995140253%_
                                 _%hd3995240257%_
                                 _%tl3995340260%_
                                 _%e3995440263%_
                                 _%hd3995540267%_
                                 _%tl3995640270%_))))
                        (let () (declare (not safe)) (_%g3994740010%_)))))
                (let () (declare (not safe)) (_%g3994740010%_))))))))
  (define |gerbil/core/more-sugar[:0:]#set!|
    (lambda (_%stx40331%_)
      (|gerbil/core/more-sugar[1]#expand-set!| _%stx40331%_)))
  (define |gerbil/core/more-sugar[:0:]#values-set!|
    (lambda (_%stx40334%_)
      (let* ((_%g4033740361%_
              (lambda (_%g4033840357%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4033840357%_)))
             (_%g4033640539%_
              (lambda (_%g4033840365%_)
                (if (gx#stx-pair? _%g4033840365%_)
                    (let ((_%e4034140368%_ (gx#syntax-e _%g4033840365%_)))
                      (let ((_%hd4034240372%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4034140368%_)))
                            (_%tl4034340375%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4034140368%_))))
                        (if (gx#stx-pair/null? _%tl4034340375%_)
                            (if (let ((__tmp41546
                                       (gx#stx-length _%tl4034340375%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp41546 '1))
                                (let ((_g41547_
                                       (gx#syntax-split-splice
                                        _%tl4034340375%_
                                        '1)))
                                  (begin
                                    (let ((_g41548_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g41547_)
                                                 (##vector-length _g41547_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g41548_ 2)))
                                          (error "Context expects 2 values"
                                                 _g41548_)))
                                    (let ((_%target4034440378%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g41547_ 0)))
                                          (_%tl4034640381%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g41547_ 1))))
                                      (if (gx#stx-pair? _%tl4034640381%_)
                                          (let ((_%e4035340384%_
                                                 (gx#syntax-e
                                                  _%tl4034640381%_)))
                                            (let ((_%hd4035440388%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4035340384%_)))
                                                  (_%tl4035540391%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4035340384%_))))
                                              (if (gx#stx-null?
                                                   _%tl4035540391%_)
                                                  (letrec ((_%loop4034740394%_
                                                            (lambda (_%hd4034540398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%tgt4035140401%_)
                      (if (gx#stx-pair? _%hd4034540398%_)
                          (let ((_%e4034840404%_
                                 (gx#syntax-e _%hd4034540398%_)))
                            (let ((_%lp-hd4034940408%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4034840404%_)))
                                  (_%lp-tl4035040411%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4034840404%_))))
                              (_%loop4034740394%_
                               _%lp-tl4035040411%_
                               (cons _%lp-hd4034940408%_ _%tgt4035140401%_))))
                          (let ((_%tgt4035240414%_
                                 (reverse _%tgt4035140401%_)))
                            ((lambda (_%L40418%_ _%L40420%_)
                               (let* ((_%g4043840455%_
                                       (lambda (_%g4043940451%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g4043940451%_)))
                                      (_%g4043740527%_
                                       (lambda (_%g4043940459%_)
                                         (if (gx#stx-pair/null?
                                              _%g4043940459%_)
                                             (let ((_g41549_
                                                    (gx#syntax-split-splice
                                                     _%g4043940459%_
                                                     '0)))
                                               (begin
                                                 (let ((_g41550_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g41549_)
                                                              (##vector-length
                                                               _g41549_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g41550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g41550_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target4044140462%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g41549_
                                                           0)))
                                                       (_%tl4044340465%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g41549_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl4044340465%_)
                                                       (letrec ((_%loop4044440468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd4044240472%_ _%$e4044840475%_)
                           (if (gx#stx-pair? _%hd4044240472%_)
                               (let ((_%e4044540478%_
                                      (gx#syntax-e _%hd4044240472%_)))
                                 (let ((_%lp-hd4044640482%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4044540478%_)))
                                       (_%lp-tl4044740485%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4044540478%_))))
                                   (_%loop4044440468%_
                                    _%lp-tl4044740485%_
                                    (cons _%lp-hd4044640482%_
                                          _%$e4044840475%_))))
                               (let ((_%$e4044940488%_
                                      (reverse _%$e4044840475%_)))
                                 ((lambda (_%L40492%_)
                                    (cons (gx#datum->syntax '#f 'let-values)
                                          (cons (cons (cons (foldr (lambda (_%g4051040513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4051140516%_)
                             (cons _%g4051040513%_ _%g4051140516%_))
                           '()
                           _%L40492%_)
                    (cons _%L40418%_ '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L40492%_
                                                   _%L40420%_)
                                                  (foldr (lambda (_%g4050740519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4050840522%_
                          _%g4050940524%_)
                   (cons (cons (gx#datum->syntax '#f 'set!)
                               (cons _%g4050840522%_
                                     (cons _%g4050740519%_ '())))
                         _%g4050940524%_))
                 '()
                 _%L40492%_
                 _%L40420%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%$e4044940488%_))))))
                 (_%loop4044440468%_ _%target4044140462%_ '()))
               (_%g4043840455%_ _%g4043940459%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4043840455%_
                                              _%g4043940459%_)))))
                                 (_%g4043740527%_
                                  (gx#gentemps
                                   (foldr (lambda (_%g4053040533%_
                                                   _%g4053140536%_)
                                            (cons _%g4053040533%_
                                                  _%g4053140536%_))
                                          '()
                                          _%L40420%_)))))
                             _%hd4035440388%_
                             _%tgt4035240414%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4034740394%_
                                                     _%target4034440378%_
                                                     '()))
                                                  (_%g4033740361%_
                                                   _%g4033840365%_))))
                                          (_%g4033740361%_ _%g4033840365%_)))))
                                (_%g4033740361%_ _%g4033840365%_))
                            (_%g4033740361%_ _%g4033840365%_))))
                    (_%g4033740361%_ _%g4033840365%_)))))
        (_%g4033640539%_ _%stx40334%_))))
  (define |gerbil/core/more-sugar[:0:]#parameterize|
    (lambda (_%stx40545%_)
      (let* ((_%__stx4148541486%_ _%stx40545%_)
             (_%g4054940607%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4148541486%_))))
        (let ((_%__kont4148841489%_
               (lambda (_%L40941%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (foldr (lambda (_%g4095740960%_ _%g4095840963%_)
                                      (cons _%g4095740960%_ _%g4095840963%_))
                                    '()
                                    _%L40941%_)))))
              (_%__kont4149241493%_
               (lambda (_%L40718%_ _%L40720%_ _%L40721%_)
                 (let* ((_%g4074440752%_
                         (lambda (_%g4074540748%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4074540748%_)))
                        (_%g4074340872%_
                         (lambda (_%g4074540756%_)
                           ((lambda (_%L40759%_)
                              (let* ((_%g4077140788%_
                                      (lambda (_%g4077240784%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g4077240784%_)))
                                     (_%g4077040852%_
                                      (lambda (_%g4077240792%_)
                                        (if (gx#stx-pair/null? _%g4077240792%_)
                                            (let ((_g41551_
                                                   (gx#syntax-split-splice
                                                    _%g4077240792%_
                                                    '0)))
                                              (begin
                                                (let ((_g41552_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g41551_)
                                                             (##vector-length
                                                              _g41551_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g41552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g41552_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target4077440795%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41551_
                                                          0)))
                                                      (_%tl4077640798%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41551_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl4077640798%_)
                                                      (letrec ((_%loop4077740801%_
                                                                (lambda (_%hd4077540805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%arg4078140808%_)
                          (if (gx#stx-pair? _%hd4077540805%_)
                              (let ((_%e4077840811%_
                                     (gx#syntax-e _%hd4077540805%_)))
                                (let ((_%lp-hd4077940815%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4077840811%_)))
                                      (_%lp-tl4078040818%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4077840811%_))))
                                  (_%loop4077740801%_
                                   _%lp-tl4078040818%_
                                   (cons _%lp-hd4077940815%_
                                         _%arg4078140808%_))))
                              (let ((_%arg4078240821%_
                                     (reverse _%arg4078140808%_)))
                                ((lambda (_%L40825%_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'call-with-parameters)
                                         (cons _%L40759%_
                                               (foldr (lambda (_%g4084340846%_
                                                               _%g4084440849%_)
                                                        (cons _%g4084340846%_
                                                              _%g4084440849%_))
                                                      '()
                                                      _%L40825%_))))
                                 _%arg4078240821%_))))))
                (_%loop4077740801%_ _%target4077440795%_ '()))
              (_%g4077140788%_ _%g4077240792%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4077140788%_
                                             _%g4077240792%_)))))
                                (_%g4077040852%_
                                 (foldr cons*
                                        '()
                                        (gx#syntax->list
                                         (foldr (lambda (_%g4085540858%_
                                                         _%g4085640861%_)
                                                  (cons _%g4085540858%_
                                                        _%g4085640861%_))
                                                '()
                                                _%L40721%_))
                                        (gx#syntax->list
                                         (foldr (lambda (_%g4086340866%_
                                                         _%g4086440869%_)
                                                  (cons _%g4086340866%_
                                                        _%g4086440869%_))
                                                '()
                                                _%L40720%_))))))
                            _%g4074540756%_))))
                   (_%g4074340872%_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (foldr (lambda (_%g4087540878%_
                                                 _%g4087640881%_)
                                          (cons _%g4087540878%_
                                                _%g4087640881%_))
                                        '()
                                        _%L40718%_)))
                     (gx#stx-source _%stx40545%_)))))))
          (let* ((_%__match4154041541%_
                  (lambda (_%e4057040614%_
                           _%hd4057140618%_
                           _%tl4057240621%_
                           _%e4057340624%_
                           _%hd4057440628%_
                           _%tl4057540631%_
                           _%__splice4149441495%_
                           _%target4057640634%_
                           _%tl4057840637%_)
                    (letrec ((_%loop4057940640%_
                              (lambda (_%hd4057740644%_
                                       _%expr4058340647%_
                                       _%param4058440649%_)
                                (if (gx#stx-pair? _%hd4057740644%_)
                                    (let ((_%e4058040652%_
                                           (gx#syntax-e _%hd4057740644%_)))
                                      (let ((_%lp-tl4058240659%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4058040652%_)))
                                            (_%lp-hd4058140656%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4058040652%_))))
                                        (if (gx#stx-pair? _%lp-hd4058140656%_)
                                            (let ((_%e4059640662%_
                                                   (gx#syntax-e
                                                    _%lp-hd4058140656%_)))
                                              (let ((_%tl4059840669%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4059640662%_)))
                                                    (_%hd4059740666%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4059640662%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4059840669%_)
                                                    (let ((_%e4059940672%_
                                                           (gx#syntax-e
                                                            _%tl4059840669%_)))
                                                      (let ((_%tl4060140679%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4059940672%_)))
                    (_%hd4060040676%_
                     (let () (declare (not safe)) (##car _%e4059940672%_))))
                (if (gx#stx-null? _%tl4060140679%_)
                    (_%loop4057940640%_
                     _%lp-tl4058240659%_
                     (cons _%hd4060040676%_ _%expr4058340647%_)
                     (cons _%hd4059740666%_ _%param4058440649%_))
                    (let () (declare (not safe)) (_%g4054940607%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4054940607%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4054940607%_)))))
                                    (let ((_%param4058640685%_
                                           (reverse _%param4058440649%_))
                                          (_%expr4058540682%_
                                           (reverse _%expr4058340647%_)))
                                      (if (gx#stx-pair/null? _%tl4057540631%_)
                                          (let ((_%__splice4149641497%_
                                                 (gx#syntax-split-splice
                                                  _%tl4057540631%_
                                                  '0)))
                                            (let ((_%tl4058940691%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4149641497%_
                                                      '1)))
                                                  (_%target4058740688%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4149641497%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4058940691%_)
                                                  (letrec ((_%loop4059040694%_
                                                            (lambda (_%hd4058840698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body4059440701%_)
                      (if (gx#stx-pair? _%hd4058840698%_)
                          (let ((_%e4059140704%_
                                 (gx#syntax-e _%hd4058840698%_)))
                            (let ((_%lp-tl4059340711%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4059140704%_)))
                                  (_%lp-hd4059240708%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4059140704%_))))
                              (_%loop4059040694%_
                               _%lp-tl4059340711%_
                               (cons _%lp-hd4059240708%_ _%body4059440701%_))))
                          (let ((_%body4059540714%_
                                 (reverse _%body4059440701%_)))
                            (_%__kont4149241493%_
                             _%body4059540714%_
                             _%expr4058540682%_
                             _%param4058640685%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4059040694%_
                                                     _%target4058740688%_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4054940607%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4054940607%_))))))))
                      (_%loop4057940640%_ _%target4057640634%_ '() '()))))
                 (_%__match4152041521%_
                  (lambda (_%e4055240891%_
                           _%hd4055340895%_
                           _%tl4055440898%_
                           _%e4055540901%_
                           _%hd4055640905%_
                           _%tl4055740908%_
                           _%__splice4149041491%_
                           _%target4055840911%_
                           _%tl4056040914%_)
                    (letrec ((_%loop4056140917%_
                              (lambda (_%hd4055940921%_ _%body4056540924%_)
                                (if (gx#stx-pair? _%hd4055940921%_)
                                    (let ((_%e4056240927%_
                                           (gx#syntax-e _%hd4055940921%_)))
                                      (let ((_%lp-tl4056440934%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4056240927%_)))
                                            (_%lp-hd4056340931%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4056240927%_))))
                                        (_%loop4056140917%_
                                         _%lp-tl4056440934%_
                                         (cons _%lp-hd4056340931%_
                                               _%body4056540924%_))))
                                    (let ((_%body4056640937%_
                                           (reverse _%body4056540924%_)))
                                      (_%__kont4148841489%_
                                       _%body4056640937%_))))))
                      (_%loop4056140917%_ _%target4055840911%_ '())))))
            (if (gx#stx-pair? _%__stx4148541486%_)
                (let ((_%e4055240891%_ (gx#syntax-e _%__stx4148541486%_)))
                  (let ((_%tl4055440898%_
                         (let () (declare (not safe)) (##cdr _%e4055240891%_)))
                        (_%hd4055340895%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4055240891%_))))
                    (if (gx#stx-pair? _%tl4055440898%_)
                        (let ((_%e4055540901%_ (gx#syntax-e _%tl4055440898%_)))
                          (let ((_%tl4055740908%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4055540901%_)))
                                (_%hd4055640905%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4055540901%_))))
                            (if (gx#stx-null? _%hd4055640905%_)
                                (if (gx#stx-pair/null? _%tl4055740908%_)
                                    (let ((_%__splice4149041491%_
                                           (gx#syntax-split-splice
                                            _%tl4055740908%_
                                            '0)))
                                      (let ((_%tl4056040914%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4149041491%_
                                                '1)))
                                            (_%target4055840911%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4149041491%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4056040914%_)
                                            (_%__match4152041521%_
                                             _%e4055240891%_
                                             _%hd4055340895%_
                                             _%tl4055440898%_
                                             _%e4055540901%_
                                             _%hd4055640905%_
                                             _%tl4055740908%_
                                             _%__splice4149041491%_
                                             _%target4055840911%_
                                             _%tl4056040914%_)
                                            (if (gx#stx-pair/null?
                                                 _%hd4055640905%_)
                                                (let ((_%__splice4149441495%_
                                                       (gx#syntax-split-splice
                                                        _%hd4055640905%_
                                                        '0)))
                                                  (let ((_%tl4057840637%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4149441495%_
                                                            '1)))
                                                        (_%target4057640634%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4149441495%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4057840637%_)
                                                        (_%__match4154041541%_
                                                         _%e4055240891%_
                                                         _%hd4055340895%_
                                                         _%tl4055440898%_
                                                         _%e4055540901%_
                                                         _%hd4055640905%_
                                                         _%tl4055740908%_
                                                         _%__splice4149441495%_
                                                         _%target4057640634%_
                                                         _%tl4057840637%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4054940607%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4054940607%_))))))
                                    (if (gx#stx-pair/null? _%hd4055640905%_)
                                        (let ((_%__splice4149441495%_
                                               (gx#syntax-split-splice
                                                _%hd4055640905%_
                                                '0)))
                                          (let ((_%tl4057840637%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4149441495%_
                                                    '1)))
                                                (_%target4057640634%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4149441495%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4057840637%_)
                                                (_%__match4154041541%_
                                                 _%e4055240891%_
                                                 _%hd4055340895%_
                                                 _%tl4055440898%_
                                                 _%e4055540901%_
                                                 _%hd4055640905%_
                                                 _%tl4055740908%_
                                                 _%__splice4149441495%_
                                                 _%target4057640634%_
                                                 _%tl4057840637%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4054940607%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4054940607%_))))
                                (if (gx#stx-pair/null? _%hd4055640905%_)
                                    (let ((_%__splice4149441495%_
                                           (gx#syntax-split-splice
                                            _%hd4055640905%_
                                            '0)))
                                      (let ((_%tl4057840637%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4149441495%_
                                                '1)))
                                            (_%target4057640634%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4149441495%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4057840637%_)
                                            (_%__match4154041541%_
                                             _%e4055240891%_
                                             _%hd4055340895%_
                                             _%tl4055440898%_
                                             _%e4055540901%_
                                             _%hd4055640905%_
                                             _%tl4055740908%_
                                             _%__splice4149441495%_
                                             _%target4057640634%_
                                             _%tl4057840637%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4054940607%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4054940607%_))))))
                        (let () (declare (not safe)) (_%g4054940607%_)))))
                (let () (declare (not safe)) (_%g4054940607%_))))))))
  (define |gerbil/core/more-sugar[:0:]#let/cc|
    (lambda (_%$stx40974%_)
      (let* ((_%g4097841002%_
              (lambda (_%g4097940998%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4097940998%_)))
             (_%g4097741087%_
              (lambda (_%g4097941006%_)
                (if (gx#stx-pair? _%g4097941006%_)
                    (let ((_%e4098241009%_ (gx#syntax-e _%g4097941006%_)))
                      (let ((_%hd4098341013%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4098241009%_)))
                            (_%tl4098441016%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4098241009%_))))
                        (if (gx#stx-pair? _%tl4098441016%_)
                            (let ((_%e4098541019%_
                                   (gx#syntax-e _%tl4098441016%_)))
                              (let ((_%hd4098641023%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4098541019%_)))
                                    (_%tl4098741026%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4098541019%_))))
                                (if (gx#stx-pair/null? _%tl4098741026%_)
                                    (let ((_g41553_
                                           (gx#syntax-split-splice
                                            _%tl4098741026%_
                                            '0)))
                                      (begin
                                        (let ((_g41554_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g41553_)
                                                     (##vector-length _g41553_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g41554_ 2)))
                                              (error "Context expects 2 values"
                                                     _g41554_)))
                                        (let ((_%target4098841029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g41553_ 0)))
                                              (_%tl4099041032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g41553_ 1))))
                                          (if (gx#stx-null? _%tl4099041032%_)
                                              (letrec ((_%loop4099141035%_
                                                        (lambda (_%hd4098941039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body4099541042%_)
                  (if (gx#stx-pair? _%hd4098941039%_)
                      (let ((_%e4099241045%_ (gx#syntax-e _%hd4098941039%_)))
                        (let ((_%lp-hd4099341049%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4099241045%_)))
                              (_%lp-tl4099441052%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4099241045%_))))
                          (_%loop4099141035%_
                           _%lp-tl4099441052%_
                           (cons _%lp-hd4099341049%_ _%body4099541042%_))))
                      (let ((_%body4099641055%_ (reverse _%body4099541042%_)))
                        ((lambda (_%L41059%_ _%L41061%_)
                           (if (gx#identifier? _%L41061%_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _%L41061%_ '())
                                                       (foldr (lambda (_%g4107841081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4107941084%_)
                        (cons _%g4107841081%_ _%g4107941084%_))
                      '()
                      _%L41059%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_%g4097841002%_ _%g4097941006%_)))
                         _%body4099641055%_
                         _%hd4098641023%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop4099141035%_
                                                 _%target4098841029%_
                                                 '()))
                                              (_%g4097841002%_
                                               _%g4097941006%_)))))
                                    (_%g4097841002%_ _%g4097941006%_))))
                            (_%g4097841002%_ _%g4097941006%_))))
                    (_%g4097841002%_ _%g4097941006%_)))))
        (_%g4097741087%_ _%$stx40974%_))))
  (define |gerbil/core/more-sugar[:0:]#unwind-protect|
    (lambda (_%$stx41092%_)
      (let* ((_%g4109641124%_
              (lambda (_%g4109741120%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4109741120%_)))
             (_%g4109541223%_
              (lambda (_%g4109741128%_)
                (if (gx#stx-pair? _%g4109741128%_)
                    (let ((_%e4110141131%_ (gx#syntax-e _%g4109741128%_)))
                      (let ((_%hd4110241135%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4110141131%_)))
                            (_%tl4110341138%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4110141131%_))))
                        (if (gx#stx-pair? _%tl4110341138%_)
                            (let ((_%e4110441141%_
                                   (gx#syntax-e _%tl4110341138%_)))
                              (let ((_%hd4110541145%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4110441141%_)))
                                    (_%tl4110641148%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4110441141%_))))
                                (if (gx#stx-pair? _%tl4110641148%_)
                                    (let ((_%e4110741151%_
                                           (gx#syntax-e _%tl4110641148%_)))
                                      (let ((_%hd4110841155%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4110741151%_)))
                                            (_%tl4110941158%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4110741151%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4110941158%_)
                                            (let ((_g41555_
                                                   (gx#syntax-split-splice
                                                    _%tl4110941158%_
                                                    '0)))
                                              (begin
                                                (let ((_g41556_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g41555_)
                                                             (##vector-length
                                                              _g41555_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g41556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g41556_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target4111041161%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41555_
                                                          0)))
                                                      (_%tl4111241164%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41555_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl4111241164%_)
                                                      (letrec ((_%loop4111341167%_
                                                                (lambda (_%hd4111141171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%rest4111741174%_)
                          (if (gx#stx-pair? _%hd4111141171%_)
                              (let ((_%e4111441177%_
                                     (gx#syntax-e _%hd4111141171%_)))
                                (let ((_%lp-hd4111541181%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4111441177%_)))
                                      (_%lp-tl4111641184%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4111441177%_))))
                                  (_%loop4111341167%_
                                   _%lp-tl4111641184%_
                                   (cons _%lp-hd4111541181%_
                                         _%rest4111741174%_))))
                              (let ((_%rest4111841187%_
                                     (reverse _%rest4111741174%_)))
                                ((lambda (_%L41191%_ _%L41193%_ _%L41194%_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _%L41194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L41193%_
                               (foldr (lambda (_%g4121441217%_ _%g4121541220%_)
                                        (cons _%g4121441217%_ _%g4121541220%_))
                                      '()
                                      _%L41191%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _%rest4111841187%_
                                 _%hd4110841155%_
                                 _%hd4110541145%_))))))
                (_%loop4111341167%_ _%target4111041161%_ '()))
              (_%g4109641124%_ _%g4109741128%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4109641124%_
                                             _%g4109741128%_))))
                                    (_%g4109641124%_ _%g4109741128%_))))
                            (_%g4109641124%_ _%g4109741128%_))))
                    (_%g4109641124%_ _%g4109741128%_)))))
        (_%g4109541223%_ _%$stx41092%_))))
  (define |gerbil/core/more-sugar[:0:]#@bytes|
    (lambda (_%stx41228%_)
      (let* ((_%g4123141245%_
              (lambda (_%g4123241241%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4123241241%_)))
             (_%g4123041317%_
              (lambda (_%g4123241249%_)
                (if (gx#stx-pair? _%g4123241249%_)
                    (let ((_%e4123441252%_ (gx#syntax-e _%g4123241249%_)))
                      (let ((_%hd4123541256%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4123441252%_)))
                            (_%tl4123641259%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4123441252%_))))
                        (if (gx#stx-pair? _%tl4123641259%_)
                            (let ((_%e4123741262%_
                                   (gx#syntax-e _%tl4123641259%_)))
                              (let ((_%hd4123841266%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4123741262%_)))
                                    (_%tl4123941269%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4123741262%_))))
                                (if (gx#stx-null? _%tl4123941269%_)
                                    ((lambda (_%L41272%_)
                                       (if (gx#stx-string? _%L41272%_)
                                           (let* ((_%g4128641294%_
                                                   (lambda (_%g4128741290%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4128741290%_)))
                                                  (_%g4128541313%_
                                                   (lambda (_%g4128741298%_)
                                                     ((lambda (_%L41301%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _%L41301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
              _%g4128741298%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4128541313%_
                                              (string->bytes
                                               (gx#stx-e _%L41272%_))))
                                           (_%g4123141245%_ _%g4123241249%_)))
                                     _%hd4123841266%_)
                                    (_%g4123141245%_ _%g4123241249%_))))
                            (_%g4123141245%_ _%g4123241249%_))))
                    (_%g4123141245%_ _%g4123241249%_)))))
        (_%g4123041317%_ _%stx41228%_))))
  (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
    (lambda (_%stx41321%_)
      (let* ((_%g4132441338%_
              (lambda (_%g4132541334%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4132541334%_)))
             (_%g4132341379%_
              (lambda (_%g4132541342%_)
                (if (gx#stx-pair? _%g4132541342%_)
                    (let ((_%e4132741345%_ (gx#syntax-e _%g4132541342%_)))
                      (let ((_%hd4132841349%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4132741345%_)))
                            (_%tl4132941352%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4132741345%_))))
                        (if (gx#stx-pair? _%tl4132941352%_)
                            (let ((_%e4133041355%_
                                   (gx#syntax-e _%tl4132941352%_)))
                              (let ((_%hd4133141359%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4133041355%_)))
                                    (_%tl4133241362%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4133041355%_))))
                                (if (gx#stx-null? _%tl4133241362%_)
                                    ((lambda (_%L41365%_)
                                       (if (gx#current-expander-compiling?)
                                           (gx#eval-syntax _%L41365%_)
                                           '#!void)
                                       (cons (gx#datum->syntax '#f 'void) '()))
                                     _%hd4133141359%_)
                                    (_%g4132441338%_ _%g4132541342%_))))
                            (_%g4132441338%_ _%g4132541342%_))))
                    (_%g4132441338%_ _%g4132541342%_)))))
        (_%g4132341379%_ _%stx41321%_)))))
