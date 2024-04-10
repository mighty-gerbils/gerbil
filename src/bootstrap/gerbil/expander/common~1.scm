(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g113460_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113462_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113464_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113466_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113467_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113469_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113470_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113472_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113473_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113475_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113476_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113478_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj113456
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
          (##unchecked-structure-set! __obj113456 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113456 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113456 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113456 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113456 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113456 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113456 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113456 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113456 '#f '11 '#f '#f))
        (let ((__tmp113459 |gx[1]#_g113460_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113456 __tmp113459 '12 '#f '#f))
        (let ((__tmp113461 |gx[1]#_g113462_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113456 __tmp113461 '13 '#f '#f))
        (let ((__tmp113463 |gx[1]#_g113464_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113456 __tmp113463 '14 '#f '#f))
        (let ((__tmp113465
               (cons (cons 'e |gx[1]#_g113466_|)
                     (cons (cons 'source |gx[1]#_g113467_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113456 __tmp113465 '15 '#f '#f))
        (let ((__tmp113468
               (cons (cons 'e |gx[1]#_g113469_|)
                     (cons (cons 'source |gx[1]#_g113470_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113456 __tmp113468 '16 '#f '#f))
        (let ((__tmp113471
               (cons (cons 'e |gx[1]#_g113472_|)
                     (cons (cons 'source |gx[1]#_g113473_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113456 __tmp113471 '17 '#f '#f))
        (let ((__tmp113474
               (cons (cons 'e |gx[1]#_g113475_|)
                     (cons (cons 'source |gx[1]#_g113476_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113456 __tmp113474 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113456 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113456 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113456 '() '20 '#f '#f))
        __obj113456))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx112051%_)
        (let* ((_%g112055112069%_
                (lambda (_%g112056112065%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g112056112065%_)))
               (_%g112054112111%_
                (lambda (_%g112056112073%_)
                  (if (gx#stx-pair? _%g112056112073%_)
                      (let ((_%e112058112076%_
                             (gx#syntax-e _%g112056112073%_)))
                        (let ((_%hd112059112080%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e112058112076%_)))
                              (_%tl112060112083%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e112058112076%_))))
                          (if (gx#stx-pair? _%tl112060112083%_)
                              (let ((_%e112061112086%_
                                     (gx#syntax-e _%tl112060112083%_)))
                                (let ((_%hd112062112090%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e112061112086%_)))
                                      (_%tl112063112093%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e112061112086%_))))
                                  (if (gx#stx-null? _%tl112063112093%_)
                                      ((lambda (_%L112096%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L112096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L112096%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd112062112090%_)
                                      (_%g112055112069%_ _%g112056112073%_))))
                              (_%g112055112069%_ _%g112056112073%_))))
                      (_%g112055112069%_ _%g112056112073%_)))))
          (_%g112054112111%_ _%$stx112051%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx112115%_)
        (letrec ((_%generate112118%_
                  (lambda (_%tgt112267%_ _%kws112269%_ _%clauses112270%_)
                    (letrec ((_%generate-clause112272%_
                              (lambda (_%hd113207%_ _%E113209%_)
                                (let* ((_%__stx113359113360%_ _%hd113207%_)
                                       (_%g113213113240%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx113359113360%_))))
                                  (let ((_%__kont113362113363%_
                                         (lambda (_%L113336%_ _%L113338%_)
                                           (_%generate1112274%_
                                            _%hd113207%_
                                            _%L113338%_
                                            '#t
                                            _%L113336%_
                                            _%E113209%_)))
                                        (_%__kont113364113365%_
                                         (lambda (_%L113288%_
                                                  _%L113290%_
                                                  _%L113291%_)
                                           (_%generate1112274%_
                                            _%hd113207%_
                                            _%L113291%_
                                            _%L113290%_
                                            _%L113288%_
                                            _%E113209%_)))
                                        (_%__kont113366113367%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx112115%_
                                            _%hd113207%_))))
                                    (if (gx#stx-pair? _%__stx113359113360%_)
                                        (let ((_%e113217113316%_
                                               (gx#syntax-e
                                                _%__stx113359113360%_)))
                                          (let ((_%tl113219113323%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e113217113316%_)))
                                                (_%hd113218113320%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e113217113316%_))))
                                            (if (gx#stx-pair?
                                                 _%tl113219113323%_)
                                                (let ((_%e113220113326%_
                                                       (gx#syntax-e
                                                        _%tl113219113323%_)))
                                                  (let ((_%tl113222113333%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e113220113326%_)))
                                                        (_%hd113221113330%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e113220113326%_))))
                                                    (if (gx#stx-null?
                                                         _%tl113222113333%_)
                                                        (_%__kont113362113363%_
                                                         _%hd113221113330%_
                                                         _%hd113218113320%_)
                                                        (if (gx#stx-pair?
                                                             _%tl113222113333%_)
                                                            (let ((_%e113232113278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl113222113333%_)))
                      (let ((_%tl113234113285%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113232113278%_)))
                            (_%hd113233113282%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113232113278%_))))
                        (if (gx#stx-null? _%tl113234113285%_)
                            (_%__kont113364113365%_
                             _%hd113233113282%_
                             _%hd113221113330%_
                             _%hd113218113320%_)
                            (_%__kont113366113367%_))))
                    (_%__kont113366113367%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont113366113367%_))))
                                        (_%__kont113366113367%_))))))
                             (_%generate1112274%_
                              (lambda (_%where112660%_
                                       _%hd112662%_
                                       _%fender112663%_
                                       _%body112664%_
                                       _%E112665%_)
                                (letrec ((_%recur112667%_
                                          (lambda (_%hd112670%_
                                                   _%tgt112672%_
                                                   _%K112673%_)
                                            (let* ((_%__stx113405113406%_
                                                    _%hd112670%_)
                                                   (_%g112676112688%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx113405113406%_))))
                                              (let ((_%__kont113408113409%_
                                                     (lambda (_%L112997%_
                                                              _%L112999%_)
                                                       (let* ((_%g113010113018%_
                                                               (lambda (_%g113011113014%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g113011113014%_)))
                      (_%g113009113199%_
                       (lambda (_%g113011113022%_)
                         ((lambda (_%L113025%_)
                            (let* ((_%g113037113045%_
                                    (lambda (_%g113038113041%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g113038113041%_)))
                                   (_%g113036113195%_
                                    (lambda (_%g113038113049%_)
                                      ((lambda (_%L113052%_)
                                         (let* ((_%g113065113073%_
                                                 (lambda (_%g113066113069%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g113066113069%_)))
                                                (_%g113064113191%_
                                                 (lambda (_%g113066113077%_)
                                                   ((lambda (_%L113080%_)
                                                      (let* ((_%g113093113101%_
                                                              (lambda (_%g113094113097%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g113094113097%_)))
                     (_%g113092113187%_
                      (lambda (_%g113094113105%_)
                        ((lambda (_%L113108%_)
                           (let* ((_%g113121113129%_
                                   (lambda (_%g113122113125%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g113122113125%_)))
                                  (_%g113120113183%_
                                   (lambda (_%g113122113133%_)
                                     ((lambda (_%L113136%_)
                                        (let* ((_%g113149113157%_
                                                (lambda (_%g113150113153%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g113150113153%_)))
                                               (_%g113148113179%_
                                                (lambda (_%g113150113161%_)
                                                  ((lambda (_%L113164%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L113025%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L113052%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L113025%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L113080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L113052%_ '()))
                                       '()))
                           (cons (cons _%L113108%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L113052%_ '()))
                                             '()))
                                 '()))
                     (cons _%L113136%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L113164%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g113150113161%_))))
                                          (_%g113148113179%_ _%E112665%_)))
                                      _%g113122113133%_))))
                             (_%g113120113183%_
                              (_%recur112667%_
                               _%L112999%_
                               _%L113080%_
                               (_%recur112667%_
                                _%L112997%_
                                _%L113108%_
                                _%K112673%_)))))
                         _%g113094113105%_))))
                (_%g113092113187%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g113066113077%_))))
                                           (_%g113064113191%_
                                            (gx#genident 'hd))))
                                       _%g113038113049%_))))
                              (_%g113036113195%_ (gx#genident 'e))))
                          _%g113011113022%_))))
                 (_%g113009113199%_ _%tgt112672%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113410113411%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd112670%_)
                                                           (if (gx#underscore?
                                                                _%hd112670%_)
                                                               _%K112673%_
                                                               (if (let ((__tmp113477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g112702112704%_)
                                    (gx#bound-identifier=?
                                     _%g112702112704%_
                                     _%hd112670%_))))
                             (declare (not safe))
                             (__find __tmp113477 _%kws112269%_))
                           (let* ((_%g112710112725%_
                                   (lambda (_%g112711112721%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g112711112721%_)))
                                  (_%g112709112778%_
                                   (lambda (_%g112711112729%_)
                                     (if (gx#stx-pair? _%g112711112729%_)
                                         (let ((_%e112714112732%_
                                                (gx#syntax-e
                                                 _%g112711112729%_)))
                                           (let ((_%hd112715112736%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e112714112732%_)))
                                                 (_%tl112716112739%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e112714112732%_))))
                                             (if (gx#stx-pair?
                                                  _%tl112716112739%_)
                                                 (let ((_%e112717112742%_
                                                        (gx#syntax-e
                                                         _%tl112716112739%_)))
                                                   (let ((_%hd112718112746%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e112717112742%_)))
                                                         (_%tl112719112749%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e112717112742%_))))
                                                     (if (gx#stx-null?
                                                          _%tl112719112749%_)
                                                         ((lambda (_%L112752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L112754%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L112754%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L112754%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L112752%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K112673%_ (cons _%E112665%_ '())))))
                  _%hd112718112746%_
                  _%hd112715112736%_)
                 (_%g112710112725%_ _%g112711112729%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g112710112725%_
                                                  _%g112711112729%_))))
                                         (_%g112710112725%_
                                          _%g112711112729%_)))))
                             (_%g112709112778%_
                              (list _%tgt112672%_ _%hd112670%_)))
                           (let* ((_%g112784112799%_
                                   (lambda (_%g112785112795%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g112785112795%_)))
                                  (_%g112783112844%_
                                   (lambda (_%g112785112803%_)
                                     (if (gx#stx-pair? _%g112785112803%_)
                                         (let ((_%e112788112806%_
                                                (gx#syntax-e
                                                 _%g112785112803%_)))
                                           (let ((_%hd112789112810%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e112788112806%_)))
                                                 (_%tl112790112813%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e112788112806%_))))
                                             (if (gx#stx-pair?
                                                  _%tl112790112813%_)
                                                 (let ((_%e112791112816%_
                                                        (gx#syntax-e
                                                         _%tl112790112813%_)))
                                                   (let ((_%hd112792112820%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e112791112816%_)))
                                                         (_%tl112793112823%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e112791112816%_))))
                                                     (if (gx#stx-null?
                                                          _%tl112793112823%_)
                                                         ((lambda (_%L112826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L112828%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L112826%_ (cons _%L112828%_ '()))
                                      '())
                                (cons _%K112673%_ '()))))
                  _%hd112792112820%_
                  _%hd112789112810%_)
                 (_%g112784112799%_ _%g112785112803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g112784112799%_
                                                  _%g112785112803%_))))
                                         (_%g112784112799%_
                                          _%g112785112803%_)))))
                             (_%g112783112844%_
                              (list _%tgt112672%_ _%hd112670%_)))))
                   (if (gx#stx-null? _%hd112670%_)
                       (let* ((_%g112850112858%_
                               (lambda (_%g112851112854%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g112851112854%_)))
                              (_%g112849112877%_
                               (lambda (_%g112851112862%_)
                                 ((lambda (_%L112865%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L112865%_ '()))
                                                (cons _%K112673%_
                                                      (cons _%E112665%_
                                                            '())))))
                                  _%g112851112862%_))))
                         (_%g112849112877%_ _%tgt112672%_))
                       (if (gx#stx-datum? _%hd112670%_)
                           (let* ((_%g112883112902%_
                                   (lambda (_%g112884112898%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g112884112898%_)))
                                  (_%g112882112961%_
                                   (lambda (_%g112884112906%_)
                                     (if (gx#stx-pair? _%g112884112906%_)
                                         (let ((_%e112888112909%_
                                                (gx#syntax-e
                                                 _%g112884112906%_)))
                                           (let ((_%hd112889112913%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e112888112909%_)))
                                                 (_%tl112890112916%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e112888112909%_))))
                                             (if (gx#stx-pair?
                                                  _%tl112890112916%_)
                                                 (let ((_%e112891112919%_
                                                        (gx#syntax-e
                                                         _%tl112890112916%_)))
                                                   (let ((_%hd112892112923%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e112891112919%_)))
                                                         (_%tl112893112926%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e112891112919%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl112893112926%_)
                                                         (let ((_%e112894112929%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl112893112926%_)))
                   (let ((_%hd112895112933%_
                          (let ()
                            (declare (not safe))
                            (##car _%e112894112929%_)))
                         (_%tl112896112936%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e112894112929%_))))
                     (if (gx#stx-null? _%tl112896112936%_)
                         ((lambda (_%L112939%_ _%L112941%_ _%L112942%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L112939%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L112942%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L112941%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K112673%_
                                              (cons _%E112665%_ '())))))
                          _%hd112895112933%_
                          _%hd112892112923%_
                          _%hd112889112913%_)
                         (_%g112883112902%_ _%g112884112906%_))))
                 (_%g112883112902%_ _%g112884112906%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g112883112902%_
                                                  _%g112884112906%_))))
                                         (_%g112883112902%_
                                          _%g112884112906%_)))))
                             (_%g112882112961%_
                              (list _%tgt112672%_
                                    _%hd112670%_
                                    (let ((_%e112965%_
                                           (gx#stx-e _%hd112670%_)))
                                      (if (or (keyword? _%e112965%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e112965%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e112965%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx112115%_
                            _%where112660%_
                            _%hd112670%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx113405113406%_)
                                                    (let ((_%e112680112987%_
                                                           (gx#syntax-e
                                                            _%__stx113405113406%_)))
                                                      (let ((_%tl112682112994%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e112680112987%_)))
                    (_%hd112681112991%_
                     (let () (declare (not safe)) (##car _%e112680112987%_))))
                (_%__kont113408113409%_
                 _%tl112682112994%_
                 _%hd112681112991%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113410113411%_)))))))
                                  (_%recur112667%_
                                   _%hd112662%_
                                   _%tgt112267%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender112663%_
                                               (cons _%body112664%_
                                                     (cons _%E112665%_
                                                           '()))))))))
                             (_%generate-clauses112275%_
                              (lambda (_%clauses112398%_)
                                (let _%lp112401%_ ((_%rest112404%_
                                                    _%clauses112398%_)
                                                   (_%E112406%_
                                                    (gx#genident 'E))
                                                   (_%r112407%_ '()))
                                  (let* ((_%__stx113441113442%_ _%rest112404%_)
                                         (_%g112410112422%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx113441113442%_))))
                                    (let ((_%__kont113444113445%_
                                           (lambda (_%L112487%_ _%L112489%_)
                                             (let* ((_%__stx113421113422%_
                                                     _%L112489%_)
                                                    (_%g112501112512%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx113421113422%_))))
                                               (let ((_%__kont113424113425%_
                                                      (lambda (_%L112641%_)
                                                        (if (gx#stx-null?
                                                             _%L112487%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L112641%_)
                             (not (gx#stx-null? _%L112641%_)))
                        (cons (cons _%E112406%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L112641%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L112489%_))
                                          '()))
                              _%r112407%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx112115%_
                         _%L112489%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx112115%_
                     _%L112489%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113426113427%_
                                                      (lambda ()
                                                        (let* ((_%g112523112531%_
                                                                (lambda (_%g112524112527%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g112524112527%_)))
                       (_%g112522112620%_
                        (lambda (_%g112524112535%_)
                          ((lambda (_%L112538%_)
                             (let* ((_%g112554112562%_
                                     (lambda (_%g112555112558%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g112555112558%_)))
                                    (_%g112553112616%_
                                     (lambda (_%g112555112566%_)
                                       ((lambda (_%L112569%_)
                                          (let* ((_%g112582112590%_
                                                  (lambda (_%g112583112586%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g112583112586%_)))
                                                 (_%g112581112612%_
                                                  (lambda (_%g112583112594%_)
                                                    ((lambda (_%L112597%_)
                                                       (_%lp112401%_
                                                        _%L112487%_
                                                        _%L112538%_
                                                        (cons (cons _%E112406%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L112597%_ '()))
                      _%r112407%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g112583112594%_))))
                                            (_%g112581112612%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L112569%_
                                                                '())))
                                              (gx#stx-source _%L112489%_)))))
                                        _%g112555112566%_))))
                               (_%g112553112616%_
                                (_%generate-clause112272%_
                                 _%L112489%_
                                 (cons _%L112538%_ '())))))
                           _%g112524112535%_))))
                  (_%g112522112620%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx113421113422%_)
                                                     (let ((_%e112504112631%_
                                                            (gx#syntax-e
                                                             _%__stx113421113422%_)))
                                                       (let ((_%tl112506112638%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e112504112631%_)))
                     (_%hd112505112635%_
                      (let () (declare (not safe)) (##car _%e112504112631%_))))
                 (if (gx#identifier? _%hd112505112635%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g113478_|
                          _%hd112505112635%_)
                         (_%__kont113424113425%_ _%tl112506112638%_)
                         (_%__kont113426113427%_))
                     (_%__kont113426113427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113426113427%_))))))
                                          (_%__kont113446113447%_
                                           (lambda ()
                                             (let* ((_%g112433112441%_
                                                     (lambda (_%g112434112437%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g112434112437%_)))
                                                    (_%g112432112466%_
                                                     (lambda (_%g112434112445%_)
                                                       ((lambda (_%L112448%_)
                                                          (cons (cons _%E112406%_
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
                                 (cons _%L112448%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx112115%_))
                                    '()))
                        _%r112407%_))
                _%g112434112445%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g112432112466%_
                                                _%tgt112267%_)))))
                                      (if (gx#stx-pair? _%__stx113441113442%_)
                                          (let ((_%e112414112477%_
                                                 (gx#syntax-e
                                                  _%__stx113441113442%_)))
                                            (let ((_%tl112416112484%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e112414112477%_)))
                                                  (_%hd112415112481%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e112414112477%_))))
                                              (_%__kont113444113445%_
                                               _%tl112416112484%_
                                               _%hd112415112481%_)))
                                          (_%__kont113446113447%_))))))))
                      (let* ((_%bind112277%_
                              (_%generate-clauses112275%_ _%clauses112270%_))
                             (_%g112280112297%_
                              (lambda (_%g112281112293%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g112281112293%_)))
                             (_%g112279112394%_
                              (lambda (_%g112281112301%_)
                                (if (gx#stx-pair/null? _%g112281112301%_)
                                    (let ((_g113479_
                                           (gx#syntax-split-splice
                                            _%g112281112301%_
                                            '0)))
                                      (begin
                                        (let ((_g113480_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g113479_)
                                                     (##vector-length
                                                      _g113479_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g113480_ 2)))
                                              (error "Context expects 2 values"
                                                     _g113480_)))
                                        (let ((_%target112283112304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113479_ 0)))
                                              (_%tl112285112307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113479_ 1))))
                                          (if (gx#stx-null? _%tl112285112307%_)
                                              (letrec ((_%loop112286112310%_
                                                        (lambda (_%hd112284112314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try112290112317%_)
                  (if (gx#stx-pair? _%hd112284112314%_)
                      (let ((_%e112287112320%_
                             (gx#syntax-e _%hd112284112314%_)))
                        (let ((_%lp-hd112288112324%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e112287112320%_)))
                              (_%lp-tl112289112327%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e112287112320%_))))
                          (_%loop112286112310%_
                           _%lp-tl112289112327%_
                           (cons _%lp-hd112288112324%_
                                 _%bind-try112290112317%_))))
                      (let ((_%bind-try112291112330%_
                             (reverse _%bind-try112290112317%_)))
                        ((lambda (_%L112334%_)
                           (let* ((_%g112352112360%_
                                   (lambda (_%g112353112356%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g112353112356%_)))
                                  (_%g112351112390%_
                                   (lambda (_%g112353112364%_)
                                     ((lambda (_%L112367%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp113481
                                                           (lambda (_%g112381112384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g112382112387%_)
                     (cons _%g112381112384%_ _%g112382112387%_))))
              (declare (not safe))
              (__foldr1 __tmp113481 '() _%L112334%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L112367%_
                                                                '())
                                                          '()))))
                                      _%g112353112364%_))))
                             (_%g112351112390%_ (car (last _%bind112277%_)))))
                         _%bind-try112291112330%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop112286112310%_
                                                 _%target112283112304%_
                                                 '()))
                                              (_%g112280112297%_
                                               _%g112281112301%_)))))
                                    (_%g112280112297%_ _%g112281112301%_)))))
                        (_%g112279112394%_ _%bind112277%_))))))
          (let* ((_%g112121112140%_
                  (lambda (_%g112122112136%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g112122112136%_)))
                 (_%g112120112263%_
                  (lambda (_%g112122112144%_)
                    (if (gx#stx-pair? _%g112122112144%_)
                        (let ((_%e112126112147%_
                               (gx#syntax-e _%g112122112144%_)))
                          (let ((_%hd112127112151%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e112126112147%_)))
                                (_%tl112128112154%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e112126112147%_))))
                            (if (gx#stx-pair? _%tl112128112154%_)
                                (let ((_%e112129112157%_
                                       (gx#syntax-e _%tl112128112154%_)))
                                  (let ((_%hd112130112161%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e112129112157%_)))
                                        (_%tl112131112164%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e112129112157%_))))
                                    (if (gx#stx-pair? _%tl112131112164%_)
                                        (let ((_%e112132112167%_
                                               (gx#syntax-e
                                                _%tl112131112164%_)))
                                          (let ((_%hd112133112171%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e112132112167%_)))
                                                (_%tl112134112174%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e112132112167%_))))
                                            ((lambda (_%L112177%_
                                                      _%L112179%_
                                                      _%L112180%_)
                                               (if (and (gx#identifier-list?
                                                         _%L112179%_)
                                                        (gx#stx-list?
                                                         _%L112177%_))
                                                   (let* ((_%g112198112206%_
                                                           (lambda (_%g112199112202%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g112199112202%_)))
                                                          (_%g112197112259%_
                                                           (lambda (_%g112199112210%_)
                                                             ((lambda (_%L112213%_)
                                                                (let* ((_%g112225112233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g112226112229%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g112226112229%_)))
                               (_%g112224112255%_
                                (lambda (_%g112226112237%_)
                                  ((lambda (_%L112240%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L112213%_
                                                             (cons _%L112180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L112240%_ '()))))
                                   _%g112226112237%_))))
                          (_%g112224112255%_
                           (_%generate112118%_
                            _%L112213%_
                            (gx#syntax->list _%L112179%_)
                            _%L112177%_))))
                      _%g112199112210%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112197112259%_
                                                      (gx#genident 'e)))
                                                   (_%g112121112140%_
                                                    _%g112122112144%_)))
                                             _%tl112134112174%_
                                             _%hd112133112171%_
                                             _%hd112130112161%_)))
                                        (_%g112121112140%_
                                         _%g112122112144%_))))
                                (_%g112121112140%_ _%g112122112144%_))))
                        (_%g112121112140%_ _%g112122112144%_)))))
            (_%g112120112263%_ _%stx112115%_)))))))
