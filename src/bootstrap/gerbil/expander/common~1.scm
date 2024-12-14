(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g117160_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117162_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117164_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117166_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117167_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117169_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117170_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117172_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117173_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117175_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117176_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117178_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj117156
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
          (##unchecked-structure-set! __obj117156 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117156 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117156 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117156 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117156 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117156 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117156 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117156 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117156 '#f '11 '#f '#f))
        (let ((__tmp117159 |gx[1]#_g117160_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117156 __tmp117159 '12 '#f '#f))
        (let ((__tmp117161 |gx[1]#_g117162_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117156 __tmp117161 '13 '#f '#f))
        (let ((__tmp117163 |gx[1]#_g117164_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117156 __tmp117163 '14 '#f '#f))
        (let ((__tmp117165
               (cons (cons 'e |gx[1]#_g117166_|)
                     (cons (cons 'source |gx[1]#_g117167_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117156 __tmp117165 '15 '#f '#f))
        (let ((__tmp117168
               (cons (cons 'e |gx[1]#_g117169_|)
                     (cons (cons 'source |gx[1]#_g117170_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117156 __tmp117168 '16 '#f '#f))
        (let ((__tmp117171
               (cons (cons 'e |gx[1]#_g117172_|)
                     (cons (cons 'source |gx[1]#_g117173_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117156 __tmp117171 '17 '#f '#f))
        (let ((__tmp117174
               (cons (cons 'e |gx[1]#_g117175_|)
                     (cons (cons 'source |gx[1]#_g117176_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117156 __tmp117174 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117156 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117156 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117156 '() '20 '#f '#f))
        __obj117156))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx115751%_)
        (let* ((_%g115755115769%_
                (lambda (_%g115756115765%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g115756115765%_)))
               (_%g115754115811%_
                (lambda (_%g115756115773%_)
                  (if (gx#stx-pair? _%g115756115773%_)
                      (let ((_%e115758115776%_
                             (gx#syntax-e _%g115756115773%_)))
                        (let ((_%hd115759115780%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e115758115776%_)))
                              (_%tl115760115783%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e115758115776%_))))
                          (if (gx#stx-pair? _%tl115760115783%_)
                              (let ((_%e115761115786%_
                                     (gx#syntax-e _%tl115760115783%_)))
                                (let ((_%hd115762115790%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e115761115786%_)))
                                      (_%tl115763115793%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e115761115786%_))))
                                  (if (gx#stx-null? _%tl115763115793%_)
                                      ((lambda (_%L115796%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L115796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L115796%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd115762115790%_)
                                      (_%g115755115769%_ _%g115756115773%_))))
                              (_%g115755115769%_ _%g115756115773%_))))
                      (_%g115755115769%_ _%g115756115773%_)))))
          (_%g115754115811%_ _%$stx115751%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx115815%_)
        (letrec ((_%generate115818%_
                  (lambda (_%tgt115967%_ _%kws115969%_ _%clauses115970%_)
                    (letrec ((_%generate-clause115972%_
                              (lambda (_%hd116907%_ _%E116909%_)
                                (let* ((_%__stx117059117060%_ _%hd116907%_)
                                       (_%g116913116940%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx117059117060%_))))
                                  (let ((_%__kont117062117063%_
                                         (lambda (_%L117036%_ _%L117038%_)
                                           (_%generate1115974%_
                                            _%hd116907%_
                                            _%L117038%_
                                            '#t
                                            _%L117036%_
                                            _%E116909%_)))
                                        (_%__kont117064117065%_
                                         (lambda (_%L116988%_
                                                  _%L116990%_
                                                  _%L116991%_)
                                           (_%generate1115974%_
                                            _%hd116907%_
                                            _%L116991%_
                                            _%L116990%_
                                            _%L116988%_
                                            _%E116909%_)))
                                        (_%__kont117066117067%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx115815%_
                                            _%hd116907%_))))
                                    (if (gx#stx-pair? _%__stx117059117060%_)
                                        (let ((_%e116917117016%_
                                               (gx#syntax-e
                                                _%__stx117059117060%_)))
                                          (let ((_%tl116919117023%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e116917117016%_)))
                                                (_%hd116918117020%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e116917117016%_))))
                                            (if (gx#stx-pair?
                                                 _%tl116919117023%_)
                                                (let ((_%e116920117026%_
                                                       (gx#syntax-e
                                                        _%tl116919117023%_)))
                                                  (let ((_%tl116922117033%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e116920117026%_)))
                                                        (_%hd116921117030%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e116920117026%_))))
                                                    (if (gx#stx-null?
                                                         _%tl116922117033%_)
                                                        (_%__kont117062117063%_
                                                         _%hd116921117030%_
                                                         _%hd116918117020%_)
                                                        (if (gx#stx-pair?
                                                             _%tl116922117033%_)
                                                            (let ((_%e116932116978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl116922117033%_)))
                      (let ((_%tl116934116985%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116932116978%_)))
                            (_%hd116933116982%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116932116978%_))))
                        (if (gx#stx-null? _%tl116934116985%_)
                            (_%__kont117064117065%_
                             _%hd116933116982%_
                             _%hd116921117030%_
                             _%hd116918117020%_)
                            (_%__kont117066117067%_))))
                    (_%__kont117066117067%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont117066117067%_))))
                                        (_%__kont117066117067%_))))))
                             (_%generate1115974%_
                              (lambda (_%where116360%_
                                       _%hd116362%_
                                       _%fender116363%_
                                       _%body116364%_
                                       _%E116365%_)
                                (letrec ((_%recur116367%_
                                          (lambda (_%hd116370%_
                                                   _%tgt116372%_
                                                   _%K116373%_)
                                            (let* ((_%__stx117105117106%_
                                                    _%hd116370%_)
                                                   (_%g116376116388%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx117105117106%_))))
                                              (let ((_%__kont117108117109%_
                                                     (lambda (_%L116697%_
                                                              _%L116699%_)
                                                       (let* ((_%g116710116718%_
                                                               (lambda (_%g116711116714%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g116711116714%_)))
                      (_%g116709116899%_
                       (lambda (_%g116711116722%_)
                         ((lambda (_%L116725%_)
                            (let* ((_%g116737116745%_
                                    (lambda (_%g116738116741%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g116738116741%_)))
                                   (_%g116736116895%_
                                    (lambda (_%g116738116749%_)
                                      ((lambda (_%L116752%_)
                                         (let* ((_%g116765116773%_
                                                 (lambda (_%g116766116769%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g116766116769%_)))
                                                (_%g116764116891%_
                                                 (lambda (_%g116766116777%_)
                                                   ((lambda (_%L116780%_)
                                                      (let* ((_%g116793116801%_
                                                              (lambda (_%g116794116797%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g116794116797%_)))
                     (_%g116792116887%_
                      (lambda (_%g116794116805%_)
                        ((lambda (_%L116808%_)
                           (let* ((_%g116821116829%_
                                   (lambda (_%g116822116825%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116822116825%_)))
                                  (_%g116820116883%_
                                   (lambda (_%g116822116833%_)
                                     ((lambda (_%L116836%_)
                                        (let* ((_%g116849116857%_
                                                (lambda (_%g116850116853%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g116850116853%_)))
                                               (_%g116848116879%_
                                                (lambda (_%g116850116861%_)
                                                  ((lambda (_%L116864%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L116725%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L116752%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L116725%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L116780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L116752%_ '()))
                                       '()))
                           (cons (cons _%L116808%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L116752%_ '()))
                                             '()))
                                 '()))
                     (cons _%L116836%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L116864%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g116850116861%_))))
                                          (_%g116848116879%_ _%E116365%_)))
                                      _%g116822116833%_))))
                             (_%g116820116883%_
                              (_%recur116367%_
                               _%L116699%_
                               _%L116780%_
                               (_%recur116367%_
                                _%L116697%_
                                _%L116808%_
                                _%K116373%_)))))
                         _%g116794116805%_))))
                (_%g116792116887%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g116766116777%_))))
                                           (_%g116764116891%_
                                            (gx#genident 'hd))))
                                       _%g116738116749%_))))
                              (_%g116736116895%_ (gx#genident 'e))))
                          _%g116711116722%_))))
                 (_%g116709116899%_ _%tgt116372%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont117110117111%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd116370%_)
                                                           (if (gx#underscore?
                                                                _%hd116370%_)
                                                               _%K116373%_
                                                               (if (let ((__tmp117177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g116402116404%_)
                                    (gx#bound-identifier=?
                                     _%g116402116404%_
                                     _%hd116370%_))))
                             (declare (not safe))
                             (__find __tmp117177 _%kws115969%_))
                           (let* ((_%g116410116425%_
                                   (lambda (_%g116411116421%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116411116421%_)))
                                  (_%g116409116478%_
                                   (lambda (_%g116411116429%_)
                                     (if (gx#stx-pair? _%g116411116429%_)
                                         (let ((_%e116414116432%_
                                                (gx#syntax-e
                                                 _%g116411116429%_)))
                                           (let ((_%hd116415116436%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e116414116432%_)))
                                                 (_%tl116416116439%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e116414116432%_))))
                                             (if (gx#stx-pair?
                                                  _%tl116416116439%_)
                                                 (let ((_%e116417116442%_
                                                        (gx#syntax-e
                                                         _%tl116416116439%_)))
                                                   (let ((_%hd116418116446%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e116417116442%_)))
                                                         (_%tl116419116449%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e116417116442%_))))
                                                     (if (gx#stx-null?
                                                          _%tl116419116449%_)
                                                         ((lambda (_%L116452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L116454%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L116454%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L116454%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L116452%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K116373%_ (cons _%E116365%_ '())))))
                  _%hd116418116446%_
                  _%hd116415116436%_)
                 (_%g116410116425%_ _%g116411116429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g116410116425%_
                                                  _%g116411116429%_))))
                                         (_%g116410116425%_
                                          _%g116411116429%_)))))
                             (_%g116409116478%_
                              (list _%tgt116372%_ _%hd116370%_)))
                           (let* ((_%g116484116499%_
                                   (lambda (_%g116485116495%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116485116495%_)))
                                  (_%g116483116544%_
                                   (lambda (_%g116485116503%_)
                                     (if (gx#stx-pair? _%g116485116503%_)
                                         (let ((_%e116488116506%_
                                                (gx#syntax-e
                                                 _%g116485116503%_)))
                                           (let ((_%hd116489116510%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e116488116506%_)))
                                                 (_%tl116490116513%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e116488116506%_))))
                                             (if (gx#stx-pair?
                                                  _%tl116490116513%_)
                                                 (let ((_%e116491116516%_
                                                        (gx#syntax-e
                                                         _%tl116490116513%_)))
                                                   (let ((_%hd116492116520%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e116491116516%_)))
                                                         (_%tl116493116523%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e116491116516%_))))
                                                     (if (gx#stx-null?
                                                          _%tl116493116523%_)
                                                         ((lambda (_%L116526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L116528%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L116526%_ (cons _%L116528%_ '()))
                                      '())
                                (cons _%K116373%_ '()))))
                  _%hd116492116520%_
                  _%hd116489116510%_)
                 (_%g116484116499%_ _%g116485116503%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g116484116499%_
                                                  _%g116485116503%_))))
                                         (_%g116484116499%_
                                          _%g116485116503%_)))))
                             (_%g116483116544%_
                              (list _%tgt116372%_ _%hd116370%_)))))
                   (if (gx#stx-null? _%hd116370%_)
                       (let* ((_%g116550116558%_
                               (lambda (_%g116551116554%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g116551116554%_)))
                              (_%g116549116577%_
                               (lambda (_%g116551116562%_)
                                 ((lambda (_%L116565%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L116565%_ '()))
                                                (cons _%K116373%_
                                                      (cons _%E116365%_
                                                            '())))))
                                  _%g116551116562%_))))
                         (_%g116549116577%_ _%tgt116372%_))
                       (if (gx#stx-datum? _%hd116370%_)
                           (let* ((_%g116583116602%_
                                   (lambda (_%g116584116598%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116584116598%_)))
                                  (_%g116582116661%_
                                   (lambda (_%g116584116606%_)
                                     (if (gx#stx-pair? _%g116584116606%_)
                                         (let ((_%e116588116609%_
                                                (gx#syntax-e
                                                 _%g116584116606%_)))
                                           (let ((_%hd116589116613%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e116588116609%_)))
                                                 (_%tl116590116616%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e116588116609%_))))
                                             (if (gx#stx-pair?
                                                  _%tl116590116616%_)
                                                 (let ((_%e116591116619%_
                                                        (gx#syntax-e
                                                         _%tl116590116616%_)))
                                                   (let ((_%hd116592116623%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e116591116619%_)))
                                                         (_%tl116593116626%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e116591116619%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl116593116626%_)
                                                         (let ((_%e116594116629%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl116593116626%_)))
                   (let ((_%hd116595116633%_
                          (let ()
                            (declare (not safe))
                            (##car _%e116594116629%_)))
                         (_%tl116596116636%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e116594116629%_))))
                     (if (gx#stx-null? _%tl116596116636%_)
                         ((lambda (_%L116639%_ _%L116641%_ _%L116642%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L116639%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L116642%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L116641%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K116373%_
                                              (cons _%E116365%_ '())))))
                          _%hd116595116633%_
                          _%hd116592116623%_
                          _%hd116589116613%_)
                         (_%g116583116602%_ _%g116584116606%_))))
                 (_%g116583116602%_ _%g116584116606%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g116583116602%_
                                                  _%g116584116606%_))))
                                         (_%g116583116602%_
                                          _%g116584116606%_)))))
                             (_%g116582116661%_
                              (list _%tgt116372%_
                                    _%hd116370%_
                                    (let ((_%e116665%_
                                           (gx#stx-e _%hd116370%_)))
                                      (if (or (keyword? _%e116665%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e116665%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e116665%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx115815%_
                            _%where116360%_
                            _%hd116370%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx117105117106%_)
                                                    (let ((_%e116380116687%_
                                                           (gx#syntax-e
                                                            _%__stx117105117106%_)))
                                                      (let ((_%tl116382116694%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e116380116687%_)))
                    (_%hd116381116691%_
                     (let () (declare (not safe)) (##car _%e116380116687%_))))
                (_%__kont117108117109%_
                 _%tl116382116694%_
                 _%hd116381116691%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont117110117111%_)))))))
                                  (_%recur116367%_
                                   _%hd116362%_
                                   _%tgt115967%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender116363%_
                                               (cons _%body116364%_
                                                     (cons _%E116365%_
                                                           '()))))))))
                             (_%generate-clauses115975%_
                              (lambda (_%clauses116098%_)
                                (let _%lp116101%_ ((_%rest116104%_
                                                    _%clauses116098%_)
                                                   (_%E116106%_
                                                    (gx#genident 'E))
                                                   (_%r116107%_ '()))
                                  (let* ((_%__stx117141117142%_ _%rest116104%_)
                                         (_%g116110116122%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx117141117142%_))))
                                    (let ((_%__kont117144117145%_
                                           (lambda (_%L116187%_ _%L116189%_)
                                             (let* ((_%__stx117121117122%_
                                                     _%L116189%_)
                                                    (_%g116201116212%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx117121117122%_))))
                                               (let ((_%__kont117124117125%_
                                                      (lambda (_%L116341%_)
                                                        (if (gx#stx-null?
                                                             _%L116187%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L116341%_)
                             (not (gx#stx-null? _%L116341%_)))
                        (cons (cons _%E116106%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L116341%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L116189%_))
                                          '()))
                              _%r116107%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx115815%_
                         _%L116189%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx115815%_
                     _%L116189%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont117126117127%_
                                                      (lambda ()
                                                        (let* ((_%g116223116231%_
                                                                (lambda (_%g116224116227%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g116224116227%_)))
                       (_%g116222116320%_
                        (lambda (_%g116224116235%_)
                          ((lambda (_%L116238%_)
                             (let* ((_%g116254116262%_
                                     (lambda (_%g116255116258%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g116255116258%_)))
                                    (_%g116253116316%_
                                     (lambda (_%g116255116266%_)
                                       ((lambda (_%L116269%_)
                                          (let* ((_%g116282116290%_
                                                  (lambda (_%g116283116286%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g116283116286%_)))
                                                 (_%g116281116312%_
                                                  (lambda (_%g116283116294%_)
                                                    ((lambda (_%L116297%_)
                                                       (_%lp116101%_
                                                        _%L116187%_
                                                        _%L116238%_
                                                        (cons (cons _%E116106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L116297%_ '()))
                      _%r116107%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g116283116294%_))))
                                            (_%g116281116312%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L116269%_
                                                                '())))
                                              (gx#stx-source _%L116189%_)))))
                                        _%g116255116266%_))))
                               (_%g116253116316%_
                                (_%generate-clause115972%_
                                 _%L116189%_
                                 (cons _%L116238%_ '())))))
                           _%g116224116235%_))))
                  (_%g116222116320%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx117121117122%_)
                                                     (let ((_%e116204116331%_
                                                            (gx#syntax-e
                                                             _%__stx117121117122%_)))
                                                       (let ((_%tl116206116338%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e116204116331%_)))
                     (_%hd116205116335%_
                      (let () (declare (not safe)) (##car _%e116204116331%_))))
                 (if (gx#identifier? _%hd116205116335%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g117178_|
                          _%hd116205116335%_)
                         (_%__kont117124117125%_ _%tl116206116338%_)
                         (_%__kont117126117127%_))
                     (_%__kont117126117127%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont117126117127%_))))))
                                          (_%__kont117146117147%_
                                           (lambda ()
                                             (let* ((_%g116133116141%_
                                                     (lambda (_%g116134116137%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g116134116137%_)))
                                                    (_%g116132116166%_
                                                     (lambda (_%g116134116145%_)
                                                       ((lambda (_%L116148%_)
                                                          (cons (cons _%E116106%_
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
                                 (cons _%L116148%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx115815%_))
                                    '()))
                        _%r116107%_))
                _%g116134116145%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g116132116166%_
                                                _%tgt115967%_)))))
                                      (if (gx#stx-pair? _%__stx117141117142%_)
                                          (let ((_%e116114116177%_
                                                 (gx#syntax-e
                                                  _%__stx117141117142%_)))
                                            (let ((_%tl116116116184%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e116114116177%_)))
                                                  (_%hd116115116181%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e116114116177%_))))
                                              (_%__kont117144117145%_
                                               _%tl116116116184%_
                                               _%hd116115116181%_)))
                                          (_%__kont117146117147%_))))))))
                      (let* ((_%bind115977%_
                              (_%generate-clauses115975%_ _%clauses115970%_))
                             (_%g115980115997%_
                              (lambda (_%g115981115993%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g115981115993%_)))
                             (_%g115979116094%_
                              (lambda (_%g115981116001%_)
                                (if (gx#stx-pair/null? _%g115981116001%_)
                                    (let ((_g117179_
                                           (gx#syntax-split-splice
                                            _%g115981116001%_
                                            '0)))
                                      (begin
                                        (let ((_g117180_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g117179_)
                                                     (##values-length
                                                      _g117179_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g117180_ 2)))
                                              (error "Context expects 2 values"
                                                     _g117180_)))
                                        (let ((_%target115983116004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g117179_ 0)))
                                              (_%tl115985116007%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g117179_ 1))))
                                          (if (gx#stx-null? _%tl115985116007%_)
                                              (letrec ((_%loop115986116010%_
                                                        (lambda (_%hd115984116014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try115990116017%_)
                  (if (gx#stx-pair? _%hd115984116014%_)
                      (let ((_%e115987116020%_
                             (gx#syntax-e _%hd115984116014%_)))
                        (let ((_%lp-hd115988116024%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e115987116020%_)))
                              (_%lp-tl115989116027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e115987116020%_))))
                          (_%loop115986116010%_
                           _%lp-tl115989116027%_
                           (cons _%lp-hd115988116024%_
                                 _%bind-try115990116017%_))))
                      (let ((_%bind-try115991116030%_
                             (reverse _%bind-try115990116017%_)))
                        ((lambda (_%L116034%_)
                           (let* ((_%g116052116060%_
                                   (lambda (_%g116053116056%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116053116056%_)))
                                  (_%g116051116090%_
                                   (lambda (_%g116053116064%_)
                                     ((lambda (_%L116067%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp117181
                                                           (lambda (_%g116081116084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g116082116087%_)
                     (cons _%g116081116084%_ _%g116082116087%_))))
              (declare (not safe))
              (__foldr1 __tmp117181 '() _%L116034%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L116067%_
                                                                '())
                                                          '()))))
                                      _%g116053116064%_))))
                             (_%g116051116090%_ (car (last _%bind115977%_)))))
                         _%bind-try115991116030%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop115986116010%_
                                                 _%target115983116004%_
                                                 '()))
                                              (_%g115980115997%_
                                               _%g115981116001%_)))))
                                    (_%g115980115997%_ _%g115981116001%_)))))
                        (_%g115979116094%_ _%bind115977%_))))))
          (let* ((_%g115821115840%_
                  (lambda (_%g115822115836%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g115822115836%_)))
                 (_%g115820115963%_
                  (lambda (_%g115822115844%_)
                    (if (gx#stx-pair? _%g115822115844%_)
                        (let ((_%e115826115847%_
                               (gx#syntax-e _%g115822115844%_)))
                          (let ((_%hd115827115851%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e115826115847%_)))
                                (_%tl115828115854%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e115826115847%_))))
                            (if (gx#stx-pair? _%tl115828115854%_)
                                (let ((_%e115829115857%_
                                       (gx#syntax-e _%tl115828115854%_)))
                                  (let ((_%hd115830115861%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e115829115857%_)))
                                        (_%tl115831115864%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e115829115857%_))))
                                    (if (gx#stx-pair? _%tl115831115864%_)
                                        (let ((_%e115832115867%_
                                               (gx#syntax-e
                                                _%tl115831115864%_)))
                                          (let ((_%hd115833115871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e115832115867%_)))
                                                (_%tl115834115874%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e115832115867%_))))
                                            ((lambda (_%L115877%_
                                                      _%L115879%_
                                                      _%L115880%_)
                                               (if (and (gx#identifier-list?
                                                         _%L115879%_)
                                                        (gx#stx-list?
                                                         _%L115877%_))
                                                   (let* ((_%g115898115906%_
                                                           (lambda (_%g115899115902%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g115899115902%_)))
                                                          (_%g115897115959%_
                                                           (lambda (_%g115899115910%_)
                                                             ((lambda (_%L115913%_)
                                                                (let* ((_%g115925115933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g115926115929%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g115926115929%_)))
                               (_%g115924115955%_
                                (lambda (_%g115926115937%_)
                                  ((lambda (_%L115940%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L115913%_
                                                             (cons _%L115880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L115940%_ '()))))
                                   _%g115926115937%_))))
                          (_%g115924115955%_
                           (_%generate115818%_
                            _%L115913%_
                            (gx#syntax->list _%L115879%_)
                            _%L115877%_))))
                      _%g115899115910%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g115897115959%_
                                                      (gx#genident 'e)))
                                                   (_%g115821115840%_
                                                    _%g115822115844%_)))
                                             _%tl115834115874%_
                                             _%hd115833115871%_
                                             _%hd115830115861%_)))
                                        (_%g115821115840%_
                                         _%g115822115844%_))))
                                (_%g115821115840%_ _%g115822115844%_))))
                        (_%g115821115840%_ _%g115822115844%_)))))
            (_%g115820115963%_ _%stx115815%_)))))))
