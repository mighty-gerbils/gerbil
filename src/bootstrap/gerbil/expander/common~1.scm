(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g112975_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112977_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112979_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112981_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112982_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112984_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112985_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112987_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112988_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112990_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112991_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112993_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj112971
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
          (##unchecked-structure-set! __obj112971 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112971 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112971 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112971 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112971 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112971 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112971 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112971 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112971 '#f '11 '#f '#f))
        (let ((__tmp112974 |gx[1]#_g112975_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj112971 __tmp112974 '12 '#f '#f))
        (let ((__tmp112976 |gx[1]#_g112977_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj112971 __tmp112976 '13 '#f '#f))
        (let ((__tmp112978 |gx[1]#_g112979_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj112971 __tmp112978 '14 '#f '#f))
        (let ((__tmp112980
               (cons (cons 'e |gx[1]#_g112981_|)
                     (cons (cons 'source |gx[1]#_g112982_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj112971 __tmp112980 '15 '#f '#f))
        (let ((__tmp112983
               (cons (cons 'e |gx[1]#_g112984_|)
                     (cons (cons 'source |gx[1]#_g112985_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj112971 __tmp112983 '16 '#f '#f))
        (let ((__tmp112986
               (cons (cons 'e |gx[1]#_g112987_|)
                     (cons (cons 'source |gx[1]#_g112988_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj112971 __tmp112986 '17 '#f '#f))
        (let ((__tmp112989
               (cons (cons 'e |gx[1]#_g112990_|)
                     (cons (cons 'source |gx[1]#_g112991_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj112971 __tmp112989 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112971 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112971 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112971 '() '20 '#f '#f))
        __obj112971))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx111566%_)
        (let* ((_%g111570111584%_
                (lambda (_%g111571111580%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g111571111580%_)))
               (_%g111569111626%_
                (lambda (_%g111571111588%_)
                  (if (gx#stx-pair? _%g111571111588%_)
                      (let ((_%e111573111591%_
                             (gx#syntax-e _%g111571111588%_)))
                        (let ((_%hd111574111595%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e111573111591%_)))
                              (_%tl111575111598%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e111573111591%_))))
                          (if (gx#stx-pair? _%tl111575111598%_)
                              (let ((_%e111576111601%_
                                     (gx#syntax-e _%tl111575111598%_)))
                                (let ((_%hd111577111605%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e111576111601%_)))
                                      (_%tl111578111608%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e111576111601%_))))
                                  (if (gx#stx-null? _%tl111578111608%_)
                                      ((lambda (_%L111611%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L111611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L111611%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd111577111605%_)
                                      (_%g111570111584%_ _%g111571111588%_))))
                              (_%g111570111584%_ _%g111571111588%_))))
                      (_%g111570111584%_ _%g111571111588%_)))))
          (_%g111569111626%_ _%$stx111566%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx111630%_)
        (letrec ((_%generate111633%_
                  (lambda (_%tgt111782%_ _%kws111784%_ _%clauses111785%_)
                    (letrec ((_%generate-clause111787%_
                              (lambda (_%hd112722%_ _%E112724%_)
                                (let* ((_%__stx112874112875%_ _%hd112722%_)
                                       (_%g112728112755%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx112874112875%_))))
                                  (let ((_%__kont112877112878%_
                                         (lambda (_%L112851%_ _%L112853%_)
                                           (_%generate1111789%_
                                            _%hd112722%_
                                            _%L112853%_
                                            '#t
                                            _%L112851%_
                                            _%E112724%_)))
                                        (_%__kont112879112880%_
                                         (lambda (_%L112803%_
                                                  _%L112805%_
                                                  _%L112806%_)
                                           (_%generate1111789%_
                                            _%hd112722%_
                                            _%L112806%_
                                            _%L112805%_
                                            _%L112803%_
                                            _%E112724%_)))
                                        (_%__kont112881112882%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx111630%_
                                            _%hd112722%_))))
                                    (if (gx#stx-pair? _%__stx112874112875%_)
                                        (let ((_%e112732112831%_
                                               (gx#syntax-e
                                                _%__stx112874112875%_)))
                                          (let ((_%tl112734112838%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e112732112831%_)))
                                                (_%hd112733112835%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e112732112831%_))))
                                            (if (gx#stx-pair?
                                                 _%tl112734112838%_)
                                                (let ((_%e112735112841%_
                                                       (gx#syntax-e
                                                        _%tl112734112838%_)))
                                                  (let ((_%tl112737112848%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e112735112841%_)))
                                                        (_%hd112736112845%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e112735112841%_))))
                                                    (if (gx#stx-null?
                                                         _%tl112737112848%_)
                                                        (_%__kont112877112878%_
                                                         _%hd112736112845%_
                                                         _%hd112733112835%_)
                                                        (if (gx#stx-pair?
                                                             _%tl112737112848%_)
                                                            (let ((_%e112747112793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl112737112848%_)))
                      (let ((_%tl112749112800%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112747112793%_)))
                            (_%hd112748112797%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112747112793%_))))
                        (if (gx#stx-null? _%tl112749112800%_)
                            (_%__kont112879112880%_
                             _%hd112748112797%_
                             _%hd112736112845%_
                             _%hd112733112835%_)
                            (_%__kont112881112882%_))))
                    (_%__kont112881112882%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont112881112882%_))))
                                        (_%__kont112881112882%_))))))
                             (_%generate1111789%_
                              (lambda (_%where112175%_
                                       _%hd112177%_
                                       _%fender112178%_
                                       _%body112179%_
                                       _%E112180%_)
                                (letrec ((_%recur112182%_
                                          (lambda (_%hd112185%_
                                                   _%tgt112187%_
                                                   _%K112188%_)
                                            (let* ((_%__stx112920112921%_
                                                    _%hd112185%_)
                                                   (_%g112191112203%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx112920112921%_))))
                                              (let ((_%__kont112923112924%_
                                                     (lambda (_%L112512%_
                                                              _%L112514%_)
                                                       (let* ((_%g112525112533%_
                                                               (lambda (_%g112526112529%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g112526112529%_)))
                      (_%g112524112714%_
                       (lambda (_%g112526112537%_)
                         ((lambda (_%L112540%_)
                            (let* ((_%g112552112560%_
                                    (lambda (_%g112553112556%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g112553112556%_)))
                                   (_%g112551112710%_
                                    (lambda (_%g112553112564%_)
                                      ((lambda (_%L112567%_)
                                         (let* ((_%g112580112588%_
                                                 (lambda (_%g112581112584%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g112581112584%_)))
                                                (_%g112579112706%_
                                                 (lambda (_%g112581112592%_)
                                                   ((lambda (_%L112595%_)
                                                      (let* ((_%g112608112616%_
                                                              (lambda (_%g112609112612%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g112609112612%_)))
                     (_%g112607112702%_
                      (lambda (_%g112609112620%_)
                        ((lambda (_%L112623%_)
                           (let* ((_%g112636112644%_
                                   (lambda (_%g112637112640%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g112637112640%_)))
                                  (_%g112635112698%_
                                   (lambda (_%g112637112648%_)
                                     ((lambda (_%L112651%_)
                                        (let* ((_%g112664112672%_
                                                (lambda (_%g112665112668%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g112665112668%_)))
                                               (_%g112663112694%_
                                                (lambda (_%g112665112676%_)
                                                  ((lambda (_%L112679%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L112540%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L112567%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L112540%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L112595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L112567%_ '()))
                                       '()))
                           (cons (cons _%L112623%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L112567%_ '()))
                                             '()))
                                 '()))
                     (cons _%L112651%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L112679%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g112665112676%_))))
                                          (_%g112663112694%_ _%E112180%_)))
                                      _%g112637112648%_))))
                             (_%g112635112698%_
                              (_%recur112182%_
                               _%L112514%_
                               _%L112595%_
                               (_%recur112182%_
                                _%L112512%_
                                _%L112623%_
                                _%K112188%_)))))
                         _%g112609112620%_))))
                (_%g112607112702%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g112581112592%_))))
                                           (_%g112579112706%_
                                            (gx#genident 'hd))))
                                       _%g112553112564%_))))
                              (_%g112551112710%_ (gx#genident 'e))))
                          _%g112526112537%_))))
                 (_%g112524112714%_ _%tgt112187%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont112925112926%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd112185%_)
                                                           (if (gx#underscore?
                                                                _%hd112185%_)
                                                               _%K112188%_
                                                               (if (let ((__tmp112992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g112217112219%_)
                                    (gx#bound-identifier=?
                                     _%g112217112219%_
                                     _%hd112185%_))))
                             (declare (not safe))
                             (__find __tmp112992 _%kws111784%_))
                           (let* ((_%g112225112240%_
                                   (lambda (_%g112226112236%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g112226112236%_)))
                                  (_%g112224112293%_
                                   (lambda (_%g112226112244%_)
                                     (if (gx#stx-pair? _%g112226112244%_)
                                         (let ((_%e112229112247%_
                                                (gx#syntax-e
                                                 _%g112226112244%_)))
                                           (let ((_%hd112230112251%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e112229112247%_)))
                                                 (_%tl112231112254%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e112229112247%_))))
                                             (if (gx#stx-pair?
                                                  _%tl112231112254%_)
                                                 (let ((_%e112232112257%_
                                                        (gx#syntax-e
                                                         _%tl112231112254%_)))
                                                   (let ((_%hd112233112261%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e112232112257%_)))
                                                         (_%tl112234112264%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e112232112257%_))))
                                                     (if (gx#stx-null?
                                                          _%tl112234112264%_)
                                                         ((lambda (_%L112267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L112269%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L112269%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L112269%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L112267%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K112188%_ (cons _%E112180%_ '())))))
                  _%hd112233112261%_
                  _%hd112230112251%_)
                 (_%g112225112240%_ _%g112226112244%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g112225112240%_
                                                  _%g112226112244%_))))
                                         (_%g112225112240%_
                                          _%g112226112244%_)))))
                             (_%g112224112293%_
                              (list _%tgt112187%_ _%hd112185%_)))
                           (let* ((_%g112299112314%_
                                   (lambda (_%g112300112310%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g112300112310%_)))
                                  (_%g112298112359%_
                                   (lambda (_%g112300112318%_)
                                     (if (gx#stx-pair? _%g112300112318%_)
                                         (let ((_%e112303112321%_
                                                (gx#syntax-e
                                                 _%g112300112318%_)))
                                           (let ((_%hd112304112325%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e112303112321%_)))
                                                 (_%tl112305112328%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e112303112321%_))))
                                             (if (gx#stx-pair?
                                                  _%tl112305112328%_)
                                                 (let ((_%e112306112331%_
                                                        (gx#syntax-e
                                                         _%tl112305112328%_)))
                                                   (let ((_%hd112307112335%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e112306112331%_)))
                                                         (_%tl112308112338%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e112306112331%_))))
                                                     (if (gx#stx-null?
                                                          _%tl112308112338%_)
                                                         ((lambda (_%L112341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L112343%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L112341%_ (cons _%L112343%_ '()))
                                      '())
                                (cons _%K112188%_ '()))))
                  _%hd112307112335%_
                  _%hd112304112325%_)
                 (_%g112299112314%_ _%g112300112318%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g112299112314%_
                                                  _%g112300112318%_))))
                                         (_%g112299112314%_
                                          _%g112300112318%_)))))
                             (_%g112298112359%_
                              (list _%tgt112187%_ _%hd112185%_)))))
                   (if (gx#stx-null? _%hd112185%_)
                       (let* ((_%g112365112373%_
                               (lambda (_%g112366112369%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g112366112369%_)))
                              (_%g112364112392%_
                               (lambda (_%g112366112377%_)
                                 ((lambda (_%L112380%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L112380%_ '()))
                                                (cons _%K112188%_
                                                      (cons _%E112180%_
                                                            '())))))
                                  _%g112366112377%_))))
                         (_%g112364112392%_ _%tgt112187%_))
                       (if (gx#stx-datum? _%hd112185%_)
                           (let* ((_%g112398112417%_
                                   (lambda (_%g112399112413%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g112399112413%_)))
                                  (_%g112397112476%_
                                   (lambda (_%g112399112421%_)
                                     (if (gx#stx-pair? _%g112399112421%_)
                                         (let ((_%e112403112424%_
                                                (gx#syntax-e
                                                 _%g112399112421%_)))
                                           (let ((_%hd112404112428%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e112403112424%_)))
                                                 (_%tl112405112431%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e112403112424%_))))
                                             (if (gx#stx-pair?
                                                  _%tl112405112431%_)
                                                 (let ((_%e112406112434%_
                                                        (gx#syntax-e
                                                         _%tl112405112431%_)))
                                                   (let ((_%hd112407112438%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e112406112434%_)))
                                                         (_%tl112408112441%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e112406112434%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl112408112441%_)
                                                         (let ((_%e112409112444%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl112408112441%_)))
                   (let ((_%hd112410112448%_
                          (let ()
                            (declare (not safe))
                            (##car _%e112409112444%_)))
                         (_%tl112411112451%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e112409112444%_))))
                     (if (gx#stx-null? _%tl112411112451%_)
                         ((lambda (_%L112454%_ _%L112456%_ _%L112457%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L112454%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L112457%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L112456%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K112188%_
                                              (cons _%E112180%_ '())))))
                          _%hd112410112448%_
                          _%hd112407112438%_
                          _%hd112404112428%_)
                         (_%g112398112417%_ _%g112399112421%_))))
                 (_%g112398112417%_ _%g112399112421%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g112398112417%_
                                                  _%g112399112421%_))))
                                         (_%g112398112417%_
                                          _%g112399112421%_)))))
                             (_%g112397112476%_
                              (list _%tgt112187%_
                                    _%hd112185%_
                                    (let ((_%e112480%_
                                           (gx#stx-e _%hd112185%_)))
                                      (if (or (keyword? _%e112480%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e112480%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e112480%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx111630%_
                            _%where112175%_
                            _%hd112185%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx112920112921%_)
                                                    (let ((_%e112195112502%_
                                                           (gx#syntax-e
                                                            _%__stx112920112921%_)))
                                                      (let ((_%tl112197112509%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e112195112502%_)))
                    (_%hd112196112506%_
                     (let () (declare (not safe)) (##car _%e112195112502%_))))
                (_%__kont112923112924%_
                 _%tl112197112509%_
                 _%hd112196112506%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont112925112926%_)))))))
                                  (_%recur112182%_
                                   _%hd112177%_
                                   _%tgt111782%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender112178%_
                                               (cons _%body112179%_
                                                     (cons _%E112180%_
                                                           '()))))))))
                             (_%generate-clauses111790%_
                              (lambda (_%clauses111913%_)
                                (let _%lp111916%_ ((_%rest111919%_
                                                    _%clauses111913%_)
                                                   (_%E111921%_
                                                    (gx#genident 'E))
                                                   (_%r111922%_ '()))
                                  (let* ((_%__stx112956112957%_ _%rest111919%_)
                                         (_%g111925111937%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx112956112957%_))))
                                    (let ((_%__kont112959112960%_
                                           (lambda (_%L112002%_ _%L112004%_)
                                             (let* ((_%__stx112936112937%_
                                                     _%L112004%_)
                                                    (_%g112016112027%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx112936112937%_))))
                                               (let ((_%__kont112939112940%_
                                                      (lambda (_%L112156%_)
                                                        (if (gx#stx-null?
                                                             _%L112002%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L112156%_)
                             (not (gx#stx-null? _%L112156%_)))
                        (cons (cons _%E111921%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L112156%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L112004%_))
                                          '()))
                              _%r111922%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx111630%_
                         _%L112004%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx111630%_
                     _%L112004%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont112941112942%_
                                                      (lambda ()
                                                        (let* ((_%g112038112046%_
                                                                (lambda (_%g112039112042%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g112039112042%_)))
                       (_%g112037112135%_
                        (lambda (_%g112039112050%_)
                          ((lambda (_%L112053%_)
                             (let* ((_%g112069112077%_
                                     (lambda (_%g112070112073%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g112070112073%_)))
                                    (_%g112068112131%_
                                     (lambda (_%g112070112081%_)
                                       ((lambda (_%L112084%_)
                                          (let* ((_%g112097112105%_
                                                  (lambda (_%g112098112101%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g112098112101%_)))
                                                 (_%g112096112127%_
                                                  (lambda (_%g112098112109%_)
                                                    ((lambda (_%L112112%_)
                                                       (_%lp111916%_
                                                        _%L112002%_
                                                        _%L112053%_
                                                        (cons (cons _%E111921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L112112%_ '()))
                      _%r111922%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g112098112109%_))))
                                            (_%g112096112127%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L112084%_
                                                                '())))
                                              (gx#stx-source _%L112004%_)))))
                                        _%g112070112081%_))))
                               (_%g112068112131%_
                                (_%generate-clause111787%_
                                 _%L112004%_
                                 (cons _%L112053%_ '())))))
                           _%g112039112050%_))))
                  (_%g112037112135%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx112936112937%_)
                                                     (let ((_%e112019112146%_
                                                            (gx#syntax-e
                                                             _%__stx112936112937%_)))
                                                       (let ((_%tl112021112153%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e112019112146%_)))
                     (_%hd112020112150%_
                      (let () (declare (not safe)) (##car _%e112019112146%_))))
                 (if (gx#identifier? _%hd112020112150%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g112993_|
                          _%hd112020112150%_)
                         (_%__kont112939112940%_ _%tl112021112153%_)
                         (_%__kont112941112942%_))
                     (_%__kont112941112942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont112941112942%_))))))
                                          (_%__kont112961112962%_
                                           (lambda ()
                                             (let* ((_%g111948111956%_
                                                     (lambda (_%g111949111952%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g111949111952%_)))
                                                    (_%g111947111981%_
                                                     (lambda (_%g111949111960%_)
                                                       ((lambda (_%L111963%_)
                                                          (cons (cons _%E111921%_
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
                                 (cons _%L111963%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx111630%_))
                                    '()))
                        _%r111922%_))
                _%g111949111960%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g111947111981%_
                                                _%tgt111782%_)))))
                                      (if (gx#stx-pair? _%__stx112956112957%_)
                                          (let ((_%e111929111992%_
                                                 (gx#syntax-e
                                                  _%__stx112956112957%_)))
                                            (let ((_%tl111931111999%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e111929111992%_)))
                                                  (_%hd111930111996%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e111929111992%_))))
                                              (_%__kont112959112960%_
                                               _%tl111931111999%_
                                               _%hd111930111996%_)))
                                          (_%__kont112961112962%_))))))))
                      (let* ((_%bind111792%_
                              (_%generate-clauses111790%_ _%clauses111785%_))
                             (_%g111795111812%_
                              (lambda (_%g111796111808%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g111796111808%_)))
                             (_%g111794111909%_
                              (lambda (_%g111796111816%_)
                                (if (gx#stx-pair/null? _%g111796111816%_)
                                    (let ((_g112994_
                                           (gx#syntax-split-splice
                                            _%g111796111816%_
                                            '0)))
                                      (begin
                                        (let ((_g112995_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g112994_)
                                                     (##vector-length
                                                      _g112994_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g112995_ 2)))
                                              (error "Context expects 2 values"
                                                     _g112995_)))
                                        (let ((_%target111798111819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g112994_ 0)))
                                              (_%tl111800111822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g112994_ 1))))
                                          (if (gx#stx-null? _%tl111800111822%_)
                                              (letrec ((_%loop111801111825%_
                                                        (lambda (_%hd111799111829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try111805111832%_)
                  (if (gx#stx-pair? _%hd111799111829%_)
                      (let ((_%e111802111835%_
                             (gx#syntax-e _%hd111799111829%_)))
                        (let ((_%lp-hd111803111839%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e111802111835%_)))
                              (_%lp-tl111804111842%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e111802111835%_))))
                          (_%loop111801111825%_
                           _%lp-tl111804111842%_
                           (cons _%lp-hd111803111839%_
                                 _%bind-try111805111832%_))))
                      (let ((_%bind-try111806111845%_
                             (reverse _%bind-try111805111832%_)))
                        ((lambda (_%L111849%_)
                           (let* ((_%g111867111875%_
                                   (lambda (_%g111868111871%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g111868111871%_)))
                                  (_%g111866111905%_
                                   (lambda (_%g111868111879%_)
                                     ((lambda (_%L111882%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp112996
                                                           (lambda (_%g111896111899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g111897111902%_)
                     (cons _%g111896111899%_ _%g111897111902%_))))
              (declare (not safe))
              (__foldr1 __tmp112996 '() _%L111849%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L111882%_
                                                                '())
                                                          '()))))
                                      _%g111868111879%_))))
                             (_%g111866111905%_ (car (last _%bind111792%_)))))
                         _%bind-try111806111845%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop111801111825%_
                                                 _%target111798111819%_
                                                 '()))
                                              (_%g111795111812%_
                                               _%g111796111816%_)))))
                                    (_%g111795111812%_ _%g111796111816%_)))))
                        (_%g111794111909%_ _%bind111792%_))))))
          (let* ((_%g111636111655%_
                  (lambda (_%g111637111651%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g111637111651%_)))
                 (_%g111635111778%_
                  (lambda (_%g111637111659%_)
                    (if (gx#stx-pair? _%g111637111659%_)
                        (let ((_%e111641111662%_
                               (gx#syntax-e _%g111637111659%_)))
                          (let ((_%hd111642111666%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e111641111662%_)))
                                (_%tl111643111669%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e111641111662%_))))
                            (if (gx#stx-pair? _%tl111643111669%_)
                                (let ((_%e111644111672%_
                                       (gx#syntax-e _%tl111643111669%_)))
                                  (let ((_%hd111645111676%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e111644111672%_)))
                                        (_%tl111646111679%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e111644111672%_))))
                                    (if (gx#stx-pair? _%tl111646111679%_)
                                        (let ((_%e111647111682%_
                                               (gx#syntax-e
                                                _%tl111646111679%_)))
                                          (let ((_%hd111648111686%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e111647111682%_)))
                                                (_%tl111649111689%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e111647111682%_))))
                                            ((lambda (_%L111692%_
                                                      _%L111694%_
                                                      _%L111695%_)
                                               (if (and (gx#identifier-list?
                                                         _%L111694%_)
                                                        (gx#stx-list?
                                                         _%L111692%_))
                                                   (let* ((_%g111713111721%_
                                                           (lambda (_%g111714111717%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g111714111717%_)))
                                                          (_%g111712111774%_
                                                           (lambda (_%g111714111725%_)
                                                             ((lambda (_%L111728%_)
                                                                (let* ((_%g111740111748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g111741111744%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g111741111744%_)))
                               (_%g111739111770%_
                                (lambda (_%g111741111752%_)
                                  ((lambda (_%L111755%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L111728%_
                                                             (cons _%L111695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L111755%_ '()))))
                                   _%g111741111752%_))))
                          (_%g111739111770%_
                           (_%generate111633%_
                            _%L111728%_
                            (gx#syntax->list _%L111694%_)
                            _%L111692%_))))
                      _%g111714111725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g111712111774%_
                                                      (gx#genident 'e)))
                                                   (_%g111636111655%_
                                                    _%g111637111659%_)))
                                             _%tl111649111689%_
                                             _%hd111648111686%_
                                             _%hd111645111676%_)))
                                        (_%g111636111655%_
                                         _%g111637111659%_))))
                                (_%g111636111655%_ _%g111637111659%_))))
                        (_%g111636111655%_ _%g111637111659%_)))))
            (_%g111635111778%_ _%stx111630%_)))))))
