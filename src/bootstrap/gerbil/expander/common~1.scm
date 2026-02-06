(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g168950_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168952_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168954_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168956_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168957_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168959_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168960_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168962_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168963_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168965_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168966_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168968_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj168946
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
          (##unchecked-structure-set! __obj168946 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168946 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168946 '(e source) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168946 '(e source) '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168946 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168946 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168946 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168946 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168946 '#f '12 '#f '#f))
        (let ((__tmp168949 |gx[1]#_g168950_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj168946 __tmp168949 '3 '#f '#f))
        (let ((__tmp168951 |gx[1]#_g168952_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj168946 __tmp168951 '13 '#f '#f))
        (let ((__tmp168953 |gx[1]#_g168954_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj168946 __tmp168953 '14 '#f '#f))
        (let ((__tmp168955
               (cons (cons 'e |gx[1]#_g168956_|)
                     (cons (cons 'source |gx[1]#_g168957_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj168946 __tmp168955 '15 '#f '#f))
        (let ((__tmp168958
               (cons (cons 'e |gx[1]#_g168959_|)
                     (cons (cons 'source |gx[1]#_g168960_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj168946 __tmp168958 '16 '#f '#f))
        (let ((__tmp168961
               (cons (cons 'e |gx[1]#_g168962_|)
                     (cons (cons 'source |gx[1]#_g168963_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj168946 __tmp168961 '17 '#f '#f))
        (let ((__tmp168964
               (cons (cons 'e |gx[1]#_g168965_|)
                     (cons (cons 'source |gx[1]#_g168966_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj168946 __tmp168964 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168946 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168946 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168946 '() '20 '#f '#f))
        __obj168946))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx167543%_)
        (let* ((_%g167547167561%_
                (lambda (_%g167548167557%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g167548167557%_)))
               (_%g167546167603%_
                (lambda (_%g167548167565%_)
                  (if (gx#stx-pair? _%g167548167565%_)
                      (let ((_%e167550167568%_
                             (gx#syntax-e _%g167548167565%_)))
                        (let ((_%hd167551167572%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e167550167568%_)))
                              (_%tl167552167575%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e167550167568%_))))
                          (if (gx#stx-pair? _%tl167552167575%_)
                              (let ((_%e167553167578%_
                                     (gx#syntax-e _%tl167552167575%_)))
                                (let ((_%hd167554167582%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167553167578%_)))
                                      (_%tl167555167585%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167553167578%_))))
                                  (if (gx#stx-null? _%tl167555167585%_)
                                      ((lambda (_%g167549167588%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%g167549167588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure"
                               (cons _%g167549167588%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd167554167582%_)
                                      (_%g167547167561%_ _%g167548167565%_))))
                              (_%g167547167561%_ _%g167548167565%_))))
                      (_%g167547167561%_ _%g167548167565%_)))))
          (_%g167546167603%_ _%$stx167543%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx167607%_)
        (letrec ((_%generate167610%_
                  (lambda (_%tgt167759%_ _%kws167761%_ _%clauses167762%_)
                    (letrec ((_%generate-clause167764%_
                              (lambda (_%hd168697%_ _%E168699%_)
                                (let* ((_%__stx168849168850%_ _%hd168697%_)
                                       (_%g168703168730%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx168849168850%_))))
                                  (let ((_%__kont168852168853%_
                                         (lambda (_%g168705168826%_
                                                  _%g168706168828%_)
                                           (_%generate1167766%_
                                            _%hd168697%_
                                            _%g168706168828%_
                                            '#t
                                            _%g168705168826%_
                                            _%E168699%_)))
                                        (_%__kont168854168855%_
                                         (lambda (_%g168713168778%_
                                                  _%g168714168780%_
                                                  _%g168715168781%_)
                                           (_%generate1167766%_
                                            _%hd168697%_
                                            _%g168715168781%_
                                            _%g168714168780%_
                                            _%g168713168778%_
                                            _%E168699%_)))
                                        (_%__kont168856168857%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx167607%_
                                            _%hd168697%_))))
                                    (if (gx#stx-pair? _%__stx168849168850%_)
                                        (let ((_%e168707168806%_
                                               (gx#syntax-e
                                                _%__stx168849168850%_)))
                                          (let ((_%tl168709168813%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168707168806%_)))
                                                (_%hd168708168810%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168707168806%_))))
                                            (if (gx#stx-pair?
                                                 _%tl168709168813%_)
                                                (let ((_%e168710168816%_
                                                       (gx#syntax-e
                                                        _%tl168709168813%_)))
                                                  (let ((_%tl168712168823%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168710168816%_)))
                                                        (_%hd168711168820%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168710168816%_))))
                                                    (if (gx#stx-null?
                                                         _%tl168712168823%_)
                                                        (_%__kont168852168853%_
                                                         _%hd168711168820%_
                                                         _%hd168708168810%_)
                                                        (if (gx#stx-pair?
                                                             _%tl168712168823%_)
                                                            (let ((_%e168722168768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl168712168823%_)))
                      (let ((_%tl168724168775%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168722168768%_)))
                            (_%hd168723168772%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168722168768%_))))
                        (if (gx#stx-null? _%tl168724168775%_)
                            (_%__kont168854168855%_
                             _%hd168723168772%_
                             _%hd168711168820%_
                             _%hd168708168810%_)
                            (_%__kont168856168857%_))))
                    (_%__kont168856168857%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont168856168857%_))))
                                        (_%__kont168856168857%_))))))
                             (_%generate1167766%_
                              (lambda (_%where168150%_
                                       _%hd168152%_
                                       _%fender168153%_
                                       _%body168154%_
                                       _%E168155%_)
                                (letrec ((_%recur168157%_
                                          (lambda (_%hd168160%_
                                                   _%tgt168162%_
                                                   _%K168163%_)
                                            (let* ((_%__stx168895168896%_
                                                    _%hd168160%_)
                                                   (_%g168166168178%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx168895168896%_))))
                                              (let ((_%__kont168898168899%_
                                                     (lambda (_%g168168168487%_
                                                              _%g168169168489%_)
                                                       (let* ((_%g168500168508%_
                                                               (lambda (_%g168501168504%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g168501168504%_)))
                      (_%g168499168689%_
                       (lambda (_%g168501168512%_)
                         ((lambda (_%g168502168515%_)
                            (let* ((_%g168527168535%_
                                    (lambda (_%g168528168531%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g168528168531%_)))
                                   (_%g168526168685%_
                                    (lambda (_%g168528168539%_)
                                      ((lambda (_%g168529168542%_)
                                         (let* ((_%g168555168563%_
                                                 (lambda (_%g168556168559%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g168556168559%_)))
                                                (_%g168554168681%_
                                                 (lambda (_%g168556168567%_)
                                                   ((lambda (_%g168557168570%_)
                                                      (let* ((_%g168583168591%_
                                                              (lambda (_%g168584168587%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g168584168587%_)))
                     (_%g168582168677%_
                      (lambda (_%g168584168595%_)
                        ((lambda (_%g168585168598%_)
                           (let* ((_%g168611168619%_
                                   (lambda (_%g168612168615%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g168612168615%_)))
                                  (_%g168610168673%_
                                   (lambda (_%g168612168623%_)
                                     ((lambda (_%g168613168626%_)
                                        (let* ((_%g168639168647%_
                                                (lambda (_%g168640168643%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g168640168643%_)))
                                               (_%g168638168669%_
                                                (lambda (_%g168640168651%_)
                                                  ((lambda (_%g168641168654%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%g168502168515%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g168529168542%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%g168502168515%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g168557168570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%g168529168542%_ '()))
                                       '()))
                           (cons (cons _%g168585168598%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%g168529168542%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons _%g168613168626%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g168641168654%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g168640168651%_))))
                                          (_%g168638168669%_ _%E168155%_)))
                                      _%g168612168623%_))))
                             (_%g168610168673%_
                              (_%recur168157%_
                               _%g168169168489%_
                               _%g168557168570%_
                               (_%recur168157%_
                                _%g168168168487%_
                                _%g168585168598%_
                                _%K168163%_)))))
                         _%g168584168595%_))))
                (_%g168582168677%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g168556168567%_))))
                                           (_%g168554168681%_
                                            (gx#genident 'hd))))
                                       _%g168528168539%_))))
                              (_%g168526168685%_ (gx#genident 'e))))
                          _%g168501168512%_))))
                 (_%g168499168689%_ _%tgt168162%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont168900168901%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd168160%_)
                                                           (if (gx#underscore?
                                                                _%hd168160%_)
                                                               _%K168163%_
                                                               (if (let ((__tmp168967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g168192168194%_)
                                    (gx#bound-identifier=?
                                     _%g168192168194%_
                                     _%hd168160%_))))
                             (declare (not safe))
                             (__find __tmp168967 _%kws167761%_))
                           (let* ((_%g168200168215%_
                                   (lambda (_%g168201168211%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g168201168211%_)))
                                  (_%g168199168268%_
                                   (lambda (_%g168201168219%_)
                                     (if (gx#stx-pair? _%g168201168219%_)
                                         (let ((_%e168204168222%_
                                                (gx#syntax-e
                                                 _%g168201168219%_)))
                                           (let ((_%hd168205168226%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168204168222%_)))
                                                 (_%tl168206168229%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168204168222%_))))
                                             (if (gx#stx-pair?
                                                  _%tl168206168229%_)
                                                 (let ((_%e168207168232%_
                                                        (gx#syntax-e
                                                         _%tl168206168229%_)))
                                                   (let ((_%hd168208168236%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168207168232%_)))
                                                         (_%tl168209168239%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168207168232%_))))
                                                     (if (gx#stx-null?
                                                          _%tl168209168239%_)
                                                         ((lambda (_%g168202168242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g168203168244%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%g168203168244%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%g168203168244%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%g168202168242%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K168163%_ (cons _%E168155%_ '())))))
                  _%hd168208168236%_
                  _%hd168205168226%_)
                 (_%g168200168215%_ _%g168201168219%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g168200168215%_
                                                  _%g168201168219%_))))
                                         (_%g168200168215%_
                                          _%g168201168219%_)))))
                             (_%g168199168268%_
                              (list _%tgt168162%_ _%hd168160%_)))
                           (let* ((_%g168274168289%_
                                   (lambda (_%g168275168285%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g168275168285%_)))
                                  (_%g168273168334%_
                                   (lambda (_%g168275168293%_)
                                     (if (gx#stx-pair? _%g168275168293%_)
                                         (let ((_%e168278168296%_
                                                (gx#syntax-e
                                                 _%g168275168293%_)))
                                           (let ((_%hd168279168300%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168278168296%_)))
                                                 (_%tl168280168303%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168278168296%_))))
                                             (if (gx#stx-pair?
                                                  _%tl168280168303%_)
                                                 (let ((_%e168281168306%_
                                                        (gx#syntax-e
                                                         _%tl168280168303%_)))
                                                   (let ((_%hd168282168310%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168281168306%_)))
                                                         (_%tl168283168313%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168281168306%_))))
                                                     (if (gx#stx-null?
                                                          _%tl168283168313%_)
                                                         ((lambda (_%g168276168316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g168277168318%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%g168276168316%_
                                            (cons _%g168277168318%_ '()))
                                      '())
                                (cons _%K168163%_ '()))))
                  _%hd168282168310%_
                  _%hd168279168300%_)
                 (_%g168274168289%_ _%g168275168293%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g168274168289%_
                                                  _%g168275168293%_))))
                                         (_%g168274168289%_
                                          _%g168275168293%_)))))
                             (_%g168273168334%_
                              (list _%tgt168162%_ _%hd168160%_)))))
                   (if (gx#stx-null? _%hd168160%_)
                       (let* ((_%g168340168348%_
                               (lambda (_%g168341168344%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g168341168344%_)))
                              (_%g168339168367%_
                               (lambda (_%g168341168352%_)
                                 ((lambda (_%g168342168355%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%g168342168355%_
                                                            '()))
                                                (cons _%K168163%_
                                                      (cons _%E168155%_
                                                            '())))))
                                  _%g168341168352%_))))
                         (_%g168339168367%_ _%tgt168162%_))
                       (if (gx#stx-datum? _%hd168160%_)
                           (let* ((_%g168373168392%_
                                   (lambda (_%g168374168388%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g168374168388%_)))
                                  (_%g168372168451%_
                                   (lambda (_%g168374168396%_)
                                     (if (gx#stx-pair? _%g168374168396%_)
                                         (let ((_%e168378168399%_
                                                (gx#syntax-e
                                                 _%g168374168396%_)))
                                           (let ((_%hd168379168403%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168378168399%_)))
                                                 (_%tl168380168406%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168378168399%_))))
                                             (if (gx#stx-pair?
                                                  _%tl168380168406%_)
                                                 (let ((_%e168381168409%_
                                                        (gx#syntax-e
                                                         _%tl168380168406%_)))
                                                   (let ((_%hd168382168413%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168381168409%_)))
                                                         (_%tl168383168416%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168381168409%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl168383168416%_)
                                                         (let ((_%e168384168419%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl168383168416%_)))
                   (let ((_%hd168385168423%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168384168419%_)))
                         (_%tl168386168426%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168384168419%_))))
                     (if (gx#stx-null? _%tl168386168426%_)
                         ((lambda (_%g168375168429%_
                                   _%g168376168431%_
                                   _%g168377168432%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%g168375168429%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%g168377168432%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g168376168431%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K168163%_
                                              (cons _%E168155%_ '())))))
                          _%hd168385168423%_
                          _%hd168382168413%_
                          _%hd168379168403%_)
                         (_%g168373168392%_ _%g168374168396%_))))
                 (_%g168373168392%_ _%g168374168396%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g168373168392%_
                                                  _%g168374168396%_))))
                                         (_%g168373168392%_
                                          _%g168374168396%_)))))
                             (_%g168372168451%_
                              (list _%tgt168162%_
                                    _%hd168160%_
                                    (let ((_%e168455%_
                                           (gx#stx-e _%hd168160%_)))
                                      (if (or (keyword? _%e168455%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e168455%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e168455%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx167607%_
                            _%where168150%_
                            _%hd168160%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx168895168896%_)
                                                    (let ((_%e168170168477%_
                                                           (gx#syntax-e
                                                            _%__stx168895168896%_)))
                                                      (let ((_%tl168172168484%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e168170168477%_)))
                    (_%hd168171168481%_
                     (let () (declare (not safe)) (##car _%e168170168477%_))))
                (_%__kont168898168899%_
                 _%tl168172168484%_
                 _%hd168171168481%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont168900168901%_)))))))
                                  (_%recur168157%_
                                   _%hd168152%_
                                   _%tgt167759%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender168153%_
                                               (cons _%body168154%_
                                                     (cons _%E168155%_
                                                           '()))))))))
                             (_%generate-clauses167767%_
                              (lambda (_%clauses167888%_)
                                (let _%lp167891%_ ((_%rest167894%_
                                                    _%clauses167888%_)
                                                   (_%E167896%_
                                                    (gx#genident 'E))
                                                   (_%r167897%_ '()))
                                  (let* ((_%__stx168931168932%_ _%rest167894%_)
                                         (_%g167900167912%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx168931168932%_))))
                                    (let ((_%__kont168934168935%_
                                           (lambda (_%g167902167977%_
                                                    _%g167903167979%_)
                                             (let* ((_%__stx168911168912%_
                                                     _%g167903167979%_)
                                                    (_%g167991168002%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx168911168912%_))))
                                               (let ((_%__kont168914168915%_
                                                      (lambda (_%g167993168131%_)
                                                        (if (gx#stx-null?
                                                             _%g167902167977%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g167993168131%_)
                             (not (gx#stx-null? _%g167993168131%_)))
                        (cons (cons _%E167896%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g167993168131%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g167903167979%_))
                                          '()))
                              _%r167897%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx167607%_
                         _%g167903167979%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx167607%_
                     _%g167903167979%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont168916168917%_
                                                      (lambda ()
                                                        (let* ((_%g168013168021%_
                                                                (lambda (_%g168014168017%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g168014168017%_)))
                       (_%g168012168110%_
                        (lambda (_%g168014168025%_)
                          ((lambda (_%g168015168028%_)
                             (let* ((_%g168044168052%_
                                     (lambda (_%g168045168048%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g168045168048%_)))
                                    (_%g168043168106%_
                                     (lambda (_%g168045168056%_)
                                       ((lambda (_%g168046168059%_)
                                          (let* ((_%g168072168080%_
                                                  (lambda (_%g168073168076%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g168073168076%_)))
                                                 (_%g168071168102%_
                                                  (lambda (_%g168073168084%_)
                                                    ((lambda (_%g168074168087%_)
                                                       (_%lp167891%_
                                                        _%g167902167977%_
                                                        _%g168015168028%_
                                                        (cons (cons _%E167896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g168074168087%_ '()))
                      _%r167897%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g168073168084%_))))
                                            (_%g168071168102%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%g168046168059%_
                                                                '())))
                                              (gx#stx-source
                                               _%g167903167979%_)))))
                                        _%g168045168056%_))))
                               (_%g168043168106%_
                                (_%generate-clause167764%_
                                 _%g167903167979%_
                                 (cons _%g168015168028%_ '())))))
                           _%g168014168025%_))))
                  (_%g168012168110%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx168911168912%_)
                                                     (let ((_%e167994168121%_
                                                            (gx#syntax-e
                                                             _%__stx168911168912%_)))
                                                       (let ((_%tl167996168128%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e167994168121%_)))
                     (_%hd167995168125%_
                      (let () (declare (not safe)) (##car _%e167994168121%_))))
                 (if (gx#identifier? _%hd167995168125%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g168968_|
                          _%hd167995168125%_)
                         (_%__kont168914168915%_ _%tl167996168128%_)
                         (_%__kont168916168917%_))
                     (_%__kont168916168917%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont168916168917%_))))))
                                          (_%__kont168936168937%_
                                           (lambda ()
                                             (let* ((_%g167923167931%_
                                                     (lambda (_%g167924167927%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g167924167927%_)))
                                                    (_%g167922167956%_
                                                     (lambda (_%g167924167935%_)
                                                       ((lambda (_%g167925167938%_)
                                                          (cons (cons _%E167896%_
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
                                 (cons _%g167925167938%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx167607%_))
                                    '()))
                        _%r167897%_))
                _%g167924167935%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g167922167956%_
                                                _%tgt167759%_)))))
                                      (if (gx#stx-pair? _%__stx168931168932%_)
                                          (let ((_%e167904167967%_
                                                 (gx#syntax-e
                                                  _%__stx168931168932%_)))
                                            (let ((_%tl167906167974%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e167904167967%_)))
                                                  (_%hd167905167971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e167904167967%_))))
                                              (_%__kont168934168935%_
                                               _%tl167906167974%_
                                               _%hd167905167971%_)))
                                          (_%__kont168936168937%_))))))))
                      (let* ((_%bind167769%_
                              (_%generate-clauses167767%_ _%clauses167762%_))
                             (_%g167772167789%_
                              (lambda (_%g167773167785%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g167773167785%_)))
                             (_%g167771167884%_
                              (lambda (_%g167773167793%_)
                                (if (gx#stx-pair/null? _%g167773167793%_)
                                    (let ((_g168969_
                                           (gx#syntax-split-splice
                                            _%g167773167793%_
                                            '0)))
                                      (begin
                                        (let ((_g168970_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g168969_)
                                                     (##values-length
                                                      _g168969_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g168970_ 2)))
                                              (error "Context expects 2 values"
                                                     _g168970_)))
                                        (let ((_%target167775167796%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g168969_ 0)))
                                              (_%tl167777167799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g168969_ 1))))
                                          (if (gx#stx-null? _%tl167777167799%_)
                                              (letrec ((_%loop167778167802%_
                                                        (lambda (_%hd167776167806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try167782167809%_)
                  (if (gx#stx-pair? _%hd167776167806%_)
                      (let ((_%e167779167811%_
                             (gx#syntax-e _%hd167776167806%_)))
                        (let ((_%lp-hd167780167815%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e167779167811%_)))
                              (_%lp-tl167781167818%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e167779167811%_))))
                          (_%loop167778167802%_
                           _%lp-tl167781167818%_
                           (cons _%lp-hd167780167815%_
                                 _%bind-try167782167809%_))))
                      (let ((_%bind-try167783167821%_
                             (reverse _%bind-try167782167809%_)))
                        ((lambda (_%g167774167824%_)
                           (let* ((_%g167842167850%_
                                   (lambda (_%g167843167846%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g167843167846%_)))
                                  (_%g167841167880%_
                                   (lambda (_%g167843167854%_)
                                     ((lambda (_%g167844167857%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp168971
                                                           (lambda (_%g167871167874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g167872167877%_)
                     (cons _%g167871167874%_ _%g167872167877%_))))
              (declare (not safe))
              (foldr__0 __tmp168971 '() _%g167774167824%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g167844167857%_
                                                                '())
                                                          '()))))
                                      _%g167843167854%_))))
                             (_%g167841167880%_ (car (last _%bind167769%_)))))
                         _%bind-try167783167821%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop167778167802%_
                                                 _%target167775167796%_
                                                 '()))
                                              (_%g167772167789%_
                                               _%g167773167793%_)))))
                                    (_%g167772167789%_ _%g167773167793%_)))))
                        (_%g167771167884%_ _%bind167769%_))))))
          (let* ((_%g167613167632%_
                  (lambda (_%g167614167628%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g167614167628%_)))
                 (_%g167612167755%_
                  (lambda (_%g167614167636%_)
                    (if (gx#stx-pair? _%g167614167636%_)
                        (let ((_%e167618167639%_
                               (gx#syntax-e _%g167614167636%_)))
                          (let ((_%hd167619167643%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167618167639%_)))
                                (_%tl167620167646%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167618167639%_))))
                            (if (gx#stx-pair? _%tl167620167646%_)
                                (let ((_%e167621167649%_
                                       (gx#syntax-e _%tl167620167646%_)))
                                  (let ((_%hd167622167653%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167621167649%_)))
                                        (_%tl167623167656%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167621167649%_))))
                                    (if (gx#stx-pair? _%tl167623167656%_)
                                        (let ((_%e167624167659%_
                                               (gx#syntax-e
                                                _%tl167623167656%_)))
                                          (let ((_%hd167625167663%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167624167659%_)))
                                                (_%tl167626167666%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167624167659%_))))
                                            ((lambda (_%g167615167669%_
                                                      _%g167616167671%_
                                                      _%g167617167672%_)
                                               (if (and (gx#identifier-list?
                                                         _%g167616167671%_)
                                                        (gx#stx-list?
                                                         _%g167615167669%_))
                                                   (let* ((_%g167690167698%_
                                                           (lambda (_%g167691167694%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g167691167694%_)))
                                                          (_%g167689167751%_
                                                           (lambda (_%g167691167702%_)
                                                             ((lambda (_%g167692167705%_)
                                                                (let* ((_%g167717167725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g167718167721%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g167718167721%_)))
                               (_%g167716167747%_
                                (lambda (_%g167718167729%_)
                                  ((lambda (_%g167719167732%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%g167692167705%_
                                                             (cons _%g167617167672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g167719167732%_
                                                       '()))))
                                   _%g167718167729%_))))
                          (_%g167716167747%_
                           (_%generate167610%_
                            _%g167692167705%_
                            (gx#syntax->list _%g167616167671%_)
                            _%g167615167669%_))))
                      _%g167691167702%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g167689167751%_
                                                      (gx#genident 'e)))
                                                   (_%g167613167632%_
                                                    _%g167614167636%_)))
                                             _%tl167626167666%_
                                             _%hd167625167663%_
                                             _%hd167622167653%_)))
                                        (_%g167613167632%_
                                         _%g167614167636%_))))
                                (_%g167613167632%_ _%g167614167636%_))))
                        (_%g167613167632%_ _%g167614167636%_)))))
            (_%g167612167755%_ _%stx167607%_)))))))
