(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g114227_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114229_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114231_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114233_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114234_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114236_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114237_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114239_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114240_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114242_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114243_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114245_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj114223
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
          (##unchecked-structure-set! __obj114223 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114223 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114223 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114223 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114223 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114223 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114223 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114223 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114223 '#f '11 '#f '#f))
        (let ((__tmp114226 |gx[1]#_g114227_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj114223 __tmp114226 '12 '#f '#f))
        (let ((__tmp114228 |gx[1]#_g114229_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj114223 __tmp114228 '13 '#f '#f))
        (let ((__tmp114230 |gx[1]#_g114231_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj114223 __tmp114230 '14 '#f '#f))
        (let ((__tmp114232
               (cons (cons 'e |gx[1]#_g114233_|)
                     (cons (cons 'source |gx[1]#_g114234_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj114223 __tmp114232 '15 '#f '#f))
        (let ((__tmp114235
               (cons (cons 'e |gx[1]#_g114236_|)
                     (cons (cons 'source |gx[1]#_g114237_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj114223 __tmp114235 '16 '#f '#f))
        (let ((__tmp114238
               (cons (cons 'e |gx[1]#_g114239_|)
                     (cons (cons 'source |gx[1]#_g114240_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj114223 __tmp114238 '17 '#f '#f))
        (let ((__tmp114241
               (cons (cons 'e |gx[1]#_g114242_|)
                     (cons (cons 'source |gx[1]#_g114243_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj114223 __tmp114241 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114223 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114223 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114223 '() '20 '#f '#f))
        __obj114223))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx112818%_)
        (let* ((_%g112822112836%_
                (lambda (_%g112823112832%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g112823112832%_)))
               (_%g112821112878%_
                (lambda (_%g112823112840%_)
                  (if (gx#stx-pair? _%g112823112840%_)
                      (let ((_%e112825112843%_
                             (gx#syntax-e _%g112823112840%_)))
                        (let ((_%hd112826112847%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e112825112843%_)))
                              (_%tl112827112850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e112825112843%_))))
                          (if (gx#stx-pair? _%tl112827112850%_)
                              (let ((_%e112828112853%_
                                     (gx#syntax-e _%tl112827112850%_)))
                                (let ((_%hd112829112857%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e112828112853%_)))
                                      (_%tl112830112860%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e112828112853%_))))
                                  (if (gx#stx-null? _%tl112830112860%_)
                                      ((lambda (_%L112863%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L112863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L112863%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd112829112857%_)
                                      (_%g112822112836%_ _%g112823112840%_))))
                              (_%g112822112836%_ _%g112823112840%_))))
                      (_%g112822112836%_ _%g112823112840%_)))))
          (_%g112821112878%_ _%$stx112818%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx112882%_)
        (letrec ((_%generate112885%_
                  (lambda (_%tgt113034%_ _%kws113036%_ _%clauses113037%_)
                    (letrec ((_%generate-clause113039%_
                              (lambda (_%hd113974%_ _%E113976%_)
                                (let* ((_%__stx114126114127%_ _%hd113974%_)
                                       (_%g113980114007%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx114126114127%_))))
                                  (let ((_%__kont114129114130%_
                                         (lambda (_%L114103%_ _%L114105%_)
                                           (_%generate1113041%_
                                            _%hd113974%_
                                            _%L114105%_
                                            '#t
                                            _%L114103%_
                                            _%E113976%_)))
                                        (_%__kont114131114132%_
                                         (lambda (_%L114055%_
                                                  _%L114057%_
                                                  _%L114058%_)
                                           (_%generate1113041%_
                                            _%hd113974%_
                                            _%L114058%_
                                            _%L114057%_
                                            _%L114055%_
                                            _%E113976%_)))
                                        (_%__kont114133114134%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx112882%_
                                            _%hd113974%_))))
                                    (if (gx#stx-pair? _%__stx114126114127%_)
                                        (let ((_%e113984114083%_
                                               (gx#syntax-e
                                                _%__stx114126114127%_)))
                                          (let ((_%tl113986114090%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e113984114083%_)))
                                                (_%hd113985114087%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e113984114083%_))))
                                            (if (gx#stx-pair?
                                                 _%tl113986114090%_)
                                                (let ((_%e113987114093%_
                                                       (gx#syntax-e
                                                        _%tl113986114090%_)))
                                                  (let ((_%tl113989114100%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e113987114093%_)))
                                                        (_%hd113988114097%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e113987114093%_))))
                                                    (if (gx#stx-null?
                                                         _%tl113989114100%_)
                                                        (_%__kont114129114130%_
                                                         _%hd113988114097%_
                                                         _%hd113985114087%_)
                                                        (if (gx#stx-pair?
                                                             _%tl113989114100%_)
                                                            (let ((_%e113999114045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl113989114100%_)))
                      (let ((_%tl114001114052%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113999114045%_)))
                            (_%hd114000114049%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113999114045%_))))
                        (if (gx#stx-null? _%tl114001114052%_)
                            (_%__kont114131114132%_
                             _%hd114000114049%_
                             _%hd113988114097%_
                             _%hd113985114087%_)
                            (_%__kont114133114134%_))))
                    (_%__kont114133114134%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont114133114134%_))))
                                        (_%__kont114133114134%_))))))
                             (_%generate1113041%_
                              (lambda (_%where113427%_
                                       _%hd113429%_
                                       _%fender113430%_
                                       _%body113431%_
                                       _%E113432%_)
                                (letrec ((_%recur113434%_
                                          (lambda (_%hd113437%_
                                                   _%tgt113439%_
                                                   _%K113440%_)
                                            (let* ((_%__stx114172114173%_
                                                    _%hd113437%_)
                                                   (_%g113443113455%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx114172114173%_))))
                                              (let ((_%__kont114175114176%_
                                                     (lambda (_%L113764%_
                                                              _%L113766%_)
                                                       (let* ((_%g113777113785%_
                                                               (lambda (_%g113778113781%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g113778113781%_)))
                      (_%g113776113966%_
                       (lambda (_%g113778113789%_)
                         ((lambda (_%L113792%_)
                            (let* ((_%g113804113812%_
                                    (lambda (_%g113805113808%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g113805113808%_)))
                                   (_%g113803113962%_
                                    (lambda (_%g113805113816%_)
                                      ((lambda (_%L113819%_)
                                         (let* ((_%g113832113840%_
                                                 (lambda (_%g113833113836%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g113833113836%_)))
                                                (_%g113831113958%_
                                                 (lambda (_%g113833113844%_)
                                                   ((lambda (_%L113847%_)
                                                      (let* ((_%g113860113868%_
                                                              (lambda (_%g113861113864%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g113861113864%_)))
                     (_%g113859113954%_
                      (lambda (_%g113861113872%_)
                        ((lambda (_%L113875%_)
                           (let* ((_%g113888113896%_
                                   (lambda (_%g113889113892%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g113889113892%_)))
                                  (_%g113887113950%_
                                   (lambda (_%g113889113900%_)
                                     ((lambda (_%L113903%_)
                                        (let* ((_%g113916113924%_
                                                (lambda (_%g113917113920%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g113917113920%_)))
                                               (_%g113915113946%_
                                                (lambda (_%g113917113928%_)
                                                  ((lambda (_%L113931%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L113792%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L113819%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L113792%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L113847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L113819%_ '()))
                                       '()))
                           (cons (cons _%L113875%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L113819%_ '()))
                                             '()))
                                 '()))
                     (cons _%L113903%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L113931%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g113917113928%_))))
                                          (_%g113915113946%_ _%E113432%_)))
                                      _%g113889113900%_))))
                             (_%g113887113950%_
                              (_%recur113434%_
                               _%L113766%_
                               _%L113847%_
                               (_%recur113434%_
                                _%L113764%_
                                _%L113875%_
                                _%K113440%_)))))
                         _%g113861113872%_))))
                (_%g113859113954%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g113833113844%_))))
                                           (_%g113831113958%_
                                            (gx#genident 'hd))))
                                       _%g113805113816%_))))
                              (_%g113803113962%_ (gx#genident 'e))))
                          _%g113778113789%_))))
                 (_%g113776113966%_ _%tgt113439%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont114177114178%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd113437%_)
                                                           (if (gx#underscore?
                                                                _%hd113437%_)
                                                               _%K113440%_
                                                               (if (let ((__tmp114244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g113469113471%_)
                                    (gx#bound-identifier=?
                                     _%g113469113471%_
                                     _%hd113437%_))))
                             (declare (not safe))
                             (__find __tmp114244 _%kws113036%_))
                           (let* ((_%g113477113492%_
                                   (lambda (_%g113478113488%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g113478113488%_)))
                                  (_%g113476113545%_
                                   (lambda (_%g113478113496%_)
                                     (if (gx#stx-pair? _%g113478113496%_)
                                         (let ((_%e113481113499%_
                                                (gx#syntax-e
                                                 _%g113478113496%_)))
                                           (let ((_%hd113482113503%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e113481113499%_)))
                                                 (_%tl113483113506%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e113481113499%_))))
                                             (if (gx#stx-pair?
                                                  _%tl113483113506%_)
                                                 (let ((_%e113484113509%_
                                                        (gx#syntax-e
                                                         _%tl113483113506%_)))
                                                   (let ((_%hd113485113513%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e113484113509%_)))
                                                         (_%tl113486113516%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e113484113509%_))))
                                                     (if (gx#stx-null?
                                                          _%tl113486113516%_)
                                                         ((lambda (_%L113519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L113521%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L113521%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L113521%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L113519%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K113440%_ (cons _%E113432%_ '())))))
                  _%hd113485113513%_
                  _%hd113482113503%_)
                 (_%g113477113492%_ _%g113478113496%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g113477113492%_
                                                  _%g113478113496%_))))
                                         (_%g113477113492%_
                                          _%g113478113496%_)))))
                             (_%g113476113545%_
                              (list _%tgt113439%_ _%hd113437%_)))
                           (let* ((_%g113551113566%_
                                   (lambda (_%g113552113562%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g113552113562%_)))
                                  (_%g113550113611%_
                                   (lambda (_%g113552113570%_)
                                     (if (gx#stx-pair? _%g113552113570%_)
                                         (let ((_%e113555113573%_
                                                (gx#syntax-e
                                                 _%g113552113570%_)))
                                           (let ((_%hd113556113577%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e113555113573%_)))
                                                 (_%tl113557113580%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e113555113573%_))))
                                             (if (gx#stx-pair?
                                                  _%tl113557113580%_)
                                                 (let ((_%e113558113583%_
                                                        (gx#syntax-e
                                                         _%tl113557113580%_)))
                                                   (let ((_%hd113559113587%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e113558113583%_)))
                                                         (_%tl113560113590%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e113558113583%_))))
                                                     (if (gx#stx-null?
                                                          _%tl113560113590%_)
                                                         ((lambda (_%L113593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L113595%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L113593%_ (cons _%L113595%_ '()))
                                      '())
                                (cons _%K113440%_ '()))))
                  _%hd113559113587%_
                  _%hd113556113577%_)
                 (_%g113551113566%_ _%g113552113570%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g113551113566%_
                                                  _%g113552113570%_))))
                                         (_%g113551113566%_
                                          _%g113552113570%_)))))
                             (_%g113550113611%_
                              (list _%tgt113439%_ _%hd113437%_)))))
                   (if (gx#stx-null? _%hd113437%_)
                       (let* ((_%g113617113625%_
                               (lambda (_%g113618113621%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g113618113621%_)))
                              (_%g113616113644%_
                               (lambda (_%g113618113629%_)
                                 ((lambda (_%L113632%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L113632%_ '()))
                                                (cons _%K113440%_
                                                      (cons _%E113432%_
                                                            '())))))
                                  _%g113618113629%_))))
                         (_%g113616113644%_ _%tgt113439%_))
                       (if (gx#stx-datum? _%hd113437%_)
                           (let* ((_%g113650113669%_
                                   (lambda (_%g113651113665%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g113651113665%_)))
                                  (_%g113649113728%_
                                   (lambda (_%g113651113673%_)
                                     (if (gx#stx-pair? _%g113651113673%_)
                                         (let ((_%e113655113676%_
                                                (gx#syntax-e
                                                 _%g113651113673%_)))
                                           (let ((_%hd113656113680%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e113655113676%_)))
                                                 (_%tl113657113683%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e113655113676%_))))
                                             (if (gx#stx-pair?
                                                  _%tl113657113683%_)
                                                 (let ((_%e113658113686%_
                                                        (gx#syntax-e
                                                         _%tl113657113683%_)))
                                                   (let ((_%hd113659113690%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e113658113686%_)))
                                                         (_%tl113660113693%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e113658113686%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl113660113693%_)
                                                         (let ((_%e113661113696%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl113660113693%_)))
                   (let ((_%hd113662113700%_
                          (let ()
                            (declare (not safe))
                            (##car _%e113661113696%_)))
                         (_%tl113663113703%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e113661113696%_))))
                     (if (gx#stx-null? _%tl113663113703%_)
                         ((lambda (_%L113706%_ _%L113708%_ _%L113709%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L113706%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L113709%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L113708%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K113440%_
                                              (cons _%E113432%_ '())))))
                          _%hd113662113700%_
                          _%hd113659113690%_
                          _%hd113656113680%_)
                         (_%g113650113669%_ _%g113651113673%_))))
                 (_%g113650113669%_ _%g113651113673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g113650113669%_
                                                  _%g113651113673%_))))
                                         (_%g113650113669%_
                                          _%g113651113673%_)))))
                             (_%g113649113728%_
                              (list _%tgt113439%_
                                    _%hd113437%_
                                    (let ((_%e113732%_
                                           (gx#stx-e _%hd113437%_)))
                                      (if (or (keyword? _%e113732%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e113732%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e113732%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx112882%_
                            _%where113427%_
                            _%hd113437%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx114172114173%_)
                                                    (let ((_%e113447113754%_
                                                           (gx#syntax-e
                                                            _%__stx114172114173%_)))
                                                      (let ((_%tl113449113761%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e113447113754%_)))
                    (_%hd113448113758%_
                     (let () (declare (not safe)) (##car _%e113447113754%_))))
                (_%__kont114175114176%_
                 _%tl113449113761%_
                 _%hd113448113758%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont114177114178%_)))))))
                                  (_%recur113434%_
                                   _%hd113429%_
                                   _%tgt113034%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender113430%_
                                               (cons _%body113431%_
                                                     (cons _%E113432%_
                                                           '()))))))))
                             (_%generate-clauses113042%_
                              (lambda (_%clauses113165%_)
                                (let _%lp113168%_ ((_%rest113171%_
                                                    _%clauses113165%_)
                                                   (_%E113173%_
                                                    (gx#genident 'E))
                                                   (_%r113174%_ '()))
                                  (let* ((_%__stx114208114209%_ _%rest113171%_)
                                         (_%g113177113189%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx114208114209%_))))
                                    (let ((_%__kont114211114212%_
                                           (lambda (_%L113254%_ _%L113256%_)
                                             (let* ((_%__stx114188114189%_
                                                     _%L113256%_)
                                                    (_%g113268113279%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx114188114189%_))))
                                               (let ((_%__kont114191114192%_
                                                      (lambda (_%L113408%_)
                                                        (if (gx#stx-null?
                                                             _%L113254%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L113408%_)
                             (not (gx#stx-null? _%L113408%_)))
                        (cons (cons _%E113173%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L113408%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L113256%_))
                                          '()))
                              _%r113174%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx112882%_
                         _%L113256%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx112882%_
                     _%L113256%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont114193114194%_
                                                      (lambda ()
                                                        (let* ((_%g113290113298%_
                                                                (lambda (_%g113291113294%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g113291113294%_)))
                       (_%g113289113387%_
                        (lambda (_%g113291113302%_)
                          ((lambda (_%L113305%_)
                             (let* ((_%g113321113329%_
                                     (lambda (_%g113322113325%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g113322113325%_)))
                                    (_%g113320113383%_
                                     (lambda (_%g113322113333%_)
                                       ((lambda (_%L113336%_)
                                          (let* ((_%g113349113357%_
                                                  (lambda (_%g113350113353%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g113350113353%_)))
                                                 (_%g113348113379%_
                                                  (lambda (_%g113350113361%_)
                                                    ((lambda (_%L113364%_)
                                                       (_%lp113168%_
                                                        _%L113254%_
                                                        _%L113305%_
                                                        (cons (cons _%E113173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L113364%_ '()))
                      _%r113174%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g113350113361%_))))
                                            (_%g113348113379%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L113336%_
                                                                '())))
                                              (gx#stx-source _%L113256%_)))))
                                        _%g113322113333%_))))
                               (_%g113320113383%_
                                (_%generate-clause113039%_
                                 _%L113256%_
                                 (cons _%L113305%_ '())))))
                           _%g113291113302%_))))
                  (_%g113289113387%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx114188114189%_)
                                                     (let ((_%e113271113398%_
                                                            (gx#syntax-e
                                                             _%__stx114188114189%_)))
                                                       (let ((_%tl113273113405%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e113271113398%_)))
                     (_%hd113272113402%_
                      (let () (declare (not safe)) (##car _%e113271113398%_))))
                 (if (gx#identifier? _%hd113272113402%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g114245_|
                          _%hd113272113402%_)
                         (_%__kont114191114192%_ _%tl113273113405%_)
                         (_%__kont114193114194%_))
                     (_%__kont114193114194%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont114193114194%_))))))
                                          (_%__kont114213114214%_
                                           (lambda ()
                                             (let* ((_%g113200113208%_
                                                     (lambda (_%g113201113204%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g113201113204%_)))
                                                    (_%g113199113233%_
                                                     (lambda (_%g113201113212%_)
                                                       ((lambda (_%L113215%_)
                                                          (cons (cons _%E113173%_
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
                                 (cons _%L113215%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx112882%_))
                                    '()))
                        _%r113174%_))
                _%g113201113212%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g113199113233%_
                                                _%tgt113034%_)))))
                                      (if (gx#stx-pair? _%__stx114208114209%_)
                                          (let ((_%e113181113244%_
                                                 (gx#syntax-e
                                                  _%__stx114208114209%_)))
                                            (let ((_%tl113183113251%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e113181113244%_)))
                                                  (_%hd113182113248%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e113181113244%_))))
                                              (_%__kont114211114212%_
                                               _%tl113183113251%_
                                               _%hd113182113248%_)))
                                          (_%__kont114213114214%_))))))))
                      (let* ((_%bind113044%_
                              (_%generate-clauses113042%_ _%clauses113037%_))
                             (_%g113047113064%_
                              (lambda (_%g113048113060%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g113048113060%_)))
                             (_%g113046113161%_
                              (lambda (_%g113048113068%_)
                                (if (gx#stx-pair/null? _%g113048113068%_)
                                    (let ((_g114246_
                                           (gx#syntax-split-splice
                                            _%g113048113068%_
                                            '0)))
                                      (begin
                                        (let ((_g114247_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g114246_)
                                                     (##vector-length
                                                      _g114246_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g114247_ 2)))
                                              (error "Context expects 2 values"
                                                     _g114247_)))
                                        (let ((_%target113050113071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g114246_ 0)))
                                              (_%tl113052113074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g114246_ 1))))
                                          (if (gx#stx-null? _%tl113052113074%_)
                                              (letrec ((_%loop113053113077%_
                                                        (lambda (_%hd113051113081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try113057113084%_)
                  (if (gx#stx-pair? _%hd113051113081%_)
                      (let ((_%e113054113087%_
                             (gx#syntax-e _%hd113051113081%_)))
                        (let ((_%lp-hd113055113091%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e113054113087%_)))
                              (_%lp-tl113056113094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e113054113087%_))))
                          (_%loop113053113077%_
                           _%lp-tl113056113094%_
                           (cons _%lp-hd113055113091%_
                                 _%bind-try113057113084%_))))
                      (let ((_%bind-try113058113097%_
                             (reverse _%bind-try113057113084%_)))
                        ((lambda (_%L113101%_)
                           (let* ((_%g113119113127%_
                                   (lambda (_%g113120113123%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g113120113123%_)))
                                  (_%g113118113157%_
                                   (lambda (_%g113120113131%_)
                                     ((lambda (_%L113134%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp114248
                                                           (lambda (_%g113148113151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g113149113154%_)
                     (cons _%g113148113151%_ _%g113149113154%_))))
              (declare (not safe))
              (__foldr1 __tmp114248 '() _%L113101%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L113134%_
                                                                '())
                                                          '()))))
                                      _%g113120113131%_))))
                             (_%g113118113157%_ (car (last _%bind113044%_)))))
                         _%bind-try113058113097%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop113053113077%_
                                                 _%target113050113071%_
                                                 '()))
                                              (_%g113047113064%_
                                               _%g113048113068%_)))))
                                    (_%g113047113064%_ _%g113048113068%_)))))
                        (_%g113046113161%_ _%bind113044%_))))))
          (let* ((_%g112888112907%_
                  (lambda (_%g112889112903%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g112889112903%_)))
                 (_%g112887113030%_
                  (lambda (_%g112889112911%_)
                    (if (gx#stx-pair? _%g112889112911%_)
                        (let ((_%e112893112914%_
                               (gx#syntax-e _%g112889112911%_)))
                          (let ((_%hd112894112918%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e112893112914%_)))
                                (_%tl112895112921%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e112893112914%_))))
                            (if (gx#stx-pair? _%tl112895112921%_)
                                (let ((_%e112896112924%_
                                       (gx#syntax-e _%tl112895112921%_)))
                                  (let ((_%hd112897112928%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e112896112924%_)))
                                        (_%tl112898112931%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e112896112924%_))))
                                    (if (gx#stx-pair? _%tl112898112931%_)
                                        (let ((_%e112899112934%_
                                               (gx#syntax-e
                                                _%tl112898112931%_)))
                                          (let ((_%hd112900112938%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e112899112934%_)))
                                                (_%tl112901112941%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e112899112934%_))))
                                            ((lambda (_%L112944%_
                                                      _%L112946%_
                                                      _%L112947%_)
                                               (if (and (gx#identifier-list?
                                                         _%L112946%_)
                                                        (gx#stx-list?
                                                         _%L112944%_))
                                                   (let* ((_%g112965112973%_
                                                           (lambda (_%g112966112969%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g112966112969%_)))
                                                          (_%g112964113026%_
                                                           (lambda (_%g112966112977%_)
                                                             ((lambda (_%L112980%_)
                                                                (let* ((_%g112992113000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g112993112996%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g112993112996%_)))
                               (_%g112991113022%_
                                (lambda (_%g112993113004%_)
                                  ((lambda (_%L113007%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L112980%_
                                                             (cons _%L112947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L113007%_ '()))))
                                   _%g112993113004%_))))
                          (_%g112991113022%_
                           (_%generate112885%_
                            _%L112980%_
                            (gx#syntax->list _%L112946%_)
                            _%L112944%_))))
                      _%g112966112977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112964113026%_
                                                      (gx#genident 'e)))
                                                   (_%g112888112907%_
                                                    _%g112889112911%_)))
                                             _%tl112901112941%_
                                             _%hd112900112938%_
                                             _%hd112897112928%_)))
                                        (_%g112888112907%_
                                         _%g112889112911%_))))
                                (_%g112888112907%_ _%g112889112911%_))))
                        (_%g112888112907%_ _%g112889112911%_)))))
            (_%g112887113030%_ _%stx112882%_)))))))
