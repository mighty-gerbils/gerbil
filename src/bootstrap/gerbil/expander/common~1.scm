(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g168958_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168960_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168962_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168964_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168965_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168967_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168968_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168970_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168971_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168973_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168974_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g168976_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj168954
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
          (##unchecked-structure-set! __obj168954 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168954 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168954 '(e source) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168954 '(e source) '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168954 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168954 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168954 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168954 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168954 '#f '12 '#f '#f))
        (let ((__tmp168957 |gx[1]#_g168958_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj168954 __tmp168957 '3 '#f '#f))
        (let ((__tmp168959 |gx[1]#_g168960_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj168954 __tmp168959 '13 '#f '#f))
        (let ((__tmp168961 |gx[1]#_g168962_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj168954 __tmp168961 '14 '#f '#f))
        (let ((__tmp168963
               (cons (cons 'e |gx[1]#_g168964_|)
                     (cons (cons 'source |gx[1]#_g168965_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj168954 __tmp168963 '15 '#f '#f))
        (let ((__tmp168966
               (cons (cons 'e |gx[1]#_g168967_|)
                     (cons (cons 'source |gx[1]#_g168968_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj168954 __tmp168966 '16 '#f '#f))
        (let ((__tmp168969
               (cons (cons 'e |gx[1]#_g168970_|)
                     (cons (cons 'source |gx[1]#_g168971_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj168954 __tmp168969 '17 '#f '#f))
        (let ((__tmp168972
               (cons (cons 'e |gx[1]#_g168973_|)
                     (cons (cons 'source |gx[1]#_g168974_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj168954 __tmp168972 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168954 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168954 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj168954 '() '20 '#f '#f))
        __obj168954))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx167551%_)
        (let* ((_%g167555167569%_
                (lambda (_%g167556167565%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g167556167565%_)))
               (_%g167554167611%_
                (lambda (_%g167556167573%_)
                  (if (gx#stx-pair? _%g167556167573%_)
                      (let ((_%e167558167576%_
                             (gx#syntax-e _%g167556167573%_)))
                        (let ((_%hd167559167580%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e167558167576%_)))
                              (_%tl167560167583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e167558167576%_))))
                          (if (gx#stx-pair? _%tl167560167583%_)
                              (let ((_%e167561167586%_
                                     (gx#syntax-e _%tl167560167583%_)))
                                (let ((_%hd167562167590%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167561167586%_)))
                                      (_%tl167563167593%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167561167586%_))))
                                  (if (gx#stx-null? _%tl167563167593%_)
                                      ((lambda (_%g167557167596%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%g167557167596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure"
                               (cons _%g167557167596%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd167562167590%_)
                                      (_%g167555167569%_ _%g167556167573%_))))
                              (_%g167555167569%_ _%g167556167573%_))))
                      (_%g167555167569%_ _%g167556167573%_)))))
          (_%g167554167611%_ _%$stx167551%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx167615%_)
        (letrec ((_%generate167618%_
                  (lambda (_%tgt167767%_ _%kws167769%_ _%clauses167770%_)
                    (letrec ((_%generate-clause167772%_
                              (lambda (_%hd168705%_ _%E168707%_)
                                (let* ((_%__stx168857168858%_ _%hd168705%_)
                                       (_%g168711168738%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx168857168858%_))))
                                  (let ((_%__kont168860168861%_
                                         (lambda (_%g168713168834%_
                                                  _%g168714168836%_)
                                           (_%generate1167774%_
                                            _%hd168705%_
                                            _%g168714168836%_
                                            '#t
                                            _%g168713168834%_
                                            _%E168707%_)))
                                        (_%__kont168862168863%_
                                         (lambda (_%g168721168786%_
                                                  _%g168722168788%_
                                                  _%g168723168789%_)
                                           (_%generate1167774%_
                                            _%hd168705%_
                                            _%g168723168789%_
                                            _%g168722168788%_
                                            _%g168721168786%_
                                            _%E168707%_)))
                                        (_%__kont168864168865%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx167615%_
                                            _%hd168705%_))))
                                    (if (gx#stx-pair? _%__stx168857168858%_)
                                        (let ((_%e168715168814%_
                                               (gx#syntax-e
                                                _%__stx168857168858%_)))
                                          (let ((_%tl168717168821%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168715168814%_)))
                                                (_%hd168716168818%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168715168814%_))))
                                            (if (gx#stx-pair?
                                                 _%tl168717168821%_)
                                                (let ((_%e168718168824%_
                                                       (gx#syntax-e
                                                        _%tl168717168821%_)))
                                                  (let ((_%tl168720168831%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168718168824%_)))
                                                        (_%hd168719168828%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168718168824%_))))
                                                    (if (gx#stx-null?
                                                         _%tl168720168831%_)
                                                        (_%__kont168860168861%_
                                                         _%hd168719168828%_
                                                         _%hd168716168818%_)
                                                        (if (gx#stx-pair?
                                                             _%tl168720168831%_)
                                                            (let ((_%e168730168776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl168720168831%_)))
                      (let ((_%tl168732168783%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168730168776%_)))
                            (_%hd168731168780%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168730168776%_))))
                        (if (gx#stx-null? _%tl168732168783%_)
                            (_%__kont168862168863%_
                             _%hd168731168780%_
                             _%hd168719168828%_
                             _%hd168716168818%_)
                            (_%__kont168864168865%_))))
                    (_%__kont168864168865%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont168864168865%_))))
                                        (_%__kont168864168865%_))))))
                             (_%generate1167774%_
                              (lambda (_%where168158%_
                                       _%hd168160%_
                                       _%fender168161%_
                                       _%body168162%_
                                       _%E168163%_)
                                (letrec ((_%recur168165%_
                                          (lambda (_%hd168168%_
                                                   _%tgt168170%_
                                                   _%K168171%_)
                                            (let* ((_%__stx168903168904%_
                                                    _%hd168168%_)
                                                   (_%g168174168186%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx168903168904%_))))
                                              (let ((_%__kont168906168907%_
                                                     (lambda (_%g168176168495%_
                                                              _%g168177168497%_)
                                                       (let* ((_%g168508168516%_
                                                               (lambda (_%g168509168512%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g168509168512%_)))
                      (_%g168507168697%_
                       (lambda (_%g168509168520%_)
                         ((lambda (_%g168510168523%_)
                            (let* ((_%g168535168543%_
                                    (lambda (_%g168536168539%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g168536168539%_)))
                                   (_%g168534168693%_
                                    (lambda (_%g168536168547%_)
                                      ((lambda (_%g168537168550%_)
                                         (let* ((_%g168563168571%_
                                                 (lambda (_%g168564168567%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g168564168567%_)))
                                                (_%g168562168689%_
                                                 (lambda (_%g168564168575%_)
                                                   ((lambda (_%g168565168578%_)
                                                      (let* ((_%g168591168599%_
                                                              (lambda (_%g168592168595%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g168592168595%_)))
                     (_%g168590168685%_
                      (lambda (_%g168592168603%_)
                        ((lambda (_%g168593168606%_)
                           (let* ((_%g168619168627%_
                                   (lambda (_%g168620168623%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g168620168623%_)))
                                  (_%g168618168681%_
                                   (lambda (_%g168620168631%_)
                                     ((lambda (_%g168621168634%_)
                                        (let* ((_%g168647168655%_
                                                (lambda (_%g168648168651%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g168648168651%_)))
                                               (_%g168646168677%_
                                                (lambda (_%g168648168659%_)
                                                  ((lambda (_%g168649168662%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%g168510168523%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g168537168550%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%g168510168523%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g168565168578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%g168537168550%_ '()))
                                       '()))
                           (cons (cons _%g168593168606%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%g168537168550%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons _%g168621168634%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g168649168662%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g168648168659%_))))
                                          (_%g168646168677%_ _%E168163%_)))
                                      _%g168620168631%_))))
                             (_%g168618168681%_
                              (_%recur168165%_
                               _%g168177168497%_
                               _%g168565168578%_
                               (_%recur168165%_
                                _%g168176168495%_
                                _%g168593168606%_
                                _%K168171%_)))))
                         _%g168592168603%_))))
                (_%g168590168685%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g168564168575%_))))
                                           (_%g168562168689%_
                                            (gx#genident 'hd))))
                                       _%g168536168547%_))))
                              (_%g168534168693%_ (gx#genident 'e))))
                          _%g168509168520%_))))
                 (_%g168507168697%_ _%tgt168170%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont168908168909%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd168168%_)
                                                           (if (gx#underscore?
                                                                _%hd168168%_)
                                                               _%K168171%_
                                                               (if (let ((__tmp168975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g168200168202%_)
                                    (gx#bound-identifier=?
                                     _%g168200168202%_
                                     _%hd168168%_))))
                             (declare (not safe))
                             (__find __tmp168975 _%kws167769%_))
                           (let* ((_%g168208168223%_
                                   (lambda (_%g168209168219%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g168209168219%_)))
                                  (_%g168207168276%_
                                   (lambda (_%g168209168227%_)
                                     (if (gx#stx-pair? _%g168209168227%_)
                                         (let ((_%e168212168230%_
                                                (gx#syntax-e
                                                 _%g168209168227%_)))
                                           (let ((_%hd168213168234%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168212168230%_)))
                                                 (_%tl168214168237%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168212168230%_))))
                                             (if (gx#stx-pair?
                                                  _%tl168214168237%_)
                                                 (let ((_%e168215168240%_
                                                        (gx#syntax-e
                                                         _%tl168214168237%_)))
                                                   (let ((_%hd168216168244%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168215168240%_)))
                                                         (_%tl168217168247%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168215168240%_))))
                                                     (if (gx#stx-null?
                                                          _%tl168217168247%_)
                                                         ((lambda (_%g168210168250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g168211168252%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%g168211168252%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%g168211168252%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%g168210168250%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K168171%_ (cons _%E168163%_ '())))))
                  _%hd168216168244%_
                  _%hd168213168234%_)
                 (_%g168208168223%_ _%g168209168227%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g168208168223%_
                                                  _%g168209168227%_))))
                                         (_%g168208168223%_
                                          _%g168209168227%_)))))
                             (_%g168207168276%_
                              (list _%tgt168170%_ _%hd168168%_)))
                           (let* ((_%g168282168297%_
                                   (lambda (_%g168283168293%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g168283168293%_)))
                                  (_%g168281168342%_
                                   (lambda (_%g168283168301%_)
                                     (if (gx#stx-pair? _%g168283168301%_)
                                         (let ((_%e168286168304%_
                                                (gx#syntax-e
                                                 _%g168283168301%_)))
                                           (let ((_%hd168287168308%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168286168304%_)))
                                                 (_%tl168288168311%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168286168304%_))))
                                             (if (gx#stx-pair?
                                                  _%tl168288168311%_)
                                                 (let ((_%e168289168314%_
                                                        (gx#syntax-e
                                                         _%tl168288168311%_)))
                                                   (let ((_%hd168290168318%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168289168314%_)))
                                                         (_%tl168291168321%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168289168314%_))))
                                                     (if (gx#stx-null?
                                                          _%tl168291168321%_)
                                                         ((lambda (_%g168284168324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g168285168326%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%g168284168324%_
                                            (cons _%g168285168326%_ '()))
                                      '())
                                (cons _%K168171%_ '()))))
                  _%hd168290168318%_
                  _%hd168287168308%_)
                 (_%g168282168297%_ _%g168283168301%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g168282168297%_
                                                  _%g168283168301%_))))
                                         (_%g168282168297%_
                                          _%g168283168301%_)))))
                             (_%g168281168342%_
                              (list _%tgt168170%_ _%hd168168%_)))))
                   (if (gx#stx-null? _%hd168168%_)
                       (let* ((_%g168348168356%_
                               (lambda (_%g168349168352%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g168349168352%_)))
                              (_%g168347168375%_
                               (lambda (_%g168349168360%_)
                                 ((lambda (_%g168350168363%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%g168350168363%_
                                                            '()))
                                                (cons _%K168171%_
                                                      (cons _%E168163%_
                                                            '())))))
                                  _%g168349168360%_))))
                         (_%g168347168375%_ _%tgt168170%_))
                       (if (gx#stx-datum? _%hd168168%_)
                           (let* ((_%g168381168400%_
                                   (lambda (_%g168382168396%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g168382168396%_)))
                                  (_%g168380168459%_
                                   (lambda (_%g168382168404%_)
                                     (if (gx#stx-pair? _%g168382168404%_)
                                         (let ((_%e168386168407%_
                                                (gx#syntax-e
                                                 _%g168382168404%_)))
                                           (let ((_%hd168387168411%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168386168407%_)))
                                                 (_%tl168388168414%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168386168407%_))))
                                             (if (gx#stx-pair?
                                                  _%tl168388168414%_)
                                                 (let ((_%e168389168417%_
                                                        (gx#syntax-e
                                                         _%tl168388168414%_)))
                                                   (let ((_%hd168390168421%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168389168417%_)))
                                                         (_%tl168391168424%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168389168417%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl168391168424%_)
                                                         (let ((_%e168392168427%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl168391168424%_)))
                   (let ((_%hd168393168431%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168392168427%_)))
                         (_%tl168394168434%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168392168427%_))))
                     (if (gx#stx-null? _%tl168394168434%_)
                         ((lambda (_%g168383168437%_
                                   _%g168384168439%_
                                   _%g168385168440%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%g168383168437%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%g168385168440%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g168384168439%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K168171%_
                                              (cons _%E168163%_ '())))))
                          _%hd168393168431%_
                          _%hd168390168421%_
                          _%hd168387168411%_)
                         (_%g168381168400%_ _%g168382168404%_))))
                 (_%g168381168400%_ _%g168382168404%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g168381168400%_
                                                  _%g168382168404%_))))
                                         (_%g168381168400%_
                                          _%g168382168404%_)))))
                             (_%g168380168459%_
                              (list _%tgt168170%_
                                    _%hd168168%_
                                    (let ((_%e168463%_
                                           (gx#stx-e _%hd168168%_)))
                                      (if (or (keyword? _%e168463%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e168463%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e168463%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx167615%_
                            _%where168158%_
                            _%hd168168%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx168903168904%_)
                                                    (let ((_%e168178168485%_
                                                           (gx#syntax-e
                                                            _%__stx168903168904%_)))
                                                      (let ((_%tl168180168492%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e168178168485%_)))
                    (_%hd168179168489%_
                     (let () (declare (not safe)) (##car _%e168178168485%_))))
                (_%__kont168906168907%_
                 _%tl168180168492%_
                 _%hd168179168489%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont168908168909%_)))))))
                                  (_%recur168165%_
                                   _%hd168160%_
                                   _%tgt167767%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender168161%_
                                               (cons _%body168162%_
                                                     (cons _%E168163%_
                                                           '()))))))))
                             (_%generate-clauses167775%_
                              (lambda (_%clauses167896%_)
                                (let _%lp167899%_ ((_%rest167902%_
                                                    _%clauses167896%_)
                                                   (_%E167904%_
                                                    (gx#genident 'E))
                                                   (_%r167905%_ '()))
                                  (let* ((_%__stx168939168940%_ _%rest167902%_)
                                         (_%g167908167920%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx168939168940%_))))
                                    (let ((_%__kont168942168943%_
                                           (lambda (_%g167910167985%_
                                                    _%g167911167987%_)
                                             (let* ((_%__stx168919168920%_
                                                     _%g167911167987%_)
                                                    (_%g167999168010%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx168919168920%_))))
                                               (let ((_%__kont168922168923%_
                                                      (lambda (_%g168001168139%_)
                                                        (if (gx#stx-null?
                                                             _%g167910167985%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g168001168139%_)
                             (not (gx#stx-null? _%g168001168139%_)))
                        (cons (cons _%E167904%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g168001168139%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g167911167987%_))
                                          '()))
                              _%r167905%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx167615%_
                         _%g167911167987%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx167615%_
                     _%g167911167987%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont168924168925%_
                                                      (lambda ()
                                                        (let* ((_%g168021168029%_
                                                                (lambda (_%g168022168025%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g168022168025%_)))
                       (_%g168020168118%_
                        (lambda (_%g168022168033%_)
                          ((lambda (_%g168023168036%_)
                             (let* ((_%g168052168060%_
                                     (lambda (_%g168053168056%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g168053168056%_)))
                                    (_%g168051168114%_
                                     (lambda (_%g168053168064%_)
                                       ((lambda (_%g168054168067%_)
                                          (let* ((_%g168080168088%_
                                                  (lambda (_%g168081168084%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g168081168084%_)))
                                                 (_%g168079168110%_
                                                  (lambda (_%g168081168092%_)
                                                    ((lambda (_%g168082168095%_)
                                                       (_%lp167899%_
                                                        _%g167910167985%_
                                                        _%g168023168036%_
                                                        (cons (cons _%E167904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g168082168095%_ '()))
                      _%r167905%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g168081168092%_))))
                                            (_%g168079168110%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%g168054168067%_
                                                                '())))
                                              (gx#stx-source
                                               _%g167911167987%_)))))
                                        _%g168053168064%_))))
                               (_%g168051168114%_
                                (_%generate-clause167772%_
                                 _%g167911167987%_
                                 (cons _%g168023168036%_ '())))))
                           _%g168022168033%_))))
                  (_%g168020168118%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx168919168920%_)
                                                     (let ((_%e168002168129%_
                                                            (gx#syntax-e
                                                             _%__stx168919168920%_)))
                                                       (let ((_%tl168004168136%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e168002168129%_)))
                     (_%hd168003168133%_
                      (let () (declare (not safe)) (##car _%e168002168129%_))))
                 (if (gx#identifier? _%hd168003168133%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g168976_|
                          _%hd168003168133%_)
                         (_%__kont168922168923%_ _%tl168004168136%_)
                         (_%__kont168924168925%_))
                     (_%__kont168924168925%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont168924168925%_))))))
                                          (_%__kont168944168945%_
                                           (lambda ()
                                             (let* ((_%g167931167939%_
                                                     (lambda (_%g167932167935%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g167932167935%_)))
                                                    (_%g167930167964%_
                                                     (lambda (_%g167932167943%_)
                                                       ((lambda (_%g167933167946%_)
                                                          (cons (cons _%E167904%_
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
                                 (cons _%g167933167946%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx167615%_))
                                    '()))
                        _%r167905%_))
                _%g167932167943%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g167930167964%_
                                                _%tgt167767%_)))))
                                      (if (gx#stx-pair? _%__stx168939168940%_)
                                          (let ((_%e167912167975%_
                                                 (gx#syntax-e
                                                  _%__stx168939168940%_)))
                                            (let ((_%tl167914167982%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e167912167975%_)))
                                                  (_%hd167913167979%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e167912167975%_))))
                                              (_%__kont168942168943%_
                                               _%tl167914167982%_
                                               _%hd167913167979%_)))
                                          (_%__kont168944168945%_))))))))
                      (let* ((_%bind167777%_
                              (_%generate-clauses167775%_ _%clauses167770%_))
                             (_%g167780167797%_
                              (lambda (_%g167781167793%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g167781167793%_)))
                             (_%g167779167892%_
                              (lambda (_%g167781167801%_)
                                (if (gx#stx-pair/null? _%g167781167801%_)
                                    (let ((_g168977_
                                           (gx#syntax-split-splice
                                            _%g167781167801%_
                                            '0)))
                                      (begin
                                        (let ((_g168978_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g168977_)
                                                     (##values-length
                                                      _g168977_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g168978_ 2)))
                                              (error "Context expects 2 values"
                                                     _g168978_)))
                                        (let ((_%target167783167804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g168977_ 0)))
                                              (_%tl167785167807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g168977_ 1))))
                                          (if (gx#stx-null? _%tl167785167807%_)
                                              (letrec ((_%loop167786167810%_
                                                        (lambda (_%hd167784167814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try167790167817%_)
                  (if (gx#stx-pair? _%hd167784167814%_)
                      (let ((_%e167787167819%_
                             (gx#syntax-e _%hd167784167814%_)))
                        (let ((_%lp-hd167788167823%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e167787167819%_)))
                              (_%lp-tl167789167826%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e167787167819%_))))
                          (_%loop167786167810%_
                           _%lp-tl167789167826%_
                           (cons _%lp-hd167788167823%_
                                 _%bind-try167790167817%_))))
                      (let ((_%bind-try167791167829%_
                             (reverse _%bind-try167790167817%_)))
                        ((lambda (_%g167782167832%_)
                           (let* ((_%g167850167858%_
                                   (lambda (_%g167851167854%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g167851167854%_)))
                                  (_%g167849167888%_
                                   (lambda (_%g167851167862%_)
                                     ((lambda (_%g167852167865%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp168979
                                                           (lambda (_%g167879167882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g167880167885%_)
                     (cons _%g167879167882%_ _%g167880167885%_))))
              (declare (not safe))
              (foldr__0 __tmp168979 '() _%g167782167832%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g167852167865%_
                                                                '())
                                                          '()))))
                                      _%g167851167862%_))))
                             (_%g167849167888%_ (car (last _%bind167777%_)))))
                         _%bind-try167791167829%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop167786167810%_
                                                 _%target167783167804%_
                                                 '()))
                                              (_%g167780167797%_
                                               _%g167781167801%_)))))
                                    (_%g167780167797%_ _%g167781167801%_)))))
                        (_%g167779167892%_ _%bind167777%_))))))
          (let* ((_%g167621167640%_
                  (lambda (_%g167622167636%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g167622167636%_)))
                 (_%g167620167763%_
                  (lambda (_%g167622167644%_)
                    (if (gx#stx-pair? _%g167622167644%_)
                        (let ((_%e167626167647%_
                               (gx#syntax-e _%g167622167644%_)))
                          (let ((_%hd167627167651%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167626167647%_)))
                                (_%tl167628167654%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167626167647%_))))
                            (if (gx#stx-pair? _%tl167628167654%_)
                                (let ((_%e167629167657%_
                                       (gx#syntax-e _%tl167628167654%_)))
                                  (let ((_%hd167630167661%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167629167657%_)))
                                        (_%tl167631167664%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167629167657%_))))
                                    (if (gx#stx-pair? _%tl167631167664%_)
                                        (let ((_%e167632167667%_
                                               (gx#syntax-e
                                                _%tl167631167664%_)))
                                          (let ((_%hd167633167671%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167632167667%_)))
                                                (_%tl167634167674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167632167667%_))))
                                            ((lambda (_%g167623167677%_
                                                      _%g167624167679%_
                                                      _%g167625167680%_)
                                               (if (and (gx#identifier-list?
                                                         _%g167624167679%_)
                                                        (gx#stx-list?
                                                         _%g167623167677%_))
                                                   (let* ((_%g167698167706%_
                                                           (lambda (_%g167699167702%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g167699167702%_)))
                                                          (_%g167697167759%_
                                                           (lambda (_%g167699167710%_)
                                                             ((lambda (_%g167700167713%_)
                                                                (let* ((_%g167725167733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g167726167729%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g167726167729%_)))
                               (_%g167724167755%_
                                (lambda (_%g167726167737%_)
                                  ((lambda (_%g167727167740%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%g167700167713%_
                                                             (cons _%g167625167680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g167727167740%_
                                                       '()))))
                                   _%g167726167737%_))))
                          (_%g167724167755%_
                           (_%generate167618%_
                            _%g167700167713%_
                            (gx#syntax->list _%g167624167679%_)
                            _%g167623167677%_))))
                      _%g167699167710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g167697167759%_
                                                      (gx#genident 'e)))
                                                   (_%g167621167640%_
                                                    _%g167622167644%_)))
                                             _%tl167634167674%_
                                             _%hd167633167671%_
                                             _%hd167630167661%_)))
                                        (_%g167621167640%_
                                         _%g167622167644%_))))
                                (_%g167621167640%_ _%g167622167644%_))))
                        (_%g167621167640%_ _%g167622167644%_)))))
            (_%g167620167763%_ _%stx167615%_)))))))
