(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g117954_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117956_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117958_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117960_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117961_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117963_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117964_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117966_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117967_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117969_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117970_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117972_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj117950
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
          (##unchecked-structure-set! __obj117950 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117950 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117950 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117950 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117950 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117950 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117950 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117950 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117950 '#f '11 '#f '#f))
        (let ((__tmp117953 |gx[1]#_g117954_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117950 __tmp117953 '12 '#f '#f))
        (let ((__tmp117955 |gx[1]#_g117956_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117950 __tmp117955 '13 '#f '#f))
        (let ((__tmp117957 |gx[1]#_g117958_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117950 __tmp117957 '14 '#f '#f))
        (let ((__tmp117959
               (cons (cons 'e |gx[1]#_g117960_|)
                     (cons (cons 'source |gx[1]#_g117961_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117950 __tmp117959 '15 '#f '#f))
        (let ((__tmp117962
               (cons (cons 'e |gx[1]#_g117963_|)
                     (cons (cons 'source |gx[1]#_g117964_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117950 __tmp117962 '16 '#f '#f))
        (let ((__tmp117965
               (cons (cons 'e |gx[1]#_g117966_|)
                     (cons (cons 'source |gx[1]#_g117967_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117950 __tmp117965 '17 '#f '#f))
        (let ((__tmp117968
               (cons (cons 'e |gx[1]#_g117969_|)
                     (cons (cons 'source |gx[1]#_g117970_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117950 __tmp117968 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117950 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117950 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117950 '() '20 '#f '#f))
        __obj117950))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx116545%_)
        (let* ((_%g116549116563%_
                (lambda (_%g116550116559%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g116550116559%_)))
               (_%g116548116605%_
                (lambda (_%g116550116567%_)
                  (if (gx#stx-pair? _%g116550116567%_)
                      (let ((_%e116552116570%_
                             (gx#syntax-e _%g116550116567%_)))
                        (let ((_%hd116553116574%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e116552116570%_)))
                              (_%tl116554116577%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e116552116570%_))))
                          (if (gx#stx-pair? _%tl116554116577%_)
                              (let ((_%e116555116580%_
                                     (gx#syntax-e _%tl116554116577%_)))
                                (let ((_%hd116556116584%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e116555116580%_)))
                                      (_%tl116557116587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e116555116580%_))))
                                  (if (gx#stx-null? _%tl116557116587%_)
                                      ((lambda (_%L116590%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L116590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L116590%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd116556116584%_)
                                      (_%g116549116563%_ _%g116550116567%_))))
                              (_%g116549116563%_ _%g116550116567%_))))
                      (_%g116549116563%_ _%g116550116567%_)))))
          (_%g116548116605%_ _%$stx116545%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx116609%_)
        (letrec ((_%generate116612%_
                  (lambda (_%tgt116761%_ _%kws116763%_ _%clauses116764%_)
                    (letrec ((_%generate-clause116766%_
                              (lambda (_%hd117701%_ _%E117703%_)
                                (let* ((_%__stx117853117854%_ _%hd117701%_)
                                       (_%g117707117734%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx117853117854%_))))
                                  (let ((_%__kont117856117857%_
                                         (lambda (_%L117830%_ _%L117832%_)
                                           (_%generate1116768%_
                                            _%hd117701%_
                                            _%L117832%_
                                            '#t
                                            _%L117830%_
                                            _%E117703%_)))
                                        (_%__kont117858117859%_
                                         (lambda (_%L117782%_
                                                  _%L117784%_
                                                  _%L117785%_)
                                           (_%generate1116768%_
                                            _%hd117701%_
                                            _%L117785%_
                                            _%L117784%_
                                            _%L117782%_
                                            _%E117703%_)))
                                        (_%__kont117860117861%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx116609%_
                                            _%hd117701%_))))
                                    (if (gx#stx-pair? _%__stx117853117854%_)
                                        (let ((_%e117711117810%_
                                               (gx#syntax-e
                                                _%__stx117853117854%_)))
                                          (let ((_%tl117713117817%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e117711117810%_)))
                                                (_%hd117712117814%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e117711117810%_))))
                                            (if (gx#stx-pair?
                                                 _%tl117713117817%_)
                                                (let ((_%e117714117820%_
                                                       (gx#syntax-e
                                                        _%tl117713117817%_)))
                                                  (let ((_%tl117716117827%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e117714117820%_)))
                                                        (_%hd117715117824%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e117714117820%_))))
                                                    (if (gx#stx-null?
                                                         _%tl117716117827%_)
                                                        (_%__kont117856117857%_
                                                         _%hd117715117824%_
                                                         _%hd117712117814%_)
                                                        (if (gx#stx-pair?
                                                             _%tl117716117827%_)
                                                            (let ((_%e117726117772%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl117716117827%_)))
                      (let ((_%tl117728117779%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e117726117772%_)))
                            (_%hd117727117776%_
                             (let ()
                               (declare (not safe))
                               (##car _%e117726117772%_))))
                        (if (gx#stx-null? _%tl117728117779%_)
                            (_%__kont117858117859%_
                             _%hd117727117776%_
                             _%hd117715117824%_
                             _%hd117712117814%_)
                            (_%__kont117860117861%_))))
                    (_%__kont117860117861%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont117860117861%_))))
                                        (_%__kont117860117861%_))))))
                             (_%generate1116768%_
                              (lambda (_%where117154%_
                                       _%hd117156%_
                                       _%fender117157%_
                                       _%body117158%_
                                       _%E117159%_)
                                (letrec ((_%recur117161%_
                                          (lambda (_%hd117164%_
                                                   _%tgt117166%_
                                                   _%K117167%_)
                                            (let* ((_%__stx117899117900%_
                                                    _%hd117164%_)
                                                   (_%g117170117182%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx117899117900%_))))
                                              (let ((_%__kont117902117903%_
                                                     (lambda (_%L117491%_
                                                              _%L117493%_)
                                                       (let* ((_%g117504117512%_
                                                               (lambda (_%g117505117508%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g117505117508%_)))
                      (_%g117503117693%_
                       (lambda (_%g117505117516%_)
                         ((lambda (_%L117519%_)
                            (let* ((_%g117531117539%_
                                    (lambda (_%g117532117535%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g117532117535%_)))
                                   (_%g117530117689%_
                                    (lambda (_%g117532117543%_)
                                      ((lambda (_%L117546%_)
                                         (let* ((_%g117559117567%_
                                                 (lambda (_%g117560117563%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g117560117563%_)))
                                                (_%g117558117685%_
                                                 (lambda (_%g117560117571%_)
                                                   ((lambda (_%L117574%_)
                                                      (let* ((_%g117587117595%_
                                                              (lambda (_%g117588117591%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g117588117591%_)))
                     (_%g117586117681%_
                      (lambda (_%g117588117599%_)
                        ((lambda (_%L117602%_)
                           (let* ((_%g117615117623%_
                                   (lambda (_%g117616117619%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117616117619%_)))
                                  (_%g117614117677%_
                                   (lambda (_%g117616117627%_)
                                     ((lambda (_%L117630%_)
                                        (let* ((_%g117643117651%_
                                                (lambda (_%g117644117647%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g117644117647%_)))
                                               (_%g117642117673%_
                                                (lambda (_%g117644117655%_)
                                                  ((lambda (_%L117658%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L117519%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L117546%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L117519%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L117574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L117546%_ '()))
                                       '()))
                           (cons (cons _%L117602%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L117546%_ '()))
                                             '()))
                                 '()))
                     (cons _%L117630%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L117658%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g117644117655%_))))
                                          (_%g117642117673%_ _%E117159%_)))
                                      _%g117616117627%_))))
                             (_%g117614117677%_
                              (_%recur117161%_
                               _%L117493%_
                               _%L117574%_
                               (_%recur117161%_
                                _%L117491%_
                                _%L117602%_
                                _%K117167%_)))))
                         _%g117588117599%_))))
                (_%g117586117681%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g117560117571%_))))
                                           (_%g117558117685%_
                                            (gx#genident 'hd))))
                                       _%g117532117543%_))))
                              (_%g117530117689%_ (gx#genident 'e))))
                          _%g117505117516%_))))
                 (_%g117503117693%_ _%tgt117166%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont117904117905%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd117164%_)
                                                           (if (gx#underscore?
                                                                _%hd117164%_)
                                                               _%K117167%_
                                                               (if (let ((__tmp117971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g117196117198%_)
                                    (gx#bound-identifier=?
                                     _%g117196117198%_
                                     _%hd117164%_))))
                             (declare (not safe))
                             (__find __tmp117971 _%kws116763%_))
                           (let* ((_%g117204117219%_
                                   (lambda (_%g117205117215%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117205117215%_)))
                                  (_%g117203117272%_
                                   (lambda (_%g117205117223%_)
                                     (if (gx#stx-pair? _%g117205117223%_)
                                         (let ((_%e117208117226%_
                                                (gx#syntax-e
                                                 _%g117205117223%_)))
                                           (let ((_%hd117209117230%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e117208117226%_)))
                                                 (_%tl117210117233%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e117208117226%_))))
                                             (if (gx#stx-pair?
                                                  _%tl117210117233%_)
                                                 (let ((_%e117211117236%_
                                                        (gx#syntax-e
                                                         _%tl117210117233%_)))
                                                   (let ((_%hd117212117240%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e117211117236%_)))
                                                         (_%tl117213117243%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e117211117236%_))))
                                                     (if (gx#stx-null?
                                                          _%tl117213117243%_)
                                                         ((lambda (_%L117246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L117248%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L117248%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L117248%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L117246%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K117167%_ (cons _%E117159%_ '())))))
                  _%hd117212117240%_
                  _%hd117209117230%_)
                 (_%g117204117219%_ _%g117205117223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g117204117219%_
                                                  _%g117205117223%_))))
                                         (_%g117204117219%_
                                          _%g117205117223%_)))))
                             (_%g117203117272%_
                              (list _%tgt117166%_ _%hd117164%_)))
                           (let* ((_%g117278117293%_
                                   (lambda (_%g117279117289%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117279117289%_)))
                                  (_%g117277117338%_
                                   (lambda (_%g117279117297%_)
                                     (if (gx#stx-pair? _%g117279117297%_)
                                         (let ((_%e117282117300%_
                                                (gx#syntax-e
                                                 _%g117279117297%_)))
                                           (let ((_%hd117283117304%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e117282117300%_)))
                                                 (_%tl117284117307%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e117282117300%_))))
                                             (if (gx#stx-pair?
                                                  _%tl117284117307%_)
                                                 (let ((_%e117285117310%_
                                                        (gx#syntax-e
                                                         _%tl117284117307%_)))
                                                   (let ((_%hd117286117314%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e117285117310%_)))
                                                         (_%tl117287117317%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e117285117310%_))))
                                                     (if (gx#stx-null?
                                                          _%tl117287117317%_)
                                                         ((lambda (_%L117320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L117322%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L117320%_ (cons _%L117322%_ '()))
                                      '())
                                (cons _%K117167%_ '()))))
                  _%hd117286117314%_
                  _%hd117283117304%_)
                 (_%g117278117293%_ _%g117279117297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g117278117293%_
                                                  _%g117279117297%_))))
                                         (_%g117278117293%_
                                          _%g117279117297%_)))))
                             (_%g117277117338%_
                              (list _%tgt117166%_ _%hd117164%_)))))
                   (if (gx#stx-null? _%hd117164%_)
                       (let* ((_%g117344117352%_
                               (lambda (_%g117345117348%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g117345117348%_)))
                              (_%g117343117371%_
                               (lambda (_%g117345117356%_)
                                 ((lambda (_%L117359%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L117359%_ '()))
                                                (cons _%K117167%_
                                                      (cons _%E117159%_
                                                            '())))))
                                  _%g117345117356%_))))
                         (_%g117343117371%_ _%tgt117166%_))
                       (if (gx#stx-datum? _%hd117164%_)
                           (let* ((_%g117377117396%_
                                   (lambda (_%g117378117392%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117378117392%_)))
                                  (_%g117376117455%_
                                   (lambda (_%g117378117400%_)
                                     (if (gx#stx-pair? _%g117378117400%_)
                                         (let ((_%e117382117403%_
                                                (gx#syntax-e
                                                 _%g117378117400%_)))
                                           (let ((_%hd117383117407%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e117382117403%_)))
                                                 (_%tl117384117410%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e117382117403%_))))
                                             (if (gx#stx-pair?
                                                  _%tl117384117410%_)
                                                 (let ((_%e117385117413%_
                                                        (gx#syntax-e
                                                         _%tl117384117410%_)))
                                                   (let ((_%hd117386117417%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e117385117413%_)))
                                                         (_%tl117387117420%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e117385117413%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl117387117420%_)
                                                         (let ((_%e117388117423%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl117387117420%_)))
                   (let ((_%hd117389117427%_
                          (let ()
                            (declare (not safe))
                            (##car _%e117388117423%_)))
                         (_%tl117390117430%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e117388117423%_))))
                     (if (gx#stx-null? _%tl117390117430%_)
                         ((lambda (_%L117433%_ _%L117435%_ _%L117436%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L117433%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L117436%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L117435%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K117167%_
                                              (cons _%E117159%_ '())))))
                          _%hd117389117427%_
                          _%hd117386117417%_
                          _%hd117383117407%_)
                         (_%g117377117396%_ _%g117378117400%_))))
                 (_%g117377117396%_ _%g117378117400%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g117377117396%_
                                                  _%g117378117400%_))))
                                         (_%g117377117396%_
                                          _%g117378117400%_)))))
                             (_%g117376117455%_
                              (list _%tgt117166%_
                                    _%hd117164%_
                                    (let ((_%e117459%_
                                           (gx#stx-e _%hd117164%_)))
                                      (if (or (keyword? _%e117459%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e117459%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e117459%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx116609%_
                            _%where117154%_
                            _%hd117164%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx117899117900%_)
                                                    (let ((_%e117174117481%_
                                                           (gx#syntax-e
                                                            _%__stx117899117900%_)))
                                                      (let ((_%tl117176117488%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e117174117481%_)))
                    (_%hd117175117485%_
                     (let () (declare (not safe)) (##car _%e117174117481%_))))
                (_%__kont117902117903%_
                 _%tl117176117488%_
                 _%hd117175117485%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont117904117905%_)))))))
                                  (_%recur117161%_
                                   _%hd117156%_
                                   _%tgt116761%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender117157%_
                                               (cons _%body117158%_
                                                     (cons _%E117159%_
                                                           '()))))))))
                             (_%generate-clauses116769%_
                              (lambda (_%clauses116892%_)
                                (let _%lp116895%_ ((_%rest116898%_
                                                    _%clauses116892%_)
                                                   (_%E116900%_
                                                    (gx#genident 'E))
                                                   (_%r116901%_ '()))
                                  (let* ((_%__stx117935117936%_ _%rest116898%_)
                                         (_%g116904116916%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx117935117936%_))))
                                    (let ((_%__kont117938117939%_
                                           (lambda (_%L116981%_ _%L116983%_)
                                             (let* ((_%__stx117915117916%_
                                                     _%L116983%_)
                                                    (_%g116995117006%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx117915117916%_))))
                                               (let ((_%__kont117918117919%_
                                                      (lambda (_%L117135%_)
                                                        (if (gx#stx-null?
                                                             _%L116981%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L117135%_)
                             (not (gx#stx-null? _%L117135%_)))
                        (cons (cons _%E116900%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L117135%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L116983%_))
                                          '()))
                              _%r116901%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx116609%_
                         _%L116983%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx116609%_
                     _%L116983%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont117920117921%_
                                                      (lambda ()
                                                        (let* ((_%g117017117025%_
                                                                (lambda (_%g117018117021%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g117018117021%_)))
                       (_%g117016117114%_
                        (lambda (_%g117018117029%_)
                          ((lambda (_%L117032%_)
                             (let* ((_%g117048117056%_
                                     (lambda (_%g117049117052%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g117049117052%_)))
                                    (_%g117047117110%_
                                     (lambda (_%g117049117060%_)
                                       ((lambda (_%L117063%_)
                                          (let* ((_%g117076117084%_
                                                  (lambda (_%g117077117080%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g117077117080%_)))
                                                 (_%g117075117106%_
                                                  (lambda (_%g117077117088%_)
                                                    ((lambda (_%L117091%_)
                                                       (_%lp116895%_
                                                        _%L116981%_
                                                        _%L117032%_
                                                        (cons (cons _%E116900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L117091%_ '()))
                      _%r116901%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g117077117088%_))))
                                            (_%g117075117106%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L117063%_
                                                                '())))
                                              (gx#stx-source _%L116983%_)))))
                                        _%g117049117060%_))))
                               (_%g117047117110%_
                                (_%generate-clause116766%_
                                 _%L116983%_
                                 (cons _%L117032%_ '())))))
                           _%g117018117029%_))))
                  (_%g117016117114%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx117915117916%_)
                                                     (let ((_%e116998117125%_
                                                            (gx#syntax-e
                                                             _%__stx117915117916%_)))
                                                       (let ((_%tl117000117132%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e116998117125%_)))
                     (_%hd116999117129%_
                      (let () (declare (not safe)) (##car _%e116998117125%_))))
                 (if (gx#identifier? _%hd116999117129%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g117972_|
                          _%hd116999117129%_)
                         (_%__kont117918117919%_ _%tl117000117132%_)
                         (_%__kont117920117921%_))
                     (_%__kont117920117921%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont117920117921%_))))))
                                          (_%__kont117940117941%_
                                           (lambda ()
                                             (let* ((_%g116927116935%_
                                                     (lambda (_%g116928116931%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g116928116931%_)))
                                                    (_%g116926116960%_
                                                     (lambda (_%g116928116939%_)
                                                       ((lambda (_%L116942%_)
                                                          (cons (cons _%E116900%_
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
                                 (cons _%L116942%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx116609%_))
                                    '()))
                        _%r116901%_))
                _%g116928116939%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g116926116960%_
                                                _%tgt116761%_)))))
                                      (if (gx#stx-pair? _%__stx117935117936%_)
                                          (let ((_%e116908116971%_
                                                 (gx#syntax-e
                                                  _%__stx117935117936%_)))
                                            (let ((_%tl116910116978%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e116908116971%_)))
                                                  (_%hd116909116975%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e116908116971%_))))
                                              (_%__kont117938117939%_
                                               _%tl116910116978%_
                                               _%hd116909116975%_)))
                                          (_%__kont117940117941%_))))))))
                      (let* ((_%bind116771%_
                              (_%generate-clauses116769%_ _%clauses116764%_))
                             (_%g116774116791%_
                              (lambda (_%g116775116787%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g116775116787%_)))
                             (_%g116773116888%_
                              (lambda (_%g116775116795%_)
                                (if (gx#stx-pair/null? _%g116775116795%_)
                                    (let ((_g117973_
                                           (gx#syntax-split-splice
                                            _%g116775116795%_
                                            '0)))
                                      (begin
                                        (let ((_g117974_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g117973_)
                                                     (##values-length
                                                      _g117973_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g117974_ 2)))
                                              (error "Context expects 2 values"
                                                     _g117974_)))
                                        (let ((_%target116777116798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g117973_ 0)))
                                              (_%tl116779116801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g117973_ 1))))
                                          (if (gx#stx-null? _%tl116779116801%_)
                                              (letrec ((_%loop116780116804%_
                                                        (lambda (_%hd116778116808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try116784116811%_)
                  (if (gx#stx-pair? _%hd116778116808%_)
                      (let ((_%e116781116814%_
                             (gx#syntax-e _%hd116778116808%_)))
                        (let ((_%lp-hd116782116818%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e116781116814%_)))
                              (_%lp-tl116783116821%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e116781116814%_))))
                          (_%loop116780116804%_
                           _%lp-tl116783116821%_
                           (cons _%lp-hd116782116818%_
                                 _%bind-try116784116811%_))))
                      (let ((_%bind-try116785116824%_
                             (reverse _%bind-try116784116811%_)))
                        ((lambda (_%L116828%_)
                           (let* ((_%g116846116854%_
                                   (lambda (_%g116847116850%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116847116850%_)))
                                  (_%g116845116884%_
                                   (lambda (_%g116847116858%_)
                                     ((lambda (_%L116861%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp117975
                                                           (lambda (_%g116875116878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g116876116881%_)
                     (cons _%g116875116878%_ _%g116876116881%_))))
              (declare (not safe))
              (__foldr1 __tmp117975 '() _%L116828%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L116861%_
                                                                '())
                                                          '()))))
                                      _%g116847116858%_))))
                             (_%g116845116884%_ (car (last _%bind116771%_)))))
                         _%bind-try116785116824%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop116780116804%_
                                                 _%target116777116798%_
                                                 '()))
                                              (_%g116774116791%_
                                               _%g116775116795%_)))))
                                    (_%g116774116791%_ _%g116775116795%_)))))
                        (_%g116773116888%_ _%bind116771%_))))))
          (let* ((_%g116615116634%_
                  (lambda (_%g116616116630%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g116616116630%_)))
                 (_%g116614116757%_
                  (lambda (_%g116616116638%_)
                    (if (gx#stx-pair? _%g116616116638%_)
                        (let ((_%e116620116641%_
                               (gx#syntax-e _%g116616116638%_)))
                          (let ((_%hd116621116645%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e116620116641%_)))
                                (_%tl116622116648%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e116620116641%_))))
                            (if (gx#stx-pair? _%tl116622116648%_)
                                (let ((_%e116623116651%_
                                       (gx#syntax-e _%tl116622116648%_)))
                                  (let ((_%hd116624116655%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e116623116651%_)))
                                        (_%tl116625116658%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e116623116651%_))))
                                    (if (gx#stx-pair? _%tl116625116658%_)
                                        (let ((_%e116626116661%_
                                               (gx#syntax-e
                                                _%tl116625116658%_)))
                                          (let ((_%hd116627116665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e116626116661%_)))
                                                (_%tl116628116668%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e116626116661%_))))
                                            ((lambda (_%L116671%_
                                                      _%L116673%_
                                                      _%L116674%_)
                                               (if (and (gx#identifier-list?
                                                         _%L116673%_)
                                                        (gx#stx-list?
                                                         _%L116671%_))
                                                   (let* ((_%g116692116700%_
                                                           (lambda (_%g116693116696%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g116693116696%_)))
                                                          (_%g116691116753%_
                                                           (lambda (_%g116693116704%_)
                                                             ((lambda (_%L116707%_)
                                                                (let* ((_%g116719116727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g116720116723%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g116720116723%_)))
                               (_%g116718116749%_
                                (lambda (_%g116720116731%_)
                                  ((lambda (_%L116734%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L116707%_
                                                             (cons _%L116674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L116734%_ '()))))
                                   _%g116720116731%_))))
                          (_%g116718116749%_
                           (_%generate116612%_
                            _%L116707%_
                            (gx#syntax->list _%L116673%_)
                            _%L116671%_))))
                      _%g116693116704%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g116691116753%_
                                                      (gx#genident 'e)))
                                                   (_%g116615116634%_
                                                    _%g116616116638%_)))
                                             _%tl116628116668%_
                                             _%hd116627116665%_
                                             _%hd116624116655%_)))
                                        (_%g116615116634%_
                                         _%g116616116638%_))))
                                (_%g116615116634%_ _%g116616116638%_))))
                        (_%g116615116634%_ _%g116616116638%_)))))
            (_%g116614116757%_ _%stx116609%_)))))))
