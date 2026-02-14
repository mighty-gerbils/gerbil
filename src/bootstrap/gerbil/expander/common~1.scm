(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g172537_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172539_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172541_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172543_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172544_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172546_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172547_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172549_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172550_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172552_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172553_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172555_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj172533
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
          (##unchecked-structure-set! __obj172533 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172533 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172533 '(e source) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172533 '(e source) '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172533 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172533 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172533 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172533 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172533 '#f '12 '#f '#f))
        (let ((__tmp172536 |gx[1]#_g172537_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj172533 __tmp172536 '3 '#f '#f))
        (let ((__tmp172538 |gx[1]#_g172539_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj172533 __tmp172538 '13 '#f '#f))
        (let ((__tmp172540 |gx[1]#_g172541_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj172533 __tmp172540 '14 '#f '#f))
        (let ((__tmp172542
               (cons (cons 'e |gx[1]#_g172543_|)
                     (cons (cons 'source |gx[1]#_g172544_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj172533 __tmp172542 '15 '#f '#f))
        (let ((__tmp172545
               (cons (cons 'e |gx[1]#_g172546_|)
                     (cons (cons 'source |gx[1]#_g172547_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj172533 __tmp172545 '16 '#f '#f))
        (let ((__tmp172548
               (cons (cons 'e |gx[1]#_g172549_|)
                     (cons (cons 'source |gx[1]#_g172550_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj172533 __tmp172548 '17 '#f '#f))
        (let ((__tmp172551
               (cons (cons 'e |gx[1]#_g172552_|)
                     (cons (cons 'source |gx[1]#_g172553_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj172533 __tmp172551 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172533 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172533 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172533 '() '20 '#f '#f))
        __obj172533))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx171130%_)
        (let* ((_%g171134171148%_
                (lambda (_%g171135171144%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g171135171144%_)))
               (_%g171133171190%_
                (lambda (_%g171135171152%_)
                  (if (gx#stx-pair? _%g171135171152%_)
                      (let ((_%e171137171155%_
                             (gx#syntax-e _%g171135171152%_)))
                        (let ((_%hd171138171159%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171137171155%_)))
                              (_%tl171139171162%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171137171155%_))))
                          (if (gx#stx-pair? _%tl171139171162%_)
                              (let ((_%e171140171165%_
                                     (gx#syntax-e _%tl171139171162%_)))
                                (let ((_%hd171141171169%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171140171165%_)))
                                      (_%tl171142171172%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171140171165%_))))
                                  (if (gx#stx-null? _%tl171142171172%_)
                                      ((lambda (_%g171136171175%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%g171136171175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure"
                               (cons _%g171136171175%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd171141171169%_)
                                      (_%g171134171148%_ _%g171135171152%_))))
                              (_%g171134171148%_ _%g171135171152%_))))
                      (_%g171134171148%_ _%g171135171152%_)))))
          (_%g171133171190%_ _%$stx171130%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx171194%_)
        (letrec ((_%generate171197%_
                  (lambda (_%tgt171346%_ _%kws171348%_ _%clauses171349%_)
                    (letrec ((_%generate-clause171351%_
                              (lambda (_%hd172284%_ _%E172286%_)
                                (let* ((_%__stx172436172437%_ _%hd172284%_)
                                       (_%g172290172317%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx172436172437%_))))
                                  (let ((_%__kont172439172440%_
                                         (lambda (_%g172292172413%_
                                                  _%g172293172415%_)
                                           (_%generate1171353%_
                                            _%hd172284%_
                                            _%g172293172415%_
                                            '#t
                                            _%g172292172413%_
                                            _%E172286%_)))
                                        (_%__kont172441172442%_
                                         (lambda (_%g172300172365%_
                                                  _%g172301172367%_
                                                  _%g172302172368%_)
                                           (_%generate1171353%_
                                            _%hd172284%_
                                            _%g172302172368%_
                                            _%g172301172367%_
                                            _%g172300172365%_
                                            _%E172286%_)))
                                        (_%__kont172443172444%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx171194%_
                                            _%hd172284%_))))
                                    (if (gx#stx-pair? _%__stx172436172437%_)
                                        (let ((_%e172294172393%_
                                               (gx#syntax-e
                                                _%__stx172436172437%_)))
                                          (let ((_%tl172296172400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172294172393%_)))
                                                (_%hd172295172397%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172294172393%_))))
                                            (if (gx#stx-pair?
                                                 _%tl172296172400%_)
                                                (let ((_%e172297172403%_
                                                       (gx#syntax-e
                                                        _%tl172296172400%_)))
                                                  (let ((_%tl172299172410%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172297172403%_)))
                                                        (_%hd172298172407%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172297172403%_))))
                                                    (if (gx#stx-null?
                                                         _%tl172299172410%_)
                                                        (_%__kont172439172440%_
                                                         _%hd172298172407%_
                                                         _%hd172295172397%_)
                                                        (if (gx#stx-pair?
                                                             _%tl172299172410%_)
                                                            (let ((_%e172309172355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl172299172410%_)))
                      (let ((_%tl172311172362%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172309172355%_)))
                            (_%hd172310172359%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172309172355%_))))
                        (if (gx#stx-null? _%tl172311172362%_)
                            (_%__kont172441172442%_
                             _%hd172310172359%_
                             _%hd172298172407%_
                             _%hd172295172397%_)
                            (_%__kont172443172444%_))))
                    (_%__kont172443172444%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont172443172444%_))))
                                        (_%__kont172443172444%_))))))
                             (_%generate1171353%_
                              (lambda (_%where171737%_
                                       _%hd171739%_
                                       _%fender171740%_
                                       _%body171741%_
                                       _%E171742%_)
                                (letrec ((_%recur171744%_
                                          (lambda (_%hd171747%_
                                                   _%tgt171749%_
                                                   _%K171750%_)
                                            (let* ((_%__stx172482172483%_
                                                    _%hd171747%_)
                                                   (_%g171753171765%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx172482172483%_))))
                                              (let ((_%__kont172485172486%_
                                                     (lambda (_%g171755172074%_
                                                              _%g171756172076%_)
                                                       (let* ((_%g172087172095%_
                                                               (lambda (_%g172088172091%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g172088172091%_)))
                      (_%g172086172276%_
                       (lambda (_%g172088172099%_)
                         ((lambda (_%g172089172102%_)
                            (let* ((_%g172114172122%_
                                    (lambda (_%g172115172118%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g172115172118%_)))
                                   (_%g172113172272%_
                                    (lambda (_%g172115172126%_)
                                      ((lambda (_%g172116172129%_)
                                         (let* ((_%g172142172150%_
                                                 (lambda (_%g172143172146%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g172143172146%_)))
                                                (_%g172141172268%_
                                                 (lambda (_%g172143172154%_)
                                                   ((lambda (_%g172144172157%_)
                                                      (let* ((_%g172170172178%_
                                                              (lambda (_%g172171172174%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g172171172174%_)))
                     (_%g172169172264%_
                      (lambda (_%g172171172182%_)
                        ((lambda (_%g172172172185%_)
                           (let* ((_%g172198172206%_
                                   (lambda (_%g172199172202%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g172199172202%_)))
                                  (_%g172197172260%_
                                   (lambda (_%g172199172210%_)
                                     ((lambda (_%g172200172213%_)
                                        (let* ((_%g172226172234%_
                                                (lambda (_%g172227172230%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g172227172230%_)))
                                               (_%g172225172256%_
                                                (lambda (_%g172227172238%_)
                                                  ((lambda (_%g172228172241%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%g172089172102%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g172116172129%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%g172089172102%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g172144172157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%g172116172129%_ '()))
                                       '()))
                           (cons (cons _%g172172172185%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%g172116172129%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons _%g172200172213%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g172228172241%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g172227172238%_))))
                                          (_%g172225172256%_ _%E171742%_)))
                                      _%g172199172210%_))))
                             (_%g172197172260%_
                              (_%recur171744%_
                               _%g171756172076%_
                               _%g172144172157%_
                               (_%recur171744%_
                                _%g171755172074%_
                                _%g172172172185%_
                                _%K171750%_)))))
                         _%g172171172182%_))))
                (_%g172169172264%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g172143172154%_))))
                                           (_%g172141172268%_
                                            (gx#genident 'hd))))
                                       _%g172115172126%_))))
                              (_%g172113172272%_ (gx#genident 'e))))
                          _%g172088172099%_))))
                 (_%g172086172276%_ _%tgt171749%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172487172488%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd171747%_)
                                                           (if (gx#underscore?
                                                                _%hd171747%_)
                                                               _%K171750%_
                                                               (if (let ((__tmp172554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g171779171781%_)
                                    (gx#bound-identifier=?
                                     _%g171779171781%_
                                     _%hd171747%_))))
                             (declare (not safe))
                             (__find __tmp172554 _%kws171348%_))
                           (let* ((_%g171787171802%_
                                   (lambda (_%g171788171798%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171788171798%_)))
                                  (_%g171786171855%_
                                   (lambda (_%g171788171806%_)
                                     (if (gx#stx-pair? _%g171788171806%_)
                                         (let ((_%e171791171809%_
                                                (gx#syntax-e
                                                 _%g171788171806%_)))
                                           (let ((_%hd171792171813%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e171791171809%_)))
                                                 (_%tl171793171816%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e171791171809%_))))
                                             (if (gx#stx-pair?
                                                  _%tl171793171816%_)
                                                 (let ((_%e171794171819%_
                                                        (gx#syntax-e
                                                         _%tl171793171816%_)))
                                                   (let ((_%hd171795171823%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e171794171819%_)))
                                                         (_%tl171796171826%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e171794171819%_))))
                                                     (if (gx#stx-null?
                                                          _%tl171796171826%_)
                                                         ((lambda (_%g171789171829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g171790171831%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%g171790171831%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%g171790171831%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%g171789171829%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K171750%_ (cons _%E171742%_ '())))))
                  _%hd171795171823%_
                  _%hd171792171813%_)
                 (_%g171787171802%_ _%g171788171806%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g171787171802%_
                                                  _%g171788171806%_))))
                                         (_%g171787171802%_
                                          _%g171788171806%_)))))
                             (_%g171786171855%_
                              (list _%tgt171749%_ _%hd171747%_)))
                           (let* ((_%g171861171876%_
                                   (lambda (_%g171862171872%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171862171872%_)))
                                  (_%g171860171921%_
                                   (lambda (_%g171862171880%_)
                                     (if (gx#stx-pair? _%g171862171880%_)
                                         (let ((_%e171865171883%_
                                                (gx#syntax-e
                                                 _%g171862171880%_)))
                                           (let ((_%hd171866171887%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e171865171883%_)))
                                                 (_%tl171867171890%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e171865171883%_))))
                                             (if (gx#stx-pair?
                                                  _%tl171867171890%_)
                                                 (let ((_%e171868171893%_
                                                        (gx#syntax-e
                                                         _%tl171867171890%_)))
                                                   (let ((_%hd171869171897%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e171868171893%_)))
                                                         (_%tl171870171900%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e171868171893%_))))
                                                     (if (gx#stx-null?
                                                          _%tl171870171900%_)
                                                         ((lambda (_%g171863171903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g171864171905%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%g171863171903%_
                                            (cons _%g171864171905%_ '()))
                                      '())
                                (cons _%K171750%_ '()))))
                  _%hd171869171897%_
                  _%hd171866171887%_)
                 (_%g171861171876%_ _%g171862171880%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g171861171876%_
                                                  _%g171862171880%_))))
                                         (_%g171861171876%_
                                          _%g171862171880%_)))))
                             (_%g171860171921%_
                              (list _%tgt171749%_ _%hd171747%_)))))
                   (if (gx#stx-null? _%hd171747%_)
                       (let* ((_%g171927171935%_
                               (lambda (_%g171928171931%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g171928171931%_)))
                              (_%g171926171954%_
                               (lambda (_%g171928171939%_)
                                 ((lambda (_%g171929171942%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%g171929171942%_
                                                            '()))
                                                (cons _%K171750%_
                                                      (cons _%E171742%_
                                                            '())))))
                                  _%g171928171939%_))))
                         (_%g171926171954%_ _%tgt171749%_))
                       (if (gx#stx-datum? _%hd171747%_)
                           (let* ((_%g171960171979%_
                                   (lambda (_%g171961171975%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171961171975%_)))
                                  (_%g171959172038%_
                                   (lambda (_%g171961171983%_)
                                     (if (gx#stx-pair? _%g171961171983%_)
                                         (let ((_%e171965171986%_
                                                (gx#syntax-e
                                                 _%g171961171983%_)))
                                           (let ((_%hd171966171990%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e171965171986%_)))
                                                 (_%tl171967171993%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e171965171986%_))))
                                             (if (gx#stx-pair?
                                                  _%tl171967171993%_)
                                                 (let ((_%e171968171996%_
                                                        (gx#syntax-e
                                                         _%tl171967171993%_)))
                                                   (let ((_%hd171969172000%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e171968171996%_)))
                                                         (_%tl171970172003%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e171968171996%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl171970172003%_)
                                                         (let ((_%e171971172006%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl171970172003%_)))
                   (let ((_%hd171972172010%_
                          (let ()
                            (declare (not safe))
                            (##car _%e171971172006%_)))
                         (_%tl171973172013%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e171971172006%_))))
                     (if (gx#stx-null? _%tl171973172013%_)
                         ((lambda (_%g171962172016%_
                                   _%g171963172018%_
                                   _%g171964172019%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%g171962172016%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%g171964172019%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g171963172018%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K171750%_
                                              (cons _%E171742%_ '())))))
                          _%hd171972172010%_
                          _%hd171969172000%_
                          _%hd171966171990%_)
                         (_%g171960171979%_ _%g171961171983%_))))
                 (_%g171960171979%_ _%g171961171983%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g171960171979%_
                                                  _%g171961171983%_))))
                                         (_%g171960171979%_
                                          _%g171961171983%_)))))
                             (_%g171959172038%_
                              (list _%tgt171749%_
                                    _%hd171747%_
                                    (let ((_%e172042%_
                                           (gx#stx-e _%hd171747%_)))
                                      (if (or (keyword? _%e172042%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e172042%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e172042%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx171194%_
                            _%where171737%_
                            _%hd171747%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx172482172483%_)
                                                    (let ((_%e171757172064%_
                                                           (gx#syntax-e
                                                            _%__stx172482172483%_)))
                                                      (let ((_%tl171759172071%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e171757172064%_)))
                    (_%hd171758172068%_
                     (let () (declare (not safe)) (##car _%e171757172064%_))))
                (_%__kont172485172486%_
                 _%tl171759172071%_
                 _%hd171758172068%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172487172488%_)))))))
                                  (_%recur171744%_
                                   _%hd171739%_
                                   _%tgt171346%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender171740%_
                                               (cons _%body171741%_
                                                     (cons _%E171742%_
                                                           '()))))))))
                             (_%generate-clauses171354%_
                              (lambda (_%clauses171475%_)
                                (let _%lp171478%_ ((_%rest171481%_
                                                    _%clauses171475%_)
                                                   (_%E171483%_
                                                    (gx#genident 'E))
                                                   (_%r171484%_ '()))
                                  (let* ((_%__stx172518172519%_ _%rest171481%_)
                                         (_%g171487171499%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx172518172519%_))))
                                    (let ((_%__kont172521172522%_
                                           (lambda (_%g171489171564%_
                                                    _%g171490171566%_)
                                             (let* ((_%__stx172498172499%_
                                                     _%g171490171566%_)
                                                    (_%g171578171589%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx172498172499%_))))
                                               (let ((_%__kont172501172502%_
                                                      (lambda (_%g171580171718%_)
                                                        (if (gx#stx-null?
                                                             _%g171489171564%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g171580171718%_)
                             (not (gx#stx-null? _%g171580171718%_)))
                        (cons (cons _%E171483%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g171580171718%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g171490171566%_))
                                          '()))
                              _%r171484%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx171194%_
                         _%g171490171566%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx171194%_
                     _%g171490171566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172503172504%_
                                                      (lambda ()
                                                        (let* ((_%g171600171608%_
                                                                (lambda (_%g171601171604%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g171601171604%_)))
                       (_%g171599171697%_
                        (lambda (_%g171601171612%_)
                          ((lambda (_%g171602171615%_)
                             (let* ((_%g171631171639%_
                                     (lambda (_%g171632171635%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g171632171635%_)))
                                    (_%g171630171693%_
                                     (lambda (_%g171632171643%_)
                                       ((lambda (_%g171633171646%_)
                                          (let* ((_%g171659171667%_
                                                  (lambda (_%g171660171663%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g171660171663%_)))
                                                 (_%g171658171689%_
                                                  (lambda (_%g171660171671%_)
                                                    ((lambda (_%g171661171674%_)
                                                       (_%lp171478%_
                                                        _%g171489171564%_
                                                        _%g171602171615%_
                                                        (cons (cons _%E171483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g171661171674%_ '()))
                      _%r171484%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g171660171671%_))))
                                            (_%g171658171689%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%g171633171646%_
                                                                '())))
                                              (gx#stx-source
                                               _%g171490171566%_)))))
                                        _%g171632171643%_))))
                               (_%g171630171693%_
                                (_%generate-clause171351%_
                                 _%g171490171566%_
                                 (cons _%g171602171615%_ '())))))
                           _%g171601171612%_))))
                  (_%g171599171697%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx172498172499%_)
                                                     (let ((_%e171581171708%_
                                                            (gx#syntax-e
                                                             _%__stx172498172499%_)))
                                                       (let ((_%tl171583171715%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e171581171708%_)))
                     (_%hd171582171712%_
                      (let () (declare (not safe)) (##car _%e171581171708%_))))
                 (if (gx#identifier? _%hd171582171712%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g172555_|
                          _%hd171582171712%_)
                         (_%__kont172501172502%_ _%tl171583171715%_)
                         (_%__kont172503172504%_))
                     (_%__kont172503172504%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172503172504%_))))))
                                          (_%__kont172523172524%_
                                           (lambda ()
                                             (let* ((_%g171510171518%_
                                                     (lambda (_%g171511171514%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g171511171514%_)))
                                                    (_%g171509171543%_
                                                     (lambda (_%g171511171522%_)
                                                       ((lambda (_%g171512171525%_)
                                                          (cons (cons _%E171483%_
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
                                 (cons _%g171512171525%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx171194%_))
                                    '()))
                        _%r171484%_))
                _%g171511171522%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g171509171543%_
                                                _%tgt171346%_)))))
                                      (if (gx#stx-pair? _%__stx172518172519%_)
                                          (let ((_%e171491171554%_
                                                 (gx#syntax-e
                                                  _%__stx172518172519%_)))
                                            (let ((_%tl171493171561%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e171491171554%_)))
                                                  (_%hd171492171558%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e171491171554%_))))
                                              (_%__kont172521172522%_
                                               _%tl171493171561%_
                                               _%hd171492171558%_)))
                                          (_%__kont172523172524%_))))))))
                      (let* ((_%bind171356%_
                              (_%generate-clauses171354%_ _%clauses171349%_))
                             (_%g171359171376%_
                              (lambda (_%g171360171372%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g171360171372%_)))
                             (_%g171358171471%_
                              (lambda (_%g171360171380%_)
                                (if (gx#stx-pair/null? _%g171360171380%_)
                                    (let ((_g172556_
                                           (gx#syntax-split-splice
                                            _%g171360171380%_
                                            '0)))
                                      (begin
                                        (let ((_g172557_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g172556_)
                                                     (##values-length
                                                      _g172556_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g172557_ 2)))
                                              (error "Context expects 2 values"
                                                     _g172557_)))
                                        (let ((_%target171362171383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g172556_ 0)))
                                              (_%tl171364171386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g172556_ 1))))
                                          (if (gx#stx-null? _%tl171364171386%_)
                                              (letrec ((_%loop171365171389%_
                                                        (lambda (_%hd171363171393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try171369171396%_)
                  (if (gx#stx-pair? _%hd171363171393%_)
                      (let ((_%e171366171398%_
                             (gx#syntax-e _%hd171363171393%_)))
                        (let ((_%lp-hd171367171402%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171366171398%_)))
                              (_%lp-tl171368171405%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171366171398%_))))
                          (_%loop171365171389%_
                           _%lp-tl171368171405%_
                           (cons _%lp-hd171367171402%_
                                 _%bind-try171369171396%_))))
                      (let ((_%bind-try171370171408%_
                             (reverse _%bind-try171369171396%_)))
                        ((lambda (_%g171361171411%_)
                           (let* ((_%g171429171437%_
                                   (lambda (_%g171430171433%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171430171433%_)))
                                  (_%g171428171467%_
                                   (lambda (_%g171430171441%_)
                                     ((lambda (_%g171431171444%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp172558
                                                           (lambda (_%g171458171461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g171459171464%_)
                     (cons _%g171458171461%_ _%g171459171464%_))))
              (declare (not safe))
              (foldr__0 __tmp172558 '() _%g171361171411%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g171431171444%_
                                                                '())
                                                          '()))))
                                      _%g171430171441%_))))
                             (_%g171428171467%_ (car (last _%bind171356%_)))))
                         _%bind-try171370171408%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop171365171389%_
                                                 _%target171362171383%_
                                                 '()))
                                              (_%g171359171376%_
                                               _%g171360171380%_)))))
                                    (_%g171359171376%_ _%g171360171380%_)))))
                        (_%g171358171471%_ _%bind171356%_))))))
          (let* ((_%g171200171219%_
                  (lambda (_%g171201171215%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171201171215%_)))
                 (_%g171199171342%_
                  (lambda (_%g171201171223%_)
                    (if (gx#stx-pair? _%g171201171223%_)
                        (let ((_%e171205171226%_
                               (gx#syntax-e _%g171201171223%_)))
                          (let ((_%hd171206171230%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171205171226%_)))
                                (_%tl171207171233%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171205171226%_))))
                            (if (gx#stx-pair? _%tl171207171233%_)
                                (let ((_%e171208171236%_
                                       (gx#syntax-e _%tl171207171233%_)))
                                  (let ((_%hd171209171240%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171208171236%_)))
                                        (_%tl171210171243%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171208171236%_))))
                                    (if (gx#stx-pair? _%tl171210171243%_)
                                        (let ((_%e171211171246%_
                                               (gx#syntax-e
                                                _%tl171210171243%_)))
                                          (let ((_%hd171212171250%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171211171246%_)))
                                                (_%tl171213171253%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171211171246%_))))
                                            ((lambda (_%g171202171256%_
                                                      _%g171203171258%_
                                                      _%g171204171259%_)
                                               (if (and (gx#identifier-list?
                                                         _%g171203171258%_)
                                                        (gx#stx-list?
                                                         _%g171202171256%_))
                                                   (let* ((_%g171277171285%_
                                                           (lambda (_%g171278171281%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g171278171281%_)))
                                                          (_%g171276171338%_
                                                           (lambda (_%g171278171289%_)
                                                             ((lambda (_%g171279171292%_)
                                                                (let* ((_%g171304171312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g171305171308%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g171305171308%_)))
                               (_%g171303171334%_
                                (lambda (_%g171305171316%_)
                                  ((lambda (_%g171306171319%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%g171279171292%_
                                                             (cons _%g171204171259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g171306171319%_
                                                       '()))))
                                   _%g171305171316%_))))
                          (_%g171303171334%_
                           (_%generate171197%_
                            _%g171279171292%_
                            (gx#syntax->list _%g171203171258%_)
                            _%g171202171256%_))))
                      _%g171278171289%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g171276171338%_
                                                      (gx#genident 'e)))
                                                   (_%g171200171219%_
                                                    _%g171201171223%_)))
                                             _%tl171213171253%_
                                             _%hd171212171250%_
                                             _%hd171209171240%_)))
                                        (_%g171200171219%_
                                         _%g171201171223%_))))
                                (_%g171200171219%_ _%g171201171223%_))))
                        (_%g171200171219%_ _%g171201171223%_)))))
            (_%g171199171342%_ _%stx171194%_)))))))
