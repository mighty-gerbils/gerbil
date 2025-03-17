(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g117979_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117981_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117983_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117985_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117986_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117988_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117989_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117991_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117992_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117994_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117995_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117997_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj117975
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
          (##unchecked-structure-set! __obj117975 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117975 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117975 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117975 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117975 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117975 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117975 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117975 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117975 '#f '11 '#f '#f))
        (let ((__tmp117978 |gx[1]#_g117979_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117975 __tmp117978 '12 '#f '#f))
        (let ((__tmp117980 |gx[1]#_g117981_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117975 __tmp117980 '13 '#f '#f))
        (let ((__tmp117982 |gx[1]#_g117983_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117975 __tmp117982 '14 '#f '#f))
        (let ((__tmp117984
               (cons (cons 'e |gx[1]#_g117985_|)
                     (cons (cons 'source |gx[1]#_g117986_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117975 __tmp117984 '15 '#f '#f))
        (let ((__tmp117987
               (cons (cons 'e |gx[1]#_g117988_|)
                     (cons (cons 'source |gx[1]#_g117989_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117975 __tmp117987 '16 '#f '#f))
        (let ((__tmp117990
               (cons (cons 'e |gx[1]#_g117991_|)
                     (cons (cons 'source |gx[1]#_g117992_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117975 __tmp117990 '17 '#f '#f))
        (let ((__tmp117993
               (cons (cons 'e |gx[1]#_g117994_|)
                     (cons (cons 'source |gx[1]#_g117995_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117975 __tmp117993 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117975 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117975 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117975 '() '20 '#f '#f))
        __obj117975))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx116570%_)
        (let* ((_%g116574116588%_
                (lambda (_%g116575116584%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g116575116584%_)))
               (_%g116573116630%_
                (lambda (_%g116575116592%_)
                  (if (gx#stx-pair? _%g116575116592%_)
                      (let ((_%e116577116595%_
                             (gx#syntax-e _%g116575116592%_)))
                        (let ((_%hd116578116599%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e116577116595%_)))
                              (_%tl116579116602%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e116577116595%_))))
                          (if (gx#stx-pair? _%tl116579116602%_)
                              (let ((_%e116580116605%_
                                     (gx#syntax-e _%tl116579116602%_)))
                                (let ((_%hd116581116609%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e116580116605%_)))
                                      (_%tl116582116612%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e116580116605%_))))
                                  (if (gx#stx-null? _%tl116582116612%_)
                                      ((lambda (_%L116615%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L116615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L116615%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd116581116609%_)
                                      (_%g116574116588%_ _%g116575116592%_))))
                              (_%g116574116588%_ _%g116575116592%_))))
                      (_%g116574116588%_ _%g116575116592%_)))))
          (_%g116573116630%_ _%$stx116570%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx116634%_)
        (letrec ((_%generate116637%_
                  (lambda (_%tgt116786%_ _%kws116788%_ _%clauses116789%_)
                    (letrec ((_%generate-clause116791%_
                              (lambda (_%hd117726%_ _%E117728%_)
                                (let* ((_%__stx117878117879%_ _%hd117726%_)
                                       (_%g117732117759%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx117878117879%_))))
                                  (let ((_%__kont117881117882%_
                                         (lambda (_%L117855%_ _%L117857%_)
                                           (_%generate1116793%_
                                            _%hd117726%_
                                            _%L117857%_
                                            '#t
                                            _%L117855%_
                                            _%E117728%_)))
                                        (_%__kont117883117884%_
                                         (lambda (_%L117807%_
                                                  _%L117809%_
                                                  _%L117810%_)
                                           (_%generate1116793%_
                                            _%hd117726%_
                                            _%L117810%_
                                            _%L117809%_
                                            _%L117807%_
                                            _%E117728%_)))
                                        (_%__kont117885117886%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx116634%_
                                            _%hd117726%_))))
                                    (if (gx#stx-pair? _%__stx117878117879%_)
                                        (let ((_%e117736117835%_
                                               (gx#syntax-e
                                                _%__stx117878117879%_)))
                                          (let ((_%tl117738117842%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e117736117835%_)))
                                                (_%hd117737117839%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e117736117835%_))))
                                            (if (gx#stx-pair?
                                                 _%tl117738117842%_)
                                                (let ((_%e117739117845%_
                                                       (gx#syntax-e
                                                        _%tl117738117842%_)))
                                                  (let ((_%tl117741117852%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e117739117845%_)))
                                                        (_%hd117740117849%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e117739117845%_))))
                                                    (if (gx#stx-null?
                                                         _%tl117741117852%_)
                                                        (_%__kont117881117882%_
                                                         _%hd117740117849%_
                                                         _%hd117737117839%_)
                                                        (if (gx#stx-pair?
                                                             _%tl117741117852%_)
                                                            (let ((_%e117751117797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl117741117852%_)))
                      (let ((_%tl117753117804%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e117751117797%_)))
                            (_%hd117752117801%_
                             (let ()
                               (declare (not safe))
                               (##car _%e117751117797%_))))
                        (if (gx#stx-null? _%tl117753117804%_)
                            (_%__kont117883117884%_
                             _%hd117752117801%_
                             _%hd117740117849%_
                             _%hd117737117839%_)
                            (_%__kont117885117886%_))))
                    (_%__kont117885117886%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont117885117886%_))))
                                        (_%__kont117885117886%_))))))
                             (_%generate1116793%_
                              (lambda (_%where117179%_
                                       _%hd117181%_
                                       _%fender117182%_
                                       _%body117183%_
                                       _%E117184%_)
                                (letrec ((_%recur117186%_
                                          (lambda (_%hd117189%_
                                                   _%tgt117191%_
                                                   _%K117192%_)
                                            (let* ((_%__stx117924117925%_
                                                    _%hd117189%_)
                                                   (_%g117195117207%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx117924117925%_))))
                                              (let ((_%__kont117927117928%_
                                                     (lambda (_%L117516%_
                                                              _%L117518%_)
                                                       (let* ((_%g117529117537%_
                                                               (lambda (_%g117530117533%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g117530117533%_)))
                      (_%g117528117718%_
                       (lambda (_%g117530117541%_)
                         ((lambda (_%L117544%_)
                            (let* ((_%g117556117564%_
                                    (lambda (_%g117557117560%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g117557117560%_)))
                                   (_%g117555117714%_
                                    (lambda (_%g117557117568%_)
                                      ((lambda (_%L117571%_)
                                         (let* ((_%g117584117592%_
                                                 (lambda (_%g117585117588%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g117585117588%_)))
                                                (_%g117583117710%_
                                                 (lambda (_%g117585117596%_)
                                                   ((lambda (_%L117599%_)
                                                      (let* ((_%g117612117620%_
                                                              (lambda (_%g117613117616%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g117613117616%_)))
                     (_%g117611117706%_
                      (lambda (_%g117613117624%_)
                        ((lambda (_%L117627%_)
                           (let* ((_%g117640117648%_
                                   (lambda (_%g117641117644%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117641117644%_)))
                                  (_%g117639117702%_
                                   (lambda (_%g117641117652%_)
                                     ((lambda (_%L117655%_)
                                        (let* ((_%g117668117676%_
                                                (lambda (_%g117669117672%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g117669117672%_)))
                                               (_%g117667117698%_
                                                (lambda (_%g117669117680%_)
                                                  ((lambda (_%L117683%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L117544%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L117571%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L117544%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L117599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L117571%_ '()))
                                       '()))
                           (cons (cons _%L117627%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L117571%_ '()))
                                             '()))
                                 '()))
                     (cons _%L117655%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L117683%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g117669117680%_))))
                                          (_%g117667117698%_ _%E117184%_)))
                                      _%g117641117652%_))))
                             (_%g117639117702%_
                              (_%recur117186%_
                               _%L117518%_
                               _%L117599%_
                               (_%recur117186%_
                                _%L117516%_
                                _%L117627%_
                                _%K117192%_)))))
                         _%g117613117624%_))))
                (_%g117611117706%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g117585117596%_))))
                                           (_%g117583117710%_
                                            (gx#genident 'hd))))
                                       _%g117557117568%_))))
                              (_%g117555117714%_ (gx#genident 'e))))
                          _%g117530117541%_))))
                 (_%g117528117718%_ _%tgt117191%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont117929117930%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd117189%_)
                                                           (if (gx#underscore?
                                                                _%hd117189%_)
                                                               _%K117192%_
                                                               (if (let ((__tmp117996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g117221117223%_)
                                    (gx#bound-identifier=?
                                     _%g117221117223%_
                                     _%hd117189%_))))
                             (declare (not safe))
                             (__find __tmp117996 _%kws116788%_))
                           (let* ((_%g117229117244%_
                                   (lambda (_%g117230117240%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117230117240%_)))
                                  (_%g117228117297%_
                                   (lambda (_%g117230117248%_)
                                     (if (gx#stx-pair? _%g117230117248%_)
                                         (let ((_%e117233117251%_
                                                (gx#syntax-e
                                                 _%g117230117248%_)))
                                           (let ((_%hd117234117255%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e117233117251%_)))
                                                 (_%tl117235117258%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e117233117251%_))))
                                             (if (gx#stx-pair?
                                                  _%tl117235117258%_)
                                                 (let ((_%e117236117261%_
                                                        (gx#syntax-e
                                                         _%tl117235117258%_)))
                                                   (let ((_%hd117237117265%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e117236117261%_)))
                                                         (_%tl117238117268%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e117236117261%_))))
                                                     (if (gx#stx-null?
                                                          _%tl117238117268%_)
                                                         ((lambda (_%L117271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L117273%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L117273%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L117273%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L117271%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K117192%_ (cons _%E117184%_ '())))))
                  _%hd117237117265%_
                  _%hd117234117255%_)
                 (_%g117229117244%_ _%g117230117248%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g117229117244%_
                                                  _%g117230117248%_))))
                                         (_%g117229117244%_
                                          _%g117230117248%_)))))
                             (_%g117228117297%_
                              (list _%tgt117191%_ _%hd117189%_)))
                           (let* ((_%g117303117318%_
                                   (lambda (_%g117304117314%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117304117314%_)))
                                  (_%g117302117363%_
                                   (lambda (_%g117304117322%_)
                                     (if (gx#stx-pair? _%g117304117322%_)
                                         (let ((_%e117307117325%_
                                                (gx#syntax-e
                                                 _%g117304117322%_)))
                                           (let ((_%hd117308117329%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e117307117325%_)))
                                                 (_%tl117309117332%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e117307117325%_))))
                                             (if (gx#stx-pair?
                                                  _%tl117309117332%_)
                                                 (let ((_%e117310117335%_
                                                        (gx#syntax-e
                                                         _%tl117309117332%_)))
                                                   (let ((_%hd117311117339%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e117310117335%_)))
                                                         (_%tl117312117342%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e117310117335%_))))
                                                     (if (gx#stx-null?
                                                          _%tl117312117342%_)
                                                         ((lambda (_%L117345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L117347%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L117345%_ (cons _%L117347%_ '()))
                                      '())
                                (cons _%K117192%_ '()))))
                  _%hd117311117339%_
                  _%hd117308117329%_)
                 (_%g117303117318%_ _%g117304117322%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g117303117318%_
                                                  _%g117304117322%_))))
                                         (_%g117303117318%_
                                          _%g117304117322%_)))))
                             (_%g117302117363%_
                              (list _%tgt117191%_ _%hd117189%_)))))
                   (if (gx#stx-null? _%hd117189%_)
                       (let* ((_%g117369117377%_
                               (lambda (_%g117370117373%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g117370117373%_)))
                              (_%g117368117396%_
                               (lambda (_%g117370117381%_)
                                 ((lambda (_%L117384%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L117384%_ '()))
                                                (cons _%K117192%_
                                                      (cons _%E117184%_
                                                            '())))))
                                  _%g117370117381%_))))
                         (_%g117368117396%_ _%tgt117191%_))
                       (if (gx#stx-datum? _%hd117189%_)
                           (let* ((_%g117402117421%_
                                   (lambda (_%g117403117417%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117403117417%_)))
                                  (_%g117401117480%_
                                   (lambda (_%g117403117425%_)
                                     (if (gx#stx-pair? _%g117403117425%_)
                                         (let ((_%e117407117428%_
                                                (gx#syntax-e
                                                 _%g117403117425%_)))
                                           (let ((_%hd117408117432%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e117407117428%_)))
                                                 (_%tl117409117435%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e117407117428%_))))
                                             (if (gx#stx-pair?
                                                  _%tl117409117435%_)
                                                 (let ((_%e117410117438%_
                                                        (gx#syntax-e
                                                         _%tl117409117435%_)))
                                                   (let ((_%hd117411117442%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e117410117438%_)))
                                                         (_%tl117412117445%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e117410117438%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl117412117445%_)
                                                         (let ((_%e117413117448%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl117412117445%_)))
                   (let ((_%hd117414117452%_
                          (let ()
                            (declare (not safe))
                            (##car _%e117413117448%_)))
                         (_%tl117415117455%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e117413117448%_))))
                     (if (gx#stx-null? _%tl117415117455%_)
                         ((lambda (_%L117458%_ _%L117460%_ _%L117461%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L117458%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L117461%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L117460%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K117192%_
                                              (cons _%E117184%_ '())))))
                          _%hd117414117452%_
                          _%hd117411117442%_
                          _%hd117408117432%_)
                         (_%g117402117421%_ _%g117403117425%_))))
                 (_%g117402117421%_ _%g117403117425%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g117402117421%_
                                                  _%g117403117425%_))))
                                         (_%g117402117421%_
                                          _%g117403117425%_)))))
                             (_%g117401117480%_
                              (list _%tgt117191%_
                                    _%hd117189%_
                                    (let ((_%e117484%_
                                           (gx#stx-e _%hd117189%_)))
                                      (if (or (keyword? _%e117484%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e117484%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e117484%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx116634%_
                            _%where117179%_
                            _%hd117189%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx117924117925%_)
                                                    (let ((_%e117199117506%_
                                                           (gx#syntax-e
                                                            _%__stx117924117925%_)))
                                                      (let ((_%tl117201117513%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e117199117506%_)))
                    (_%hd117200117510%_
                     (let () (declare (not safe)) (##car _%e117199117506%_))))
                (_%__kont117927117928%_
                 _%tl117201117513%_
                 _%hd117200117510%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont117929117930%_)))))))
                                  (_%recur117186%_
                                   _%hd117181%_
                                   _%tgt116786%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender117182%_
                                               (cons _%body117183%_
                                                     (cons _%E117184%_
                                                           '()))))))))
                             (_%generate-clauses116794%_
                              (lambda (_%clauses116917%_)
                                (let _%lp116920%_ ((_%rest116923%_
                                                    _%clauses116917%_)
                                                   (_%E116925%_
                                                    (gx#genident 'E))
                                                   (_%r116926%_ '()))
                                  (let* ((_%__stx117960117961%_ _%rest116923%_)
                                         (_%g116929116941%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx117960117961%_))))
                                    (let ((_%__kont117963117964%_
                                           (lambda (_%L117006%_ _%L117008%_)
                                             (let* ((_%__stx117940117941%_
                                                     _%L117008%_)
                                                    (_%g117020117031%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx117940117941%_))))
                                               (let ((_%__kont117943117944%_
                                                      (lambda (_%L117160%_)
                                                        (if (gx#stx-null?
                                                             _%L117006%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L117160%_)
                             (not (gx#stx-null? _%L117160%_)))
                        (cons (cons _%E116925%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L117160%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L117008%_))
                                          '()))
                              _%r116926%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx116634%_
                         _%L117008%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx116634%_
                     _%L117008%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont117945117946%_
                                                      (lambda ()
                                                        (let* ((_%g117042117050%_
                                                                (lambda (_%g117043117046%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g117043117046%_)))
                       (_%g117041117139%_
                        (lambda (_%g117043117054%_)
                          ((lambda (_%L117057%_)
                             (let* ((_%g117073117081%_
                                     (lambda (_%g117074117077%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g117074117077%_)))
                                    (_%g117072117135%_
                                     (lambda (_%g117074117085%_)
                                       ((lambda (_%L117088%_)
                                          (let* ((_%g117101117109%_
                                                  (lambda (_%g117102117105%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g117102117105%_)))
                                                 (_%g117100117131%_
                                                  (lambda (_%g117102117113%_)
                                                    ((lambda (_%L117116%_)
                                                       (_%lp116920%_
                                                        _%L117006%_
                                                        _%L117057%_
                                                        (cons (cons _%E116925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L117116%_ '()))
                      _%r116926%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g117102117113%_))))
                                            (_%g117100117131%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L117088%_
                                                                '())))
                                              (gx#stx-source _%L117008%_)))))
                                        _%g117074117085%_))))
                               (_%g117072117135%_
                                (_%generate-clause116791%_
                                 _%L117008%_
                                 (cons _%L117057%_ '())))))
                           _%g117043117054%_))))
                  (_%g117041117139%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx117940117941%_)
                                                     (let ((_%e117023117150%_
                                                            (gx#syntax-e
                                                             _%__stx117940117941%_)))
                                                       (let ((_%tl117025117157%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e117023117150%_)))
                     (_%hd117024117154%_
                      (let () (declare (not safe)) (##car _%e117023117150%_))))
                 (if (gx#identifier? _%hd117024117154%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g117997_|
                          _%hd117024117154%_)
                         (_%__kont117943117944%_ _%tl117025117157%_)
                         (_%__kont117945117946%_))
                     (_%__kont117945117946%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont117945117946%_))))))
                                          (_%__kont117965117966%_
                                           (lambda ()
                                             (let* ((_%g116952116960%_
                                                     (lambda (_%g116953116956%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g116953116956%_)))
                                                    (_%g116951116985%_
                                                     (lambda (_%g116953116964%_)
                                                       ((lambda (_%L116967%_)
                                                          (cons (cons _%E116925%_
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
                                 (cons _%L116967%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx116634%_))
                                    '()))
                        _%r116926%_))
                _%g116953116964%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g116951116985%_
                                                _%tgt116786%_)))))
                                      (if (gx#stx-pair? _%__stx117960117961%_)
                                          (let ((_%e116933116996%_
                                                 (gx#syntax-e
                                                  _%__stx117960117961%_)))
                                            (let ((_%tl116935117003%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e116933116996%_)))
                                                  (_%hd116934117000%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e116933116996%_))))
                                              (_%__kont117963117964%_
                                               _%tl116935117003%_
                                               _%hd116934117000%_)))
                                          (_%__kont117965117966%_))))))))
                      (let* ((_%bind116796%_
                              (_%generate-clauses116794%_ _%clauses116789%_))
                             (_%g116799116816%_
                              (lambda (_%g116800116812%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g116800116812%_)))
                             (_%g116798116913%_
                              (lambda (_%g116800116820%_)
                                (if (gx#stx-pair/null? _%g116800116820%_)
                                    (let ((_g117998_
                                           (gx#syntax-split-splice
                                            _%g116800116820%_
                                            '0)))
                                      (begin
                                        (let ((_g117999_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g117998_)
                                                     (##values-length
                                                      _g117998_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g117999_ 2)))
                                              (error "Context expects 2 values"
                                                     _g117999_)))
                                        (let ((_%target116802116823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g117998_ 0)))
                                              (_%tl116804116826%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g117998_ 1))))
                                          (if (gx#stx-null? _%tl116804116826%_)
                                              (letrec ((_%loop116805116829%_
                                                        (lambda (_%hd116803116833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try116809116836%_)
                  (if (gx#stx-pair? _%hd116803116833%_)
                      (let ((_%e116806116839%_
                             (gx#syntax-e _%hd116803116833%_)))
                        (let ((_%lp-hd116807116843%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e116806116839%_)))
                              (_%lp-tl116808116846%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e116806116839%_))))
                          (_%loop116805116829%_
                           _%lp-tl116808116846%_
                           (cons _%lp-hd116807116843%_
                                 _%bind-try116809116836%_))))
                      (let ((_%bind-try116810116849%_
                             (reverse _%bind-try116809116836%_)))
                        ((lambda (_%L116853%_)
                           (let* ((_%g116871116879%_
                                   (lambda (_%g116872116875%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116872116875%_)))
                                  (_%g116870116909%_
                                   (lambda (_%g116872116883%_)
                                     ((lambda (_%L116886%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp118000
                                                           (lambda (_%g116900116903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g116901116906%_)
                     (cons _%g116900116903%_ _%g116901116906%_))))
              (declare (not safe))
              (__foldr1 __tmp118000 '() _%L116853%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L116886%_
                                                                '())
                                                          '()))))
                                      _%g116872116883%_))))
                             (_%g116870116909%_ (car (last _%bind116796%_)))))
                         _%bind-try116810116849%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop116805116829%_
                                                 _%target116802116823%_
                                                 '()))
                                              (_%g116799116816%_
                                               _%g116800116820%_)))))
                                    (_%g116799116816%_ _%g116800116820%_)))))
                        (_%g116798116913%_ _%bind116796%_))))))
          (let* ((_%g116640116659%_
                  (lambda (_%g116641116655%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g116641116655%_)))
                 (_%g116639116782%_
                  (lambda (_%g116641116663%_)
                    (if (gx#stx-pair? _%g116641116663%_)
                        (let ((_%e116645116666%_
                               (gx#syntax-e _%g116641116663%_)))
                          (let ((_%hd116646116670%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e116645116666%_)))
                                (_%tl116647116673%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e116645116666%_))))
                            (if (gx#stx-pair? _%tl116647116673%_)
                                (let ((_%e116648116676%_
                                       (gx#syntax-e _%tl116647116673%_)))
                                  (let ((_%hd116649116680%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e116648116676%_)))
                                        (_%tl116650116683%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e116648116676%_))))
                                    (if (gx#stx-pair? _%tl116650116683%_)
                                        (let ((_%e116651116686%_
                                               (gx#syntax-e
                                                _%tl116650116683%_)))
                                          (let ((_%hd116652116690%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e116651116686%_)))
                                                (_%tl116653116693%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e116651116686%_))))
                                            ((lambda (_%L116696%_
                                                      _%L116698%_
                                                      _%L116699%_)
                                               (if (and (gx#identifier-list?
                                                         _%L116698%_)
                                                        (gx#stx-list?
                                                         _%L116696%_))
                                                   (let* ((_%g116717116725%_
                                                           (lambda (_%g116718116721%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g116718116721%_)))
                                                          (_%g116716116778%_
                                                           (lambda (_%g116718116729%_)
                                                             ((lambda (_%L116732%_)
                                                                (let* ((_%g116744116752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g116745116748%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g116745116748%_)))
                               (_%g116743116774%_
                                (lambda (_%g116745116756%_)
                                  ((lambda (_%L116759%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L116732%_
                                                             (cons _%L116699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L116759%_ '()))))
                                   _%g116745116756%_))))
                          (_%g116743116774%_
                           (_%generate116637%_
                            _%L116732%_
                            (gx#syntax->list _%L116698%_)
                            _%L116696%_))))
                      _%g116718116729%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g116716116778%_
                                                      (gx#genident 'e)))
                                                   (_%g116640116659%_
                                                    _%g116641116663%_)))
                                             _%tl116653116693%_
                                             _%hd116652116690%_
                                             _%hd116649116680%_)))
                                        (_%g116640116659%_
                                         _%g116641116663%_))))
                                (_%g116640116659%_ _%g116641116663%_))))
                        (_%g116640116659%_ _%g116641116663%_)))))
            (_%g116639116782%_ _%stx116634%_)))))))
