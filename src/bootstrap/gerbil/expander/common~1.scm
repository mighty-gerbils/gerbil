(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g181013_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181015_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181017_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181019_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181020_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181022_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181023_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181025_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181026_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181028_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181029_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181031_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj181009
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181009 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181009 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181009 '(e source) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181009 '(e source) '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181009 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181009 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181009 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181009 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181009 '#f '12 '#f '#f))
        (let ((__tmp181012 |gx[1]#_g181013_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj181009 __tmp181012 '3 '#f '#f))
        (let ((__tmp181014 |gx[1]#_g181015_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj181009 __tmp181014 '13 '#f '#f))
        (let ((__tmp181016 |gx[1]#_g181017_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj181009 __tmp181016 '14 '#f '#f))
        (let ((__tmp181018
               (cons (cons 'e |gx[1]#_g181019_|)
                     (cons (cons 'source |gx[1]#_g181020_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj181009 __tmp181018 '15 '#f '#f))
        (let ((__tmp181021
               (cons (cons 'e |gx[1]#_g181022_|)
                     (cons (cons 'source |gx[1]#_g181023_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj181009 __tmp181021 '16 '#f '#f))
        (let ((__tmp181024
               (cons (cons 'e |gx[1]#_g181025_|)
                     (cons (cons 'source |gx[1]#_g181026_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj181009 __tmp181024 '17 '#f '#f))
        (let ((__tmp181027
               (cons (cons 'e |gx[1]#_g181028_|)
                     (cons (cons 'source |gx[1]#_g181029_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj181009 __tmp181027 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181009 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181009 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181009 '() '20 '#f '#f))
        __obj181009))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx179606%_)
        (let* ((_%g179610179624%_
                (lambda (_%g179611179620%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g179611179620%_)))
               (_%g179609179666%_
                (lambda (_%g179611179628%_)
                  (if (gx#stx-pair? _%g179611179628%_)
                      (let ((_%e179613179631%_
                             (gx#syntax-e _%g179611179628%_)))
                        (let ((_%hd179614179635%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e179613179631%_)))
                              (_%tl179615179638%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e179613179631%_))))
                          (if (gx#stx-pair? _%tl179615179638%_)
                              (let ((_%e179616179641%_
                                     (gx#syntax-e _%tl179615179638%_)))
                                (let ((_%hd179617179645%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e179616179641%_)))
                                      (_%tl179618179648%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e179616179641%_))))
                                  (if (gx#stx-null? _%tl179618179648%_)
                                      ((lambda (_%g179612179651%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%g179612179651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure"
                               (cons _%g179612179651%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd179617179645%_)
                                      (_%g179610179624%_ _%g179611179628%_))))
                              (_%g179610179624%_ _%g179611179628%_))))
                      (_%g179610179624%_ _%g179611179628%_)))))
          (_%g179609179666%_ _%$stx179606%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx179670%_)
        (letrec ((_%generate179673%_
                  (lambda (_%tgt179822%_ _%kws179824%_ _%clauses179825%_)
                    (letrec ((_%generate-clause179827%_
                              (lambda (_%hd180760%_ _%E180762%_)
                                (let* ((_%__stx180912180913%_ _%hd180760%_)
                                       (_%g180766180793%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx180912180913%_))))
                                  (let ((_%__kont180915180916%_
                                         (lambda (_%g180768180889%_
                                                  _%g180769180891%_)
                                           (_%generate1179829%_
                                            _%hd180760%_
                                            _%g180769180891%_
                                            '#t
                                            _%g180768180889%_
                                            _%E180762%_)))
                                        (_%__kont180917180918%_
                                         (lambda (_%g180776180841%_
                                                  _%g180777180843%_
                                                  _%g180778180844%_)
                                           (_%generate1179829%_
                                            _%hd180760%_
                                            _%g180778180844%_
                                            _%g180777180843%_
                                            _%g180776180841%_
                                            _%E180762%_)))
                                        (_%__kont180919180920%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx179670%_
                                            _%hd180760%_))))
                                    (if (gx#stx-pair? _%__stx180912180913%_)
                                        (let ((_%e180770180869%_
                                               (gx#syntax-e
                                                _%__stx180912180913%_)))
                                          (let ((_%tl180772180876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e180770180869%_)))
                                                (_%hd180771180873%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e180770180869%_))))
                                            (if (gx#stx-pair?
                                                 _%tl180772180876%_)
                                                (let ((_%e180773180879%_
                                                       (gx#syntax-e
                                                        _%tl180772180876%_)))
                                                  (let ((_%tl180775180886%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e180773180879%_)))
                                                        (_%hd180774180883%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e180773180879%_))))
                                                    (if (gx#stx-null?
                                                         _%tl180775180886%_)
                                                        (_%__kont180915180916%_
                                                         _%hd180774180883%_
                                                         _%hd180771180873%_)
                                                        (if (gx#stx-pair?
                                                             _%tl180775180886%_)
                                                            (let ((_%e180785180831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl180775180886%_)))
                      (let ((_%tl180787180838%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e180785180831%_)))
                            (_%hd180786180835%_
                             (let ()
                               (declare (not safe))
                               (##car _%e180785180831%_))))
                        (if (gx#stx-null? _%tl180787180838%_)
                            (_%__kont180917180918%_
                             _%hd180786180835%_
                             _%hd180774180883%_
                             _%hd180771180873%_)
                            (_%__kont180919180920%_))))
                    (_%__kont180919180920%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont180919180920%_))))
                                        (_%__kont180919180920%_))))))
                             (_%generate1179829%_
                              (lambda (_%where180213%_
                                       _%hd180215%_
                                       _%fender180216%_
                                       _%body180217%_
                                       _%E180218%_)
                                (letrec ((_%recur180220%_
                                          (lambda (_%hd180223%_
                                                   _%tgt180225%_
                                                   _%K180226%_)
                                            (let* ((_%__stx180958180959%_
                                                    _%hd180223%_)
                                                   (_%g180229180241%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx180958180959%_))))
                                              (let ((_%__kont180961180962%_
                                                     (lambda (_%g180231180550%_
                                                              _%g180232180552%_)
                                                       (let* ((_%g180563180571%_
                                                               (lambda (_%g180564180567%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g180564180567%_)))
                      (_%g180562180752%_
                       (lambda (_%g180564180575%_)
                         ((lambda (_%g180565180578%_)
                            (let* ((_%g180590180598%_
                                    (lambda (_%g180591180594%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g180591180594%_)))
                                   (_%g180589180748%_
                                    (lambda (_%g180591180602%_)
                                      ((lambda (_%g180592180605%_)
                                         (let* ((_%g180618180626%_
                                                 (lambda (_%g180619180622%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g180619180622%_)))
                                                (_%g180617180744%_
                                                 (lambda (_%g180619180630%_)
                                                   ((lambda (_%g180620180633%_)
                                                      (let* ((_%g180646180654%_
                                                              (lambda (_%g180647180650%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g180647180650%_)))
                     (_%g180645180740%_
                      (lambda (_%g180647180658%_)
                        ((lambda (_%g180648180661%_)
                           (let* ((_%g180674180682%_
                                   (lambda (_%g180675180678%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g180675180678%_)))
                                  (_%g180673180736%_
                                   (lambda (_%g180675180686%_)
                                     ((lambda (_%g180676180689%_)
                                        (let* ((_%g180702180710%_
                                                (lambda (_%g180703180706%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g180703180706%_)))
                                               (_%g180701180732%_
                                                (lambda (_%g180703180714%_)
                                                  ((lambda (_%g180704180717%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%g180565180578%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g180592180605%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%g180565180578%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g180620180633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%g180592180605%_ '()))
                                       '()))
                           (cons (cons _%g180648180661%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%g180592180605%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons _%g180676180689%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g180704180717%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g180703180714%_))))
                                          (_%g180701180732%_ _%E180218%_)))
                                      _%g180675180686%_))))
                             (_%g180673180736%_
                              (_%recur180220%_
                               _%g180232180552%_
                               _%g180620180633%_
                               (_%recur180220%_
                                _%g180231180550%_
                                _%g180648180661%_
                                _%K180226%_)))))
                         _%g180647180658%_))))
                (_%g180645180740%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g180619180630%_))))
                                           (_%g180617180744%_
                                            (gx#genident 'hd))))
                                       _%g180591180602%_))))
                              (_%g180589180748%_ (gx#genident 'e))))
                          _%g180564180575%_))))
                 (_%g180562180752%_ _%tgt180225%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont180963180964%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd180223%_)
                                                           (if (gx#underscore?
                                                                _%hd180223%_)
                                                               _%K180226%_
                                                               (if (let ((__tmp181030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g180255180257%_)
                                    (gx#bound-identifier=?
                                     _%g180255180257%_
                                     _%hd180223%_))))
                             (declare (not safe))
                             (__find __tmp181030 _%kws179824%_))
                           (let* ((_%g180263180278%_
                                   (lambda (_%g180264180274%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g180264180274%_)))
                                  (_%g180262180331%_
                                   (lambda (_%g180264180282%_)
                                     (if (gx#stx-pair? _%g180264180282%_)
                                         (let ((_%e180267180285%_
                                                (gx#syntax-e
                                                 _%g180264180282%_)))
                                           (let ((_%hd180268180289%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e180267180285%_)))
                                                 (_%tl180269180292%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e180267180285%_))))
                                             (if (gx#stx-pair?
                                                  _%tl180269180292%_)
                                                 (let ((_%e180270180295%_
                                                        (gx#syntax-e
                                                         _%tl180269180292%_)))
                                                   (let ((_%hd180271180299%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e180270180295%_)))
                                                         (_%tl180272180302%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e180270180295%_))))
                                                     (if (gx#stx-null?
                                                          _%tl180272180302%_)
                                                         ((lambda (_%g180265180305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g180266180307%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%g180266180307%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%g180266180307%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%g180265180305%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K180226%_ (cons _%E180218%_ '())))))
                  _%hd180271180299%_
                  _%hd180268180289%_)
                 (_%g180263180278%_ _%g180264180282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g180263180278%_
                                                  _%g180264180282%_))))
                                         (_%g180263180278%_
                                          _%g180264180282%_)))))
                             (_%g180262180331%_
                              (list _%tgt180225%_ _%hd180223%_)))
                           (let* ((_%g180337180352%_
                                   (lambda (_%g180338180348%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g180338180348%_)))
                                  (_%g180336180397%_
                                   (lambda (_%g180338180356%_)
                                     (if (gx#stx-pair? _%g180338180356%_)
                                         (let ((_%e180341180359%_
                                                (gx#syntax-e
                                                 _%g180338180356%_)))
                                           (let ((_%hd180342180363%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e180341180359%_)))
                                                 (_%tl180343180366%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e180341180359%_))))
                                             (if (gx#stx-pair?
                                                  _%tl180343180366%_)
                                                 (let ((_%e180344180369%_
                                                        (gx#syntax-e
                                                         _%tl180343180366%_)))
                                                   (let ((_%hd180345180373%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e180344180369%_)))
                                                         (_%tl180346180376%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e180344180369%_))))
                                                     (if (gx#stx-null?
                                                          _%tl180346180376%_)
                                                         ((lambda (_%g180339180379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g180340180381%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%g180339180379%_
                                            (cons _%g180340180381%_ '()))
                                      '())
                                (cons _%K180226%_ '()))))
                  _%hd180345180373%_
                  _%hd180342180363%_)
                 (_%g180337180352%_ _%g180338180356%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g180337180352%_
                                                  _%g180338180356%_))))
                                         (_%g180337180352%_
                                          _%g180338180356%_)))))
                             (_%g180336180397%_
                              (list _%tgt180225%_ _%hd180223%_)))))
                   (if (gx#stx-null? _%hd180223%_)
                       (let* ((_%g180403180411%_
                               (lambda (_%g180404180407%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g180404180407%_)))
                              (_%g180402180430%_
                               (lambda (_%g180404180415%_)
                                 ((lambda (_%g180405180418%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%g180405180418%_
                                                            '()))
                                                (cons _%K180226%_
                                                      (cons _%E180218%_
                                                            '())))))
                                  _%g180404180415%_))))
                         (_%g180402180430%_ _%tgt180225%_))
                       (if (gx#stx-datum? _%hd180223%_)
                           (let* ((_%g180436180455%_
                                   (lambda (_%g180437180451%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g180437180451%_)))
                                  (_%g180435180514%_
                                   (lambda (_%g180437180459%_)
                                     (if (gx#stx-pair? _%g180437180459%_)
                                         (let ((_%e180441180462%_
                                                (gx#syntax-e
                                                 _%g180437180459%_)))
                                           (let ((_%hd180442180466%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e180441180462%_)))
                                                 (_%tl180443180469%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e180441180462%_))))
                                             (if (gx#stx-pair?
                                                  _%tl180443180469%_)
                                                 (let ((_%e180444180472%_
                                                        (gx#syntax-e
                                                         _%tl180443180469%_)))
                                                   (let ((_%hd180445180476%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e180444180472%_)))
                                                         (_%tl180446180479%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e180444180472%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl180446180479%_)
                                                         (let ((_%e180447180482%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl180446180479%_)))
                   (let ((_%hd180448180486%_
                          (let ()
                            (declare (not safe))
                            (##car _%e180447180482%_)))
                         (_%tl180449180489%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e180447180482%_))))
                     (if (gx#stx-null? _%tl180449180489%_)
                         ((lambda (_%g180438180492%_
                                   _%g180439180494%_
                                   _%g180440180495%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%g180438180492%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%g180440180495%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g180439180494%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K180226%_
                                              (cons _%E180218%_ '())))))
                          _%hd180448180486%_
                          _%hd180445180476%_
                          _%hd180442180466%_)
                         (_%g180436180455%_ _%g180437180459%_))))
                 (_%g180436180455%_ _%g180437180459%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g180436180455%_
                                                  _%g180437180459%_))))
                                         (_%g180436180455%_
                                          _%g180437180459%_)))))
                             (_%g180435180514%_
                              (list _%tgt180225%_
                                    _%hd180223%_
                                    (let ((_%e180518%_
                                           (gx#stx-e _%hd180223%_)))
                                      (if (or (keyword? _%e180518%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e180518%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e180518%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx179670%_
                            _%where180213%_
                            _%hd180223%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx180958180959%_)
                                                    (let ((_%e180233180540%_
                                                           (gx#syntax-e
                                                            _%__stx180958180959%_)))
                                                      (let ((_%tl180235180547%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e180233180540%_)))
                    (_%hd180234180544%_
                     (let () (declare (not safe)) (##car _%e180233180540%_))))
                (_%__kont180961180962%_
                 _%tl180235180547%_
                 _%hd180234180544%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont180963180964%_)))))))
                                  (_%recur180220%_
                                   _%hd180215%_
                                   _%tgt179822%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender180216%_
                                               (cons _%body180217%_
                                                     (cons _%E180218%_
                                                           '()))))))))
                             (_%generate-clauses179830%_
                              (lambda (_%clauses179951%_)
                                (let _%lp179954%_ ((_%rest179957%_
                                                    _%clauses179951%_)
                                                   (_%E179959%_
                                                    (gx#genident 'E))
                                                   (_%r179960%_ '()))
                                  (let* ((_%__stx180994180995%_ _%rest179957%_)
                                         (_%g179963179975%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx180994180995%_))))
                                    (let ((_%__kont180997180998%_
                                           (lambda (_%g179965180040%_
                                                    _%g179966180042%_)
                                             (let* ((_%__stx180974180975%_
                                                     _%g179966180042%_)
                                                    (_%g180054180065%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx180974180975%_))))
                                               (let ((_%__kont180977180978%_
                                                      (lambda (_%g180056180194%_)
                                                        (if (gx#stx-null?
                                                             _%g179965180040%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g180056180194%_)
                             (not (gx#stx-null? _%g180056180194%_)))
                        (cons (cons _%E179959%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g180056180194%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g179966180042%_))
                                          '()))
                              _%r179960%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx179670%_
                         _%g179966180042%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx179670%_
                     _%g179966180042%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont180979180980%_
                                                      (lambda ()
                                                        (let* ((_%g180076180084%_
                                                                (lambda (_%g180077180080%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g180077180080%_)))
                       (_%g180075180173%_
                        (lambda (_%g180077180088%_)
                          ((lambda (_%g180078180091%_)
                             (let* ((_%g180107180115%_
                                     (lambda (_%g180108180111%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g180108180111%_)))
                                    (_%g180106180169%_
                                     (lambda (_%g180108180119%_)
                                       ((lambda (_%g180109180122%_)
                                          (let* ((_%g180135180143%_
                                                  (lambda (_%g180136180139%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g180136180139%_)))
                                                 (_%g180134180165%_
                                                  (lambda (_%g180136180147%_)
                                                    ((lambda (_%g180137180150%_)
                                                       (_%lp179954%_
                                                        _%g179965180040%_
                                                        _%g180078180091%_
                                                        (cons (cons _%E179959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g180137180150%_ '()))
                      _%r179960%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g180136180147%_))))
                                            (_%g180134180165%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%g180109180122%_
                                                                '())))
                                              (gx#stx-source
                                               _%g179966180042%_)))))
                                        _%g180108180119%_))))
                               (_%g180106180169%_
                                (_%generate-clause179827%_
                                 _%g179966180042%_
                                 (cons _%g180078180091%_ '())))))
                           _%g180077180088%_))))
                  (_%g180075180173%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx180974180975%_)
                                                     (let ((_%e180057180184%_
                                                            (gx#syntax-e
                                                             _%__stx180974180975%_)))
                                                       (let ((_%tl180059180191%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e180057180184%_)))
                     (_%hd180058180188%_
                      (let () (declare (not safe)) (##car _%e180057180184%_))))
                 (if (gx#identifier? _%hd180058180188%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g181031_|
                          _%hd180058180188%_)
                         (_%__kont180977180978%_ _%tl180059180191%_)
                         (_%__kont180979180980%_))
                     (_%__kont180979180980%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont180979180980%_))))))
                                          (_%__kont180999181000%_
                                           (lambda ()
                                             (let* ((_%g179986179994%_
                                                     (lambda (_%g179987179990%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g179987179990%_)))
                                                    (_%g179985180019%_
                                                     (lambda (_%g179987179998%_)
                                                       ((lambda (_%g179988180001%_)
                                                          (cons (cons _%E179959%_
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
                                 (cons _%g179988180001%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx179670%_))
                                    '()))
                        _%r179960%_))
                _%g179987179998%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g179985180019%_
                                                _%tgt179822%_)))))
                                      (if (gx#stx-pair? _%__stx180994180995%_)
                                          (let ((_%e179967180030%_
                                                 (gx#syntax-e
                                                  _%__stx180994180995%_)))
                                            (let ((_%tl179969180037%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e179967180030%_)))
                                                  (_%hd179968180034%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e179967180030%_))))
                                              (_%__kont180997180998%_
                                               _%tl179969180037%_
                                               _%hd179968180034%_)))
                                          (_%__kont180999181000%_))))))))
                      (let* ((_%bind179832%_
                              (_%generate-clauses179830%_ _%clauses179825%_))
                             (_%g179835179852%_
                              (lambda (_%g179836179848%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g179836179848%_)))
                             (_%g179834179947%_
                              (lambda (_%g179836179856%_)
                                (if (gx#stx-pair/null? _%g179836179856%_)
                                    (let ((_g181032_
                                           (gx#syntax-split-splice
                                            _%g179836179856%_
                                            '0)))
                                      (begin
                                        (let ((_g181033_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g181032_)
                                                     (##values-length
                                                      _g181032_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g181033_ 2)))
                                              (error "Context expects 2 values"
                                                     _g181033_)))
                                        (let ((_%target179838179859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g181032_ 0)))
                                              (_%tl179840179862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g181032_ 1))))
                                          (if (gx#stx-null? _%tl179840179862%_)
                                              (letrec ((_%loop179841179865%_
                                                        (lambda (_%hd179839179869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try179845179872%_)
                  (if (gx#stx-pair? _%hd179839179869%_)
                      (let ((_%e179842179874%_
                             (gx#syntax-e _%hd179839179869%_)))
                        (let ((_%lp-hd179843179878%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e179842179874%_)))
                              (_%lp-tl179844179881%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e179842179874%_))))
                          (_%loop179841179865%_
                           _%lp-tl179844179881%_
                           (cons _%lp-hd179843179878%_
                                 _%bind-try179845179872%_))))
                      (let ((_%bind-try179846179884%_
                             (reverse _%bind-try179845179872%_)))
                        ((lambda (_%g179837179887%_)
                           (let* ((_%g179905179913%_
                                   (lambda (_%g179906179909%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g179906179909%_)))
                                  (_%g179904179943%_
                                   (lambda (_%g179906179917%_)
                                     ((lambda (_%g179907179920%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp181034
                                                           (lambda (_%g179934179937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g179935179940%_)
                     (cons _%g179934179937%_ _%g179935179940%_))))
              (declare (not safe))
              (foldr__0 __tmp181034 '() _%g179837179887%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g179907179920%_
                                                                '())
                                                          '()))))
                                      _%g179906179917%_))))
                             (_%g179904179943%_ (car (last _%bind179832%_)))))
                         _%bind-try179846179884%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop179841179865%_
                                                 _%target179838179859%_
                                                 '()))
                                              (_%g179835179852%_
                                               _%g179836179856%_)))))
                                    (_%g179835179852%_ _%g179836179856%_)))))
                        (_%g179834179947%_ _%bind179832%_))))))
          (let* ((_%g179676179695%_
                  (lambda (_%g179677179691%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g179677179691%_)))
                 (_%g179675179818%_
                  (lambda (_%g179677179699%_)
                    (if (gx#stx-pair? _%g179677179699%_)
                        (let ((_%e179681179702%_
                               (gx#syntax-e _%g179677179699%_)))
                          (let ((_%hd179682179706%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e179681179702%_)))
                                (_%tl179683179709%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e179681179702%_))))
                            (if (gx#stx-pair? _%tl179683179709%_)
                                (let ((_%e179684179712%_
                                       (gx#syntax-e _%tl179683179709%_)))
                                  (let ((_%hd179685179716%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e179684179712%_)))
                                        (_%tl179686179719%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e179684179712%_))))
                                    (if (gx#stx-pair? _%tl179686179719%_)
                                        (let ((_%e179687179722%_
                                               (gx#syntax-e
                                                _%tl179686179719%_)))
                                          (let ((_%hd179688179726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e179687179722%_)))
                                                (_%tl179689179729%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e179687179722%_))))
                                            ((lambda (_%g179678179732%_
                                                      _%g179679179734%_
                                                      _%g179680179735%_)
                                               (if (and (gx#identifier-list?
                                                         _%g179679179734%_)
                                                        (gx#stx-list?
                                                         _%g179678179732%_))
                                                   (let* ((_%g179753179761%_
                                                           (lambda (_%g179754179757%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g179754179757%_)))
                                                          (_%g179752179814%_
                                                           (lambda (_%g179754179765%_)
                                                             ((lambda (_%g179755179768%_)
                                                                (let* ((_%g179780179788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g179781179784%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g179781179784%_)))
                               (_%g179779179810%_
                                (lambda (_%g179781179792%_)
                                  ((lambda (_%g179782179795%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%g179755179768%_
                                                             (cons _%g179680179735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g179782179795%_
                                                       '()))))
                                   _%g179781179792%_))))
                          (_%g179779179810%_
                           (_%generate179673%_
                            _%g179755179768%_
                            (gx#syntax->list _%g179679179734%_)
                            _%g179678179732%_))))
                      _%g179754179765%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g179752179814%_
                                                      (gx#genident 'e)))
                                                   (_%g179676179695%_
                                                    _%g179677179699%_)))
                                             _%tl179689179729%_
                                             _%hd179688179726%_
                                             _%hd179685179716%_)))
                                        (_%g179676179695%_
                                         _%g179677179699%_))))
                                (_%g179676179695%_ _%g179677179699%_))))
                        (_%g179676179695%_ _%g179677179699%_)))))
            (_%g179675179818%_ _%stx179670%_)))))))
