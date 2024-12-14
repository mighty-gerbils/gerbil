(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g117058_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117060_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117062_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117064_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117065_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117067_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117068_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117070_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117071_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117073_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117074_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117076_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj117054
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
          (##unchecked-structure-set! __obj117054 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117054 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117054 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117054 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117054 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117054 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117054 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117054 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117054 '#f '11 '#f '#f))
        (let ((__tmp117057 |gx[1]#_g117058_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117054 __tmp117057 '12 '#f '#f))
        (let ((__tmp117059 |gx[1]#_g117060_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117054 __tmp117059 '13 '#f '#f))
        (let ((__tmp117061 |gx[1]#_g117062_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117054 __tmp117061 '14 '#f '#f))
        (let ((__tmp117063
               (cons (cons 'e |gx[1]#_g117064_|)
                     (cons (cons 'source |gx[1]#_g117065_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117054 __tmp117063 '15 '#f '#f))
        (let ((__tmp117066
               (cons (cons 'e |gx[1]#_g117067_|)
                     (cons (cons 'source |gx[1]#_g117068_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117054 __tmp117066 '16 '#f '#f))
        (let ((__tmp117069
               (cons (cons 'e |gx[1]#_g117070_|)
                     (cons (cons 'source |gx[1]#_g117071_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117054 __tmp117069 '17 '#f '#f))
        (let ((__tmp117072
               (cons (cons 'e |gx[1]#_g117073_|)
                     (cons (cons 'source |gx[1]#_g117074_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117054 __tmp117072 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117054 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117054 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117054 '() '20 '#f '#f))
        __obj117054))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx115649%_)
        (let* ((_%g115653115667%_
                (lambda (_%g115654115663%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g115654115663%_)))
               (_%g115652115709%_
                (lambda (_%g115654115671%_)
                  (if (gx#stx-pair? _%g115654115671%_)
                      (let ((_%e115656115674%_
                             (gx#syntax-e _%g115654115671%_)))
                        (let ((_%hd115657115678%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e115656115674%_)))
                              (_%tl115658115681%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e115656115674%_))))
                          (if (gx#stx-pair? _%tl115658115681%_)
                              (let ((_%e115659115684%_
                                     (gx#syntax-e _%tl115658115681%_)))
                                (let ((_%hd115660115688%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e115659115684%_)))
                                      (_%tl115661115691%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e115659115684%_))))
                                  (if (gx#stx-null? _%tl115661115691%_)
                                      ((lambda (_%L115694%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L115694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L115694%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd115660115688%_)
                                      (_%g115653115667%_ _%g115654115671%_))))
                              (_%g115653115667%_ _%g115654115671%_))))
                      (_%g115653115667%_ _%g115654115671%_)))))
          (_%g115652115709%_ _%$stx115649%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx115713%_)
        (letrec ((_%generate115716%_
                  (lambda (_%tgt115865%_ _%kws115867%_ _%clauses115868%_)
                    (letrec ((_%generate-clause115870%_
                              (lambda (_%hd116805%_ _%E116807%_)
                                (let* ((_%__stx116957116958%_ _%hd116805%_)
                                       (_%g116811116838%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx116957116958%_))))
                                  (let ((_%__kont116960116961%_
                                         (lambda (_%L116934%_ _%L116936%_)
                                           (_%generate1115872%_
                                            _%hd116805%_
                                            _%L116936%_
                                            '#t
                                            _%L116934%_
                                            _%E116807%_)))
                                        (_%__kont116962116963%_
                                         (lambda (_%L116886%_
                                                  _%L116888%_
                                                  _%L116889%_)
                                           (_%generate1115872%_
                                            _%hd116805%_
                                            _%L116889%_
                                            _%L116888%_
                                            _%L116886%_
                                            _%E116807%_)))
                                        (_%__kont116964116965%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx115713%_
                                            _%hd116805%_))))
                                    (if (gx#stx-pair? _%__stx116957116958%_)
                                        (let ((_%e116815116914%_
                                               (gx#syntax-e
                                                _%__stx116957116958%_)))
                                          (let ((_%tl116817116921%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e116815116914%_)))
                                                (_%hd116816116918%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e116815116914%_))))
                                            (if (gx#stx-pair?
                                                 _%tl116817116921%_)
                                                (let ((_%e116818116924%_
                                                       (gx#syntax-e
                                                        _%tl116817116921%_)))
                                                  (let ((_%tl116820116931%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e116818116924%_)))
                                                        (_%hd116819116928%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e116818116924%_))))
                                                    (if (gx#stx-null?
                                                         _%tl116820116931%_)
                                                        (_%__kont116960116961%_
                                                         _%hd116819116928%_
                                                         _%hd116816116918%_)
                                                        (if (gx#stx-pair?
                                                             _%tl116820116931%_)
                                                            (let ((_%e116830116876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl116820116931%_)))
                      (let ((_%tl116832116883%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116830116876%_)))
                            (_%hd116831116880%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116830116876%_))))
                        (if (gx#stx-null? _%tl116832116883%_)
                            (_%__kont116962116963%_
                             _%hd116831116880%_
                             _%hd116819116928%_
                             _%hd116816116918%_)
                            (_%__kont116964116965%_))))
                    (_%__kont116964116965%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont116964116965%_))))
                                        (_%__kont116964116965%_))))))
                             (_%generate1115872%_
                              (lambda (_%where116258%_
                                       _%hd116260%_
                                       _%fender116261%_
                                       _%body116262%_
                                       _%E116263%_)
                                (letrec ((_%recur116265%_
                                          (lambda (_%hd116268%_
                                                   _%tgt116270%_
                                                   _%K116271%_)
                                            (let* ((_%__stx117003117004%_
                                                    _%hd116268%_)
                                                   (_%g116274116286%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx117003117004%_))))
                                              (let ((_%__kont117006117007%_
                                                     (lambda (_%L116595%_
                                                              _%L116597%_)
                                                       (let* ((_%g116608116616%_
                                                               (lambda (_%g116609116612%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g116609116612%_)))
                      (_%g116607116797%_
                       (lambda (_%g116609116620%_)
                         ((lambda (_%L116623%_)
                            (let* ((_%g116635116643%_
                                    (lambda (_%g116636116639%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g116636116639%_)))
                                   (_%g116634116793%_
                                    (lambda (_%g116636116647%_)
                                      ((lambda (_%L116650%_)
                                         (let* ((_%g116663116671%_
                                                 (lambda (_%g116664116667%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g116664116667%_)))
                                                (_%g116662116789%_
                                                 (lambda (_%g116664116675%_)
                                                   ((lambda (_%L116678%_)
                                                      (let* ((_%g116691116699%_
                                                              (lambda (_%g116692116695%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g116692116695%_)))
                     (_%g116690116785%_
                      (lambda (_%g116692116703%_)
                        ((lambda (_%L116706%_)
                           (let* ((_%g116719116727%_
                                   (lambda (_%g116720116723%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116720116723%_)))
                                  (_%g116718116781%_
                                   (lambda (_%g116720116731%_)
                                     ((lambda (_%L116734%_)
                                        (let* ((_%g116747116755%_
                                                (lambda (_%g116748116751%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g116748116751%_)))
                                               (_%g116746116777%_
                                                (lambda (_%g116748116759%_)
                                                  ((lambda (_%L116762%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L116623%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L116650%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L116623%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L116678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L116650%_ '()))
                                       '()))
                           (cons (cons _%L116706%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L116650%_ '()))
                                             '()))
                                 '()))
                     (cons _%L116734%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L116762%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g116748116759%_))))
                                          (_%g116746116777%_ _%E116263%_)))
                                      _%g116720116731%_))))
                             (_%g116718116781%_
                              (_%recur116265%_
                               _%L116597%_
                               _%L116678%_
                               (_%recur116265%_
                                _%L116595%_
                                _%L116706%_
                                _%K116271%_)))))
                         _%g116692116703%_))))
                (_%g116690116785%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g116664116675%_))))
                                           (_%g116662116789%_
                                            (gx#genident 'hd))))
                                       _%g116636116647%_))))
                              (_%g116634116793%_ (gx#genident 'e))))
                          _%g116609116620%_))))
                 (_%g116607116797%_ _%tgt116270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont117008117009%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd116268%_)
                                                           (if (gx#underscore?
                                                                _%hd116268%_)
                                                               _%K116271%_
                                                               (if (let ((__tmp117075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g116300116302%_)
                                    (gx#bound-identifier=?
                                     _%g116300116302%_
                                     _%hd116268%_))))
                             (declare (not safe))
                             (__find __tmp117075 _%kws115867%_))
                           (let* ((_%g116308116323%_
                                   (lambda (_%g116309116319%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116309116319%_)))
                                  (_%g116307116376%_
                                   (lambda (_%g116309116327%_)
                                     (if (gx#stx-pair? _%g116309116327%_)
                                         (let ((_%e116312116330%_
                                                (gx#syntax-e
                                                 _%g116309116327%_)))
                                           (let ((_%hd116313116334%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e116312116330%_)))
                                                 (_%tl116314116337%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e116312116330%_))))
                                             (if (gx#stx-pair?
                                                  _%tl116314116337%_)
                                                 (let ((_%e116315116340%_
                                                        (gx#syntax-e
                                                         _%tl116314116337%_)))
                                                   (let ((_%hd116316116344%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e116315116340%_)))
                                                         (_%tl116317116347%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e116315116340%_))))
                                                     (if (gx#stx-null?
                                                          _%tl116317116347%_)
                                                         ((lambda (_%L116350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L116352%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L116352%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L116352%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L116350%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K116271%_ (cons _%E116263%_ '())))))
                  _%hd116316116344%_
                  _%hd116313116334%_)
                 (_%g116308116323%_ _%g116309116327%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g116308116323%_
                                                  _%g116309116327%_))))
                                         (_%g116308116323%_
                                          _%g116309116327%_)))))
                             (_%g116307116376%_
                              (list _%tgt116270%_ _%hd116268%_)))
                           (let* ((_%g116382116397%_
                                   (lambda (_%g116383116393%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116383116393%_)))
                                  (_%g116381116442%_
                                   (lambda (_%g116383116401%_)
                                     (if (gx#stx-pair? _%g116383116401%_)
                                         (let ((_%e116386116404%_
                                                (gx#syntax-e
                                                 _%g116383116401%_)))
                                           (let ((_%hd116387116408%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e116386116404%_)))
                                                 (_%tl116388116411%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e116386116404%_))))
                                             (if (gx#stx-pair?
                                                  _%tl116388116411%_)
                                                 (let ((_%e116389116414%_
                                                        (gx#syntax-e
                                                         _%tl116388116411%_)))
                                                   (let ((_%hd116390116418%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e116389116414%_)))
                                                         (_%tl116391116421%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e116389116414%_))))
                                                     (if (gx#stx-null?
                                                          _%tl116391116421%_)
                                                         ((lambda (_%L116424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L116426%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L116424%_ (cons _%L116426%_ '()))
                                      '())
                                (cons _%K116271%_ '()))))
                  _%hd116390116418%_
                  _%hd116387116408%_)
                 (_%g116382116397%_ _%g116383116401%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g116382116397%_
                                                  _%g116383116401%_))))
                                         (_%g116382116397%_
                                          _%g116383116401%_)))))
                             (_%g116381116442%_
                              (list _%tgt116270%_ _%hd116268%_)))))
                   (if (gx#stx-null? _%hd116268%_)
                       (let* ((_%g116448116456%_
                               (lambda (_%g116449116452%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g116449116452%_)))
                              (_%g116447116475%_
                               (lambda (_%g116449116460%_)
                                 ((lambda (_%L116463%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L116463%_ '()))
                                                (cons _%K116271%_
                                                      (cons _%E116263%_
                                                            '())))))
                                  _%g116449116460%_))))
                         (_%g116447116475%_ _%tgt116270%_))
                       (if (gx#stx-datum? _%hd116268%_)
                           (let* ((_%g116481116500%_
                                   (lambda (_%g116482116496%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116482116496%_)))
                                  (_%g116480116559%_
                                   (lambda (_%g116482116504%_)
                                     (if (gx#stx-pair? _%g116482116504%_)
                                         (let ((_%e116486116507%_
                                                (gx#syntax-e
                                                 _%g116482116504%_)))
                                           (let ((_%hd116487116511%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e116486116507%_)))
                                                 (_%tl116488116514%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e116486116507%_))))
                                             (if (gx#stx-pair?
                                                  _%tl116488116514%_)
                                                 (let ((_%e116489116517%_
                                                        (gx#syntax-e
                                                         _%tl116488116514%_)))
                                                   (let ((_%hd116490116521%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e116489116517%_)))
                                                         (_%tl116491116524%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e116489116517%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl116491116524%_)
                                                         (let ((_%e116492116527%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl116491116524%_)))
                   (let ((_%hd116493116531%_
                          (let ()
                            (declare (not safe))
                            (##car _%e116492116527%_)))
                         (_%tl116494116534%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e116492116527%_))))
                     (if (gx#stx-null? _%tl116494116534%_)
                         ((lambda (_%L116537%_ _%L116539%_ _%L116540%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L116537%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L116540%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L116539%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K116271%_
                                              (cons _%E116263%_ '())))))
                          _%hd116493116531%_
                          _%hd116490116521%_
                          _%hd116487116511%_)
                         (_%g116481116500%_ _%g116482116504%_))))
                 (_%g116481116500%_ _%g116482116504%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g116481116500%_
                                                  _%g116482116504%_))))
                                         (_%g116481116500%_
                                          _%g116482116504%_)))))
                             (_%g116480116559%_
                              (list _%tgt116270%_
                                    _%hd116268%_
                                    (let ((_%e116563%_
                                           (gx#stx-e _%hd116268%_)))
                                      (if (or (keyword? _%e116563%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e116563%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e116563%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx115713%_
                            _%where116258%_
                            _%hd116268%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx117003117004%_)
                                                    (let ((_%e116278116585%_
                                                           (gx#syntax-e
                                                            _%__stx117003117004%_)))
                                                      (let ((_%tl116280116592%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e116278116585%_)))
                    (_%hd116279116589%_
                     (let () (declare (not safe)) (##car _%e116278116585%_))))
                (_%__kont117006117007%_
                 _%tl116280116592%_
                 _%hd116279116589%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont117008117009%_)))))))
                                  (_%recur116265%_
                                   _%hd116260%_
                                   _%tgt115865%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender116261%_
                                               (cons _%body116262%_
                                                     (cons _%E116263%_
                                                           '()))))))))
                             (_%generate-clauses115873%_
                              (lambda (_%clauses115996%_)
                                (let _%lp115999%_ ((_%rest116002%_
                                                    _%clauses115996%_)
                                                   (_%E116004%_
                                                    (gx#genident 'E))
                                                   (_%r116005%_ '()))
                                  (let* ((_%__stx117039117040%_ _%rest116002%_)
                                         (_%g116008116020%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx117039117040%_))))
                                    (let ((_%__kont117042117043%_
                                           (lambda (_%L116085%_ _%L116087%_)
                                             (let* ((_%__stx117019117020%_
                                                     _%L116087%_)
                                                    (_%g116099116110%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx117019117020%_))))
                                               (let ((_%__kont117022117023%_
                                                      (lambda (_%L116239%_)
                                                        (if (gx#stx-null?
                                                             _%L116085%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L116239%_)
                             (not (gx#stx-null? _%L116239%_)))
                        (cons (cons _%E116004%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L116239%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L116087%_))
                                          '()))
                              _%r116005%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx115713%_
                         _%L116087%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx115713%_
                     _%L116087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont117024117025%_
                                                      (lambda ()
                                                        (let* ((_%g116121116129%_
                                                                (lambda (_%g116122116125%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g116122116125%_)))
                       (_%g116120116218%_
                        (lambda (_%g116122116133%_)
                          ((lambda (_%L116136%_)
                             (let* ((_%g116152116160%_
                                     (lambda (_%g116153116156%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g116153116156%_)))
                                    (_%g116151116214%_
                                     (lambda (_%g116153116164%_)
                                       ((lambda (_%L116167%_)
                                          (let* ((_%g116180116188%_
                                                  (lambda (_%g116181116184%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g116181116184%_)))
                                                 (_%g116179116210%_
                                                  (lambda (_%g116181116192%_)
                                                    ((lambda (_%L116195%_)
                                                       (_%lp115999%_
                                                        _%L116085%_
                                                        _%L116136%_
                                                        (cons (cons _%E116004%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L116195%_ '()))
                      _%r116005%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g116181116192%_))))
                                            (_%g116179116210%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L116167%_
                                                                '())))
                                              (gx#stx-source _%L116087%_)))))
                                        _%g116153116164%_))))
                               (_%g116151116214%_
                                (_%generate-clause115870%_
                                 _%L116087%_
                                 (cons _%L116136%_ '())))))
                           _%g116122116133%_))))
                  (_%g116120116218%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx117019117020%_)
                                                     (let ((_%e116102116229%_
                                                            (gx#syntax-e
                                                             _%__stx117019117020%_)))
                                                       (let ((_%tl116104116236%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e116102116229%_)))
                     (_%hd116103116233%_
                      (let () (declare (not safe)) (##car _%e116102116229%_))))
                 (if (gx#identifier? _%hd116103116233%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g117076_|
                          _%hd116103116233%_)
                         (_%__kont117022117023%_ _%tl116104116236%_)
                         (_%__kont117024117025%_))
                     (_%__kont117024117025%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont117024117025%_))))))
                                          (_%__kont117044117045%_
                                           (lambda ()
                                             (let* ((_%g116031116039%_
                                                     (lambda (_%g116032116035%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g116032116035%_)))
                                                    (_%g116030116064%_
                                                     (lambda (_%g116032116043%_)
                                                       ((lambda (_%L116046%_)
                                                          (cons (cons _%E116004%_
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
                                 (cons _%L116046%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx115713%_))
                                    '()))
                        _%r116005%_))
                _%g116032116043%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g116030116064%_
                                                _%tgt115865%_)))))
                                      (if (gx#stx-pair? _%__stx117039117040%_)
                                          (let ((_%e116012116075%_
                                                 (gx#syntax-e
                                                  _%__stx117039117040%_)))
                                            (let ((_%tl116014116082%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e116012116075%_)))
                                                  (_%hd116013116079%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e116012116075%_))))
                                              (_%__kont117042117043%_
                                               _%tl116014116082%_
                                               _%hd116013116079%_)))
                                          (_%__kont117044117045%_))))))))
                      (let* ((_%bind115875%_
                              (_%generate-clauses115873%_ _%clauses115868%_))
                             (_%g115878115895%_
                              (lambda (_%g115879115891%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g115879115891%_)))
                             (_%g115877115992%_
                              (lambda (_%g115879115899%_)
                                (if (gx#stx-pair/null? _%g115879115899%_)
                                    (let ((_g117077_
                                           (gx#syntax-split-splice
                                            _%g115879115899%_
                                            '0)))
                                      (begin
                                        (let ((_g117078_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g117077_)
                                                     (##values-length
                                                      _g117077_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g117078_ 2)))
                                              (error "Context expects 2 values"
                                                     _g117078_)))
                                        (let ((_%target115881115902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g117077_ 0)))
                                              (_%tl115883115905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g117077_ 1))))
                                          (if (gx#stx-null? _%tl115883115905%_)
                                              (letrec ((_%loop115884115908%_
                                                        (lambda (_%hd115882115912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try115888115915%_)
                  (if (gx#stx-pair? _%hd115882115912%_)
                      (let ((_%e115885115918%_
                             (gx#syntax-e _%hd115882115912%_)))
                        (let ((_%lp-hd115886115922%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e115885115918%_)))
                              (_%lp-tl115887115925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e115885115918%_))))
                          (_%loop115884115908%_
                           _%lp-tl115887115925%_
                           (cons _%lp-hd115886115922%_
                                 _%bind-try115888115915%_))))
                      (let ((_%bind-try115889115928%_
                             (reverse _%bind-try115888115915%_)))
                        ((lambda (_%L115932%_)
                           (let* ((_%g115950115958%_
                                   (lambda (_%g115951115954%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g115951115954%_)))
                                  (_%g115949115988%_
                                   (lambda (_%g115951115962%_)
                                     ((lambda (_%L115965%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp117079
                                                           (lambda (_%g115979115982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g115980115985%_)
                     (cons _%g115979115982%_ _%g115980115985%_))))
              (declare (not safe))
              (__foldr1 __tmp117079 '() _%L115932%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L115965%_
                                                                '())
                                                          '()))))
                                      _%g115951115962%_))))
                             (_%g115949115988%_ (car (last _%bind115875%_)))))
                         _%bind-try115889115928%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop115884115908%_
                                                 _%target115881115902%_
                                                 '()))
                                              (_%g115878115895%_
                                               _%g115879115899%_)))))
                                    (_%g115878115895%_ _%g115879115899%_)))))
                        (_%g115877115992%_ _%bind115875%_))))))
          (let* ((_%g115719115738%_
                  (lambda (_%g115720115734%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g115720115734%_)))
                 (_%g115718115861%_
                  (lambda (_%g115720115742%_)
                    (if (gx#stx-pair? _%g115720115742%_)
                        (let ((_%e115724115745%_
                               (gx#syntax-e _%g115720115742%_)))
                          (let ((_%hd115725115749%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e115724115745%_)))
                                (_%tl115726115752%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e115724115745%_))))
                            (if (gx#stx-pair? _%tl115726115752%_)
                                (let ((_%e115727115755%_
                                       (gx#syntax-e _%tl115726115752%_)))
                                  (let ((_%hd115728115759%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e115727115755%_)))
                                        (_%tl115729115762%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e115727115755%_))))
                                    (if (gx#stx-pair? _%tl115729115762%_)
                                        (let ((_%e115730115765%_
                                               (gx#syntax-e
                                                _%tl115729115762%_)))
                                          (let ((_%hd115731115769%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e115730115765%_)))
                                                (_%tl115732115772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e115730115765%_))))
                                            ((lambda (_%L115775%_
                                                      _%L115777%_
                                                      _%L115778%_)
                                               (if (and (gx#identifier-list?
                                                         _%L115777%_)
                                                        (gx#stx-list?
                                                         _%L115775%_))
                                                   (let* ((_%g115796115804%_
                                                           (lambda (_%g115797115800%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g115797115800%_)))
                                                          (_%g115795115857%_
                                                           (lambda (_%g115797115808%_)
                                                             ((lambda (_%L115811%_)
                                                                (let* ((_%g115823115831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g115824115827%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g115824115827%_)))
                               (_%g115822115853%_
                                (lambda (_%g115824115835%_)
                                  ((lambda (_%L115838%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L115811%_
                                                             (cons _%L115778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L115838%_ '()))))
                                   _%g115824115835%_))))
                          (_%g115822115853%_
                           (_%generate115716%_
                            _%L115811%_
                            (gx#syntax->list _%L115777%_)
                            _%L115775%_))))
                      _%g115797115808%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g115795115857%_
                                                      (gx#genident 'e)))
                                                   (_%g115719115738%_
                                                    _%g115720115742%_)))
                                             _%tl115732115772%_
                                             _%hd115731115769%_
                                             _%hd115728115759%_)))
                                        (_%g115719115738%_
                                         _%g115720115742%_))))
                                (_%g115719115738%_ _%g115720115742%_))))
                        (_%g115719115738%_ _%g115720115742%_)))))
            (_%g115718115861%_ _%stx115713%_)))))))
