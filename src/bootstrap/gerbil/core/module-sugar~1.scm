(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx41622%_)
      (let* ((_%__stx4427644277%_ _%$stx41622%_)
             (_%g4162741646%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4427644277%_))))
        (let ((_%__kont4427944280%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4428144282%_
               (lambda (_%L41673%_ _%L41675%_ _%L41676%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%L41675%_
                                   (cons (cons _%L41676%_ _%L41673%_) '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%L41675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4427644277%_)
              (let ((_%e4162941698%_ (gx#syntax-e _%__stx4427644277%_)))
                (let ((_%tl4163141705%_
                       (let () (declare (not safe)) (##cdr _%e4162941698%_)))
                      (_%hd4163041702%_
                       (let () (declare (not safe)) (##car _%e4162941698%_))))
                  (if (gx#stx-null? _%tl4163141705%_)
                      (_%__kont4427944280%_)
                      (if (gx#stx-pair? _%tl4163141705%_)
                          (let ((_%e4163841663%_
                                 (gx#syntax-e _%tl4163141705%_)))
                            (let ((_%tl4164041670%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4163841663%_)))
                                  (_%hd4163941667%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4163841663%_))))
                              (_%__kont4428144282%_
                               _%tl4164041670%_
                               _%hd4163941667%_
                               _%hd4163041702%_)))
                          (let () (declare (not safe)) (_%g4162741646%_))))))
              (let () (declare (not safe)) (_%g4162741646%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx41716%_)
      (let* ((_%__stx4430644307%_ _%$stx41716%_)
             (_%g4172141761%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4430644307%_))))
        (let ((_%__kont4430944310%_
               (lambda (_%L41899%_ _%L41901%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L41901%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%L41899%_ '()))
                                   '())))))
              (_%__kont4431144312%_
               (lambda (_%L41828%_ _%L41830%_ _%L41831%_ _%L41832%_)
                 (cons _%L41832%_
                       (cons _%L41831%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L41830%_
                                               (foldr (lambda (_%g4185341856%_
                                                               _%g4185441859%_)
                                                        (cons _%g4185341856%_
                                                              _%g4185441859%_))
                                                      '()
                                                      _%L41828%_)))
                                   '()))))))
          (let* ((_%__match4436144362%_
                  (lambda (_%e4173841768%_
                           _%hd4173941772%_
                           _%tl4174041775%_
                           _%e4174141778%_
                           _%hd4174241782%_
                           _%tl4174341785%_
                           _%e4174441788%_
                           _%hd4174541792%_
                           _%tl4174641795%_
                           _%__splice4431344314%_
                           _%target4174741798%_
                           _%tl4174941801%_)
                    (letrec ((_%loop4175041804%_
                              (lambda (_%hd4174841808%_ _%body4175441811%_)
                                (if (gx#stx-pair? _%hd4174841808%_)
                                    (let ((_%e4175141814%_
                                           (gx#syntax-e _%hd4174841808%_)))
                                      (let ((_%lp-tl4175341821%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4175141814%_)))
                                            (_%lp-hd4175241818%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4175141814%_))))
                                        (_%loop4175041804%_
                                         _%lp-tl4175341821%_
                                         (cons _%lp-hd4175241818%_
                                               _%body4175441811%_))))
                                    (let ((_%body4175541824%_
                                           (reverse _%body4175441811%_)))
                                      (let ((_%L41828%_ _%body4175541824%_)
                                            (_%L41830%_ _%tl4174641795%_)
                                            (_%L41831%_ _%hd4174541792%_)
                                            (_%L41832%_ _%hd4173941772%_))
                                        (if (gx#identifier? _%L41831%_)
                                            (_%__kont4431144312%_
                                             _%L41828%_
                                             _%L41830%_
                                             _%L41831%_
                                             _%L41832%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4172141761%_)))))))))
                      (_%loop4175041804%_ _%target4174741798%_ '()))))
                 (_%__match4433544336%_
                  (lambda (_%e4172541869%_
                           _%hd4172641873%_
                           _%tl4172741876%_
                           _%e4172841879%_
                           _%hd4172941883%_
                           _%tl4173041886%_
                           _%e4173141889%_
                           _%hd4173241893%_
                           _%tl4173341896%_)
                    (let ((_%L41899%_ _%hd4173241893%_)
                          (_%L41901%_ _%hd4172941883%_))
                      (if (gx#identifier? _%L41901%_)
                          (_%__kont4430944310%_ _%L41899%_ _%L41901%_)
                          (if (gx#stx-pair? _%hd4172941883%_)
                              (let ((_%e4174441788%_
                                     (gx#syntax-e _%hd4172941883%_)))
                                (let ((_%tl4174641795%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4174441788%_)))
                                      (_%hd4174541792%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4174441788%_))))
                                  (if (gx#stx-pair/null? _%tl4173041886%_)
                                      (let ((_%__splice4431344314%_
                                             (gx#syntax-split-splice
                                              _%tl4173041886%_
                                              '0)))
                                        (let ((_%tl4174941801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4431344314%_
                                                  '1)))
                                              (_%target4174741798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4431344314%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4174941801%_)
                                              (_%__match4436144362%_
                                               _%e4172541869%_
                                               _%hd4172641873%_
                                               _%tl4172741876%_
                                               _%e4172841879%_
                                               _%hd4172941883%_
                                               _%tl4173041886%_
                                               _%e4174441788%_
                                               _%hd4174541792%_
                                               _%tl4174641795%_
                                               _%__splice4431344314%_
                                               _%target4174741798%_
                                               _%tl4174941801%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4172141761%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4172141761%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4172141761%_))))))))
            (if (gx#stx-pair? _%__stx4430644307%_)
                (let ((_%e4172541869%_ (gx#syntax-e _%__stx4430644307%_)))
                  (let ((_%tl4172741876%_
                         (let () (declare (not safe)) (##cdr _%e4172541869%_)))
                        (_%hd4172641873%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4172541869%_))))
                    (if (gx#stx-pair? _%tl4172741876%_)
                        (let ((_%e4172841879%_ (gx#syntax-e _%tl4172741876%_)))
                          (let ((_%tl4173041886%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4172841879%_)))
                                (_%hd4172941883%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4172841879%_))))
                            (if (gx#stx-pair? _%tl4173041886%_)
                                (let ((_%e4173141889%_
                                       (gx#syntax-e _%tl4173041886%_)))
                                  (let ((_%tl4173341896%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4173141889%_)))
                                        (_%hd4173241893%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4173141889%_))))
                                    (if (gx#stx-null? _%tl4173341896%_)
                                        (_%__match4433544336%_
                                         _%e4172541869%_
                                         _%hd4172641873%_
                                         _%tl4172741876%_
                                         _%e4172841879%_
                                         _%hd4172941883%_
                                         _%tl4173041886%_
                                         _%e4173141889%_
                                         _%hd4173241893%_
                                         _%tl4173341896%_)
                                        (if (gx#stx-pair? _%hd4172941883%_)
                                            (let ((_%e4174441788%_
                                                   (gx#syntax-e
                                                    _%hd4172941883%_)))
                                              (let ((_%tl4174641795%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4174441788%_)))
                                                    (_%hd4174541792%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4174441788%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4173041886%_)
                                                    (let ((_%__splice4431344314%_
                                                           (gx#syntax-split-splice
                                                            _%tl4173041886%_
                                                            '0)))
                                                      (let ((_%tl4174941801%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4431344314%_ '1)))
                    (_%target4174741798%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4431344314%_ '0))))
                (if (gx#stx-null? _%tl4174941801%_)
                    (_%__match4436144362%_
                     _%e4172541869%_
                     _%hd4172641873%_
                     _%tl4172741876%_
                     _%e4172841879%_
                     _%hd4172941883%_
                     _%tl4173041886%_
                     _%e4174441788%_
                     _%hd4174541792%_
                     _%tl4174641795%_
                     _%__splice4431344314%_
                     _%target4174741798%_
                     _%tl4174941801%_)
                    (let () (declare (not safe)) (_%g4172141761%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4172141761%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4172141761%_))))))
                                (if (gx#stx-pair? _%hd4172941883%_)
                                    (let ((_%e4174441788%_
                                           (gx#syntax-e _%hd4172941883%_)))
                                      (let ((_%tl4174641795%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4174441788%_)))
                                            (_%hd4174541792%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4174441788%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4173041886%_)
                                            (let ((_%__splice4431344314%_
                                                   (gx#syntax-split-splice
                                                    _%tl4173041886%_
                                                    '0)))
                                              (let ((_%tl4174941801%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4431344314%_
                                                        '1)))
                                                    (_%target4174741798%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4431344314%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4174941801%_)
                                                    (_%__match4436144362%_
                                                     _%e4172541869%_
                                                     _%hd4172641873%_
                                                     _%tl4172741876%_
                                                     _%e4172841879%_
                                                     _%hd4172941883%_
                                                     _%tl4173041886%_
                                                     _%e4174441788%_
                                                     _%hd4174541792%_
                                                     _%tl4174641795%_
                                                     _%__splice4431344314%_
                                                     _%target4174741798%_
                                                     _%tl4174941801%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4172141761%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4172141761%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4172141761%_))))))
                        (let () (declare (not safe)) (_%g4172141761%_)))))
                (let () (declare (not safe)) (_%g4172141761%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx41921%_)
      (let* ((_%__stx4436444365%_ _%$stx41921%_)
             (_%g4192641966%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4436444365%_))))
        (let ((_%__kont4436744368%_
               (lambda (_%L42104%_ _%L42106%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42106%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%L42104%_ '()))
                                   '())))))
              (_%__kont4436944370%_
               (lambda (_%L42033%_ _%L42035%_ _%L42036%_ _%L42037%_)
                 (cons _%L42037%_
                       (cons _%L42036%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42035%_
                                               (foldr (lambda (_%g4205842061%_
                                                               _%g4205942064%_)
                                                        (cons _%g4205842061%_
                                                              _%g4205942064%_))
                                                      '()
                                                      _%L42033%_)))
                                   '()))))))
          (let* ((_%__match4441944420%_
                  (lambda (_%e4194341973%_
                           _%hd4194441977%_
                           _%tl4194541980%_
                           _%e4194641983%_
                           _%hd4194741987%_
                           _%tl4194841990%_
                           _%e4194941993%_
                           _%hd4195041997%_
                           _%tl4195142000%_
                           _%__splice4437144372%_
                           _%target4195242003%_
                           _%tl4195442006%_)
                    (letrec ((_%loop4195542009%_
                              (lambda (_%hd4195342013%_ _%body4195942016%_)
                                (if (gx#stx-pair? _%hd4195342013%_)
                                    (let ((_%e4195642019%_
                                           (gx#syntax-e _%hd4195342013%_)))
                                      (let ((_%lp-tl4195842026%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4195642019%_)))
                                            (_%lp-hd4195742023%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4195642019%_))))
                                        (_%loop4195542009%_
                                         _%lp-tl4195842026%_
                                         (cons _%lp-hd4195742023%_
                                               _%body4195942016%_))))
                                    (let ((_%body4196042029%_
                                           (reverse _%body4195942016%_)))
                                      (let ((_%L42033%_ _%body4196042029%_)
                                            (_%L42035%_ _%tl4195142000%_)
                                            (_%L42036%_ _%hd4195041997%_)
                                            (_%L42037%_ _%hd4194441977%_))
                                        (if (gx#identifier? _%L42036%_)
                                            (_%__kont4436944370%_
                                             _%L42033%_
                                             _%L42035%_
                                             _%L42036%_
                                             _%L42037%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4192641966%_)))))))))
                      (_%loop4195542009%_ _%target4195242003%_ '()))))
                 (_%__match4439344394%_
                  (lambda (_%e4193042074%_
                           _%hd4193142078%_
                           _%tl4193242081%_
                           _%e4193342084%_
                           _%hd4193442088%_
                           _%tl4193542091%_
                           _%e4193642094%_
                           _%hd4193742098%_
                           _%tl4193842101%_)
                    (let ((_%L42104%_ _%hd4193742098%_)
                          (_%L42106%_ _%hd4193442088%_))
                      (if (gx#identifier? _%L42106%_)
                          (_%__kont4436744368%_ _%L42104%_ _%L42106%_)
                          (if (gx#stx-pair? _%hd4193442088%_)
                              (let ((_%e4194941993%_
                                     (gx#syntax-e _%hd4193442088%_)))
                                (let ((_%tl4195142000%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4194941993%_)))
                                      (_%hd4195041997%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4194941993%_))))
                                  (if (gx#stx-pair/null? _%tl4193542091%_)
                                      (let ((_%__splice4437144372%_
                                             (gx#syntax-split-splice
                                              _%tl4193542091%_
                                              '0)))
                                        (let ((_%tl4195442006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4437144372%_
                                                  '1)))
                                              (_%target4195242003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4437144372%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4195442006%_)
                                              (_%__match4441944420%_
                                               _%e4193042074%_
                                               _%hd4193142078%_
                                               _%tl4193242081%_
                                               _%e4193342084%_
                                               _%hd4193442088%_
                                               _%tl4193542091%_
                                               _%e4194941993%_
                                               _%hd4195041997%_
                                               _%tl4195142000%_
                                               _%__splice4437144372%_
                                               _%target4195242003%_
                                               _%tl4195442006%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4192641966%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4192641966%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4192641966%_))))))))
            (if (gx#stx-pair? _%__stx4436444365%_)
                (let ((_%e4193042074%_ (gx#syntax-e _%__stx4436444365%_)))
                  (let ((_%tl4193242081%_
                         (let () (declare (not safe)) (##cdr _%e4193042074%_)))
                        (_%hd4193142078%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4193042074%_))))
                    (if (gx#stx-pair? _%tl4193242081%_)
                        (let ((_%e4193342084%_ (gx#syntax-e _%tl4193242081%_)))
                          (let ((_%tl4193542091%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4193342084%_)))
                                (_%hd4193442088%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4193342084%_))))
                            (if (gx#stx-pair? _%tl4193542091%_)
                                (let ((_%e4193642094%_
                                       (gx#syntax-e _%tl4193542091%_)))
                                  (let ((_%tl4193842101%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4193642094%_)))
                                        (_%hd4193742098%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4193642094%_))))
                                    (if (gx#stx-null? _%tl4193842101%_)
                                        (_%__match4439344394%_
                                         _%e4193042074%_
                                         _%hd4193142078%_
                                         _%tl4193242081%_
                                         _%e4193342084%_
                                         _%hd4193442088%_
                                         _%tl4193542091%_
                                         _%e4193642094%_
                                         _%hd4193742098%_
                                         _%tl4193842101%_)
                                        (if (gx#stx-pair? _%hd4193442088%_)
                                            (let ((_%e4194941993%_
                                                   (gx#syntax-e
                                                    _%hd4193442088%_)))
                                              (let ((_%tl4195142000%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4194941993%_)))
                                                    (_%hd4195041997%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4194941993%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4193542091%_)
                                                    (let ((_%__splice4437144372%_
                                                           (gx#syntax-split-splice
                                                            _%tl4193542091%_
                                                            '0)))
                                                      (let ((_%tl4195442006%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4437144372%_ '1)))
                    (_%target4195242003%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4437144372%_ '0))))
                (if (gx#stx-null? _%tl4195442006%_)
                    (_%__match4441944420%_
                     _%e4193042074%_
                     _%hd4193142078%_
                     _%tl4193242081%_
                     _%e4193342084%_
                     _%hd4193442088%_
                     _%tl4193542091%_
                     _%e4194941993%_
                     _%hd4195041997%_
                     _%tl4195142000%_
                     _%__splice4437144372%_
                     _%target4195242003%_
                     _%tl4195442006%_)
                    (let () (declare (not safe)) (_%g4192641966%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4192641966%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4192641966%_))))))
                                (if (gx#stx-pair? _%hd4193442088%_)
                                    (let ((_%e4194941993%_
                                           (gx#syntax-e _%hd4193442088%_)))
                                      (let ((_%tl4195142000%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4194941993%_)))
                                            (_%hd4195041997%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4194941993%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4193542091%_)
                                            (let ((_%__splice4437144372%_
                                                   (gx#syntax-split-splice
                                                    _%tl4193542091%_
                                                    '0)))
                                              (let ((_%tl4195442006%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4437144372%_
                                                        '1)))
                                                    (_%target4195242003%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4437144372%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4195442006%_)
                                                    (_%__match4441944420%_
                                                     _%e4193042074%_
                                                     _%hd4193142078%_
                                                     _%tl4193242081%_
                                                     _%e4193342084%_
                                                     _%hd4193442088%_
                                                     _%tl4193542091%_
                                                     _%e4194941993%_
                                                     _%hd4195041997%_
                                                     _%tl4195142000%_
                                                     _%__splice4437144372%_
                                                     _%target4195242003%_
                                                     _%tl4195442006%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4192641966%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4192641966%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4192641966%_))))))
                        (let () (declare (not safe)) (_%g4192641966%_)))))
                (let () (declare (not safe)) (_%g4192641966%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx42126%_)
      (let* ((_%__stx4442244423%_ _%$stx42126%_)
             (_%g4213142171%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4442244423%_))))
        (let ((_%__kont4442544426%_
               (lambda (_%L42309%_ _%L42311%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42311%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%L42309%_ '()))
                                   '())))))
              (_%__kont4442744428%_
               (lambda (_%L42238%_ _%L42240%_ _%L42241%_ _%L42242%_)
                 (cons _%L42242%_
                       (cons _%L42241%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42240%_
                                               (foldr (lambda (_%g4226342266%_
                                                               _%g4226442269%_)
                                                        (cons _%g4226342266%_
                                                              _%g4226442269%_))
                                                      '()
                                                      _%L42238%_)))
                                   '()))))))
          (let* ((_%__match4447744478%_
                  (lambda (_%e4214842178%_
                           _%hd4214942182%_
                           _%tl4215042185%_
                           _%e4215142188%_
                           _%hd4215242192%_
                           _%tl4215342195%_
                           _%e4215442198%_
                           _%hd4215542202%_
                           _%tl4215642205%_
                           _%__splice4442944430%_
                           _%target4215742208%_
                           _%tl4215942211%_)
                    (letrec ((_%loop4216042214%_
                              (lambda (_%hd4215842218%_ _%body4216442221%_)
                                (if (gx#stx-pair? _%hd4215842218%_)
                                    (let ((_%e4216142224%_
                                           (gx#syntax-e _%hd4215842218%_)))
                                      (let ((_%lp-tl4216342231%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4216142224%_)))
                                            (_%lp-hd4216242228%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4216142224%_))))
                                        (_%loop4216042214%_
                                         _%lp-tl4216342231%_
                                         (cons _%lp-hd4216242228%_
                                               _%body4216442221%_))))
                                    (let ((_%body4216542234%_
                                           (reverse _%body4216442221%_)))
                                      (let ((_%L42238%_ _%body4216542234%_)
                                            (_%L42240%_ _%tl4215642205%_)
                                            (_%L42241%_ _%hd4215542202%_)
                                            (_%L42242%_ _%hd4214942182%_))
                                        (if (gx#identifier? _%L42241%_)
                                            (_%__kont4442744428%_
                                             _%L42238%_
                                             _%L42240%_
                                             _%L42241%_
                                             _%L42242%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4213142171%_)))))))))
                      (_%loop4216042214%_ _%target4215742208%_ '()))))
                 (_%__match4445144452%_
                  (lambda (_%e4213542279%_
                           _%hd4213642283%_
                           _%tl4213742286%_
                           _%e4213842289%_
                           _%hd4213942293%_
                           _%tl4214042296%_
                           _%e4214142299%_
                           _%hd4214242303%_
                           _%tl4214342306%_)
                    (let ((_%L42309%_ _%hd4214242303%_)
                          (_%L42311%_ _%hd4213942293%_))
                      (if (gx#identifier? _%L42311%_)
                          (_%__kont4442544426%_ _%L42309%_ _%L42311%_)
                          (if (gx#stx-pair? _%hd4213942293%_)
                              (let ((_%e4215442198%_
                                     (gx#syntax-e _%hd4213942293%_)))
                                (let ((_%tl4215642205%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4215442198%_)))
                                      (_%hd4215542202%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4215442198%_))))
                                  (if (gx#stx-pair/null? _%tl4214042296%_)
                                      (let ((_%__splice4442944430%_
                                             (gx#syntax-split-splice
                                              _%tl4214042296%_
                                              '0)))
                                        (let ((_%tl4215942211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4442944430%_
                                                  '1)))
                                              (_%target4215742208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4442944430%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4215942211%_)
                                              (_%__match4447744478%_
                                               _%e4213542279%_
                                               _%hd4213642283%_
                                               _%tl4213742286%_
                                               _%e4213842289%_
                                               _%hd4213942293%_
                                               _%tl4214042296%_
                                               _%e4215442198%_
                                               _%hd4215542202%_
                                               _%tl4215642205%_
                                               _%__splice4442944430%_
                                               _%target4215742208%_
                                               _%tl4215942211%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4213142171%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4213142171%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4213142171%_))))))))
            (if (gx#stx-pair? _%__stx4442244423%_)
                (let ((_%e4213542279%_ (gx#syntax-e _%__stx4442244423%_)))
                  (let ((_%tl4213742286%_
                         (let () (declare (not safe)) (##cdr _%e4213542279%_)))
                        (_%hd4213642283%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4213542279%_))))
                    (if (gx#stx-pair? _%tl4213742286%_)
                        (let ((_%e4213842289%_ (gx#syntax-e _%tl4213742286%_)))
                          (let ((_%tl4214042296%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4213842289%_)))
                                (_%hd4213942293%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4213842289%_))))
                            (if (gx#stx-pair? _%tl4214042296%_)
                                (let ((_%e4214142299%_
                                       (gx#syntax-e _%tl4214042296%_)))
                                  (let ((_%tl4214342306%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4214142299%_)))
                                        (_%hd4214242303%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4214142299%_))))
                                    (if (gx#stx-null? _%tl4214342306%_)
                                        (_%__match4445144452%_
                                         _%e4213542279%_
                                         _%hd4213642283%_
                                         _%tl4213742286%_
                                         _%e4213842289%_
                                         _%hd4213942293%_
                                         _%tl4214042296%_
                                         _%e4214142299%_
                                         _%hd4214242303%_
                                         _%tl4214342306%_)
                                        (if (gx#stx-pair? _%hd4213942293%_)
                                            (let ((_%e4215442198%_
                                                   (gx#syntax-e
                                                    _%hd4213942293%_)))
                                              (let ((_%tl4215642205%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4215442198%_)))
                                                    (_%hd4215542202%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4215442198%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4214042296%_)
                                                    (let ((_%__splice4442944430%_
                                                           (gx#syntax-split-splice
                                                            _%tl4214042296%_
                                                            '0)))
                                                      (let ((_%tl4215942211%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4442944430%_ '1)))
                    (_%target4215742208%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4442944430%_ '0))))
                (if (gx#stx-null? _%tl4215942211%_)
                    (_%__match4447744478%_
                     _%e4213542279%_
                     _%hd4213642283%_
                     _%tl4213742286%_
                     _%e4213842289%_
                     _%hd4213942293%_
                     _%tl4214042296%_
                     _%e4215442198%_
                     _%hd4215542202%_
                     _%tl4215642205%_
                     _%__splice4442944430%_
                     _%target4215742208%_
                     _%tl4215942211%_)
                    (let () (declare (not safe)) (_%g4213142171%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4213142171%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4213142171%_))))))
                                (if (gx#stx-pair? _%hd4213942293%_)
                                    (let ((_%e4215442198%_
                                           (gx#syntax-e _%hd4213942293%_)))
                                      (let ((_%tl4215642205%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4215442198%_)))
                                            (_%hd4215542202%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4215442198%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4214042296%_)
                                            (let ((_%__splice4442944430%_
                                                   (gx#syntax-split-splice
                                                    _%tl4214042296%_
                                                    '0)))
                                              (let ((_%tl4215942211%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4442944430%_
                                                        '1)))
                                                    (_%target4215742208%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4442944430%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4215942211%_)
                                                    (_%__match4447744478%_
                                                     _%e4213542279%_
                                                     _%hd4213642283%_
                                                     _%tl4213742286%_
                                                     _%e4213842289%_
                                                     _%hd4213942293%_
                                                     _%tl4214042296%_
                                                     _%e4215442198%_
                                                     _%hd4215542202%_
                                                     _%tl4215642205%_
                                                     _%__splice4442944430%_
                                                     _%target4215742208%_
                                                     _%tl4215942211%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4213142171%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4213142171%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4213142171%_))))))
                        (let () (declare (not safe)) (_%g4213142171%_)))))
                (let () (declare (not safe)) (_%g4213142171%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx42331%_)
       (let* ((_%g4233442354%_
               (lambda (_%g4233542350%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4233542350%_)))
              (_%g4233342425%_
               (lambda (_%g4233542358%_)
                 (if (gx#stx-pair? _%g4233542358%_)
                     (let ((_%e4233742361%_ (gx#syntax-e _%g4233542358%_)))
                       (let ((_%hd4233842365%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4233742361%_)))
                             (_%tl4233942368%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4233742361%_))))
                         (if (gx#stx-pair/null? _%tl4233942368%_)
                             (let ((_g44572_
                                    (gx#syntax-split-splice
                                     _%tl4233942368%_
                                     '0)))
                               (begin
                                 (let ((_g44573_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g44572_)
                                              (##vector-length _g44572_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g44573_ 2)))
                                       (error "Context expects 2 values"
                                              _g44573_)))
                                 (let ((_%target4234042371%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44572_ 0)))
                                       (_%tl4234242374%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44572_ 1))))
                                   (if (gx#stx-null? _%tl4234242374%_)
                                       (letrec ((_%loop4234342377%_
                                                 (lambda (_%hd4234142381%_
                                                          _%body4234742384%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4234142381%_)
                                                       (let ((_%e4234442387%_
                                                              (gx#syntax-e
                                                               _%hd4234142381%_)))
                                                         (let ((_%lp-hd4234542391%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4234442387%_)))
                       (_%lp-tl4234642394%_
                        (let () (declare (not safe)) (##cdr _%e4234442387%_))))
                   (_%loop4234342377%_
                    _%lp-tl4234642394%_
                    (cons _%lp-hd4234542391%_ _%body4234742384%_))))
               (let ((_%body4234842397%_ (reverse _%body4234742384%_)))
                 ((lambda (_%L42401%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4241642419%_
                                                _%g4241742422%_)
                                         (cons _%g4241642419%_
                                               _%g4241742422%_))
                                       '()
                                       _%L42401%_))))
                  _%body4234842397%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4234342377%_
                                          _%target4234042371%_
                                          '()))
                                       (_%g4233442354%_ _%g4233542358%_)))))
                             (_%g4233442354%_ _%g4233542358%_))))
                     (_%g4233442354%_ _%g4233542358%_)))))
         (_%g4233342425%_ _%stx42331%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx42430%_)
       (let* ((_%g4243342453%_
               (lambda (_%g4243442449%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4243442449%_)))
              (_%g4243242524%_
               (lambda (_%g4243442457%_)
                 (if (gx#stx-pair? _%g4243442457%_)
                     (let ((_%e4243642460%_ (gx#syntax-e _%g4243442457%_)))
                       (let ((_%hd4243742464%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4243642460%_)))
                             (_%tl4243842467%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4243642460%_))))
                         (if (gx#stx-pair/null? _%tl4243842467%_)
                             (let ((_g44574_
                                    (gx#syntax-split-splice
                                     _%tl4243842467%_
                                     '0)))
                               (begin
                                 (let ((_g44575_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g44574_)
                                              (##vector-length _g44574_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g44575_ 2)))
                                       (error "Context expects 2 values"
                                              _g44575_)))
                                 (let ((_%target4243942470%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44574_ 0)))
                                       (_%tl4244142473%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44574_ 1))))
                                   (if (gx#stx-null? _%tl4244142473%_)
                                       (letrec ((_%loop4244242476%_
                                                 (lambda (_%hd4244042480%_
                                                          _%body4244642483%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4244042480%_)
                                                       (let ((_%e4244342486%_
                                                              (gx#syntax-e
                                                               _%hd4244042480%_)))
                                                         (let ((_%lp-hd4244442490%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4244342486%_)))
                       (_%lp-tl4244542493%_
                        (let () (declare (not safe)) (##cdr _%e4244342486%_))))
                   (_%loop4244242476%_
                    _%lp-tl4244542493%_
                    (cons _%lp-hd4244442490%_ _%body4244642483%_))))
               (let ((_%body4244742496%_ (reverse _%body4244642483%_)))
                 ((lambda (_%L42500%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4251542518%_
                                                _%g4251642521%_)
                                         (cons _%g4251542518%_
                                               _%g4251642521%_))
                                       '()
                                       _%L42500%_))))
                  _%body4244742496%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4244242476%_
                                          _%target4243942470%_
                                          '()))
                                       (_%g4243342453%_ _%g4243442457%_)))))
                             (_%g4243342453%_ _%g4243442457%_))))
                     (_%g4243342453%_ _%g4243442457%_)))))
         (_%g4243242524%_ _%stx42430%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx42529%_)
       (let* ((_%g4253242556%_
               (lambda (_%g4253342552%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4253342552%_)))
              (_%g4253142684%_
               (lambda (_%g4253342560%_)
                 (if (gx#stx-pair? _%g4253342560%_)
                     (let ((_%e4253642563%_ (gx#syntax-e _%g4253342560%_)))
                       (let ((_%hd4253742567%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4253642563%_)))
                             (_%tl4253842570%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4253642563%_))))
                         (if (gx#stx-pair? _%tl4253842570%_)
                             (let ((_%e4253942573%_
                                    (gx#syntax-e _%tl4253842570%_)))
                               (let ((_%hd4254042577%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4253942573%_)))
                                     (_%tl4254142580%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4253942573%_))))
                                 (if (gx#stx-pair/null? _%tl4254142580%_)
                                     (let ((_g44576_
                                            (gx#syntax-split-splice
                                             _%tl4254142580%_
                                             '0)))
                                       (begin
                                         (let ((_g44577_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44576_)
                                                      (##vector-length
                                                       _g44576_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44577_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44577_)))
                                         (let ((_%target4254242583%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44576_ 0)))
                                               (_%tl4254442586%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44576_ 1))))
                                           (if (gx#stx-null? _%tl4254442586%_)
                                               (letrec ((_%loop4254542589%_
                                                         (lambda (_%hd4254342593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4254942596%_)
                   (if (gx#stx-pair? _%hd4254342593%_)
                       (let ((_%e4254642599%_ (gx#syntax-e _%hd4254342593%_)))
                         (let ((_%lp-hd4254742603%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4254642599%_)))
                               (_%lp-tl4254842606%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4254642599%_))))
                           (_%loop4254542589%_
                            _%lp-tl4254842606%_
                            (cons _%lp-hd4254742603%_ _%id4254942596%_))))
                       (let ((_%id4255042609%_ (reverse _%id4254942596%_)))
                         ((lambda (_%L42613%_ _%L42615%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4263242635%_
                                                 _%g4263342638%_)
                                          (cons _%g4263242635%_
                                                _%g4263342638%_))
                                        '()
                                        _%L42613%_))
                                (let* ((_%keys42649%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4264042643%_
                                                         _%g4264142646%_)
                                                  (cons _%g4264042643%_
                                                        _%g4264142646%_))
                                                '()
                                                _%L42613%_)))
                                       (_%keytab42660%_
                                        (let ((_%ht42652%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4265442656%_)
                                             (hash-put!
                                              _%ht42652%_
                                              _%g4265442656%_
                                              '#t))
                                           _%keys42649%_)
                                          _%ht42652%_))
                                       (_%imports42663%_
                                        (gx#core-expand-import-source
                                         _%L42615%_))
                                       (_%fold-e42679%_
                                        (letrec ((_%fold-e42666%_
                                                  (lambda (_%in42669%_
                                                           _%r42671%_)
                                                    (if (gx#module-import?
                                                         _%in42669%_)
                                                        (if (hash-get
                                                             _%keytab42660%_
                                                             (gx#module-import-name
                                                              _%in42669%_))
                                                            (cons _%in42669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r42671%_)
                    _%r42671%_)
                (if (gx#import-set? _%in42669%_)
                    (foldl _%fold-e42666%_
                           _%r42671%_
                           (gx#import-set-imports _%in42669%_))
                    _%r42671%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e42666%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e42679%_
                                               '()
                                               _%imports42663%_)))
                                (_%g4253242556%_ _%g4253342560%_)))
                          _%id4255042609%_
                          _%hd4254042577%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4254542589%_
                                                  _%target4254242583%_
                                                  '()))
                                               (_%g4253242556%_
                                                _%g4253342560%_)))))
                                     (_%g4253242556%_ _%g4253342560%_))))
                             (_%g4253242556%_ _%g4253342560%_))))
                     (_%g4253242556%_ _%g4253342560%_)))))
         (_%g4253142684%_ _%stx42529%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx42689%_)
       (let* ((_%g4269242716%_
               (lambda (_%g4269342712%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4269342712%_)))
              (_%g4269142844%_
               (lambda (_%g4269342720%_)
                 (if (gx#stx-pair? _%g4269342720%_)
                     (let ((_%e4269642723%_ (gx#syntax-e _%g4269342720%_)))
                       (let ((_%hd4269742727%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4269642723%_)))
                             (_%tl4269842730%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4269642723%_))))
                         (if (gx#stx-pair? _%tl4269842730%_)
                             (let ((_%e4269942733%_
                                    (gx#syntax-e _%tl4269842730%_)))
                               (let ((_%hd4270042737%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4269942733%_)))
                                     (_%tl4270142740%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4269942733%_))))
                                 (if (gx#stx-pair/null? _%tl4270142740%_)
                                     (let ((_g44578_
                                            (gx#syntax-split-splice
                                             _%tl4270142740%_
                                             '0)))
                                       (begin
                                         (let ((_g44579_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44578_)
                                                      (##vector-length
                                                       _g44578_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44579_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44579_)))
                                         (let ((_%target4270242743%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44578_ 0)))
                                               (_%tl4270442746%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44578_ 1))))
                                           (if (gx#stx-null? _%tl4270442746%_)
                                               (letrec ((_%loop4270542749%_
                                                         (lambda (_%hd4270342753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4270942756%_)
                   (if (gx#stx-pair? _%hd4270342753%_)
                       (let ((_%e4270642759%_ (gx#syntax-e _%hd4270342753%_)))
                         (let ((_%lp-hd4270742763%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4270642759%_)))
                               (_%lp-tl4270842766%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4270642759%_))))
                           (_%loop4270542749%_
                            _%lp-tl4270842766%_
                            (cons _%lp-hd4270742763%_ _%id4270942756%_))))
                       (let ((_%id4271042769%_ (reverse _%id4270942756%_)))
                         ((lambda (_%L42773%_ _%L42775%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4279242795%_
                                                 _%g4279342798%_)
                                          (cons _%g4279242795%_
                                                _%g4279342798%_))
                                        '()
                                        _%L42773%_))
                                (let* ((_%keys42809%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4280042803%_
                                                         _%g4280142806%_)
                                                  (cons _%g4280042803%_
                                                        _%g4280142806%_))
                                                '()
                                                _%L42773%_)))
                                       (_%keytab42820%_
                                        (let ((_%ht42812%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4281442816%_)
                                             (hash-put!
                                              _%ht42812%_
                                              _%g4281442816%_
                                              '#t))
                                           _%keys42809%_)
                                          _%ht42812%_))
                                       (_%imports42823%_
                                        (gx#core-expand-import-source
                                         _%L42775%_))
                                       (_%fold-e42839%_
                                        (letrec ((_%fold-e42826%_
                                                  (lambda (_%in42829%_
                                                           _%r42831%_)
                                                    (if (gx#module-import?
                                                         _%in42829%_)
                                                        (if (hash-get
                                                             _%keytab42820%_
                                                             (gx#module-import-name
                                                              _%in42829%_))
                                                            _%r42831%_
                                                            (cons _%in42829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r42831%_))
                (if (gx#import-set? _%in42829%_)
                    (foldl _%fold-e42826%_
                           _%r42831%_
                           (gx#import-set-imports _%in42829%_))
                    (cons _%in42829%_ _%r42831%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e42826%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e42839%_
                                               '()
                                               _%imports42823%_)))
                                (_%g4269242716%_ _%g4269342720%_)))
                          _%id4271042769%_
                          _%hd4270042737%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4270542749%_
                                                  _%target4270242743%_
                                                  '()))
                                               (_%g4269242716%_
                                                _%g4269342720%_)))))
                                     (_%g4269242716%_ _%g4269342720%_))))
                             (_%g4269242716%_ _%g4269342720%_))))
                     (_%g4269242716%_ _%g4269342720%_)))))
         (_%g4269142844%_ _%stx42689%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in42896%_ _%rename42898%_)
      (gx#make-module-import
       (gx#module-import-source _%in42896%_)
       _%rename42898%_
       (gx#module-import-phi _%in42896%_)
       (gx#module-import-weak? _%in42896%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name42849%_ _%pre42851%_)
      (let* ((_%name4285242860%_ _%name42849%_)
             (_%else4285442872%_
              (lambda () (make-symbol _%pre42851%_ _%name42849%_)))
             (_%K4285642880%_
              (lambda (_%mark42876%_ _%id42878%_)
                (cons (make-symbol _%pre42851%_ _%id42878%_) _%mark42876%_))))
        (if (let () (declare (not safe)) (##pair? _%name4285242860%_))
            (let ((_%hd4285742884%_
                   (let () (declare (not safe)) (##car _%name4285242860%_)))
                  (_%tl4285842887%_
                   (let () (declare (not safe)) (##cdr _%name4285242860%_))))
              (let* ((_%id42890%_ _%hd4285742884%_)
                     (_%mark42893%_ _%tl4285842887%_))
                (_%K4285642880%_ _%mark42893%_ _%id42890%_)))
            (_%else4285442872%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx42900%_)
       (let* ((_%g4290342936%_
               (lambda (_%g4290442932%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4290442932%_)))
              (_%g4290243131%_
               (lambda (_%g4290442940%_)
                 (if (gx#stx-pair? _%g4290442940%_)
                     (let ((_%e4290842943%_ (gx#syntax-e _%g4290442940%_)))
                       (let ((_%hd4290942947%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4290842943%_)))
                             (_%tl4291042950%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4290842943%_))))
                         (if (gx#stx-pair? _%tl4291042950%_)
                             (let ((_%e4291142953%_
                                    (gx#syntax-e _%tl4291042950%_)))
                               (let ((_%hd4291242957%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4291142953%_)))
                                     (_%tl4291342960%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4291142953%_))))
                                 (if (gx#stx-pair/null? _%tl4291342960%_)
                                     (let ((_g44580_
                                            (gx#syntax-split-splice
                                             _%tl4291342960%_
                                             '0)))
                                       (begin
                                         (let ((_g44581_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44580_)
                                                      (##vector-length
                                                       _g44580_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44581_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44581_)))
                                         (let ((_%target4291442963%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44580_ 0)))
                                               (_%tl4291642966%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44580_ 1))))
                                           (if (gx#stx-null? _%tl4291642966%_)
                                               (letrec ((_%loop4291742969%_
                                                         (lambda (_%hd4291542973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4292142976%_
                          _%id4292242978%_)
                   (if (gx#stx-pair? _%hd4291542973%_)
                       (let ((_%e4291842981%_ (gx#syntax-e _%hd4291542973%_)))
                         (let ((_%lp-hd4291942985%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4291842981%_)))
                               (_%lp-tl4292042988%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4291842981%_))))
                           (if (gx#stx-pair? _%lp-hd4291942985%_)
                               (let ((_%e4292542991%_
                                      (gx#syntax-e _%lp-hd4291942985%_)))
                                 (let ((_%hd4292642995%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4292542991%_)))
                                       (_%tl4292742998%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4292542991%_))))
                                   (if (gx#stx-pair? _%tl4292742998%_)
                                       (let ((_%e4292843001%_
                                              (gx#syntax-e _%tl4292742998%_)))
                                         (let ((_%hd4292943005%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4292843001%_)))
                                               (_%tl4293043008%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4292843001%_))))
                                           (if (gx#stx-null? _%tl4293043008%_)
                                               (_%loop4291742969%_
                                                _%lp-tl4292042988%_
                                                (cons _%hd4292943005%_
                                                      _%new-id4292142976%_)
                                                (cons _%hd4292642995%_
                                                      _%id4292242978%_))
                                               (_%g4290342936%_
                                                _%g4290442940%_))))
                                       (_%g4290342936%_ _%g4290442940%_))))
                               (_%g4290342936%_ _%g4290442940%_))))
                       (let ((_%new-id4292343011%_
                              (reverse _%new-id4292142976%_))
                             (_%id4292443014%_ (reverse _%id4292242978%_)))
                         ((lambda (_%L43017%_ _%L43019%_ _%L43020%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4303843041%_
                                                      _%g4303943044%_)
                                               (cons _%g4303843041%_
                                                     _%g4303943044%_))
                                             '()
                                             _%L43019%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4304643049%_
                                                      _%g4304743052%_)
                                               (cons _%g4304643049%_
                                                     _%g4304743052%_))
                                             '()
                                             _%L43017%_)))
                                (let* ((_%keytab43055%_ (make-hash-table))
                                       (_%found43058%_ (make-hash-table))
                                       (_%_43081%_
                                        (for-each
                                         (lambda (_%id43061%_ _%new-id43063%_)
                                           (hash-put!
                                            _%keytab43055%_
                                            (gx#core-identifier-key
                                             _%id43061%_)
                                            (gx#core-identifier-key
                                             _%new-id43063%_)))
                                         (foldr (lambda (_%g4306443067%_
                                                         _%g4306543070%_)
                                                  (cons _%g4306443067%_
                                                        _%g4306543070%_))
                                                '()
                                                _%L43019%_)
                                         (foldr (lambda (_%g4307243075%_
                                                         _%g4307343078%_)
                                                  (cons _%g4307243075%_
                                                        _%g4307343078%_))
                                                '()
                                                _%L43017%_)))
                                       (_%imports43084%_
                                        (gx#core-expand-import-source
                                         _%L43020%_))
                                       (_%fold-e43112%_
                                        (letrec ((_%fold-e43087%_
                                                  (lambda (_%in43090%_
                                                           _%r43092%_)
                                                    (if (gx#module-import?
                                                         _%in43090%_)
                                                        (let* ((_%name43096%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in43090%_))
                       (_%$e43099%_ (hash-get _%keytab43055%_ _%name43096%_)))
                  (if _%$e43099%_
                      ((lambda (_%rename43103%_)
                         (hash-put! _%found43058%_ _%name43096%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in43090%_
                                _%rename43103%_)
                               _%r43092%_))
                       _%$e43099%_)
                      (cons _%in43090%_ _%r43092%_)))
                (if (gx#import-set? _%in43090%_)
                    (foldl _%fold-e43087%_
                           _%r43092%_
                           (gx#import-set-imports _%in43090%_))
                    (cons _%in43090%_ _%r43092%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43087%_))
                                       (_%new-imports43115%_
                                        (foldl _%fold-e43112%_
                                               '()
                                               _%imports43084%_)))
                                  (for-each
                                   (lambda (_%id43120%_)
                                     (if (hash-get
                                          _%found43058%_
                                          (gx#core-identifier-key _%id43120%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx42900%_
                                          _%id43120%_)))
                                   (foldr (lambda (_%g4312243125%_
                                                   _%g4312343128%_)
                                            (cons _%g4312243125%_
                                                  _%g4312343128%_))
                                          '()
                                          _%L43019%_))
                                  (cons 'begin: _%new-imports43115%_))
                                (_%g4290342936%_ _%g4290442940%_)))
                          _%new-id4292343011%_
                          _%id4292443014%_
                          _%hd4291242957%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4291742969%_
                                                  _%target4291442963%_
                                                  '()
                                                  '()))
                                               (_%g4290342936%_
                                                _%g4290442940%_)))))
                                     (_%g4290342936%_ _%g4290442940%_))))
                             (_%g4290342936%_ _%g4290442940%_))))
                     (_%g4290342936%_ _%g4290442940%_)))))
         (_%g4290243131%_ _%stx42900%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx43136%_)
       (let* ((_%g4313943157%_
               (lambda (_%g4314043153%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4314043153%_)))
              (_%g4313843242%_
               (lambda (_%g4314043161%_)
                 (if (gx#stx-pair? _%g4314043161%_)
                     (let ((_%e4314343164%_ (gx#syntax-e _%g4314043161%_)))
                       (let ((_%hd4314443168%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4314343164%_)))
                             (_%tl4314543171%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4314343164%_))))
                         (if (gx#stx-pair? _%tl4314543171%_)
                             (let ((_%e4314643174%_
                                    (gx#syntax-e _%tl4314543171%_)))
                               (let ((_%hd4314743178%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4314643174%_)))
                                     (_%tl4314843181%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4314643174%_))))
                                 (if (gx#stx-pair? _%tl4314843181%_)
                                     (let ((_%e4314943184%_
                                            (gx#syntax-e _%tl4314843181%_)))
                                       (let ((_%hd4315043188%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4314943184%_)))
                                             (_%tl4315143191%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4314943184%_))))
                                         (if (gx#stx-null? _%tl4315143191%_)
                                             ((lambda (_%L43194%_ _%L43196%_)
                                                (if (gx#identifier? _%L43194%_)
                                                    (let* ((_%pre43212%_
                                                            (gx#stx-e
                                                             _%L43194%_))
                                                           (_%imports43215%_
                                                            (gx#core-expand-import-source
                                                             _%L43196%_))
                                                           (_%rename-e43221%_
                                                            (lambda (_%name43218%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name43218%_
                                                               _%pre43212%_)))
                                                           (_%fold-e43237%_
                                                            (letrec ((_%fold-e43224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in43227%_ _%r43229%_)
                                (if (gx#module-import? _%in43227%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in43227%_
                                           (_%rename-e43221%_
                                            (gx#module-import-name
                                             _%in43227%_)))
                                          _%r43229%_)
                                    (if (gx#import-set? _%in43227%_)
                                        (foldl _%fold-e43224%_
                                               _%r43229%_
                                               (gx#import-set-imports
                                                _%in43227%_))
                                        (cons _%in43227%_ _%r43229%_))))))
                      _%fold-e43224%_)))
              (cons 'begin: (foldl _%fold-e43237%_ '() _%imports43215%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4313943157%_
                                                     _%g4314043161%_)))
                                              _%hd4315043188%_
                                              _%hd4314743178%_)
                                             (_%g4313943157%_
                                              _%g4314043161%_))))
                                     (_%g4313943157%_ _%g4314043161%_))))
                             (_%g4313943157%_ _%g4314043161%_))))
                     (_%g4313943157%_ _%g4314043161%_)))))
         (_%g4313843242%_ _%stx43136%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx43246%_)
       (letrec ((_%flatten43249%_
                 (lambda (_%list-of-lists43504%_)
                   (foldr (lambda (_%v43507%_ _%acc43509%_)
                            (if (null? _%v43507%_)
                                _%acc43509%_
                                (if (pair? _%v43507%_)
                                    (append (_%flatten43249%_ _%v43507%_)
                                            _%acc43509%_)
                                    (cons _%v43507%_ _%acc43509%_))))
                          '()
                          _%list-of-lists43504%_)))
                (_%expand-path43251%_
                 (lambda (_%top43372%_ _%mod43374%_)
                   (let* ((_%__stx4448044481%_ _%mod43374%_)
                          (_%g4337743399%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4448044481%_))))
                     (let ((_%__kont4448344484%_
                            (lambda (_%L43467%_ _%L43469%_)
                              (map (lambda (_%mod43484%_)
                                     (gx#stx-identifier
                                      _%top43372%_
                                      _%top43372%_
                                      '"/"
                                      _%mod43484%_))
                                   (_%flatten43249%_
                                    (map (lambda (_%g4348643488%_)
                                           (_%expand-path43251%_
                                            _%L43469%_
                                            _%g4348643488%_))
                                         (foldr (lambda (_%g4349143494%_
                                                         _%g4349243497%_)
                                                  (cons _%g4349143494%_
                                                        _%g4349243497%_))
                                                '()
                                                _%L43467%_))))))
                           (_%__kont4448744488%_
                            (lambda (_%L43406%_)
                              (gx#stx-identifier
                               _%top43372%_
                               _%top43372%_
                               '"/"
                               _%L43406%_))))
                       (let* ((_%g4337643420%_
                               (lambda ()
                                 (let ((_%L43406%_ _%__stx4448044481%_))
                                   (if (or (gx#identifier? _%L43406%_)
                                           (gx#stx-fixnum? _%L43406%_))
                                       (_%__kont4448744488%_ _%L43406%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4337743399%_))))))
                              (_%__match4450344504%_
                               (lambda (_%e4338143427%_
                                        _%hd4338243431%_
                                        _%tl4338343434%_
                                        _%__splice4448544486%_
                                        _%target4338443437%_
                                        _%tl4338643440%_)
                                 (letrec ((_%loop4338743443%_
                                           (lambda (_%hd4338543447%_
                                                    _%mod4339143450%_)
                                             (if (gx#stx-pair?
                                                  _%hd4338543447%_)
                                                 (let ((_%e4338843453%_
                                                        (gx#syntax-e
                                                         _%hd4338543447%_)))
                                                   (let ((_%lp-tl4339043460%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4338843453%_)))
                                                         (_%lp-hd4338943457%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4338843453%_))))
                                                     (_%loop4338743443%_
                                                      _%lp-tl4339043460%_
                                                      (cons _%lp-hd4338943457%_
                                                            _%mod4339143450%_))))
                                                 (let ((_%mod4339243463%_
                                                        (reverse _%mod4339143450%_)))
                                                   (_%__kont4448344484%_
                                                    _%mod4339243463%_
                                                    _%hd4338243431%_))))))
                                   (_%loop4338743443%_
                                    _%target4338443437%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4448044481%_)
                             (let ((_%e4338143427%_
                                    (gx#syntax-e _%__stx4448044481%_)))
                               (let ((_%tl4338343434%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4338143427%_)))
                                     (_%hd4338243431%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4338143427%_))))
                                 (if (gx#stx-pair/null? _%tl4338343434%_)
                                     (let ((_%__splice4448544486%_
                                            (gx#syntax-split-splice
                                             _%tl4338343434%_
                                             '0)))
                                       (let ((_%tl4338643440%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4448544486%_
                                                 '1)))
                                             (_%target4338443437%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4448544486%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4338643440%_)
                                             (_%__match4450344504%_
                                              _%e4338143427%_
                                              _%hd4338243431%_
                                              _%tl4338343434%_
                                              _%__splice4448544486%_
                                              _%target4338443437%_
                                              _%tl4338643440%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4337643420%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4337643420%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4337643420%_)))))))))
         (let* ((_%g4325343277%_
                 (lambda (_%g4325443273%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4325443273%_)))
                (_%g4325243368%_
                 (lambda (_%g4325443281%_)
                   (if (gx#stx-pair? _%g4325443281%_)
                       (let ((_%e4325743284%_ (gx#syntax-e _%g4325443281%_)))
                         (let ((_%hd4325843288%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4325743284%_)))
                               (_%tl4325943291%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4325743284%_))))
                           (if (gx#stx-pair? _%tl4325943291%_)
                               (let ((_%e4326043294%_
                                      (gx#syntax-e _%tl4325943291%_)))
                                 (let ((_%hd4326143298%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4326043294%_)))
                                       (_%tl4326243301%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4326043294%_))))
                                   (if (gx#stx-pair/null? _%tl4326243301%_)
                                       (let ((_g44582_
                                              (gx#syntax-split-splice
                                               _%tl4326243301%_
                                               '0)))
                                         (begin
                                           (let ((_g44583_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g44582_)
                                                        (##vector-length
                                                         _g44582_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g44583_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g44583_)))
                                           (let ((_%target4326343304%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g44582_ 0)))
                                                 (_%tl4326543307%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g44582_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4326543307%_)
                                                 (letrec ((_%loop4326643310%_
                                                           (lambda (_%hd4326443314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4327043317%_)
                     (if (gx#stx-pair? _%hd4326443314%_)
                         (let ((_%e4326743320%_
                                (gx#syntax-e _%hd4326443314%_)))
                           (let ((_%lp-hd4326843324%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4326743320%_)))
                                 (_%lp-tl4326943327%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4326743320%_))))
                             (_%loop4326643310%_
                              _%lp-tl4326943327%_
                              (cons _%lp-hd4326843324%_ _%mod4327043317%_))))
                         (let ((_%mod4327143330%_ (reverse _%mod4327043317%_)))
                           ((lambda (_%L43334%_ _%L43336%_)
                              (cons 'begin:
                                    (_%flatten43249%_
                                     (map (lambda (_%g4335443356%_)
                                            (_%expand-path43251%_
                                             _%L43336%_
                                             _%g4335443356%_))
                                          (foldr (lambda (_%g4335943362%_
                                                          _%g4336043365%_)
                                                   (cons _%g4335943362%_
                                                         _%g4336043365%_))
                                                 '()
                                                 _%L43334%_)))))
                            _%mod4327143330%_
                            _%hd4326143298%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4326643310%_
                                                    _%target4326343304%_
                                                    '()))
                                                 (_%g4325343277%_
                                                  _%g4325443281%_)))))
                                       (_%g4325343277%_ _%g4325443281%_))))
                               (_%g4325343277%_ _%g4325443281%_))))
                       (_%g4325343277%_ _%g4325443281%_)))))
           (_%g4325243368%_ _%stx43246%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx43519%_)
       (let* ((_%g4352243546%_
               (lambda (_%g4352343542%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4352343542%_)))
              (_%g4352143674%_
               (lambda (_%g4352343550%_)
                 (if (gx#stx-pair? _%g4352343550%_)
                     (let ((_%e4352643553%_ (gx#syntax-e _%g4352343550%_)))
                       (let ((_%hd4352743557%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4352643553%_)))
                             (_%tl4352843560%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4352643553%_))))
                         (if (gx#stx-pair? _%tl4352843560%_)
                             (let ((_%e4352943563%_
                                    (gx#syntax-e _%tl4352843560%_)))
                               (let ((_%hd4353043567%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4352943563%_)))
                                     (_%tl4353143570%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4352943563%_))))
                                 (if (gx#stx-pair/null? _%tl4353143570%_)
                                     (let ((_g44584_
                                            (gx#syntax-split-splice
                                             _%tl4353143570%_
                                             '0)))
                                       (begin
                                         (let ((_g44585_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44584_)
                                                      (##vector-length
                                                       _g44584_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44585_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44585_)))
                                         (let ((_%target4353243573%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44584_ 0)))
                                               (_%tl4353443576%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44584_ 1))))
                                           (if (gx#stx-null? _%tl4353443576%_)
                                               (letrec ((_%loop4353543579%_
                                                         (lambda (_%hd4353343583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4353943586%_)
                   (if (gx#stx-pair? _%hd4353343583%_)
                       (let ((_%e4353643589%_ (gx#syntax-e _%hd4353343583%_)))
                         (let ((_%lp-hd4353743593%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4353643589%_)))
                               (_%lp-tl4353843596%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4353643589%_))))
                           (_%loop4353543579%_
                            _%lp-tl4353843596%_
                            (cons _%lp-hd4353743593%_ _%id4353943586%_))))
                       (let ((_%id4354043599%_ (reverse _%id4353943586%_)))
                         ((lambda (_%L43603%_ _%L43605%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4362243625%_
                                                 _%g4362343628%_)
                                          (cons _%g4362243625%_
                                                _%g4362343628%_))
                                        '()
                                        _%L43603%_))
                                (let* ((_%keys43639%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4363043633%_
                                                         _%g4363143636%_)
                                                  (cons _%g4363043633%_
                                                        _%g4363143636%_))
                                                '()
                                                _%L43603%_)))
                                       (_%keytab43650%_
                                        (let ((_%ht43642%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4364443646%_)
                                             (hash-put!
                                              _%ht43642%_
                                              _%g4364443646%_
                                              '#t))
                                           _%keys43639%_)
                                          _%ht43642%_))
                                       (_%exports43653%_
                                        (gx#core-expand-export-source
                                         _%L43605%_))
                                       (_%fold-e43669%_
                                        (letrec ((_%fold-e43656%_
                                                  (lambda (_%out43659%_
                                                           _%r43661%_)
                                                    (if (gx#module-export?
                                                         _%out43659%_)
                                                        (if (hash-get
                                                             _%keytab43650%_
                                                             (gx#module-export-name
                                                              _%out43659%_))
                                                            _%r43661%_
                                                            (cons _%out43659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r43661%_))
                (if (gx#export-set? _%out43659%_)
                    (foldl _%fold-e43656%_
                           _%r43661%_
                           (gx#export-set-exports _%out43659%_))
                    _%r43661%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43656%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e43669%_
                                               '()
                                               _%exports43653%_)))
                                (_%g4352243546%_ _%g4352343550%_)))
                          _%id4354043599%_
                          _%hd4353043567%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4353543579%_
                                                  _%target4353243573%_
                                                  '()))
                                               (_%g4352243546%_
                                                _%g4352343550%_)))))
                                     (_%g4352243546%_ _%g4352343550%_))))
                             (_%g4352243546%_ _%g4352343550%_))))
                     (_%g4352243546%_ _%g4352343550%_)))))
         (_%g4352143674%_ _%stx43519%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out43679%_ _%rename43681%_)
      (gx#make-module-export
       (gx#module-export-context _%out43679%_)
       (gx#module-export-key _%out43679%_)
       (gx#module-export-phi _%out43679%_)
       _%rename43681%_
       (gx#module-export-weak? _%out43679%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx43683%_)
       (let* ((_%g4368643719%_
               (lambda (_%g4368743715%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4368743715%_)))
              (_%g4368543914%_
               (lambda (_%g4368743723%_)
                 (if (gx#stx-pair? _%g4368743723%_)
                     (let ((_%e4369143726%_ (gx#syntax-e _%g4368743723%_)))
                       (let ((_%hd4369243730%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4369143726%_)))
                             (_%tl4369343733%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4369143726%_))))
                         (if (gx#stx-pair? _%tl4369343733%_)
                             (let ((_%e4369443736%_
                                    (gx#syntax-e _%tl4369343733%_)))
                               (let ((_%hd4369543740%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4369443736%_)))
                                     (_%tl4369643743%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4369443736%_))))
                                 (if (gx#stx-pair/null? _%tl4369643743%_)
                                     (let ((_g44586_
                                            (gx#syntax-split-splice
                                             _%tl4369643743%_
                                             '0)))
                                       (begin
                                         (let ((_g44587_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44586_)
                                                      (##vector-length
                                                       _g44586_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44587_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44587_)))
                                         (let ((_%target4369743746%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44586_ 0)))
                                               (_%tl4369943749%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44586_ 1))))
                                           (if (gx#stx-null? _%tl4369943749%_)
                                               (letrec ((_%loop4370043752%_
                                                         (lambda (_%hd4369843756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4370443759%_
                          _%id4370543761%_)
                   (if (gx#stx-pair? _%hd4369843756%_)
                       (let ((_%e4370143764%_ (gx#syntax-e _%hd4369843756%_)))
                         (let ((_%lp-hd4370243768%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4370143764%_)))
                               (_%lp-tl4370343771%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4370143764%_))))
                           (if (gx#stx-pair? _%lp-hd4370243768%_)
                               (let ((_%e4370843774%_
                                      (gx#syntax-e _%lp-hd4370243768%_)))
                                 (let ((_%hd4370943778%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4370843774%_)))
                                       (_%tl4371043781%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4370843774%_))))
                                   (if (gx#stx-pair? _%tl4371043781%_)
                                       (let ((_%e4371143784%_
                                              (gx#syntax-e _%tl4371043781%_)))
                                         (let ((_%hd4371243788%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4371143784%_)))
                                               (_%tl4371343791%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4371143784%_))))
                                           (if (gx#stx-null? _%tl4371343791%_)
                                               (_%loop4370043752%_
                                                _%lp-tl4370343771%_
                                                (cons _%hd4371243788%_
                                                      _%new-id4370443759%_)
                                                (cons _%hd4370943778%_
                                                      _%id4370543761%_))
                                               (_%g4368643719%_
                                                _%g4368743723%_))))
                                       (_%g4368643719%_ _%g4368743723%_))))
                               (_%g4368643719%_ _%g4368743723%_))))
                       (let ((_%new-id4370643794%_
                              (reverse _%new-id4370443759%_))
                             (_%id4370743797%_ (reverse _%id4370543761%_)))
                         ((lambda (_%L43800%_ _%L43802%_ _%L43803%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4382143824%_
                                                      _%g4382243827%_)
                                               (cons _%g4382143824%_
                                                     _%g4382243827%_))
                                             '()
                                             _%L43802%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4382943832%_
                                                      _%g4383043835%_)
                                               (cons _%g4382943832%_
                                                     _%g4383043835%_))
                                             '()
                                             _%L43800%_)))
                                (let* ((_%keytab43838%_ (make-hash-table))
                                       (_%found43841%_ (make-hash-table))
                                       (_%_43864%_
                                        (for-each
                                         (lambda (_%id43844%_ _%new-id43846%_)
                                           (hash-put!
                                            _%keytab43838%_
                                            (gx#core-identifier-key
                                             _%id43844%_)
                                            (gx#core-identifier-key
                                             _%new-id43846%_)))
                                         (foldr (lambda (_%g4384743850%_
                                                         _%g4384843853%_)
                                                  (cons _%g4384743850%_
                                                        _%g4384843853%_))
                                                '()
                                                _%L43802%_)
                                         (foldr (lambda (_%g4385543858%_
                                                         _%g4385643861%_)
                                                  (cons _%g4385543858%_
                                                        _%g4385643861%_))
                                                '()
                                                _%L43800%_)))
                                       (_%exports43867%_
                                        (gx#core-expand-export-source
                                         _%L43803%_))
                                       (_%fold-e43895%_
                                        (letrec ((_%fold-e43870%_
                                                  (lambda (_%out43873%_
                                                           _%r43875%_)
                                                    (if (gx#module-export?
                                                         _%out43873%_)
                                                        (let* ((_%name43879%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out43873%_))
                       (_%$e43882%_ (hash-get _%keytab43838%_ _%name43879%_)))
                  (if _%$e43882%_
                      ((lambda (_%rename43886%_)
                         (hash-put! _%found43841%_ _%name43879%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out43873%_
                                _%rename43886%_)
                               _%r43875%_))
                       _%$e43882%_)
                      (cons _%out43873%_ _%r43875%_)))
                (if (gx#export-set? _%out43873%_)
                    (foldl _%fold-e43870%_
                           _%r43875%_
                           (gx#export-set-exports _%out43873%_))
                    (cons _%out43873%_ _%r43875%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43870%_))
                                       (_%new-exports43898%_
                                        (foldl _%fold-e43895%_
                                               '()
                                               _%exports43867%_)))
                                  (for-each
                                   (lambda (_%id43903%_)
                                     (if (hash-get
                                          _%found43841%_
                                          (gx#core-identifier-key _%id43903%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx43683%_
                                          _%id43903%_)))
                                   (foldr (lambda (_%g4390543908%_
                                                   _%g4390643911%_)
                                            (cons _%g4390543908%_
                                                  _%g4390643911%_))
                                          '()
                                          _%L43802%_))
                                  (cons 'begin: _%new-exports43898%_))
                                (_%g4368643719%_ _%g4368743723%_)))
                          _%new-id4370643794%_
                          _%id4370743797%_
                          _%hd4369543740%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4370043752%_
                                                  _%target4369743746%_
                                                  '()
                                                  '()))
                                               (_%g4368643719%_
                                                _%g4368743723%_)))))
                                     (_%g4368643719%_ _%g4368743723%_))))
                             (_%g4368643719%_ _%g4368743723%_))))
                     (_%g4368643719%_ _%g4368743723%_)))))
         (_%g4368543914%_ _%stx43683%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx43919%_)
       (let* ((_%g4392243940%_
               (lambda (_%g4392343936%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4392343936%_)))
              (_%g4392144025%_
               (lambda (_%g4392343944%_)
                 (if (gx#stx-pair? _%g4392343944%_)
                     (let ((_%e4392643947%_ (gx#syntax-e _%g4392343944%_)))
                       (let ((_%hd4392743951%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4392643947%_)))
                             (_%tl4392843954%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4392643947%_))))
                         (if (gx#stx-pair? _%tl4392843954%_)
                             (let ((_%e4392943957%_
                                    (gx#syntax-e _%tl4392843954%_)))
                               (let ((_%hd4393043961%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4392943957%_)))
                                     (_%tl4393143964%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4392943957%_))))
                                 (if (gx#stx-pair? _%tl4393143964%_)
                                     (let ((_%e4393243967%_
                                            (gx#syntax-e _%tl4393143964%_)))
                                       (let ((_%hd4393343971%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4393243967%_)))
                                             (_%tl4393443974%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4393243967%_))))
                                         (if (gx#stx-null? _%tl4393443974%_)
                                             ((lambda (_%L43977%_ _%L43979%_)
                                                (if (gx#identifier? _%L43977%_)
                                                    (let* ((_%pre43995%_
                                                            (gx#stx-e
                                                             _%L43977%_))
                                                           (_%exports43998%_
                                                            (gx#core-expand-export-source
                                                             _%L43979%_))
                                                           (_%rename-e44004%_
                                                            (lambda (_%name44001%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name44001%_
                                                               _%pre43995%_)))
                                                           (_%fold-e44020%_
                                                            (letrec ((_%fold-e44007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out44010%_ _%r44012%_)
                                (if (gx#module-export? _%out44010%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out44010%_
                                           (_%rename-e44004%_
                                            (gx#module-export-name
                                             _%out44010%_)))
                                          _%r44012%_)
                                    (if (gx#export-set? _%out44010%_)
                                        (foldl _%fold-e44007%_
                                               _%r44012%_
                                               (gx#export-set-exports
                                                _%out44010%_))
                                        (cons _%out44010%_ _%r44012%_))))))
                      _%fold-e44007%_)))
              (cons 'begin: (foldl _%fold-e44020%_ '() _%exports43998%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4392243940%_
                                                     _%g4392343944%_)))
                                              _%hd4393343971%_
                                              _%hd4393043961%_)
                                             (_%g4392243940%_
                                              _%g4392343944%_))))
                                     (_%g4392243940%_ _%g4392343944%_))))
                             (_%g4392243940%_ _%g4392343944%_))))
                     (_%g4392243940%_ _%g4392343944%_)))))
         (_%g4392144025%_ _%stx43919%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx44029%_)
       (letrec ((_%identifiers44032%_
                 (lambda (_%id44264%_ _%unchecked?44266%_)
                   (let ((_%info44268%_
                          (gx#syntax-local-value _%id44264%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info44268%_))
                         (cons _%id44264%_
                               (cons (let ((__obj44565 _%info44268%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj44565
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj44565
                                              '12
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj44565
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj44566
                                                         _%info44268%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj44566
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj44566
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj44566
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?44266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj44567 _%info44268%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj44567
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj44567
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj44567
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj44568 _%info44268%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj44568
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj44568
                                                 '17
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj44568
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj44569 _%info44268%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj44569
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj44569
                                      '16
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj44569
                                    'mutators)))))
                 (map cdr
                      (let ((__obj44570 _%info44268%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj44570
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj44570
                               '15
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj44570 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor44271%_
                                                   (let ((__obj44571
                                                          _%info44268%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj44571
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj44571
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj44571
                                                          'constructor)))))
                                              (if _%ctor44271%_
                                                  (cons _%ctor44271%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx44029%_
                          _%id44264%_))))))
         (let* ((_%__stx4450644507%_ _%stx44029%_)
                (_%g4403644077%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4450644507%_))))
           (let ((_%__kont4450944510%_
                  (lambda (_%L44225%_ _%L44227%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4424644248%_)
                              (_%identifiers44032%_
                               _%g4424644248%_
                               (gx#stx-e _%L44227%_)))
                            (foldr (lambda (_%g4425144254%_ _%g4425244257%_)
                                     (cons _%g4425144254%_ _%g4425244257%_))
                                   '()
                                   _%L44225%_))))))
                 (_%__kont4451344514%_
                  (lambda (_%L44124%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4414044142%_)
                              (_%identifiers44032%_ _%g4414044142%_ '#f))
                            (foldr (lambda (_%g4414544148%_ _%g4414644151%_)
                                     (cons _%g4414544148%_ _%g4414644151%_))
                                   '()
                                   _%L44124%_)))))))
             (let* ((_%__match4456344564%_
                     (lambda (_%e4406044084%_
                              _%hd4406144088%_
                              _%tl4406244091%_
                              _%__splice4451544516%_
                              _%target4406344094%_
                              _%tl4406544097%_)
                       (letrec ((_%loop4406644100%_
                                 (lambda (_%hd4406444104%_ _%id4407044107%_)
                                   (if (gx#stx-pair? _%hd4406444104%_)
                                       (let ((_%e4406744110%_
                                              (gx#syntax-e _%hd4406444104%_)))
                                         (let ((_%lp-tl4406944117%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4406744110%_)))
                                               (_%lp-hd4406844114%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4406744110%_))))
                                           (_%loop4406644100%_
                                            _%lp-tl4406944117%_
                                            (cons _%lp-hd4406844114%_
                                                  _%id4407044107%_))))
                                       (let ((_%id4407144120%_
                                              (reverse _%id4407044107%_)))
                                         (_%__kont4451344514%_
                                          _%id4407144120%_))))))
                         (_%loop4406644100%_ _%target4406344094%_ '()))))
                    (_%__match4454944550%_
                     (lambda (_%e4404044161%_
                              _%hd4404144165%_
                              _%tl4404244168%_
                              _%e4404344171%_
                              _%hd4404444175%_
                              _%tl4404544178%_
                              _%e4404644181%_
                              _%e4404744185%_
                              _%hd4404844189%_
                              _%tl4404944192%_
                              _%__splice4451144512%_
                              _%target4405044195%_
                              _%tl4405244198%_)
                       (letrec ((_%loop4405344201%_
                                 (lambda (_%hd4405144205%_ _%id4405744208%_)
                                   (if (gx#stx-pair? _%hd4405144205%_)
                                       (let ((_%e4405444211%_
                                              (gx#syntax-e _%hd4405144205%_)))
                                         (let ((_%lp-tl4405644218%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4405444211%_)))
                                               (_%lp-hd4405544215%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4405444211%_))))
                                           (_%loop4405344201%_
                                            _%lp-tl4405644218%_
                                            (cons _%lp-hd4405544215%_
                                                  _%id4405744208%_))))
                                       (let ((_%id4405844221%_
                                              (reverse _%id4405744208%_)))
                                         (_%__kont4450944510%_
                                          _%id4405844221%_
                                          _%hd4404844189%_))))))
                         (_%loop4405344201%_ _%target4405044195%_ '())))))
               (if (gx#stx-pair? _%__stx4450644507%_)
                   (let ((_%e4404044161%_ (gx#syntax-e _%__stx4450644507%_)))
                     (let ((_%tl4404244168%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4404044161%_)))
                           (_%hd4404144165%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4404044161%_))))
                       (if (gx#stx-pair? _%tl4404244168%_)
                           (let ((_%e4404344171%_
                                  (gx#syntax-e _%tl4404244168%_)))
                             (let ((_%tl4404544178%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4404344171%_)))
                                   (_%hd4404444175%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4404344171%_))))
                               (if (gx#stx-datum? _%hd4404444175%_)
                                   (let ((_%e4404644181%_
                                          (gx#stx-e _%hd4404444175%_)))
                                     (if (equal? _%e4404644181%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4404544178%_)
                                             (let ((_%e4404744185%_
                                                    (gx#syntax-e
                                                     _%tl4404544178%_)))
                                               (let ((_%tl4404944192%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4404744185%_)))
                                                     (_%hd4404844189%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4404744185%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4404944192%_)
                                                     (let ((_%__splice4451144512%_
                                                            (gx#syntax-split-splice
                                                             _%tl4404944192%_
                                                             '0)))
                                                       (let ((_%tl4405244198%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4451144512%_ '1)))
                     (_%target4405044195%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4451144512%_ '0))))
                 (if (gx#stx-null? _%tl4405244198%_)
                     (_%__match4454944550%_
                      _%e4404044161%_
                      _%hd4404144165%_
                      _%tl4404244168%_
                      _%e4404344171%_
                      _%hd4404444175%_
                      _%tl4404544178%_
                      _%e4404644181%_
                      _%e4404744185%_
                      _%hd4404844189%_
                      _%tl4404944192%_
                      _%__splice4451144512%_
                      _%target4405044195%_
                      _%tl4405244198%_)
                     (if (gx#stx-pair/null? _%tl4404244168%_)
                         (let ((_%__splice4451544516%_
                                (gx#syntax-split-splice _%tl4404244168%_ '0)))
                           (let ((_%tl4406544097%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4451544516%_ '1)))
                                 (_%target4406344094%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4451544516%_ '0))))
                             (if (gx#stx-null? _%tl4406544097%_)
                                 (_%__match4456344564%_
                                  _%e4404044161%_
                                  _%hd4404144165%_
                                  _%tl4404244168%_
                                  _%__splice4451544516%_
                                  _%target4406344094%_
                                  _%tl4406544097%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4403644077%_)))))
                         (let () (declare (not safe)) (_%g4403644077%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4404244168%_)
                                                         (let ((_%__splice4451544516%_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4404244168%_
                         '0)))
                   (let ((_%tl4406544097%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4451544516%_ '1)))
                         (_%target4406344094%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4451544516%_ '0))))
                     (if (gx#stx-null? _%tl4406544097%_)
                         (_%__match4456344564%_
                          _%e4404044161%_
                          _%hd4404144165%_
                          _%tl4404244168%_
                          _%__splice4451544516%_
                          _%target4406344094%_
                          _%tl4406544097%_)
                         (let () (declare (not safe)) (_%g4403644077%_)))))
                 (let () (declare (not safe)) (_%g4403644077%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4404244168%_)
                                                 (let ((_%__splice4451544516%_
                                                        (gx#syntax-split-splice
                                                         _%tl4404244168%_
                                                         '0)))
                                                   (let ((_%tl4406544097%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4451544516%_
                                                             '1)))
                                                         (_%target4406344094%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4451544516%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4406544097%_)
                                                         (_%__match4456344564%_
                                                          _%e4404044161%_
                                                          _%hd4404144165%_
                                                          _%tl4404244168%_
                                                          _%__splice4451544516%_
                                                          _%target4406344094%_
                                                          _%tl4406544097%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4403644077%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4403644077%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4404244168%_)
                                             (let ((_%__splice4451544516%_
                                                    (gx#syntax-split-splice
                                                     _%tl4404244168%_
                                                     '0)))
                                               (let ((_%tl4406544097%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4451544516%_
                                                         '1)))
                                                     (_%target4406344094%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4451544516%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4406544097%_)
                                                     (_%__match4456344564%_
                                                      _%e4404044161%_
                                                      _%hd4404144165%_
                                                      _%tl4404244168%_
                                                      _%__splice4451544516%_
                                                      _%target4406344094%_
                                                      _%tl4406544097%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4403644077%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4403644077%_)))))
                                   (if (gx#stx-pair/null? _%tl4404244168%_)
                                       (let ((_%__splice4451544516%_
                                              (gx#syntax-split-splice
                                               _%tl4404244168%_
                                               '0)))
                                         (let ((_%tl4406544097%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4451544516%_
                                                   '1)))
                                               (_%target4406344094%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4451544516%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4406544097%_)
                                               (_%__match4456344564%_
                                                _%e4404044161%_
                                                _%hd4404144165%_
                                                _%tl4404244168%_
                                                _%__splice4451544516%_
                                                _%target4406344094%_
                                                _%tl4406544097%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4403644077%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4403644077%_))))))
                           (if (gx#stx-pair/null? _%tl4404244168%_)
                               (let ((_%__splice4451544516%_
                                      (gx#syntax-split-splice
                                       _%tl4404244168%_
                                       '0)))
                                 (let ((_%tl4406544097%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4451544516%_
                                           '1)))
                                       (_%target4406344094%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4451544516%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4406544097%_)
                                       (_%__match4456344564%_
                                        _%e4404044161%_
                                        _%hd4404144165%_
                                        _%tl4404244168%_
                                        _%__splice4451544516%_
                                        _%target4406344094%_
                                        _%tl4406544097%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4403644077%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4403644077%_))))))
                   (let () (declare (not safe)) (_%g4403644077%_)))))))))))
