(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g114943_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114945_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114947_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114949_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114950_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114952_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114953_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114955_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114956_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114958_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114959_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114961_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj114939
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
          (##unchecked-structure-set! __obj114939 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114939 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114939 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114939 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114939 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114939 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114939 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114939 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114939 '#f '11 '#f '#f))
        (let ((__tmp114942 |gx[1]#_g114943_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj114939 __tmp114942 '12 '#f '#f))
        (let ((__tmp114944 |gx[1]#_g114945_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj114939 __tmp114944 '13 '#f '#f))
        (let ((__tmp114946 |gx[1]#_g114947_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj114939 __tmp114946 '14 '#f '#f))
        (let ((__tmp114948
               (cons (cons 'e |gx[1]#_g114949_|)
                     (cons (cons 'source |gx[1]#_g114950_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj114939 __tmp114948 '15 '#f '#f))
        (let ((__tmp114951
               (cons (cons 'e |gx[1]#_g114952_|)
                     (cons (cons 'source |gx[1]#_g114953_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj114939 __tmp114951 '16 '#f '#f))
        (let ((__tmp114954
               (cons (cons 'e |gx[1]#_g114955_|)
                     (cons (cons 'source |gx[1]#_g114956_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj114939 __tmp114954 '17 '#f '#f))
        (let ((__tmp114957
               (cons (cons 'e |gx[1]#_g114958_|)
                     (cons (cons 'source |gx[1]#_g114959_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj114939 __tmp114957 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114939 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114939 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114939 '() '20 '#f '#f))
        __obj114939))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx113534%_)
        (let* ((_%g113538113552%_
                (lambda (_%g113539113548%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g113539113548%_)))
               (_%g113537113594%_
                (lambda (_%g113539113556%_)
                  (if (gx#stx-pair? _%g113539113556%_)
                      (let ((_%e113541113559%_
                             (gx#syntax-e _%g113539113556%_)))
                        (let ((_%hd113542113563%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e113541113559%_)))
                              (_%tl113543113566%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e113541113559%_))))
                          (if (gx#stx-pair? _%tl113543113566%_)
                              (let ((_%e113544113569%_
                                     (gx#syntax-e _%tl113543113566%_)))
                                (let ((_%hd113545113573%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e113544113569%_)))
                                      (_%tl113546113576%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e113544113569%_))))
                                  (if (gx#stx-null? _%tl113546113576%_)
                                      ((lambda (_%L113579%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L113579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L113579%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd113545113573%_)
                                      (_%g113538113552%_ _%g113539113556%_))))
                              (_%g113538113552%_ _%g113539113556%_))))
                      (_%g113538113552%_ _%g113539113556%_)))))
          (_%g113537113594%_ _%$stx113534%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx113598%_)
        (letrec ((_%generate113601%_
                  (lambda (_%tgt113750%_ _%kws113752%_ _%clauses113753%_)
                    (letrec ((_%generate-clause113755%_
                              (lambda (_%hd114690%_ _%E114692%_)
                                (let* ((_%__stx114842114843%_ _%hd114690%_)
                                       (_%g114696114723%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx114842114843%_))))
                                  (let ((_%__kont114845114846%_
                                         (lambda (_%L114819%_ _%L114821%_)
                                           (_%generate1113757%_
                                            _%hd114690%_
                                            _%L114821%_
                                            '#t
                                            _%L114819%_
                                            _%E114692%_)))
                                        (_%__kont114847114848%_
                                         (lambda (_%L114771%_
                                                  _%L114773%_
                                                  _%L114774%_)
                                           (_%generate1113757%_
                                            _%hd114690%_
                                            _%L114774%_
                                            _%L114773%_
                                            _%L114771%_
                                            _%E114692%_)))
                                        (_%__kont114849114850%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx113598%_
                                            _%hd114690%_))))
                                    (if (gx#stx-pair? _%__stx114842114843%_)
                                        (let ((_%e114700114799%_
                                               (gx#syntax-e
                                                _%__stx114842114843%_)))
                                          (let ((_%tl114702114806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e114700114799%_)))
                                                (_%hd114701114803%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e114700114799%_))))
                                            (if (gx#stx-pair?
                                                 _%tl114702114806%_)
                                                (let ((_%e114703114809%_
                                                       (gx#syntax-e
                                                        _%tl114702114806%_)))
                                                  (let ((_%tl114705114816%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e114703114809%_)))
                                                        (_%hd114704114813%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e114703114809%_))))
                                                    (if (gx#stx-null?
                                                         _%tl114705114816%_)
                                                        (_%__kont114845114846%_
                                                         _%hd114704114813%_
                                                         _%hd114701114803%_)
                                                        (if (gx#stx-pair?
                                                             _%tl114705114816%_)
                                                            (let ((_%e114715114761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl114705114816%_)))
                      (let ((_%tl114717114768%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114715114761%_)))
                            (_%hd114716114765%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114715114761%_))))
                        (if (gx#stx-null? _%tl114717114768%_)
                            (_%__kont114847114848%_
                             _%hd114716114765%_
                             _%hd114704114813%_
                             _%hd114701114803%_)
                            (_%__kont114849114850%_))))
                    (_%__kont114849114850%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont114849114850%_))))
                                        (_%__kont114849114850%_))))))
                             (_%generate1113757%_
                              (lambda (_%where114143%_
                                       _%hd114145%_
                                       _%fender114146%_
                                       _%body114147%_
                                       _%E114148%_)
                                (letrec ((_%recur114150%_
                                          (lambda (_%hd114153%_
                                                   _%tgt114155%_
                                                   _%K114156%_)
                                            (let* ((_%__stx114888114889%_
                                                    _%hd114153%_)
                                                   (_%g114159114171%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx114888114889%_))))
                                              (let ((_%__kont114891114892%_
                                                     (lambda (_%L114480%_
                                                              _%L114482%_)
                                                       (let* ((_%g114493114501%_
                                                               (lambda (_%g114494114497%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g114494114497%_)))
                      (_%g114492114682%_
                       (lambda (_%g114494114505%_)
                         ((lambda (_%L114508%_)
                            (let* ((_%g114520114528%_
                                    (lambda (_%g114521114524%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g114521114524%_)))
                                   (_%g114519114678%_
                                    (lambda (_%g114521114532%_)
                                      ((lambda (_%L114535%_)
                                         (let* ((_%g114548114556%_
                                                 (lambda (_%g114549114552%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g114549114552%_)))
                                                (_%g114547114674%_
                                                 (lambda (_%g114549114560%_)
                                                   ((lambda (_%L114563%_)
                                                      (let* ((_%g114576114584%_
                                                              (lambda (_%g114577114580%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g114577114580%_)))
                     (_%g114575114670%_
                      (lambda (_%g114577114588%_)
                        ((lambda (_%L114591%_)
                           (let* ((_%g114604114612%_
                                   (lambda (_%g114605114608%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114605114608%_)))
                                  (_%g114603114666%_
                                   (lambda (_%g114605114616%_)
                                     ((lambda (_%L114619%_)
                                        (let* ((_%g114632114640%_
                                                (lambda (_%g114633114636%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g114633114636%_)))
                                               (_%g114631114662%_
                                                (lambda (_%g114633114644%_)
                                                  ((lambda (_%L114647%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L114508%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L114535%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L114508%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L114563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L114535%_ '()))
                                       '()))
                           (cons (cons _%L114591%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L114535%_ '()))
                                             '()))
                                 '()))
                     (cons _%L114619%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L114647%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g114633114644%_))))
                                          (_%g114631114662%_ _%E114148%_)))
                                      _%g114605114616%_))))
                             (_%g114603114666%_
                              (_%recur114150%_
                               _%L114482%_
                               _%L114563%_
                               (_%recur114150%_
                                _%L114480%_
                                _%L114591%_
                                _%K114156%_)))))
                         _%g114577114588%_))))
                (_%g114575114670%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g114549114560%_))))
                                           (_%g114547114674%_
                                            (gx#genident 'hd))))
                                       _%g114521114532%_))))
                              (_%g114519114678%_ (gx#genident 'e))))
                          _%g114494114505%_))))
                 (_%g114492114682%_ _%tgt114155%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont114893114894%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd114153%_)
                                                           (if (gx#underscore?
                                                                _%hd114153%_)
                                                               _%K114156%_
                                                               (if (let ((__tmp114960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g114185114187%_)
                                    (gx#bound-identifier=?
                                     _%g114185114187%_
                                     _%hd114153%_))))
                             (declare (not safe))
                             (__find __tmp114960 _%kws113752%_))
                           (let* ((_%g114193114208%_
                                   (lambda (_%g114194114204%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114194114204%_)))
                                  (_%g114192114261%_
                                   (lambda (_%g114194114212%_)
                                     (if (gx#stx-pair? _%g114194114212%_)
                                         (let ((_%e114197114215%_
                                                (gx#syntax-e
                                                 _%g114194114212%_)))
                                           (let ((_%hd114198114219%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114197114215%_)))
                                                 (_%tl114199114222%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114197114215%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114199114222%_)
                                                 (let ((_%e114200114225%_
                                                        (gx#syntax-e
                                                         _%tl114199114222%_)))
                                                   (let ((_%hd114201114229%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114200114225%_)))
                                                         (_%tl114202114232%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114200114225%_))))
                                                     (if (gx#stx-null?
                                                          _%tl114202114232%_)
                                                         ((lambda (_%L114235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L114237%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L114237%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L114237%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L114235%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K114156%_ (cons _%E114148%_ '())))))
                  _%hd114201114229%_
                  _%hd114198114219%_)
                 (_%g114193114208%_ _%g114194114212%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114193114208%_
                                                  _%g114194114212%_))))
                                         (_%g114193114208%_
                                          _%g114194114212%_)))))
                             (_%g114192114261%_
                              (list _%tgt114155%_ _%hd114153%_)))
                           (let* ((_%g114267114282%_
                                   (lambda (_%g114268114278%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114268114278%_)))
                                  (_%g114266114327%_
                                   (lambda (_%g114268114286%_)
                                     (if (gx#stx-pair? _%g114268114286%_)
                                         (let ((_%e114271114289%_
                                                (gx#syntax-e
                                                 _%g114268114286%_)))
                                           (let ((_%hd114272114293%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114271114289%_)))
                                                 (_%tl114273114296%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114271114289%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114273114296%_)
                                                 (let ((_%e114274114299%_
                                                        (gx#syntax-e
                                                         _%tl114273114296%_)))
                                                   (let ((_%hd114275114303%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114274114299%_)))
                                                         (_%tl114276114306%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114274114299%_))))
                                                     (if (gx#stx-null?
                                                          _%tl114276114306%_)
                                                         ((lambda (_%L114309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L114311%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L114309%_ (cons _%L114311%_ '()))
                                      '())
                                (cons _%K114156%_ '()))))
                  _%hd114275114303%_
                  _%hd114272114293%_)
                 (_%g114267114282%_ _%g114268114286%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114267114282%_
                                                  _%g114268114286%_))))
                                         (_%g114267114282%_
                                          _%g114268114286%_)))))
                             (_%g114266114327%_
                              (list _%tgt114155%_ _%hd114153%_)))))
                   (if (gx#stx-null? _%hd114153%_)
                       (let* ((_%g114333114341%_
                               (lambda (_%g114334114337%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g114334114337%_)))
                              (_%g114332114360%_
                               (lambda (_%g114334114345%_)
                                 ((lambda (_%L114348%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L114348%_ '()))
                                                (cons _%K114156%_
                                                      (cons _%E114148%_
                                                            '())))))
                                  _%g114334114345%_))))
                         (_%g114332114360%_ _%tgt114155%_))
                       (if (gx#stx-datum? _%hd114153%_)
                           (let* ((_%g114366114385%_
                                   (lambda (_%g114367114381%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114367114381%_)))
                                  (_%g114365114444%_
                                   (lambda (_%g114367114389%_)
                                     (if (gx#stx-pair? _%g114367114389%_)
                                         (let ((_%e114371114392%_
                                                (gx#syntax-e
                                                 _%g114367114389%_)))
                                           (let ((_%hd114372114396%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114371114392%_)))
                                                 (_%tl114373114399%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114371114392%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114373114399%_)
                                                 (let ((_%e114374114402%_
                                                        (gx#syntax-e
                                                         _%tl114373114399%_)))
                                                   (let ((_%hd114375114406%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114374114402%_)))
                                                         (_%tl114376114409%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114374114402%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl114376114409%_)
                                                         (let ((_%e114377114412%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl114376114409%_)))
                   (let ((_%hd114378114416%_
                          (let ()
                            (declare (not safe))
                            (##car _%e114377114412%_)))
                         (_%tl114379114419%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e114377114412%_))))
                     (if (gx#stx-null? _%tl114379114419%_)
                         ((lambda (_%L114422%_ _%L114424%_ _%L114425%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L114422%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L114425%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L114424%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K114156%_
                                              (cons _%E114148%_ '())))))
                          _%hd114378114416%_
                          _%hd114375114406%_
                          _%hd114372114396%_)
                         (_%g114366114385%_ _%g114367114389%_))))
                 (_%g114366114385%_ _%g114367114389%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114366114385%_
                                                  _%g114367114389%_))))
                                         (_%g114366114385%_
                                          _%g114367114389%_)))))
                             (_%g114365114444%_
                              (list _%tgt114155%_
                                    _%hd114153%_
                                    (let ((_%e114448%_
                                           (gx#stx-e _%hd114153%_)))
                                      (if (or (keyword? _%e114448%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e114448%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e114448%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx113598%_
                            _%where114143%_
                            _%hd114153%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx114888114889%_)
                                                    (let ((_%e114163114470%_
                                                           (gx#syntax-e
                                                            _%__stx114888114889%_)))
                                                      (let ((_%tl114165114477%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e114163114470%_)))
                    (_%hd114164114474%_
                     (let () (declare (not safe)) (##car _%e114163114470%_))))
                (_%__kont114891114892%_
                 _%tl114165114477%_
                 _%hd114164114474%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont114893114894%_)))))))
                                  (_%recur114150%_
                                   _%hd114145%_
                                   _%tgt113750%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender114146%_
                                               (cons _%body114147%_
                                                     (cons _%E114148%_
                                                           '()))))))))
                             (_%generate-clauses113758%_
                              (lambda (_%clauses113881%_)
                                (let _%lp113884%_ ((_%rest113887%_
                                                    _%clauses113881%_)
                                                   (_%E113889%_
                                                    (gx#genident 'E))
                                                   (_%r113890%_ '()))
                                  (let* ((_%__stx114924114925%_ _%rest113887%_)
                                         (_%g113893113905%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx114924114925%_))))
                                    (let ((_%__kont114927114928%_
                                           (lambda (_%L113970%_ _%L113972%_)
                                             (let* ((_%__stx114904114905%_
                                                     _%L113972%_)
                                                    (_%g113984113995%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx114904114905%_))))
                                               (let ((_%__kont114907114908%_
                                                      (lambda (_%L114124%_)
                                                        (if (gx#stx-null?
                                                             _%L113970%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L114124%_)
                             (not (gx#stx-null? _%L114124%_)))
                        (cons (cons _%E113889%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L114124%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L113972%_))
                                          '()))
                              _%r113890%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx113598%_
                         _%L113972%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx113598%_
                     _%L113972%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont114909114910%_
                                                      (lambda ()
                                                        (let* ((_%g114006114014%_
                                                                (lambda (_%g114007114010%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g114007114010%_)))
                       (_%g114005114103%_
                        (lambda (_%g114007114018%_)
                          ((lambda (_%L114021%_)
                             (let* ((_%g114037114045%_
                                     (lambda (_%g114038114041%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g114038114041%_)))
                                    (_%g114036114099%_
                                     (lambda (_%g114038114049%_)
                                       ((lambda (_%L114052%_)
                                          (let* ((_%g114065114073%_
                                                  (lambda (_%g114066114069%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g114066114069%_)))
                                                 (_%g114064114095%_
                                                  (lambda (_%g114066114077%_)
                                                    ((lambda (_%L114080%_)
                                                       (_%lp113884%_
                                                        _%L113970%_
                                                        _%L114021%_
                                                        (cons (cons _%E113889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L114080%_ '()))
                      _%r113890%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g114066114077%_))))
                                            (_%g114064114095%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L114052%_
                                                                '())))
                                              (gx#stx-source _%L113972%_)))))
                                        _%g114038114049%_))))
                               (_%g114036114099%_
                                (_%generate-clause113755%_
                                 _%L113972%_
                                 (cons _%L114021%_ '())))))
                           _%g114007114018%_))))
                  (_%g114005114103%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx114904114905%_)
                                                     (let ((_%e113987114114%_
                                                            (gx#syntax-e
                                                             _%__stx114904114905%_)))
                                                       (let ((_%tl113989114121%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e113987114114%_)))
                     (_%hd113988114118%_
                      (let () (declare (not safe)) (##car _%e113987114114%_))))
                 (if (gx#identifier? _%hd113988114118%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g114961_|
                          _%hd113988114118%_)
                         (_%__kont114907114908%_ _%tl113989114121%_)
                         (_%__kont114909114910%_))
                     (_%__kont114909114910%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont114909114910%_))))))
                                          (_%__kont114929114930%_
                                           (lambda ()
                                             (let* ((_%g113916113924%_
                                                     (lambda (_%g113917113920%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g113917113920%_)))
                                                    (_%g113915113949%_
                                                     (lambda (_%g113917113928%_)
                                                       ((lambda (_%L113931%_)
                                                          (cons (cons _%E113889%_
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
                                 (cons _%L113931%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx113598%_))
                                    '()))
                        _%r113890%_))
                _%g113917113928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g113915113949%_
                                                _%tgt113750%_)))))
                                      (if (gx#stx-pair? _%__stx114924114925%_)
                                          (let ((_%e113897113960%_
                                                 (gx#syntax-e
                                                  _%__stx114924114925%_)))
                                            (let ((_%tl113899113967%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e113897113960%_)))
                                                  (_%hd113898113964%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e113897113960%_))))
                                              (_%__kont114927114928%_
                                               _%tl113899113967%_
                                               _%hd113898113964%_)))
                                          (_%__kont114929114930%_))))))))
                      (let* ((_%bind113760%_
                              (_%generate-clauses113758%_ _%clauses113753%_))
                             (_%g113763113780%_
                              (lambda (_%g113764113776%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g113764113776%_)))
                             (_%g113762113877%_
                              (lambda (_%g113764113784%_)
                                (if (gx#stx-pair/null? _%g113764113784%_)
                                    (let ((_g114962_
                                           (gx#syntax-split-splice
                                            _%g113764113784%_
                                            '0)))
                                      (begin
                                        (let ((_g114963_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g114962_)
                                                     (##vector-length
                                                      _g114962_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g114963_ 2)))
                                              (error "Context expects 2 values"
                                                     _g114963_)))
                                        (let ((_%target113766113787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g114962_ 0)))
                                              (_%tl113768113790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g114962_ 1))))
                                          (if (gx#stx-null? _%tl113768113790%_)
                                              (letrec ((_%loop113769113793%_
                                                        (lambda (_%hd113767113797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try113773113800%_)
                  (if (gx#stx-pair? _%hd113767113797%_)
                      (let ((_%e113770113803%_
                             (gx#syntax-e _%hd113767113797%_)))
                        (let ((_%lp-hd113771113807%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e113770113803%_)))
                              (_%lp-tl113772113810%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e113770113803%_))))
                          (_%loop113769113793%_
                           _%lp-tl113772113810%_
                           (cons _%lp-hd113771113807%_
                                 _%bind-try113773113800%_))))
                      (let ((_%bind-try113774113813%_
                             (reverse _%bind-try113773113800%_)))
                        ((lambda (_%L113817%_)
                           (let* ((_%g113835113843%_
                                   (lambda (_%g113836113839%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g113836113839%_)))
                                  (_%g113834113873%_
                                   (lambda (_%g113836113847%_)
                                     ((lambda (_%L113850%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp114964
                                                           (lambda (_%g113864113867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g113865113870%_)
                     (cons _%g113864113867%_ _%g113865113870%_))))
              (declare (not safe))
              (__foldr1 __tmp114964 '() _%L113817%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L113850%_
                                                                '())
                                                          '()))))
                                      _%g113836113847%_))))
                             (_%g113834113873%_ (car (last _%bind113760%_)))))
                         _%bind-try113774113813%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop113769113793%_
                                                 _%target113766113787%_
                                                 '()))
                                              (_%g113763113780%_
                                               _%g113764113784%_)))))
                                    (_%g113763113780%_ _%g113764113784%_)))))
                        (_%g113762113877%_ _%bind113760%_))))))
          (let* ((_%g113604113623%_
                  (lambda (_%g113605113619%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g113605113619%_)))
                 (_%g113603113746%_
                  (lambda (_%g113605113627%_)
                    (if (gx#stx-pair? _%g113605113627%_)
                        (let ((_%e113609113630%_
                               (gx#syntax-e _%g113605113627%_)))
                          (let ((_%hd113610113634%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e113609113630%_)))
                                (_%tl113611113637%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e113609113630%_))))
                            (if (gx#stx-pair? _%tl113611113637%_)
                                (let ((_%e113612113640%_
                                       (gx#syntax-e _%tl113611113637%_)))
                                  (let ((_%hd113613113644%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e113612113640%_)))
                                        (_%tl113614113647%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e113612113640%_))))
                                    (if (gx#stx-pair? _%tl113614113647%_)
                                        (let ((_%e113615113650%_
                                               (gx#syntax-e
                                                _%tl113614113647%_)))
                                          (let ((_%hd113616113654%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e113615113650%_)))
                                                (_%tl113617113657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e113615113650%_))))
                                            ((lambda (_%L113660%_
                                                      _%L113662%_
                                                      _%L113663%_)
                                               (if (and (gx#identifier-list?
                                                         _%L113662%_)
                                                        (gx#stx-list?
                                                         _%L113660%_))
                                                   (let* ((_%g113681113689%_
                                                           (lambda (_%g113682113685%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g113682113685%_)))
                                                          (_%g113680113742%_
                                                           (lambda (_%g113682113693%_)
                                                             ((lambda (_%L113696%_)
                                                                (let* ((_%g113708113716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g113709113712%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g113709113712%_)))
                               (_%g113707113738%_
                                (lambda (_%g113709113720%_)
                                  ((lambda (_%L113723%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L113696%_
                                                             (cons _%L113663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L113723%_ '()))))
                                   _%g113709113720%_))))
                          (_%g113707113738%_
                           (_%generate113601%_
                            _%L113696%_
                            (gx#syntax->list _%L113662%_)
                            _%L113660%_))))
                      _%g113682113693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g113680113742%_
                                                      (gx#genident 'e)))
                                                   (_%g113604113623%_
                                                    _%g113605113627%_)))
                                             _%tl113617113657%_
                                             _%hd113616113654%_
                                             _%hd113613113644%_)))
                                        (_%g113604113623%_
                                         _%g113605113627%_))))
                                (_%g113604113623%_ _%g113605113627%_))))
                        (_%g113604113623%_ _%g113605113627%_)))))
            (_%g113603113746%_ _%stx113598%_)))))))
