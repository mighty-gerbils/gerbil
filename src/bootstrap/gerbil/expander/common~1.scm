(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g114945_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114947_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114949_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114951_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114952_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114954_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114955_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114957_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114958_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114960_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114961_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114963_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj114941
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
          (##unchecked-structure-set! __obj114941 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114941 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114941 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114941 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114941 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114941 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114941 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114941 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114941 '#f '11 '#f '#f))
        (let ((__tmp114944 |gx[1]#_g114945_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj114941 __tmp114944 '12 '#f '#f))
        (let ((__tmp114946 |gx[1]#_g114947_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj114941 __tmp114946 '13 '#f '#f))
        (let ((__tmp114948 |gx[1]#_g114949_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj114941 __tmp114948 '14 '#f '#f))
        (let ((__tmp114950
               (cons (cons 'e |gx[1]#_g114951_|)
                     (cons (cons 'source |gx[1]#_g114952_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj114941 __tmp114950 '15 '#f '#f))
        (let ((__tmp114953
               (cons (cons 'e |gx[1]#_g114954_|)
                     (cons (cons 'source |gx[1]#_g114955_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj114941 __tmp114953 '16 '#f '#f))
        (let ((__tmp114956
               (cons (cons 'e |gx[1]#_g114957_|)
                     (cons (cons 'source |gx[1]#_g114958_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj114941 __tmp114956 '17 '#f '#f))
        (let ((__tmp114959
               (cons (cons 'e |gx[1]#_g114960_|)
                     (cons (cons 'source |gx[1]#_g114961_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj114941 __tmp114959 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114941 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114941 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114941 '() '20 '#f '#f))
        __obj114941))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx113536%_)
        (let* ((_%g113540113554%_
                (lambda (_%g113541113550%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g113541113550%_)))
               (_%g113539113596%_
                (lambda (_%g113541113558%_)
                  (if (gx#stx-pair? _%g113541113558%_)
                      (let ((_%e113543113561%_
                             (gx#syntax-e _%g113541113558%_)))
                        (let ((_%hd113544113565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e113543113561%_)))
                              (_%tl113545113568%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e113543113561%_))))
                          (if (gx#stx-pair? _%tl113545113568%_)
                              (let ((_%e113546113571%_
                                     (gx#syntax-e _%tl113545113568%_)))
                                (let ((_%hd113547113575%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e113546113571%_)))
                                      (_%tl113548113578%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e113546113571%_))))
                                  (if (gx#stx-null? _%tl113548113578%_)
                                      ((lambda (_%L113581%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L113581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L113581%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd113547113575%_)
                                      (_%g113540113554%_ _%g113541113558%_))))
                              (_%g113540113554%_ _%g113541113558%_))))
                      (_%g113540113554%_ _%g113541113558%_)))))
          (_%g113539113596%_ _%$stx113536%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx113600%_)
        (letrec ((_%generate113603%_
                  (lambda (_%tgt113752%_ _%kws113754%_ _%clauses113755%_)
                    (letrec ((_%generate-clause113757%_
                              (lambda (_%hd114692%_ _%E114694%_)
                                (let* ((_%__stx114844114845%_ _%hd114692%_)
                                       (_%g114698114725%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx114844114845%_))))
                                  (let ((_%__kont114847114848%_
                                         (lambda (_%L114821%_ _%L114823%_)
                                           (_%generate1113759%_
                                            _%hd114692%_
                                            _%L114823%_
                                            '#t
                                            _%L114821%_
                                            _%E114694%_)))
                                        (_%__kont114849114850%_
                                         (lambda (_%L114773%_
                                                  _%L114775%_
                                                  _%L114776%_)
                                           (_%generate1113759%_
                                            _%hd114692%_
                                            _%L114776%_
                                            _%L114775%_
                                            _%L114773%_
                                            _%E114694%_)))
                                        (_%__kont114851114852%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx113600%_
                                            _%hd114692%_))))
                                    (if (gx#stx-pair? _%__stx114844114845%_)
                                        (let ((_%e114702114801%_
                                               (gx#syntax-e
                                                _%__stx114844114845%_)))
                                          (let ((_%tl114704114808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e114702114801%_)))
                                                (_%hd114703114805%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e114702114801%_))))
                                            (if (gx#stx-pair?
                                                 _%tl114704114808%_)
                                                (let ((_%e114705114811%_
                                                       (gx#syntax-e
                                                        _%tl114704114808%_)))
                                                  (let ((_%tl114707114818%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e114705114811%_)))
                                                        (_%hd114706114815%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e114705114811%_))))
                                                    (if (gx#stx-null?
                                                         _%tl114707114818%_)
                                                        (_%__kont114847114848%_
                                                         _%hd114706114815%_
                                                         _%hd114703114805%_)
                                                        (if (gx#stx-pair?
                                                             _%tl114707114818%_)
                                                            (let ((_%e114717114763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl114707114818%_)))
                      (let ((_%tl114719114770%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114717114763%_)))
                            (_%hd114718114767%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114717114763%_))))
                        (if (gx#stx-null? _%tl114719114770%_)
                            (_%__kont114849114850%_
                             _%hd114718114767%_
                             _%hd114706114815%_
                             _%hd114703114805%_)
                            (_%__kont114851114852%_))))
                    (_%__kont114851114852%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont114851114852%_))))
                                        (_%__kont114851114852%_))))))
                             (_%generate1113759%_
                              (lambda (_%where114145%_
                                       _%hd114147%_
                                       _%fender114148%_
                                       _%body114149%_
                                       _%E114150%_)
                                (letrec ((_%recur114152%_
                                          (lambda (_%hd114155%_
                                                   _%tgt114157%_
                                                   _%K114158%_)
                                            (let* ((_%__stx114890114891%_
                                                    _%hd114155%_)
                                                   (_%g114161114173%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx114890114891%_))))
                                              (let ((_%__kont114893114894%_
                                                     (lambda (_%L114482%_
                                                              _%L114484%_)
                                                       (let* ((_%g114495114503%_
                                                               (lambda (_%g114496114499%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g114496114499%_)))
                      (_%g114494114684%_
                       (lambda (_%g114496114507%_)
                         ((lambda (_%L114510%_)
                            (let* ((_%g114522114530%_
                                    (lambda (_%g114523114526%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g114523114526%_)))
                                   (_%g114521114680%_
                                    (lambda (_%g114523114534%_)
                                      ((lambda (_%L114537%_)
                                         (let* ((_%g114550114558%_
                                                 (lambda (_%g114551114554%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g114551114554%_)))
                                                (_%g114549114676%_
                                                 (lambda (_%g114551114562%_)
                                                   ((lambda (_%L114565%_)
                                                      (let* ((_%g114578114586%_
                                                              (lambda (_%g114579114582%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g114579114582%_)))
                     (_%g114577114672%_
                      (lambda (_%g114579114590%_)
                        ((lambda (_%L114593%_)
                           (let* ((_%g114606114614%_
                                   (lambda (_%g114607114610%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114607114610%_)))
                                  (_%g114605114668%_
                                   (lambda (_%g114607114618%_)
                                     ((lambda (_%L114621%_)
                                        (let* ((_%g114634114642%_
                                                (lambda (_%g114635114638%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g114635114638%_)))
                                               (_%g114633114664%_
                                                (lambda (_%g114635114646%_)
                                                  ((lambda (_%L114649%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L114510%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L114537%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L114510%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L114565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L114537%_ '()))
                                       '()))
                           (cons (cons _%L114593%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L114537%_ '()))
                                             '()))
                                 '()))
                     (cons _%L114621%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L114649%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g114635114646%_))))
                                          (_%g114633114664%_ _%E114150%_)))
                                      _%g114607114618%_))))
                             (_%g114605114668%_
                              (_%recur114152%_
                               _%L114484%_
                               _%L114565%_
                               (_%recur114152%_
                                _%L114482%_
                                _%L114593%_
                                _%K114158%_)))))
                         _%g114579114590%_))))
                (_%g114577114672%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g114551114562%_))))
                                           (_%g114549114676%_
                                            (gx#genident 'hd))))
                                       _%g114523114534%_))))
                              (_%g114521114680%_ (gx#genident 'e))))
                          _%g114496114507%_))))
                 (_%g114494114684%_ _%tgt114157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont114895114896%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd114155%_)
                                                           (if (gx#underscore?
                                                                _%hd114155%_)
                                                               _%K114158%_
                                                               (if (let ((__tmp114962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g114187114189%_)
                                    (gx#bound-identifier=?
                                     _%g114187114189%_
                                     _%hd114155%_))))
                             (declare (not safe))
                             (__find __tmp114962 _%kws113754%_))
                           (let* ((_%g114195114210%_
                                   (lambda (_%g114196114206%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114196114206%_)))
                                  (_%g114194114263%_
                                   (lambda (_%g114196114214%_)
                                     (if (gx#stx-pair? _%g114196114214%_)
                                         (let ((_%e114199114217%_
                                                (gx#syntax-e
                                                 _%g114196114214%_)))
                                           (let ((_%hd114200114221%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114199114217%_)))
                                                 (_%tl114201114224%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114199114217%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114201114224%_)
                                                 (let ((_%e114202114227%_
                                                        (gx#syntax-e
                                                         _%tl114201114224%_)))
                                                   (let ((_%hd114203114231%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114202114227%_)))
                                                         (_%tl114204114234%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114202114227%_))))
                                                     (if (gx#stx-null?
                                                          _%tl114204114234%_)
                                                         ((lambda (_%L114237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L114239%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L114239%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L114239%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L114237%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K114158%_ (cons _%E114150%_ '())))))
                  _%hd114203114231%_
                  _%hd114200114221%_)
                 (_%g114195114210%_ _%g114196114214%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114195114210%_
                                                  _%g114196114214%_))))
                                         (_%g114195114210%_
                                          _%g114196114214%_)))))
                             (_%g114194114263%_
                              (list _%tgt114157%_ _%hd114155%_)))
                           (let* ((_%g114269114284%_
                                   (lambda (_%g114270114280%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114270114280%_)))
                                  (_%g114268114329%_
                                   (lambda (_%g114270114288%_)
                                     (if (gx#stx-pair? _%g114270114288%_)
                                         (let ((_%e114273114291%_
                                                (gx#syntax-e
                                                 _%g114270114288%_)))
                                           (let ((_%hd114274114295%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114273114291%_)))
                                                 (_%tl114275114298%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114273114291%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114275114298%_)
                                                 (let ((_%e114276114301%_
                                                        (gx#syntax-e
                                                         _%tl114275114298%_)))
                                                   (let ((_%hd114277114305%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114276114301%_)))
                                                         (_%tl114278114308%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114276114301%_))))
                                                     (if (gx#stx-null?
                                                          _%tl114278114308%_)
                                                         ((lambda (_%L114311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L114313%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L114311%_ (cons _%L114313%_ '()))
                                      '())
                                (cons _%K114158%_ '()))))
                  _%hd114277114305%_
                  _%hd114274114295%_)
                 (_%g114269114284%_ _%g114270114288%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114269114284%_
                                                  _%g114270114288%_))))
                                         (_%g114269114284%_
                                          _%g114270114288%_)))))
                             (_%g114268114329%_
                              (list _%tgt114157%_ _%hd114155%_)))))
                   (if (gx#stx-null? _%hd114155%_)
                       (let* ((_%g114335114343%_
                               (lambda (_%g114336114339%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g114336114339%_)))
                              (_%g114334114362%_
                               (lambda (_%g114336114347%_)
                                 ((lambda (_%L114350%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L114350%_ '()))
                                                (cons _%K114158%_
                                                      (cons _%E114150%_
                                                            '())))))
                                  _%g114336114347%_))))
                         (_%g114334114362%_ _%tgt114157%_))
                       (if (gx#stx-datum? _%hd114155%_)
                           (let* ((_%g114368114387%_
                                   (lambda (_%g114369114383%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114369114383%_)))
                                  (_%g114367114446%_
                                   (lambda (_%g114369114391%_)
                                     (if (gx#stx-pair? _%g114369114391%_)
                                         (let ((_%e114373114394%_
                                                (gx#syntax-e
                                                 _%g114369114391%_)))
                                           (let ((_%hd114374114398%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114373114394%_)))
                                                 (_%tl114375114401%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114373114394%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114375114401%_)
                                                 (let ((_%e114376114404%_
                                                        (gx#syntax-e
                                                         _%tl114375114401%_)))
                                                   (let ((_%hd114377114408%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114376114404%_)))
                                                         (_%tl114378114411%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114376114404%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl114378114411%_)
                                                         (let ((_%e114379114414%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl114378114411%_)))
                   (let ((_%hd114380114418%_
                          (let ()
                            (declare (not safe))
                            (##car _%e114379114414%_)))
                         (_%tl114381114421%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e114379114414%_))))
                     (if (gx#stx-null? _%tl114381114421%_)
                         ((lambda (_%L114424%_ _%L114426%_ _%L114427%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L114424%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L114427%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L114426%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K114158%_
                                              (cons _%E114150%_ '())))))
                          _%hd114380114418%_
                          _%hd114377114408%_
                          _%hd114374114398%_)
                         (_%g114368114387%_ _%g114369114391%_))))
                 (_%g114368114387%_ _%g114369114391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114368114387%_
                                                  _%g114369114391%_))))
                                         (_%g114368114387%_
                                          _%g114369114391%_)))))
                             (_%g114367114446%_
                              (list _%tgt114157%_
                                    _%hd114155%_
                                    (let ((_%e114450%_
                                           (gx#stx-e _%hd114155%_)))
                                      (if (or (keyword? _%e114450%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e114450%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e114450%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx113600%_
                            _%where114145%_
                            _%hd114155%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx114890114891%_)
                                                    (let ((_%e114165114472%_
                                                           (gx#syntax-e
                                                            _%__stx114890114891%_)))
                                                      (let ((_%tl114167114479%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e114165114472%_)))
                    (_%hd114166114476%_
                     (let () (declare (not safe)) (##car _%e114165114472%_))))
                (_%__kont114893114894%_
                 _%tl114167114479%_
                 _%hd114166114476%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont114895114896%_)))))))
                                  (_%recur114152%_
                                   _%hd114147%_
                                   _%tgt113752%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender114148%_
                                               (cons _%body114149%_
                                                     (cons _%E114150%_
                                                           '()))))))))
                             (_%generate-clauses113760%_
                              (lambda (_%clauses113883%_)
                                (let _%lp113886%_ ((_%rest113889%_
                                                    _%clauses113883%_)
                                                   (_%E113891%_
                                                    (gx#genident 'E))
                                                   (_%r113892%_ '()))
                                  (let* ((_%__stx114926114927%_ _%rest113889%_)
                                         (_%g113895113907%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx114926114927%_))))
                                    (let ((_%__kont114929114930%_
                                           (lambda (_%L113972%_ _%L113974%_)
                                             (let* ((_%__stx114906114907%_
                                                     _%L113974%_)
                                                    (_%g113986113997%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx114906114907%_))))
                                               (let ((_%__kont114909114910%_
                                                      (lambda (_%L114126%_)
                                                        (if (gx#stx-null?
                                                             _%L113972%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L114126%_)
                             (not (gx#stx-null? _%L114126%_)))
                        (cons (cons _%E113891%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L114126%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L113974%_))
                                          '()))
                              _%r113892%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx113600%_
                         _%L113974%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx113600%_
                     _%L113974%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont114911114912%_
                                                      (lambda ()
                                                        (let* ((_%g114008114016%_
                                                                (lambda (_%g114009114012%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g114009114012%_)))
                       (_%g114007114105%_
                        (lambda (_%g114009114020%_)
                          ((lambda (_%L114023%_)
                             (let* ((_%g114039114047%_
                                     (lambda (_%g114040114043%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g114040114043%_)))
                                    (_%g114038114101%_
                                     (lambda (_%g114040114051%_)
                                       ((lambda (_%L114054%_)
                                          (let* ((_%g114067114075%_
                                                  (lambda (_%g114068114071%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g114068114071%_)))
                                                 (_%g114066114097%_
                                                  (lambda (_%g114068114079%_)
                                                    ((lambda (_%L114082%_)
                                                       (_%lp113886%_
                                                        _%L113972%_
                                                        _%L114023%_
                                                        (cons (cons _%E113891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L114082%_ '()))
                      _%r113892%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g114068114079%_))))
                                            (_%g114066114097%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L114054%_
                                                                '())))
                                              (gx#stx-source _%L113974%_)))))
                                        _%g114040114051%_))))
                               (_%g114038114101%_
                                (_%generate-clause113757%_
                                 _%L113974%_
                                 (cons _%L114023%_ '())))))
                           _%g114009114020%_))))
                  (_%g114007114105%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx114906114907%_)
                                                     (let ((_%e113989114116%_
                                                            (gx#syntax-e
                                                             _%__stx114906114907%_)))
                                                       (let ((_%tl113991114123%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e113989114116%_)))
                     (_%hd113990114120%_
                      (let () (declare (not safe)) (##car _%e113989114116%_))))
                 (if (gx#identifier? _%hd113990114120%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g114963_|
                          _%hd113990114120%_)
                         (_%__kont114909114910%_ _%tl113991114123%_)
                         (_%__kont114911114912%_))
                     (_%__kont114911114912%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont114911114912%_))))))
                                          (_%__kont114931114932%_
                                           (lambda ()
                                             (let* ((_%g113918113926%_
                                                     (lambda (_%g113919113922%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g113919113922%_)))
                                                    (_%g113917113951%_
                                                     (lambda (_%g113919113930%_)
                                                       ((lambda (_%L113933%_)
                                                          (cons (cons _%E113891%_
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
                                 (cons _%L113933%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx113600%_))
                                    '()))
                        _%r113892%_))
                _%g113919113930%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g113917113951%_
                                                _%tgt113752%_)))))
                                      (if (gx#stx-pair? _%__stx114926114927%_)
                                          (let ((_%e113899113962%_
                                                 (gx#syntax-e
                                                  _%__stx114926114927%_)))
                                            (let ((_%tl113901113969%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e113899113962%_)))
                                                  (_%hd113900113966%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e113899113962%_))))
                                              (_%__kont114929114930%_
                                               _%tl113901113969%_
                                               _%hd113900113966%_)))
                                          (_%__kont114931114932%_))))))))
                      (let* ((_%bind113762%_
                              (_%generate-clauses113760%_ _%clauses113755%_))
                             (_%g113765113782%_
                              (lambda (_%g113766113778%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g113766113778%_)))
                             (_%g113764113879%_
                              (lambda (_%g113766113786%_)
                                (if (gx#stx-pair/null? _%g113766113786%_)
                                    (let ((_g114964_
                                           (gx#syntax-split-splice
                                            _%g113766113786%_
                                            '0)))
                                      (begin
                                        (let ((_g114965_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g114964_)
                                                     (##vector-length
                                                      _g114964_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g114965_ 2)))
                                              (error "Context expects 2 values"
                                                     _g114965_)))
                                        (let ((_%target113768113789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g114964_ 0)))
                                              (_%tl113770113792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g114964_ 1))))
                                          (if (gx#stx-null? _%tl113770113792%_)
                                              (letrec ((_%loop113771113795%_
                                                        (lambda (_%hd113769113799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try113775113802%_)
                  (if (gx#stx-pair? _%hd113769113799%_)
                      (let ((_%e113772113805%_
                             (gx#syntax-e _%hd113769113799%_)))
                        (let ((_%lp-hd113773113809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e113772113805%_)))
                              (_%lp-tl113774113812%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e113772113805%_))))
                          (_%loop113771113795%_
                           _%lp-tl113774113812%_
                           (cons _%lp-hd113773113809%_
                                 _%bind-try113775113802%_))))
                      (let ((_%bind-try113776113815%_
                             (reverse _%bind-try113775113802%_)))
                        ((lambda (_%L113819%_)
                           (let* ((_%g113837113845%_
                                   (lambda (_%g113838113841%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g113838113841%_)))
                                  (_%g113836113875%_
                                   (lambda (_%g113838113849%_)
                                     ((lambda (_%L113852%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp114966
                                                           (lambda (_%g113866113869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g113867113872%_)
                     (cons _%g113866113869%_ _%g113867113872%_))))
              (declare (not safe))
              (__foldr1 __tmp114966 '() _%L113819%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L113852%_
                                                                '())
                                                          '()))))
                                      _%g113838113849%_))))
                             (_%g113836113875%_ (car (last _%bind113762%_)))))
                         _%bind-try113776113815%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop113771113795%_
                                                 _%target113768113789%_
                                                 '()))
                                              (_%g113765113782%_
                                               _%g113766113786%_)))))
                                    (_%g113765113782%_ _%g113766113786%_)))))
                        (_%g113764113879%_ _%bind113762%_))))))
          (let* ((_%g113606113625%_
                  (lambda (_%g113607113621%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g113607113621%_)))
                 (_%g113605113748%_
                  (lambda (_%g113607113629%_)
                    (if (gx#stx-pair? _%g113607113629%_)
                        (let ((_%e113611113632%_
                               (gx#syntax-e _%g113607113629%_)))
                          (let ((_%hd113612113636%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e113611113632%_)))
                                (_%tl113613113639%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e113611113632%_))))
                            (if (gx#stx-pair? _%tl113613113639%_)
                                (let ((_%e113614113642%_
                                       (gx#syntax-e _%tl113613113639%_)))
                                  (let ((_%hd113615113646%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e113614113642%_)))
                                        (_%tl113616113649%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e113614113642%_))))
                                    (if (gx#stx-pair? _%tl113616113649%_)
                                        (let ((_%e113617113652%_
                                               (gx#syntax-e
                                                _%tl113616113649%_)))
                                          (let ((_%hd113618113656%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e113617113652%_)))
                                                (_%tl113619113659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e113617113652%_))))
                                            ((lambda (_%L113662%_
                                                      _%L113664%_
                                                      _%L113665%_)
                                               (if (and (gx#identifier-list?
                                                         _%L113664%_)
                                                        (gx#stx-list?
                                                         _%L113662%_))
                                                   (let* ((_%g113683113691%_
                                                           (lambda (_%g113684113687%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g113684113687%_)))
                                                          (_%g113682113744%_
                                                           (lambda (_%g113684113695%_)
                                                             ((lambda (_%L113698%_)
                                                                (let* ((_%g113710113718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g113711113714%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g113711113714%_)))
                               (_%g113709113740%_
                                (lambda (_%g113711113722%_)
                                  ((lambda (_%L113725%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L113698%_
                                                             (cons _%L113665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L113725%_ '()))))
                                   _%g113711113722%_))))
                          (_%g113709113740%_
                           (_%generate113603%_
                            _%L113698%_
                            (gx#syntax->list _%L113664%_)
                            _%L113662%_))))
                      _%g113684113695%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g113682113744%_
                                                      (gx#genident 'e)))
                                                   (_%g113606113625%_
                                                    _%g113607113629%_)))
                                             _%tl113619113659%_
                                             _%hd113618113656%_
                                             _%hd113615113646%_)))
                                        (_%g113606113625%_
                                         _%g113607113629%_))))
                                (_%g113606113625%_ _%g113607113629%_))))
                        (_%g113606113625%_ _%g113607113629%_)))))
            (_%g113605113748%_ _%stx113600%_)))))))
