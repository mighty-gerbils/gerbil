(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g172010_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172012_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172014_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172016_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172017_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172019_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172020_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172022_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172023_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172025_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172026_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172028_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj172006
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
          (##unchecked-structure-set! __obj172006 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172006 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172006 '(e source) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172006 '(e source) '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172006 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172006 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172006 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172006 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172006 '#f '12 '#f '#f))
        (let ((__tmp172009 |gx[1]#_g172010_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj172006 __tmp172009 '3 '#f '#f))
        (let ((__tmp172011 |gx[1]#_g172012_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj172006 __tmp172011 '13 '#f '#f))
        (let ((__tmp172013 |gx[1]#_g172014_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj172006 __tmp172013 '14 '#f '#f))
        (let ((__tmp172015
               (cons (cons 'e |gx[1]#_g172016_|)
                     (cons (cons 'source |gx[1]#_g172017_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj172006 __tmp172015 '15 '#f '#f))
        (let ((__tmp172018
               (cons (cons 'e |gx[1]#_g172019_|)
                     (cons (cons 'source |gx[1]#_g172020_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj172006 __tmp172018 '16 '#f '#f))
        (let ((__tmp172021
               (cons (cons 'e |gx[1]#_g172022_|)
                     (cons (cons 'source |gx[1]#_g172023_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj172006 __tmp172021 '17 '#f '#f))
        (let ((__tmp172024
               (cons (cons 'e |gx[1]#_g172025_|)
                     (cons (cons 'source |gx[1]#_g172026_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj172006 __tmp172024 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172006 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172006 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172006 '() '20 '#f '#f))
        __obj172006))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx170603%_)
        (let* ((_%g170607170621%_
                (lambda (_%g170608170617%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g170608170617%_)))
               (_%g170606170663%_
                (lambda (_%g170608170625%_)
                  (if (gx#stx-pair? _%g170608170625%_)
                      (let ((_%e170610170628%_
                             (gx#syntax-e _%g170608170625%_)))
                        (let ((_%hd170611170632%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170610170628%_)))
                              (_%tl170612170635%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170610170628%_))))
                          (if (gx#stx-pair? _%tl170612170635%_)
                              (let ((_%e170613170638%_
                                     (gx#syntax-e _%tl170612170635%_)))
                                (let ((_%hd170614170642%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170613170638%_)))
                                      (_%tl170615170645%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170613170638%_))))
                                  (if (gx#stx-null? _%tl170615170645%_)
                                      ((lambda (_%g170609170648%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%g170609170648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure"
                               (cons _%g170609170648%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd170614170642%_)
                                      (_%g170607170621%_ _%g170608170625%_))))
                              (_%g170607170621%_ _%g170608170625%_))))
                      (_%g170607170621%_ _%g170608170625%_)))))
          (_%g170606170663%_ _%$stx170603%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx170667%_)
        (letrec ((_%generate170670%_
                  (lambda (_%tgt170819%_ _%kws170821%_ _%clauses170822%_)
                    (letrec ((_%generate-clause170824%_
                              (lambda (_%hd171757%_ _%E171759%_)
                                (let* ((_%__stx171909171910%_ _%hd171757%_)
                                       (_%g171763171790%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx171909171910%_))))
                                  (let ((_%__kont171912171913%_
                                         (lambda (_%g171765171886%_
                                                  _%g171766171888%_)
                                           (_%generate1170826%_
                                            _%hd171757%_
                                            _%g171766171888%_
                                            '#t
                                            _%g171765171886%_
                                            _%E171759%_)))
                                        (_%__kont171914171915%_
                                         (lambda (_%g171773171838%_
                                                  _%g171774171840%_
                                                  _%g171775171841%_)
                                           (_%generate1170826%_
                                            _%hd171757%_
                                            _%g171775171841%_
                                            _%g171774171840%_
                                            _%g171773171838%_
                                            _%E171759%_)))
                                        (_%__kont171916171917%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx170667%_
                                            _%hd171757%_))))
                                    (if (gx#stx-pair? _%__stx171909171910%_)
                                        (let ((_%e171767171866%_
                                               (gx#syntax-e
                                                _%__stx171909171910%_)))
                                          (let ((_%tl171769171873%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171767171866%_)))
                                                (_%hd171768171870%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171767171866%_))))
                                            (if (gx#stx-pair?
                                                 _%tl171769171873%_)
                                                (let ((_%e171770171876%_
                                                       (gx#syntax-e
                                                        _%tl171769171873%_)))
                                                  (let ((_%tl171772171883%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e171770171876%_)))
                                                        (_%hd171771171880%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e171770171876%_))))
                                                    (if (gx#stx-null?
                                                         _%tl171772171883%_)
                                                        (_%__kont171912171913%_
                                                         _%hd171771171880%_
                                                         _%hd171768171870%_)
                                                        (if (gx#stx-pair?
                                                             _%tl171772171883%_)
                                                            (let ((_%e171782171828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl171772171883%_)))
                      (let ((_%tl171784171835%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171782171828%_)))
                            (_%hd171783171832%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171782171828%_))))
                        (if (gx#stx-null? _%tl171784171835%_)
                            (_%__kont171914171915%_
                             _%hd171783171832%_
                             _%hd171771171880%_
                             _%hd171768171870%_)
                            (_%__kont171916171917%_))))
                    (_%__kont171916171917%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont171916171917%_))))
                                        (_%__kont171916171917%_))))))
                             (_%generate1170826%_
                              (lambda (_%where171210%_
                                       _%hd171212%_
                                       _%fender171213%_
                                       _%body171214%_
                                       _%E171215%_)
                                (letrec ((_%recur171217%_
                                          (lambda (_%hd171220%_
                                                   _%tgt171222%_
                                                   _%K171223%_)
                                            (let* ((_%__stx171955171956%_
                                                    _%hd171220%_)
                                                   (_%g171226171238%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx171955171956%_))))
                                              (let ((_%__kont171958171959%_
                                                     (lambda (_%g171228171547%_
                                                              _%g171229171549%_)
                                                       (let* ((_%g171560171568%_
                                                               (lambda (_%g171561171564%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g171561171564%_)))
                      (_%g171559171749%_
                       (lambda (_%g171561171572%_)
                         ((lambda (_%g171562171575%_)
                            (let* ((_%g171587171595%_
                                    (lambda (_%g171588171591%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g171588171591%_)))
                                   (_%g171586171745%_
                                    (lambda (_%g171588171599%_)
                                      ((lambda (_%g171589171602%_)
                                         (let* ((_%g171615171623%_
                                                 (lambda (_%g171616171619%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g171616171619%_)))
                                                (_%g171614171741%_
                                                 (lambda (_%g171616171627%_)
                                                   ((lambda (_%g171617171630%_)
                                                      (let* ((_%g171643171651%_
                                                              (lambda (_%g171644171647%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g171644171647%_)))
                     (_%g171642171737%_
                      (lambda (_%g171644171655%_)
                        ((lambda (_%g171645171658%_)
                           (let* ((_%g171671171679%_
                                   (lambda (_%g171672171675%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171672171675%_)))
                                  (_%g171670171733%_
                                   (lambda (_%g171672171683%_)
                                     ((lambda (_%g171673171686%_)
                                        (let* ((_%g171699171707%_
                                                (lambda (_%g171700171703%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g171700171703%_)))
                                               (_%g171698171729%_
                                                (lambda (_%g171700171711%_)
                                                  ((lambda (_%g171701171714%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%g171562171575%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g171589171602%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%g171562171575%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g171617171630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%g171589171602%_ '()))
                                       '()))
                           (cons (cons _%g171645171658%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%g171589171602%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons _%g171673171686%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g171701171714%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g171700171711%_))))
                                          (_%g171698171729%_ _%E171215%_)))
                                      _%g171672171683%_))))
                             (_%g171670171733%_
                              (_%recur171217%_
                               _%g171229171549%_
                               _%g171617171630%_
                               (_%recur171217%_
                                _%g171228171547%_
                                _%g171645171658%_
                                _%K171223%_)))))
                         _%g171644171655%_))))
                (_%g171642171737%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g171616171627%_))))
                                           (_%g171614171741%_
                                            (gx#genident 'hd))))
                                       _%g171588171599%_))))
                              (_%g171586171745%_ (gx#genident 'e))))
                          _%g171561171572%_))))
                 (_%g171559171749%_ _%tgt171222%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171960171961%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd171220%_)
                                                           (if (gx#underscore?
                                                                _%hd171220%_)
                                                               _%K171223%_
                                                               (if (let ((__tmp172027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g171252171254%_)
                                    (gx#bound-identifier=?
                                     _%g171252171254%_
                                     _%hd171220%_))))
                             (declare (not safe))
                             (__find __tmp172027 _%kws170821%_))
                           (let* ((_%g171260171275%_
                                   (lambda (_%g171261171271%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171261171271%_)))
                                  (_%g171259171328%_
                                   (lambda (_%g171261171279%_)
                                     (if (gx#stx-pair? _%g171261171279%_)
                                         (let ((_%e171264171282%_
                                                (gx#syntax-e
                                                 _%g171261171279%_)))
                                           (let ((_%hd171265171286%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e171264171282%_)))
                                                 (_%tl171266171289%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e171264171282%_))))
                                             (if (gx#stx-pair?
                                                  _%tl171266171289%_)
                                                 (let ((_%e171267171292%_
                                                        (gx#syntax-e
                                                         _%tl171266171289%_)))
                                                   (let ((_%hd171268171296%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e171267171292%_)))
                                                         (_%tl171269171299%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e171267171292%_))))
                                                     (if (gx#stx-null?
                                                          _%tl171269171299%_)
                                                         ((lambda (_%g171262171302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g171263171304%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%g171263171304%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%g171263171304%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%g171262171302%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K171223%_ (cons _%E171215%_ '())))))
                  _%hd171268171296%_
                  _%hd171265171286%_)
                 (_%g171260171275%_ _%g171261171279%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g171260171275%_
                                                  _%g171261171279%_))))
                                         (_%g171260171275%_
                                          _%g171261171279%_)))))
                             (_%g171259171328%_
                              (list _%tgt171222%_ _%hd171220%_)))
                           (let* ((_%g171334171349%_
                                   (lambda (_%g171335171345%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171335171345%_)))
                                  (_%g171333171394%_
                                   (lambda (_%g171335171353%_)
                                     (if (gx#stx-pair? _%g171335171353%_)
                                         (let ((_%e171338171356%_
                                                (gx#syntax-e
                                                 _%g171335171353%_)))
                                           (let ((_%hd171339171360%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e171338171356%_)))
                                                 (_%tl171340171363%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e171338171356%_))))
                                             (if (gx#stx-pair?
                                                  _%tl171340171363%_)
                                                 (let ((_%e171341171366%_
                                                        (gx#syntax-e
                                                         _%tl171340171363%_)))
                                                   (let ((_%hd171342171370%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e171341171366%_)))
                                                         (_%tl171343171373%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e171341171366%_))))
                                                     (if (gx#stx-null?
                                                          _%tl171343171373%_)
                                                         ((lambda (_%g171336171376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g171337171378%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%g171336171376%_
                                            (cons _%g171337171378%_ '()))
                                      '())
                                (cons _%K171223%_ '()))))
                  _%hd171342171370%_
                  _%hd171339171360%_)
                 (_%g171334171349%_ _%g171335171353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g171334171349%_
                                                  _%g171335171353%_))))
                                         (_%g171334171349%_
                                          _%g171335171353%_)))))
                             (_%g171333171394%_
                              (list _%tgt171222%_ _%hd171220%_)))))
                   (if (gx#stx-null? _%hd171220%_)
                       (let* ((_%g171400171408%_
                               (lambda (_%g171401171404%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g171401171404%_)))
                              (_%g171399171427%_
                               (lambda (_%g171401171412%_)
                                 ((lambda (_%g171402171415%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%g171402171415%_
                                                            '()))
                                                (cons _%K171223%_
                                                      (cons _%E171215%_
                                                            '())))))
                                  _%g171401171412%_))))
                         (_%g171399171427%_ _%tgt171222%_))
                       (if (gx#stx-datum? _%hd171220%_)
                           (let* ((_%g171433171452%_
                                   (lambda (_%g171434171448%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171434171448%_)))
                                  (_%g171432171511%_
                                   (lambda (_%g171434171456%_)
                                     (if (gx#stx-pair? _%g171434171456%_)
                                         (let ((_%e171438171459%_
                                                (gx#syntax-e
                                                 _%g171434171456%_)))
                                           (let ((_%hd171439171463%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e171438171459%_)))
                                                 (_%tl171440171466%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e171438171459%_))))
                                             (if (gx#stx-pair?
                                                  _%tl171440171466%_)
                                                 (let ((_%e171441171469%_
                                                        (gx#syntax-e
                                                         _%tl171440171466%_)))
                                                   (let ((_%hd171442171473%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e171441171469%_)))
                                                         (_%tl171443171476%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e171441171469%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl171443171476%_)
                                                         (let ((_%e171444171479%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl171443171476%_)))
                   (let ((_%hd171445171483%_
                          (let ()
                            (declare (not safe))
                            (##car _%e171444171479%_)))
                         (_%tl171446171486%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e171444171479%_))))
                     (if (gx#stx-null? _%tl171446171486%_)
                         ((lambda (_%g171435171489%_
                                   _%g171436171491%_
                                   _%g171437171492%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%g171435171489%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%g171437171492%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g171436171491%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K171223%_
                                              (cons _%E171215%_ '())))))
                          _%hd171445171483%_
                          _%hd171442171473%_
                          _%hd171439171463%_)
                         (_%g171433171452%_ _%g171434171456%_))))
                 (_%g171433171452%_ _%g171434171456%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g171433171452%_
                                                  _%g171434171456%_))))
                                         (_%g171433171452%_
                                          _%g171434171456%_)))))
                             (_%g171432171511%_
                              (list _%tgt171222%_
                                    _%hd171220%_
                                    (let ((_%e171515%_
                                           (gx#stx-e _%hd171220%_)))
                                      (if (or (keyword? _%e171515%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e171515%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e171515%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx170667%_
                            _%where171210%_
                            _%hd171220%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx171955171956%_)
                                                    (let ((_%e171230171537%_
                                                           (gx#syntax-e
                                                            _%__stx171955171956%_)))
                                                      (let ((_%tl171232171544%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e171230171537%_)))
                    (_%hd171231171541%_
                     (let () (declare (not safe)) (##car _%e171230171537%_))))
                (_%__kont171958171959%_
                 _%tl171232171544%_
                 _%hd171231171541%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171960171961%_)))))))
                                  (_%recur171217%_
                                   _%hd171212%_
                                   _%tgt170819%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender171213%_
                                               (cons _%body171214%_
                                                     (cons _%E171215%_
                                                           '()))))))))
                             (_%generate-clauses170827%_
                              (lambda (_%clauses170948%_)
                                (let _%lp170951%_ ((_%rest170954%_
                                                    _%clauses170948%_)
                                                   (_%E170956%_
                                                    (gx#genident 'E))
                                                   (_%r170957%_ '()))
                                  (let* ((_%__stx171991171992%_ _%rest170954%_)
                                         (_%g170960170972%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx171991171992%_))))
                                    (let ((_%__kont171994171995%_
                                           (lambda (_%g170962171037%_
                                                    _%g170963171039%_)
                                             (let* ((_%__stx171971171972%_
                                                     _%g170963171039%_)
                                                    (_%g171051171062%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx171971171972%_))))
                                               (let ((_%__kont171974171975%_
                                                      (lambda (_%g171053171191%_)
                                                        (if (gx#stx-null?
                                                             _%g170962171037%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g171053171191%_)
                             (not (gx#stx-null? _%g171053171191%_)))
                        (cons (cons _%E170956%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g171053171191%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g170963171039%_))
                                          '()))
                              _%r170957%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx170667%_
                         _%g170963171039%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx170667%_
                     _%g170963171039%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont171976171977%_
                                                      (lambda ()
                                                        (let* ((_%g171073171081%_
                                                                (lambda (_%g171074171077%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g171074171077%_)))
                       (_%g171072171170%_
                        (lambda (_%g171074171085%_)
                          ((lambda (_%g171075171088%_)
                             (let* ((_%g171104171112%_
                                     (lambda (_%g171105171108%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g171105171108%_)))
                                    (_%g171103171166%_
                                     (lambda (_%g171105171116%_)
                                       ((lambda (_%g171106171119%_)
                                          (let* ((_%g171132171140%_
                                                  (lambda (_%g171133171136%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g171133171136%_)))
                                                 (_%g171131171162%_
                                                  (lambda (_%g171133171144%_)
                                                    ((lambda (_%g171134171147%_)
                                                       (_%lp170951%_
                                                        _%g170962171037%_
                                                        _%g171075171088%_
                                                        (cons (cons _%E170956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g171134171147%_ '()))
                      _%r170957%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g171133171144%_))))
                                            (_%g171131171162%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%g171106171119%_
                                                                '())))
                                              (gx#stx-source
                                               _%g170963171039%_)))))
                                        _%g171105171116%_))))
                               (_%g171103171166%_
                                (_%generate-clause170824%_
                                 _%g170963171039%_
                                 (cons _%g171075171088%_ '())))))
                           _%g171074171085%_))))
                  (_%g171072171170%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx171971171972%_)
                                                     (let ((_%e171054171181%_
                                                            (gx#syntax-e
                                                             _%__stx171971171972%_)))
                                                       (let ((_%tl171056171188%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e171054171181%_)))
                     (_%hd171055171185%_
                      (let () (declare (not safe)) (##car _%e171054171181%_))))
                 (if (gx#identifier? _%hd171055171185%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g172028_|
                          _%hd171055171185%_)
                         (_%__kont171974171975%_ _%tl171056171188%_)
                         (_%__kont171976171977%_))
                     (_%__kont171976171977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont171976171977%_))))))
                                          (_%__kont171996171997%_
                                           (lambda ()
                                             (let* ((_%g170983170991%_
                                                     (lambda (_%g170984170987%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g170984170987%_)))
                                                    (_%g170982171016%_
                                                     (lambda (_%g170984170995%_)
                                                       ((lambda (_%g170985170998%_)
                                                          (cons (cons _%E170956%_
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
                                 (cons _%g170985170998%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx170667%_))
                                    '()))
                        _%r170957%_))
                _%g170984170995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g170982171016%_
                                                _%tgt170819%_)))))
                                      (if (gx#stx-pair? _%__stx171991171992%_)
                                          (let ((_%e170964171027%_
                                                 (gx#syntax-e
                                                  _%__stx171991171992%_)))
                                            (let ((_%tl170966171034%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e170964171027%_)))
                                                  (_%hd170965171031%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e170964171027%_))))
                                              (_%__kont171994171995%_
                                               _%tl170966171034%_
                                               _%hd170965171031%_)))
                                          (_%__kont171996171997%_))))))))
                      (let* ((_%bind170829%_
                              (_%generate-clauses170827%_ _%clauses170822%_))
                             (_%g170832170849%_
                              (lambda (_%g170833170845%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g170833170845%_)))
                             (_%g170831170944%_
                              (lambda (_%g170833170853%_)
                                (if (gx#stx-pair/null? _%g170833170853%_)
                                    (let ((_g172029_
                                           (gx#syntax-split-splice
                                            _%g170833170853%_
                                            '0)))
                                      (begin
                                        (let ((_g172030_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g172029_)
                                                     (##values-length
                                                      _g172029_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g172030_ 2)))
                                              (error "Context expects 2 values"
                                                     _g172030_)))
                                        (let ((_%target170835170856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g172029_ 0)))
                                              (_%tl170837170859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g172029_ 1))))
                                          (if (gx#stx-null? _%tl170837170859%_)
                                              (letrec ((_%loop170838170862%_
                                                        (lambda (_%hd170836170866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try170842170869%_)
                  (if (gx#stx-pair? _%hd170836170866%_)
                      (let ((_%e170839170871%_
                             (gx#syntax-e _%hd170836170866%_)))
                        (let ((_%lp-hd170840170875%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170839170871%_)))
                              (_%lp-tl170841170878%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170839170871%_))))
                          (_%loop170838170862%_
                           _%lp-tl170841170878%_
                           (cons _%lp-hd170840170875%_
                                 _%bind-try170842170869%_))))
                      (let ((_%bind-try170843170881%_
                             (reverse _%bind-try170842170869%_)))
                        ((lambda (_%g170834170884%_)
                           (let* ((_%g170902170910%_
                                   (lambda (_%g170903170906%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g170903170906%_)))
                                  (_%g170901170940%_
                                   (lambda (_%g170903170914%_)
                                     ((lambda (_%g170904170917%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp172031
                                                           (lambda (_%g170931170934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170932170937%_)
                     (cons _%g170931170934%_ _%g170932170937%_))))
              (declare (not safe))
              (foldr__0 __tmp172031 '() _%g170834170884%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g170904170917%_
                                                                '())
                                                          '()))))
                                      _%g170903170914%_))))
                             (_%g170901170940%_ (car (last _%bind170829%_)))))
                         _%bind-try170843170881%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop170838170862%_
                                                 _%target170835170856%_
                                                 '()))
                                              (_%g170832170849%_
                                               _%g170833170853%_)))))
                                    (_%g170832170849%_ _%g170833170853%_)))))
                        (_%g170831170944%_ _%bind170829%_))))))
          (let* ((_%g170673170692%_
                  (lambda (_%g170674170688%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170674170688%_)))
                 (_%g170672170815%_
                  (lambda (_%g170674170696%_)
                    (if (gx#stx-pair? _%g170674170696%_)
                        (let ((_%e170678170699%_
                               (gx#syntax-e _%g170674170696%_)))
                          (let ((_%hd170679170703%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170678170699%_)))
                                (_%tl170680170706%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170678170699%_))))
                            (if (gx#stx-pair? _%tl170680170706%_)
                                (let ((_%e170681170709%_
                                       (gx#syntax-e _%tl170680170706%_)))
                                  (let ((_%hd170682170713%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170681170709%_)))
                                        (_%tl170683170716%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170681170709%_))))
                                    (if (gx#stx-pair? _%tl170683170716%_)
                                        (let ((_%e170684170719%_
                                               (gx#syntax-e
                                                _%tl170683170716%_)))
                                          (let ((_%hd170685170723%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170684170719%_)))
                                                (_%tl170686170726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170684170719%_))))
                                            ((lambda (_%g170675170729%_
                                                      _%g170676170731%_
                                                      _%g170677170732%_)
                                               (if (and (gx#identifier-list?
                                                         _%g170676170731%_)
                                                        (gx#stx-list?
                                                         _%g170675170729%_))
                                                   (let* ((_%g170750170758%_
                                                           (lambda (_%g170751170754%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g170751170754%_)))
                                                          (_%g170749170811%_
                                                           (lambda (_%g170751170762%_)
                                                             ((lambda (_%g170752170765%_)
                                                                (let* ((_%g170777170785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g170778170781%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g170778170781%_)))
                               (_%g170776170807%_
                                (lambda (_%g170778170789%_)
                                  ((lambda (_%g170779170792%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%g170752170765%_
                                                             (cons _%g170677170732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g170779170792%_
                                                       '()))))
                                   _%g170778170789%_))))
                          (_%g170776170807%_
                           (_%generate170670%_
                            _%g170752170765%_
                            (gx#syntax->list _%g170676170731%_)
                            _%g170675170729%_))))
                      _%g170751170762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g170749170811%_
                                                      (gx#genident 'e)))
                                                   (_%g170673170692%_
                                                    _%g170674170696%_)))
                                             _%tl170686170726%_
                                             _%hd170685170723%_
                                             _%hd170682170713%_)))
                                        (_%g170673170692%_
                                         _%g170674170696%_))))
                                (_%g170673170692%_ _%g170674170696%_))))
                        (_%g170673170692%_ _%g170674170696%_)))))
            (_%g170672170815%_ _%stx170667%_)))))))
