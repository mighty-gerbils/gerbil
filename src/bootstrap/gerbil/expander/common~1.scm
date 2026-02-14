(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g172006_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172008_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172010_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172012_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172013_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172015_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172016_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172018_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172019_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172021_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172022_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172024_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj172002
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172002 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172002 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172002 '(e source) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172002 '(e source) '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172002 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172002 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172002 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172002 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172002 '#f '12 '#f '#f))
        (let ((__tmp172005 |gx[1]#_g172006_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj172002 __tmp172005 '3 '#f '#f))
        (let ((__tmp172007 |gx[1]#_g172008_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj172002 __tmp172007 '13 '#f '#f))
        (let ((__tmp172009 |gx[1]#_g172010_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj172002 __tmp172009 '14 '#f '#f))
        (let ((__tmp172011
               (cons (cons 'e |gx[1]#_g172012_|)
                     (cons (cons 'source |gx[1]#_g172013_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj172002 __tmp172011 '15 '#f '#f))
        (let ((__tmp172014
               (cons (cons 'e |gx[1]#_g172015_|)
                     (cons (cons 'source |gx[1]#_g172016_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj172002 __tmp172014 '16 '#f '#f))
        (let ((__tmp172017
               (cons (cons 'e |gx[1]#_g172018_|)
                     (cons (cons 'source |gx[1]#_g172019_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj172002 __tmp172017 '17 '#f '#f))
        (let ((__tmp172020
               (cons (cons 'e |gx[1]#_g172021_|)
                     (cons (cons 'source |gx[1]#_g172022_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj172002 __tmp172020 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172002 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172002 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172002 '() '20 '#f '#f))
        __obj172002))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx170599%_)
        (let* ((_%g170603170617%_
                (lambda (_%g170604170613%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g170604170613%_)))
               (_%g170602170659%_
                (lambda (_%g170604170621%_)
                  (if (gx#stx-pair? _%g170604170621%_)
                      (let ((_%e170606170624%_
                             (gx#syntax-e _%g170604170621%_)))
                        (let ((_%hd170607170628%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170606170624%_)))
                              (_%tl170608170631%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170606170624%_))))
                          (if (gx#stx-pair? _%tl170608170631%_)
                              (let ((_%e170609170634%_
                                     (gx#syntax-e _%tl170608170631%_)))
                                (let ((_%hd170610170638%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170609170634%_)))
                                      (_%tl170611170641%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170609170634%_))))
                                  (if (gx#stx-null? _%tl170611170641%_)
                                      ((lambda (_%g170605170644%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%g170605170644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure"
                               (cons _%g170605170644%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd170610170638%_)
                                      (_%g170603170617%_ _%g170604170621%_))))
                              (_%g170603170617%_ _%g170604170621%_))))
                      (_%g170603170617%_ _%g170604170621%_)))))
          (_%g170602170659%_ _%$stx170599%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx170663%_)
        (letrec ((_%generate170666%_
                  (lambda (_%tgt170815%_ _%kws170817%_ _%clauses170818%_)
                    (letrec ((_%generate-clause170820%_
                              (lambda (_%hd171753%_ _%E171755%_)
                                (let* ((_%__stx171905171906%_ _%hd171753%_)
                                       (_%g171759171786%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx171905171906%_))))
                                  (let ((_%__kont171908171909%_
                                         (lambda (_%g171761171882%_
                                                  _%g171762171884%_)
                                           (_%generate1170822%_
                                            _%hd171753%_
                                            _%g171762171884%_
                                            '#t
                                            _%g171761171882%_
                                            _%E171755%_)))
                                        (_%__kont171910171911%_
                                         (lambda (_%g171769171834%_
                                                  _%g171770171836%_
                                                  _%g171771171837%_)
                                           (_%generate1170822%_
                                            _%hd171753%_
                                            _%g171771171837%_
                                            _%g171770171836%_
                                            _%g171769171834%_
                                            _%E171755%_)))
                                        (_%__kont171912171913%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx170663%_
                                            _%hd171753%_))))
                                    (if (gx#stx-pair? _%__stx171905171906%_)
                                        (let ((_%e171763171862%_
                                               (gx#syntax-e
                                                _%__stx171905171906%_)))
                                          (let ((_%tl171765171869%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171763171862%_)))
                                                (_%hd171764171866%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171763171862%_))))
                                            (if (gx#stx-pair?
                                                 _%tl171765171869%_)
                                                (let ((_%e171766171872%_
                                                       (gx#syntax-e
                                                        _%tl171765171869%_)))
                                                  (let ((_%tl171768171879%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e171766171872%_)))
                                                        (_%hd171767171876%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e171766171872%_))))
                                                    (if (gx#stx-null?
                                                         _%tl171768171879%_)
                                                        (_%__kont171908171909%_
                                                         _%hd171767171876%_
                                                         _%hd171764171866%_)
                                                        (if (gx#stx-pair?
                                                             _%tl171768171879%_)
                                                            (let ((_%e171778171824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl171768171879%_)))
                      (let ((_%tl171780171831%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171778171824%_)))
                            (_%hd171779171828%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171778171824%_))))
                        (if (gx#stx-null? _%tl171780171831%_)
                            (_%__kont171910171911%_
                             _%hd171779171828%_
                             _%hd171767171876%_
                             _%hd171764171866%_)
                            (_%__kont171912171913%_))))
                    (_%__kont171912171913%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont171912171913%_))))
                                        (_%__kont171912171913%_))))))
                             (_%generate1170822%_
                              (lambda (_%where171206%_
                                       _%hd171208%_
                                       _%fender171209%_
                                       _%body171210%_
                                       _%E171211%_)
                                (letrec ((_%recur171213%_
                                          (lambda (_%hd171216%_
                                                   _%tgt171218%_
                                                   _%K171219%_)
                                            (let* ((_%__stx171951171952%_
                                                    _%hd171216%_)
                                                   (_%g171222171234%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx171951171952%_))))
                                              (let ((_%__kont171954171955%_
                                                     (lambda (_%g171224171543%_
                                                              _%g171225171545%_)
                                                       (let* ((_%g171556171564%_
                                                               (lambda (_%g171557171560%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g171557171560%_)))
                      (_%g171555171745%_
                       (lambda (_%g171557171568%_)
                         ((lambda (_%g171558171571%_)
                            (let* ((_%g171583171591%_
                                    (lambda (_%g171584171587%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g171584171587%_)))
                                   (_%g171582171741%_
                                    (lambda (_%g171584171595%_)
                                      ((lambda (_%g171585171598%_)
                                         (let* ((_%g171611171619%_
                                                 (lambda (_%g171612171615%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g171612171615%_)))
                                                (_%g171610171737%_
                                                 (lambda (_%g171612171623%_)
                                                   ((lambda (_%g171613171626%_)
                                                      (let* ((_%g171639171647%_
                                                              (lambda (_%g171640171643%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g171640171643%_)))
                     (_%g171638171733%_
                      (lambda (_%g171640171651%_)
                        ((lambda (_%g171641171654%_)
                           (let* ((_%g171667171675%_
                                   (lambda (_%g171668171671%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171668171671%_)))
                                  (_%g171666171729%_
                                   (lambda (_%g171668171679%_)
                                     ((lambda (_%g171669171682%_)
                                        (let* ((_%g171695171703%_
                                                (lambda (_%g171696171699%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g171696171699%_)))
                                               (_%g171694171725%_
                                                (lambda (_%g171696171707%_)
                                                  ((lambda (_%g171697171710%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%g171558171571%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g171585171598%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%g171558171571%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g171613171626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%g171585171598%_ '()))
                                       '()))
                           (cons (cons _%g171641171654%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%g171585171598%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons _%g171669171682%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g171697171710%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g171696171707%_))))
                                          (_%g171694171725%_ _%E171211%_)))
                                      _%g171668171679%_))))
                             (_%g171666171729%_
                              (_%recur171213%_
                               _%g171225171545%_
                               _%g171613171626%_
                               (_%recur171213%_
                                _%g171224171543%_
                                _%g171641171654%_
                                _%K171219%_)))))
                         _%g171640171651%_))))
                (_%g171638171733%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g171612171623%_))))
                                           (_%g171610171737%_
                                            (gx#genident 'hd))))
                                       _%g171584171595%_))))
                              (_%g171582171741%_ (gx#genident 'e))))
                          _%g171557171568%_))))
                 (_%g171555171745%_ _%tgt171218%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171956171957%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd171216%_)
                                                           (if (gx#underscore?
                                                                _%hd171216%_)
                                                               _%K171219%_
                                                               (if (let ((__tmp172023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g171248171250%_)
                                    (gx#bound-identifier=?
                                     _%g171248171250%_
                                     _%hd171216%_))))
                             (declare (not safe))
                             (__find __tmp172023 _%kws170817%_))
                           (let* ((_%g171256171271%_
                                   (lambda (_%g171257171267%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171257171267%_)))
                                  (_%g171255171324%_
                                   (lambda (_%g171257171275%_)
                                     (if (gx#stx-pair? _%g171257171275%_)
                                         (let ((_%e171260171278%_
                                                (gx#syntax-e
                                                 _%g171257171275%_)))
                                           (let ((_%hd171261171282%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e171260171278%_)))
                                                 (_%tl171262171285%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e171260171278%_))))
                                             (if (gx#stx-pair?
                                                  _%tl171262171285%_)
                                                 (let ((_%e171263171288%_
                                                        (gx#syntax-e
                                                         _%tl171262171285%_)))
                                                   (let ((_%hd171264171292%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e171263171288%_)))
                                                         (_%tl171265171295%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e171263171288%_))))
                                                     (if (gx#stx-null?
                                                          _%tl171265171295%_)
                                                         ((lambda (_%g171258171298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g171259171300%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%g171259171300%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%g171259171300%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%g171258171298%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K171219%_ (cons _%E171211%_ '())))))
                  _%hd171264171292%_
                  _%hd171261171282%_)
                 (_%g171256171271%_ _%g171257171275%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g171256171271%_
                                                  _%g171257171275%_))))
                                         (_%g171256171271%_
                                          _%g171257171275%_)))))
                             (_%g171255171324%_
                              (list _%tgt171218%_ _%hd171216%_)))
                           (let* ((_%g171330171345%_
                                   (lambda (_%g171331171341%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171331171341%_)))
                                  (_%g171329171390%_
                                   (lambda (_%g171331171349%_)
                                     (if (gx#stx-pair? _%g171331171349%_)
                                         (let ((_%e171334171352%_
                                                (gx#syntax-e
                                                 _%g171331171349%_)))
                                           (let ((_%hd171335171356%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e171334171352%_)))
                                                 (_%tl171336171359%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e171334171352%_))))
                                             (if (gx#stx-pair?
                                                  _%tl171336171359%_)
                                                 (let ((_%e171337171362%_
                                                        (gx#syntax-e
                                                         _%tl171336171359%_)))
                                                   (let ((_%hd171338171366%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e171337171362%_)))
                                                         (_%tl171339171369%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e171337171362%_))))
                                                     (if (gx#stx-null?
                                                          _%tl171339171369%_)
                                                         ((lambda (_%g171332171372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g171333171374%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%g171332171372%_
                                            (cons _%g171333171374%_ '()))
                                      '())
                                (cons _%K171219%_ '()))))
                  _%hd171338171366%_
                  _%hd171335171356%_)
                 (_%g171330171345%_ _%g171331171349%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g171330171345%_
                                                  _%g171331171349%_))))
                                         (_%g171330171345%_
                                          _%g171331171349%_)))))
                             (_%g171329171390%_
                              (list _%tgt171218%_ _%hd171216%_)))))
                   (if (gx#stx-null? _%hd171216%_)
                       (let* ((_%g171396171404%_
                               (lambda (_%g171397171400%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g171397171400%_)))
                              (_%g171395171423%_
                               (lambda (_%g171397171408%_)
                                 ((lambda (_%g171398171411%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%g171398171411%_
                                                            '()))
                                                (cons _%K171219%_
                                                      (cons _%E171211%_
                                                            '())))))
                                  _%g171397171408%_))))
                         (_%g171395171423%_ _%tgt171218%_))
                       (if (gx#stx-datum? _%hd171216%_)
                           (let* ((_%g171429171448%_
                                   (lambda (_%g171430171444%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171430171444%_)))
                                  (_%g171428171507%_
                                   (lambda (_%g171430171452%_)
                                     (if (gx#stx-pair? _%g171430171452%_)
                                         (let ((_%e171434171455%_
                                                (gx#syntax-e
                                                 _%g171430171452%_)))
                                           (let ((_%hd171435171459%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e171434171455%_)))
                                                 (_%tl171436171462%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e171434171455%_))))
                                             (if (gx#stx-pair?
                                                  _%tl171436171462%_)
                                                 (let ((_%e171437171465%_
                                                        (gx#syntax-e
                                                         _%tl171436171462%_)))
                                                   (let ((_%hd171438171469%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e171437171465%_)))
                                                         (_%tl171439171472%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e171437171465%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl171439171472%_)
                                                         (let ((_%e171440171475%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl171439171472%_)))
                   (let ((_%hd171441171479%_
                          (let ()
                            (declare (not safe))
                            (##car _%e171440171475%_)))
                         (_%tl171442171482%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e171440171475%_))))
                     (if (gx#stx-null? _%tl171442171482%_)
                         ((lambda (_%g171431171485%_
                                   _%g171432171487%_
                                   _%g171433171488%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%g171431171485%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%g171433171488%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g171432171487%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K171219%_
                                              (cons _%E171211%_ '())))))
                          _%hd171441171479%_
                          _%hd171438171469%_
                          _%hd171435171459%_)
                         (_%g171429171448%_ _%g171430171452%_))))
                 (_%g171429171448%_ _%g171430171452%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g171429171448%_
                                                  _%g171430171452%_))))
                                         (_%g171429171448%_
                                          _%g171430171452%_)))))
                             (_%g171428171507%_
                              (list _%tgt171218%_
                                    _%hd171216%_
                                    (let ((_%e171511%_
                                           (gx#stx-e _%hd171216%_)))
                                      (if (or (keyword? _%e171511%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e171511%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e171511%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx170663%_
                            _%where171206%_
                            _%hd171216%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx171951171952%_)
                                                    (let ((_%e171226171533%_
                                                           (gx#syntax-e
                                                            _%__stx171951171952%_)))
                                                      (let ((_%tl171228171540%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e171226171533%_)))
                    (_%hd171227171537%_
                     (let () (declare (not safe)) (##car _%e171226171533%_))))
                (_%__kont171954171955%_
                 _%tl171228171540%_
                 _%hd171227171537%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171956171957%_)))))))
                                  (_%recur171213%_
                                   _%hd171208%_
                                   _%tgt170815%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender171209%_
                                               (cons _%body171210%_
                                                     (cons _%E171211%_
                                                           '()))))))))
                             (_%generate-clauses170823%_
                              (lambda (_%clauses170944%_)
                                (let _%lp170947%_ ((_%rest170950%_
                                                    _%clauses170944%_)
                                                   (_%E170952%_
                                                    (gx#genident 'E))
                                                   (_%r170953%_ '()))
                                  (let* ((_%__stx171987171988%_ _%rest170950%_)
                                         (_%g170956170968%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx171987171988%_))))
                                    (let ((_%__kont171990171991%_
                                           (lambda (_%g170958171033%_
                                                    _%g170959171035%_)
                                             (let* ((_%__stx171967171968%_
                                                     _%g170959171035%_)
                                                    (_%g171047171058%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx171967171968%_))))
                                               (let ((_%__kont171970171971%_
                                                      (lambda (_%g171049171187%_)
                                                        (if (gx#stx-null?
                                                             _%g170958171033%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g171049171187%_)
                             (not (gx#stx-null? _%g171049171187%_)))
                        (cons (cons _%E170952%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g171049171187%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g170959171035%_))
                                          '()))
                              _%r170953%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx170663%_
                         _%g170959171035%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx170663%_
                     _%g170959171035%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont171972171973%_
                                                      (lambda ()
                                                        (let* ((_%g171069171077%_
                                                                (lambda (_%g171070171073%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g171070171073%_)))
                       (_%g171068171166%_
                        (lambda (_%g171070171081%_)
                          ((lambda (_%g171071171084%_)
                             (let* ((_%g171100171108%_
                                     (lambda (_%g171101171104%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g171101171104%_)))
                                    (_%g171099171162%_
                                     (lambda (_%g171101171112%_)
                                       ((lambda (_%g171102171115%_)
                                          (let* ((_%g171128171136%_
                                                  (lambda (_%g171129171132%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g171129171132%_)))
                                                 (_%g171127171158%_
                                                  (lambda (_%g171129171140%_)
                                                    ((lambda (_%g171130171143%_)
                                                       (_%lp170947%_
                                                        _%g170958171033%_
                                                        _%g171071171084%_
                                                        (cons (cons _%E170952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g171130171143%_ '()))
                      _%r170953%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g171129171140%_))))
                                            (_%g171127171158%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%g171102171115%_
                                                                '())))
                                              (gx#stx-source
                                               _%g170959171035%_)))))
                                        _%g171101171112%_))))
                               (_%g171099171162%_
                                (_%generate-clause170820%_
                                 _%g170959171035%_
                                 (cons _%g171071171084%_ '())))))
                           _%g171070171081%_))))
                  (_%g171068171166%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx171967171968%_)
                                                     (let ((_%e171050171177%_
                                                            (gx#syntax-e
                                                             _%__stx171967171968%_)))
                                                       (let ((_%tl171052171184%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e171050171177%_)))
                     (_%hd171051171181%_
                      (let () (declare (not safe)) (##car _%e171050171177%_))))
                 (if (gx#identifier? _%hd171051171181%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g172024_|
                          _%hd171051171181%_)
                         (_%__kont171970171971%_ _%tl171052171184%_)
                         (_%__kont171972171973%_))
                     (_%__kont171972171973%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont171972171973%_))))))
                                          (_%__kont171992171993%_
                                           (lambda ()
                                             (let* ((_%g170979170987%_
                                                     (lambda (_%g170980170983%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g170980170983%_)))
                                                    (_%g170978171012%_
                                                     (lambda (_%g170980170991%_)
                                                       ((lambda (_%g170981170994%_)
                                                          (cons (cons _%E170952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'raise-syntax-error)
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '"Bad syntax; invalid syntax-case clause"
                                 (cons _%g170981170994%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx170663%_))
                                    '()))
                        _%r170953%_))
                _%g170980170991%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g170978171012%_
                                                _%tgt170815%_)))))
                                      (if (gx#stx-pair? _%__stx171987171988%_)
                                          (let ((_%e170960171023%_
                                                 (gx#syntax-e
                                                  _%__stx171987171988%_)))
                                            (let ((_%tl170962171030%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e170960171023%_)))
                                                  (_%hd170961171027%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e170960171023%_))))
                                              (_%__kont171990171991%_
                                               _%tl170962171030%_
                                               _%hd170961171027%_)))
                                          (_%__kont171992171993%_))))))))
                      (let* ((_%bind170825%_
                              (_%generate-clauses170823%_ _%clauses170818%_))
                             (_%g170828170845%_
                              (lambda (_%g170829170841%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g170829170841%_)))
                             (_%g170827170940%_
                              (lambda (_%g170829170849%_)
                                (if (gx#stx-pair/null? _%g170829170849%_)
                                    (let ((_g172025_
                                           (gx#syntax-split-splice
                                            _%g170829170849%_
                                            '0)))
                                      (begin
                                        (let ((_g172026_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g172025_)
                                                     (##values-length
                                                      _g172025_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g172026_ 2)))
                                              (error "Context expects 2 values"
                                                     _g172026_)))
                                        (let ((_%target170831170852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g172025_ 0)))
                                              (_%tl170833170855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g172025_ 1))))
                                          (if (gx#stx-null? _%tl170833170855%_)
                                              (letrec ((_%loop170834170858%_
                                                        (lambda (_%hd170832170862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try170838170865%_)
                  (if (gx#stx-pair? _%hd170832170862%_)
                      (let ((_%e170835170867%_
                             (gx#syntax-e _%hd170832170862%_)))
                        (let ((_%lp-hd170836170871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170835170867%_)))
                              (_%lp-tl170837170874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170835170867%_))))
                          (_%loop170834170858%_
                           _%lp-tl170837170874%_
                           (cons _%lp-hd170836170871%_
                                 _%bind-try170838170865%_))))
                      (let ((_%bind-try170839170877%_
                             (reverse _%bind-try170838170865%_)))
                        ((lambda (_%g170830170880%_)
                           (let* ((_%g170898170906%_
                                   (lambda (_%g170899170902%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g170899170902%_)))
                                  (_%g170897170936%_
                                   (lambda (_%g170899170910%_)
                                     ((lambda (_%g170900170913%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp172027
                                                           (lambda (_%g170927170930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170928170933%_)
                     (cons _%g170927170930%_ _%g170928170933%_))))
              (declare (not safe))
              (foldr__0 __tmp172027 '() _%g170830170880%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g170900170913%_
                                                                '())
                                                          '()))))
                                      _%g170899170910%_))))
                             (_%g170897170936%_ (car (last _%bind170825%_)))))
                         _%bind-try170839170877%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop170834170858%_
                                                 _%target170831170852%_
                                                 '()))
                                              (_%g170828170845%_
                                               _%g170829170849%_)))))
                                    (_%g170828170845%_ _%g170829170849%_)))))
                        (_%g170827170940%_ _%bind170825%_))))))
          (let* ((_%g170669170688%_
                  (lambda (_%g170670170684%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170670170684%_)))
                 (_%g170668170811%_
                  (lambda (_%g170670170692%_)
                    (if (gx#stx-pair? _%g170670170692%_)
                        (let ((_%e170674170695%_
                               (gx#syntax-e _%g170670170692%_)))
                          (let ((_%hd170675170699%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170674170695%_)))
                                (_%tl170676170702%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170674170695%_))))
                            (if (gx#stx-pair? _%tl170676170702%_)
                                (let ((_%e170677170705%_
                                       (gx#syntax-e _%tl170676170702%_)))
                                  (let ((_%hd170678170709%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170677170705%_)))
                                        (_%tl170679170712%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170677170705%_))))
                                    (if (gx#stx-pair? _%tl170679170712%_)
                                        (let ((_%e170680170715%_
                                               (gx#syntax-e
                                                _%tl170679170712%_)))
                                          (let ((_%hd170681170719%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170680170715%_)))
                                                (_%tl170682170722%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170680170715%_))))
                                            ((lambda (_%g170671170725%_
                                                      _%g170672170727%_
                                                      _%g170673170728%_)
                                               (if (and (gx#identifier-list?
                                                         _%g170672170727%_)
                                                        (gx#stx-list?
                                                         _%g170671170725%_))
                                                   (let* ((_%g170746170754%_
                                                           (lambda (_%g170747170750%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g170747170750%_)))
                                                          (_%g170745170807%_
                                                           (lambda (_%g170747170758%_)
                                                             ((lambda (_%g170748170761%_)
                                                                (let* ((_%g170773170781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g170774170777%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g170774170777%_)))
                               (_%g170772170803%_
                                (lambda (_%g170774170785%_)
                                  ((lambda (_%g170775170788%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%g170748170761%_
                                                             (cons _%g170673170728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g170775170788%_
                                                       '()))))
                                   _%g170774170785%_))))
                          (_%g170772170803%_
                           (_%generate170666%_
                            _%g170748170761%_
                            (gx#syntax->list _%g170672170727%_)
                            _%g170671170725%_))))
                      _%g170747170758%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g170745170807%_
                                                      (gx#genident 'e)))
                                                   (_%g170669170688%_
                                                    _%g170670170692%_)))
                                             _%tl170682170722%_
                                             _%hd170681170719%_
                                             _%hd170678170709%_)))
                                        (_%g170669170688%_
                                         _%g170670170692%_))))
                                (_%g170669170688%_ _%g170670170692%_))))
                        (_%g170669170688%_ _%g170670170692%_)))))
            (_%g170668170811%_ _%stx170663%_)))))))
