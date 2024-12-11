(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g116952_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116954_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116956_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116958_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116959_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116961_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116962_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116964_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116965_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116967_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116968_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116970_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj116948
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
          (##unchecked-structure-set! __obj116948 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116948 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116948 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116948 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116948 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116948 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116948 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116948 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116948 '#f '11 '#f '#f))
        (let ((__tmp116951 |gx[1]#_g116952_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj116948 __tmp116951 '12 '#f '#f))
        (let ((__tmp116953 |gx[1]#_g116954_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj116948 __tmp116953 '13 '#f '#f))
        (let ((__tmp116955 |gx[1]#_g116956_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj116948 __tmp116955 '14 '#f '#f))
        (let ((__tmp116957
               (cons (cons 'e |gx[1]#_g116958_|)
                     (cons (cons 'source |gx[1]#_g116959_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj116948 __tmp116957 '15 '#f '#f))
        (let ((__tmp116960
               (cons (cons 'e |gx[1]#_g116961_|)
                     (cons (cons 'source |gx[1]#_g116962_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj116948 __tmp116960 '16 '#f '#f))
        (let ((__tmp116963
               (cons (cons 'e |gx[1]#_g116964_|)
                     (cons (cons 'source |gx[1]#_g116965_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj116948 __tmp116963 '17 '#f '#f))
        (let ((__tmp116966
               (cons (cons 'e |gx[1]#_g116967_|)
                     (cons (cons 'source |gx[1]#_g116968_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj116948 __tmp116966 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116948 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116948 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116948 '() '20 '#f '#f))
        __obj116948))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx115543%_)
        (let* ((_%g115547115561%_
                (lambda (_%g115548115557%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g115548115557%_)))
               (_%g115546115603%_
                (lambda (_%g115548115565%_)
                  (if (gx#stx-pair? _%g115548115565%_)
                      (let ((_%e115550115568%_
                             (gx#syntax-e _%g115548115565%_)))
                        (let ((_%hd115551115572%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e115550115568%_)))
                              (_%tl115552115575%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e115550115568%_))))
                          (if (gx#stx-pair? _%tl115552115575%_)
                              (let ((_%e115553115578%_
                                     (gx#syntax-e _%tl115552115575%_)))
                                (let ((_%hd115554115582%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e115553115578%_)))
                                      (_%tl115555115585%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e115553115578%_))))
                                  (if (gx#stx-null? _%tl115555115585%_)
                                      ((lambda (_%L115588%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L115588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L115588%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd115554115582%_)
                                      (_%g115547115561%_ _%g115548115565%_))))
                              (_%g115547115561%_ _%g115548115565%_))))
                      (_%g115547115561%_ _%g115548115565%_)))))
          (_%g115546115603%_ _%$stx115543%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx115607%_)
        (letrec ((_%generate115610%_
                  (lambda (_%tgt115759%_ _%kws115761%_ _%clauses115762%_)
                    (letrec ((_%generate-clause115764%_
                              (lambda (_%hd116699%_ _%E116701%_)
                                (let* ((_%__stx116851116852%_ _%hd116699%_)
                                       (_%g116705116732%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx116851116852%_))))
                                  (let ((_%__kont116854116855%_
                                         (lambda (_%L116828%_ _%L116830%_)
                                           (_%generate1115766%_
                                            _%hd116699%_
                                            _%L116830%_
                                            '#t
                                            _%L116828%_
                                            _%E116701%_)))
                                        (_%__kont116856116857%_
                                         (lambda (_%L116780%_
                                                  _%L116782%_
                                                  _%L116783%_)
                                           (_%generate1115766%_
                                            _%hd116699%_
                                            _%L116783%_
                                            _%L116782%_
                                            _%L116780%_
                                            _%E116701%_)))
                                        (_%__kont116858116859%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx115607%_
                                            _%hd116699%_))))
                                    (if (gx#stx-pair? _%__stx116851116852%_)
                                        (let ((_%e116709116808%_
                                               (gx#syntax-e
                                                _%__stx116851116852%_)))
                                          (let ((_%tl116711116815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e116709116808%_)))
                                                (_%hd116710116812%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e116709116808%_))))
                                            (if (gx#stx-pair?
                                                 _%tl116711116815%_)
                                                (let ((_%e116712116818%_
                                                       (gx#syntax-e
                                                        _%tl116711116815%_)))
                                                  (let ((_%tl116714116825%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e116712116818%_)))
                                                        (_%hd116713116822%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e116712116818%_))))
                                                    (if (gx#stx-null?
                                                         _%tl116714116825%_)
                                                        (_%__kont116854116855%_
                                                         _%hd116713116822%_
                                                         _%hd116710116812%_)
                                                        (if (gx#stx-pair?
                                                             _%tl116714116825%_)
                                                            (let ((_%e116724116770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl116714116825%_)))
                      (let ((_%tl116726116777%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116724116770%_)))
                            (_%hd116725116774%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116724116770%_))))
                        (if (gx#stx-null? _%tl116726116777%_)
                            (_%__kont116856116857%_
                             _%hd116725116774%_
                             _%hd116713116822%_
                             _%hd116710116812%_)
                            (_%__kont116858116859%_))))
                    (_%__kont116858116859%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont116858116859%_))))
                                        (_%__kont116858116859%_))))))
                             (_%generate1115766%_
                              (lambda (_%where116152%_
                                       _%hd116154%_
                                       _%fender116155%_
                                       _%body116156%_
                                       _%E116157%_)
                                (letrec ((_%recur116159%_
                                          (lambda (_%hd116162%_
                                                   _%tgt116164%_
                                                   _%K116165%_)
                                            (let* ((_%__stx116897116898%_
                                                    _%hd116162%_)
                                                   (_%g116168116180%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx116897116898%_))))
                                              (let ((_%__kont116900116901%_
                                                     (lambda (_%L116489%_
                                                              _%L116491%_)
                                                       (let* ((_%g116502116510%_
                                                               (lambda (_%g116503116506%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g116503116506%_)))
                      (_%g116501116691%_
                       (lambda (_%g116503116514%_)
                         ((lambda (_%L116517%_)
                            (let* ((_%g116529116537%_
                                    (lambda (_%g116530116533%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g116530116533%_)))
                                   (_%g116528116687%_
                                    (lambda (_%g116530116541%_)
                                      ((lambda (_%L116544%_)
                                         (let* ((_%g116557116565%_
                                                 (lambda (_%g116558116561%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g116558116561%_)))
                                                (_%g116556116683%_
                                                 (lambda (_%g116558116569%_)
                                                   ((lambda (_%L116572%_)
                                                      (let* ((_%g116585116593%_
                                                              (lambda (_%g116586116589%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g116586116589%_)))
                     (_%g116584116679%_
                      (lambda (_%g116586116597%_)
                        ((lambda (_%L116600%_)
                           (let* ((_%g116613116621%_
                                   (lambda (_%g116614116617%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116614116617%_)))
                                  (_%g116612116675%_
                                   (lambda (_%g116614116625%_)
                                     ((lambda (_%L116628%_)
                                        (let* ((_%g116641116649%_
                                                (lambda (_%g116642116645%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g116642116645%_)))
                                               (_%g116640116671%_
                                                (lambda (_%g116642116653%_)
                                                  ((lambda (_%L116656%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L116517%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L116544%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L116517%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L116572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L116544%_ '()))
                                       '()))
                           (cons (cons _%L116600%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L116544%_ '()))
                                             '()))
                                 '()))
                     (cons _%L116628%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L116656%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g116642116653%_))))
                                          (_%g116640116671%_ _%E116157%_)))
                                      _%g116614116625%_))))
                             (_%g116612116675%_
                              (_%recur116159%_
                               _%L116491%_
                               _%L116572%_
                               (_%recur116159%_
                                _%L116489%_
                                _%L116600%_
                                _%K116165%_)))))
                         _%g116586116597%_))))
                (_%g116584116679%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g116558116569%_))))
                                           (_%g116556116683%_
                                            (gx#genident 'hd))))
                                       _%g116530116541%_))))
                              (_%g116528116687%_ (gx#genident 'e))))
                          _%g116503116514%_))))
                 (_%g116501116691%_ _%tgt116164%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont116902116903%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd116162%_)
                                                           (if (gx#underscore?
                                                                _%hd116162%_)
                                                               _%K116165%_
                                                               (if (let ((__tmp116969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g116194116196%_)
                                    (gx#bound-identifier=?
                                     _%g116194116196%_
                                     _%hd116162%_))))
                             (declare (not safe))
                             (__find __tmp116969 _%kws115761%_))
                           (let* ((_%g116202116217%_
                                   (lambda (_%g116203116213%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116203116213%_)))
                                  (_%g116201116270%_
                                   (lambda (_%g116203116221%_)
                                     (if (gx#stx-pair? _%g116203116221%_)
                                         (let ((_%e116206116224%_
                                                (gx#syntax-e
                                                 _%g116203116221%_)))
                                           (let ((_%hd116207116228%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e116206116224%_)))
                                                 (_%tl116208116231%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e116206116224%_))))
                                             (if (gx#stx-pair?
                                                  _%tl116208116231%_)
                                                 (let ((_%e116209116234%_
                                                        (gx#syntax-e
                                                         _%tl116208116231%_)))
                                                   (let ((_%hd116210116238%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e116209116234%_)))
                                                         (_%tl116211116241%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e116209116234%_))))
                                                     (if (gx#stx-null?
                                                          _%tl116211116241%_)
                                                         ((lambda (_%L116244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L116246%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L116246%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L116246%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L116244%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K116165%_ (cons _%E116157%_ '())))))
                  _%hd116210116238%_
                  _%hd116207116228%_)
                 (_%g116202116217%_ _%g116203116221%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g116202116217%_
                                                  _%g116203116221%_))))
                                         (_%g116202116217%_
                                          _%g116203116221%_)))))
                             (_%g116201116270%_
                              (list _%tgt116164%_ _%hd116162%_)))
                           (let* ((_%g116276116291%_
                                   (lambda (_%g116277116287%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116277116287%_)))
                                  (_%g116275116336%_
                                   (lambda (_%g116277116295%_)
                                     (if (gx#stx-pair? _%g116277116295%_)
                                         (let ((_%e116280116298%_
                                                (gx#syntax-e
                                                 _%g116277116295%_)))
                                           (let ((_%hd116281116302%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e116280116298%_)))
                                                 (_%tl116282116305%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e116280116298%_))))
                                             (if (gx#stx-pair?
                                                  _%tl116282116305%_)
                                                 (let ((_%e116283116308%_
                                                        (gx#syntax-e
                                                         _%tl116282116305%_)))
                                                   (let ((_%hd116284116312%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e116283116308%_)))
                                                         (_%tl116285116315%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e116283116308%_))))
                                                     (if (gx#stx-null?
                                                          _%tl116285116315%_)
                                                         ((lambda (_%L116318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L116320%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L116318%_ (cons _%L116320%_ '()))
                                      '())
                                (cons _%K116165%_ '()))))
                  _%hd116284116312%_
                  _%hd116281116302%_)
                 (_%g116276116291%_ _%g116277116295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g116276116291%_
                                                  _%g116277116295%_))))
                                         (_%g116276116291%_
                                          _%g116277116295%_)))))
                             (_%g116275116336%_
                              (list _%tgt116164%_ _%hd116162%_)))))
                   (if (gx#stx-null? _%hd116162%_)
                       (let* ((_%g116342116350%_
                               (lambda (_%g116343116346%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g116343116346%_)))
                              (_%g116341116369%_
                               (lambda (_%g116343116354%_)
                                 ((lambda (_%L116357%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L116357%_ '()))
                                                (cons _%K116165%_
                                                      (cons _%E116157%_
                                                            '())))))
                                  _%g116343116354%_))))
                         (_%g116341116369%_ _%tgt116164%_))
                       (if (gx#stx-datum? _%hd116162%_)
                           (let* ((_%g116375116394%_
                                   (lambda (_%g116376116390%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116376116390%_)))
                                  (_%g116374116453%_
                                   (lambda (_%g116376116398%_)
                                     (if (gx#stx-pair? _%g116376116398%_)
                                         (let ((_%e116380116401%_
                                                (gx#syntax-e
                                                 _%g116376116398%_)))
                                           (let ((_%hd116381116405%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e116380116401%_)))
                                                 (_%tl116382116408%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e116380116401%_))))
                                             (if (gx#stx-pair?
                                                  _%tl116382116408%_)
                                                 (let ((_%e116383116411%_
                                                        (gx#syntax-e
                                                         _%tl116382116408%_)))
                                                   (let ((_%hd116384116415%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e116383116411%_)))
                                                         (_%tl116385116418%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e116383116411%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl116385116418%_)
                                                         (let ((_%e116386116421%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl116385116418%_)))
                   (let ((_%hd116387116425%_
                          (let ()
                            (declare (not safe))
                            (##car _%e116386116421%_)))
                         (_%tl116388116428%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e116386116421%_))))
                     (if (gx#stx-null? _%tl116388116428%_)
                         ((lambda (_%L116431%_ _%L116433%_ _%L116434%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L116431%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L116434%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L116433%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K116165%_
                                              (cons _%E116157%_ '())))))
                          _%hd116387116425%_
                          _%hd116384116415%_
                          _%hd116381116405%_)
                         (_%g116375116394%_ _%g116376116398%_))))
                 (_%g116375116394%_ _%g116376116398%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g116375116394%_
                                                  _%g116376116398%_))))
                                         (_%g116375116394%_
                                          _%g116376116398%_)))))
                             (_%g116374116453%_
                              (list _%tgt116164%_
                                    _%hd116162%_
                                    (let ((_%e116457%_
                                           (gx#stx-e _%hd116162%_)))
                                      (if (or (keyword? _%e116457%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e116457%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e116457%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx115607%_
                            _%where116152%_
                            _%hd116162%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx116897116898%_)
                                                    (let ((_%e116172116479%_
                                                           (gx#syntax-e
                                                            _%__stx116897116898%_)))
                                                      (let ((_%tl116174116486%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e116172116479%_)))
                    (_%hd116173116483%_
                     (let () (declare (not safe)) (##car _%e116172116479%_))))
                (_%__kont116900116901%_
                 _%tl116174116486%_
                 _%hd116173116483%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont116902116903%_)))))))
                                  (_%recur116159%_
                                   _%hd116154%_
                                   _%tgt115759%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender116155%_
                                               (cons _%body116156%_
                                                     (cons _%E116157%_
                                                           '()))))))))
                             (_%generate-clauses115767%_
                              (lambda (_%clauses115890%_)
                                (let _%lp115893%_ ((_%rest115896%_
                                                    _%clauses115890%_)
                                                   (_%E115898%_
                                                    (gx#genident 'E))
                                                   (_%r115899%_ '()))
                                  (let* ((_%__stx116933116934%_ _%rest115896%_)
                                         (_%g115902115914%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx116933116934%_))))
                                    (let ((_%__kont116936116937%_
                                           (lambda (_%L115979%_ _%L115981%_)
                                             (let* ((_%__stx116913116914%_
                                                     _%L115981%_)
                                                    (_%g115993116004%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx116913116914%_))))
                                               (let ((_%__kont116916116917%_
                                                      (lambda (_%L116133%_)
                                                        (if (gx#stx-null?
                                                             _%L115979%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L116133%_)
                             (not (gx#stx-null? _%L116133%_)))
                        (cons (cons _%E115898%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L116133%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L115981%_))
                                          '()))
                              _%r115899%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx115607%_
                         _%L115981%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx115607%_
                     _%L115981%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont116918116919%_
                                                      (lambda ()
                                                        (let* ((_%g116015116023%_
                                                                (lambda (_%g116016116019%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g116016116019%_)))
                       (_%g116014116112%_
                        (lambda (_%g116016116027%_)
                          ((lambda (_%L116030%_)
                             (let* ((_%g116046116054%_
                                     (lambda (_%g116047116050%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g116047116050%_)))
                                    (_%g116045116108%_
                                     (lambda (_%g116047116058%_)
                                       ((lambda (_%L116061%_)
                                          (let* ((_%g116074116082%_
                                                  (lambda (_%g116075116078%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g116075116078%_)))
                                                 (_%g116073116104%_
                                                  (lambda (_%g116075116086%_)
                                                    ((lambda (_%L116089%_)
                                                       (_%lp115893%_
                                                        _%L115979%_
                                                        _%L116030%_
                                                        (cons (cons _%E115898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L116089%_ '()))
                      _%r115899%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g116075116086%_))))
                                            (_%g116073116104%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L116061%_
                                                                '())))
                                              (gx#stx-source _%L115981%_)))))
                                        _%g116047116058%_))))
                               (_%g116045116108%_
                                (_%generate-clause115764%_
                                 _%L115981%_
                                 (cons _%L116030%_ '())))))
                           _%g116016116027%_))))
                  (_%g116014116112%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx116913116914%_)
                                                     (let ((_%e115996116123%_
                                                            (gx#syntax-e
                                                             _%__stx116913116914%_)))
                                                       (let ((_%tl115998116130%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e115996116123%_)))
                     (_%hd115997116127%_
                      (let () (declare (not safe)) (##car _%e115996116123%_))))
                 (if (gx#identifier? _%hd115997116127%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g116970_|
                          _%hd115997116127%_)
                         (_%__kont116916116917%_ _%tl115998116130%_)
                         (_%__kont116918116919%_))
                     (_%__kont116918116919%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont116918116919%_))))))
                                          (_%__kont116938116939%_
                                           (lambda ()
                                             (let* ((_%g115925115933%_
                                                     (lambda (_%g115926115929%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g115926115929%_)))
                                                    (_%g115924115958%_
                                                     (lambda (_%g115926115937%_)
                                                       ((lambda (_%L115940%_)
                                                          (cons (cons _%E115898%_
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
                                 (cons _%L115940%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx115607%_))
                                    '()))
                        _%r115899%_))
                _%g115926115937%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g115924115958%_
                                                _%tgt115759%_)))))
                                      (if (gx#stx-pair? _%__stx116933116934%_)
                                          (let ((_%e115906115969%_
                                                 (gx#syntax-e
                                                  _%__stx116933116934%_)))
                                            (let ((_%tl115908115976%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e115906115969%_)))
                                                  (_%hd115907115973%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e115906115969%_))))
                                              (_%__kont116936116937%_
                                               _%tl115908115976%_
                                               _%hd115907115973%_)))
                                          (_%__kont116938116939%_))))))))
                      (let* ((_%bind115769%_
                              (_%generate-clauses115767%_ _%clauses115762%_))
                             (_%g115772115789%_
                              (lambda (_%g115773115785%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g115773115785%_)))
                             (_%g115771115886%_
                              (lambda (_%g115773115793%_)
                                (if (gx#stx-pair/null? _%g115773115793%_)
                                    (let ((_g116971_
                                           (gx#syntax-split-splice
                                            _%g115773115793%_
                                            '0)))
                                      (begin
                                        (let ((_g116972_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g116971_)
                                                     (##vector-length
                                                      _g116971_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g116972_ 2)))
                                              (error "Context expects 2 values"
                                                     _g116972_)))
                                        (let ((_%target115775115796%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g116971_ 0)))
                                              (_%tl115777115799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g116971_ 1))))
                                          (if (gx#stx-null? _%tl115777115799%_)
                                              (letrec ((_%loop115778115802%_
                                                        (lambda (_%hd115776115806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try115782115809%_)
                  (if (gx#stx-pair? _%hd115776115806%_)
                      (let ((_%e115779115812%_
                             (gx#syntax-e _%hd115776115806%_)))
                        (let ((_%lp-hd115780115816%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e115779115812%_)))
                              (_%lp-tl115781115819%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e115779115812%_))))
                          (_%loop115778115802%_
                           _%lp-tl115781115819%_
                           (cons _%lp-hd115780115816%_
                                 _%bind-try115782115809%_))))
                      (let ((_%bind-try115783115822%_
                             (reverse _%bind-try115782115809%_)))
                        ((lambda (_%L115826%_)
                           (let* ((_%g115844115852%_
                                   (lambda (_%g115845115848%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g115845115848%_)))
                                  (_%g115843115882%_
                                   (lambda (_%g115845115856%_)
                                     ((lambda (_%L115859%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp116973
                                                           (lambda (_%g115873115876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g115874115879%_)
                     (cons _%g115873115876%_ _%g115874115879%_))))
              (declare (not safe))
              (__foldr1 __tmp116973 '() _%L115826%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L115859%_
                                                                '())
                                                          '()))))
                                      _%g115845115856%_))))
                             (_%g115843115882%_ (car (last _%bind115769%_)))))
                         _%bind-try115783115822%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop115778115802%_
                                                 _%target115775115796%_
                                                 '()))
                                              (_%g115772115789%_
                                               _%g115773115793%_)))))
                                    (_%g115772115789%_ _%g115773115793%_)))))
                        (_%g115771115886%_ _%bind115769%_))))))
          (let* ((_%g115613115632%_
                  (lambda (_%g115614115628%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g115614115628%_)))
                 (_%g115612115755%_
                  (lambda (_%g115614115636%_)
                    (if (gx#stx-pair? _%g115614115636%_)
                        (let ((_%e115618115639%_
                               (gx#syntax-e _%g115614115636%_)))
                          (let ((_%hd115619115643%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e115618115639%_)))
                                (_%tl115620115646%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e115618115639%_))))
                            (if (gx#stx-pair? _%tl115620115646%_)
                                (let ((_%e115621115649%_
                                       (gx#syntax-e _%tl115620115646%_)))
                                  (let ((_%hd115622115653%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e115621115649%_)))
                                        (_%tl115623115656%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e115621115649%_))))
                                    (if (gx#stx-pair? _%tl115623115656%_)
                                        (let ((_%e115624115659%_
                                               (gx#syntax-e
                                                _%tl115623115656%_)))
                                          (let ((_%hd115625115663%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e115624115659%_)))
                                                (_%tl115626115666%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e115624115659%_))))
                                            ((lambda (_%L115669%_
                                                      _%L115671%_
                                                      _%L115672%_)
                                               (if (and (gx#identifier-list?
                                                         _%L115671%_)
                                                        (gx#stx-list?
                                                         _%L115669%_))
                                                   (let* ((_%g115690115698%_
                                                           (lambda (_%g115691115694%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g115691115694%_)))
                                                          (_%g115689115751%_
                                                           (lambda (_%g115691115702%_)
                                                             ((lambda (_%L115705%_)
                                                                (let* ((_%g115717115725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g115718115721%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g115718115721%_)))
                               (_%g115716115747%_
                                (lambda (_%g115718115729%_)
                                  ((lambda (_%L115732%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L115705%_
                                                             (cons _%L115672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L115732%_ '()))))
                                   _%g115718115729%_))))
                          (_%g115716115747%_
                           (_%generate115610%_
                            _%L115705%_
                            (gx#syntax->list _%L115671%_)
                            _%L115669%_))))
                      _%g115691115702%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g115689115751%_
                                                      (gx#genident 'e)))
                                                   (_%g115613115632%_
                                                    _%g115614115636%_)))
                                             _%tl115626115666%_
                                             _%hd115625115663%_
                                             _%hd115622115653%_)))
                                        (_%g115613115632%_
                                         _%g115614115636%_))))
                                (_%g115613115632%_ _%g115614115636%_))))
                        (_%g115613115632%_ _%g115614115636%_)))))
            (_%g115612115755%_ _%stx115607%_)))))))
