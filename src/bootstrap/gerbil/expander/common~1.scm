(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g115350_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115352_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115354_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115356_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115357_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115359_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115360_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115362_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115363_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115365_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115366_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115368_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj115346
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
          (##unchecked-structure-set! __obj115346 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115346 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115346 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115346 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115346 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115346 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115346 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115346 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115346 '#f '11 '#f '#f))
        (let ((__tmp115349 |gx[1]#_g115350_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj115346 __tmp115349 '12 '#f '#f))
        (let ((__tmp115351 |gx[1]#_g115352_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj115346 __tmp115351 '13 '#f '#f))
        (let ((__tmp115353 |gx[1]#_g115354_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj115346 __tmp115353 '14 '#f '#f))
        (let ((__tmp115355
               (cons (cons 'e |gx[1]#_g115356_|)
                     (cons (cons 'source |gx[1]#_g115357_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj115346 __tmp115355 '15 '#f '#f))
        (let ((__tmp115358
               (cons (cons 'e |gx[1]#_g115359_|)
                     (cons (cons 'source |gx[1]#_g115360_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj115346 __tmp115358 '16 '#f '#f))
        (let ((__tmp115361
               (cons (cons 'e |gx[1]#_g115362_|)
                     (cons (cons 'source |gx[1]#_g115363_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj115346 __tmp115361 '17 '#f '#f))
        (let ((__tmp115364
               (cons (cons 'e |gx[1]#_g115365_|)
                     (cons (cons 'source |gx[1]#_g115366_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj115346 __tmp115364 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115346 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115346 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115346 '() '20 '#f '#f))
        __obj115346))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx113941%_)
        (let* ((_%g113945113959%_
                (lambda (_%g113946113955%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g113946113955%_)))
               (_%g113944114001%_
                (lambda (_%g113946113963%_)
                  (if (gx#stx-pair? _%g113946113963%_)
                      (let ((_%e113948113966%_
                             (gx#syntax-e _%g113946113963%_)))
                        (let ((_%hd113949113970%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e113948113966%_)))
                              (_%tl113950113973%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e113948113966%_))))
                          (if (gx#stx-pair? _%tl113950113973%_)
                              (let ((_%e113951113976%_
                                     (gx#syntax-e _%tl113950113973%_)))
                                (let ((_%hd113952113980%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e113951113976%_)))
                                      (_%tl113953113983%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e113951113976%_))))
                                  (if (gx#stx-null? _%tl113953113983%_)
                                      ((lambda (_%L113986%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L113986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L113986%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd113952113980%_)
                                      (_%g113945113959%_ _%g113946113963%_))))
                              (_%g113945113959%_ _%g113946113963%_))))
                      (_%g113945113959%_ _%g113946113963%_)))))
          (_%g113944114001%_ _%$stx113941%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx114005%_)
        (letrec ((_%generate114008%_
                  (lambda (_%tgt114157%_ _%kws114159%_ _%clauses114160%_)
                    (letrec ((_%generate-clause114162%_
                              (lambda (_%hd115097%_ _%E115099%_)
                                (let* ((_%__stx115249115250%_ _%hd115097%_)
                                       (_%g115103115130%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx115249115250%_))))
                                  (let ((_%__kont115252115253%_
                                         (lambda (_%L115226%_ _%L115228%_)
                                           (_%generate1114164%_
                                            _%hd115097%_
                                            _%L115228%_
                                            '#t
                                            _%L115226%_
                                            _%E115099%_)))
                                        (_%__kont115254115255%_
                                         (lambda (_%L115178%_
                                                  _%L115180%_
                                                  _%L115181%_)
                                           (_%generate1114164%_
                                            _%hd115097%_
                                            _%L115181%_
                                            _%L115180%_
                                            _%L115178%_
                                            _%E115099%_)))
                                        (_%__kont115256115257%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx114005%_
                                            _%hd115097%_))))
                                    (if (gx#stx-pair? _%__stx115249115250%_)
                                        (let ((_%e115107115206%_
                                               (gx#syntax-e
                                                _%__stx115249115250%_)))
                                          (let ((_%tl115109115213%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e115107115206%_)))
                                                (_%hd115108115210%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e115107115206%_))))
                                            (if (gx#stx-pair?
                                                 _%tl115109115213%_)
                                                (let ((_%e115110115216%_
                                                       (gx#syntax-e
                                                        _%tl115109115213%_)))
                                                  (let ((_%tl115112115223%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e115110115216%_)))
                                                        (_%hd115111115220%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e115110115216%_))))
                                                    (if (gx#stx-null?
                                                         _%tl115112115223%_)
                                                        (_%__kont115252115253%_
                                                         _%hd115111115220%_
                                                         _%hd115108115210%_)
                                                        (if (gx#stx-pair?
                                                             _%tl115112115223%_)
                                                            (let ((_%e115122115168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl115112115223%_)))
                      (let ((_%tl115124115175%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115122115168%_)))
                            (_%hd115123115172%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115122115168%_))))
                        (if (gx#stx-null? _%tl115124115175%_)
                            (_%__kont115254115255%_
                             _%hd115123115172%_
                             _%hd115111115220%_
                             _%hd115108115210%_)
                            (_%__kont115256115257%_))))
                    (_%__kont115256115257%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont115256115257%_))))
                                        (_%__kont115256115257%_))))))
                             (_%generate1114164%_
                              (lambda (_%where114550%_
                                       _%hd114552%_
                                       _%fender114553%_
                                       _%body114554%_
                                       _%E114555%_)
                                (letrec ((_%recur114557%_
                                          (lambda (_%hd114560%_
                                                   _%tgt114562%_
                                                   _%K114563%_)
                                            (let* ((_%__stx115295115296%_
                                                    _%hd114560%_)
                                                   (_%g114566114578%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx115295115296%_))))
                                              (let ((_%__kont115298115299%_
                                                     (lambda (_%L114887%_
                                                              _%L114889%_)
                                                       (let* ((_%g114900114908%_
                                                               (lambda (_%g114901114904%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g114901114904%_)))
                      (_%g114899115089%_
                       (lambda (_%g114901114912%_)
                         ((lambda (_%L114915%_)
                            (let* ((_%g114927114935%_
                                    (lambda (_%g114928114931%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g114928114931%_)))
                                   (_%g114926115085%_
                                    (lambda (_%g114928114939%_)
                                      ((lambda (_%L114942%_)
                                         (let* ((_%g114955114963%_
                                                 (lambda (_%g114956114959%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g114956114959%_)))
                                                (_%g114954115081%_
                                                 (lambda (_%g114956114967%_)
                                                   ((lambda (_%L114970%_)
                                                      (let* ((_%g114983114991%_
                                                              (lambda (_%g114984114987%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g114984114987%_)))
                     (_%g114982115077%_
                      (lambda (_%g114984114995%_)
                        ((lambda (_%L114998%_)
                           (let* ((_%g115011115019%_
                                   (lambda (_%g115012115015%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g115012115015%_)))
                                  (_%g115010115073%_
                                   (lambda (_%g115012115023%_)
                                     ((lambda (_%L115026%_)
                                        (let* ((_%g115039115047%_
                                                (lambda (_%g115040115043%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g115040115043%_)))
                                               (_%g115038115069%_
                                                (lambda (_%g115040115051%_)
                                                  ((lambda (_%L115054%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L114915%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L114942%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L114915%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L114970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L114942%_ '()))
                                       '()))
                           (cons (cons _%L114998%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L114942%_ '()))
                                             '()))
                                 '()))
                     (cons _%L115026%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L115054%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g115040115051%_))))
                                          (_%g115038115069%_ _%E114555%_)))
                                      _%g115012115023%_))))
                             (_%g115010115073%_
                              (_%recur114557%_
                               _%L114889%_
                               _%L114970%_
                               (_%recur114557%_
                                _%L114887%_
                                _%L114998%_
                                _%K114563%_)))))
                         _%g114984114995%_))))
                (_%g114982115077%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g114956114967%_))))
                                           (_%g114954115081%_
                                            (gx#genident 'hd))))
                                       _%g114928114939%_))))
                              (_%g114926115085%_ (gx#genident 'e))))
                          _%g114901114912%_))))
                 (_%g114899115089%_ _%tgt114562%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont115300115301%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd114560%_)
                                                           (if (gx#underscore?
                                                                _%hd114560%_)
                                                               _%K114563%_
                                                               (if (let ((__tmp115367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g114592114594%_)
                                    (gx#bound-identifier=?
                                     _%g114592114594%_
                                     _%hd114560%_))))
                             (declare (not safe))
                             (__find __tmp115367 _%kws114159%_))
                           (let* ((_%g114600114615%_
                                   (lambda (_%g114601114611%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114601114611%_)))
                                  (_%g114599114668%_
                                   (lambda (_%g114601114619%_)
                                     (if (gx#stx-pair? _%g114601114619%_)
                                         (let ((_%e114604114622%_
                                                (gx#syntax-e
                                                 _%g114601114619%_)))
                                           (let ((_%hd114605114626%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114604114622%_)))
                                                 (_%tl114606114629%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114604114622%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114606114629%_)
                                                 (let ((_%e114607114632%_
                                                        (gx#syntax-e
                                                         _%tl114606114629%_)))
                                                   (let ((_%hd114608114636%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114607114632%_)))
                                                         (_%tl114609114639%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114607114632%_))))
                                                     (if (gx#stx-null?
                                                          _%tl114609114639%_)
                                                         ((lambda (_%L114642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L114644%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L114644%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L114644%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L114642%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K114563%_ (cons _%E114555%_ '())))))
                  _%hd114608114636%_
                  _%hd114605114626%_)
                 (_%g114600114615%_ _%g114601114619%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114600114615%_
                                                  _%g114601114619%_))))
                                         (_%g114600114615%_
                                          _%g114601114619%_)))))
                             (_%g114599114668%_
                              (list _%tgt114562%_ _%hd114560%_)))
                           (let* ((_%g114674114689%_
                                   (lambda (_%g114675114685%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114675114685%_)))
                                  (_%g114673114734%_
                                   (lambda (_%g114675114693%_)
                                     (if (gx#stx-pair? _%g114675114693%_)
                                         (let ((_%e114678114696%_
                                                (gx#syntax-e
                                                 _%g114675114693%_)))
                                           (let ((_%hd114679114700%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114678114696%_)))
                                                 (_%tl114680114703%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114678114696%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114680114703%_)
                                                 (let ((_%e114681114706%_
                                                        (gx#syntax-e
                                                         _%tl114680114703%_)))
                                                   (let ((_%hd114682114710%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114681114706%_)))
                                                         (_%tl114683114713%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114681114706%_))))
                                                     (if (gx#stx-null?
                                                          _%tl114683114713%_)
                                                         ((lambda (_%L114716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L114718%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L114716%_ (cons _%L114718%_ '()))
                                      '())
                                (cons _%K114563%_ '()))))
                  _%hd114682114710%_
                  _%hd114679114700%_)
                 (_%g114674114689%_ _%g114675114693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114674114689%_
                                                  _%g114675114693%_))))
                                         (_%g114674114689%_
                                          _%g114675114693%_)))))
                             (_%g114673114734%_
                              (list _%tgt114562%_ _%hd114560%_)))))
                   (if (gx#stx-null? _%hd114560%_)
                       (let* ((_%g114740114748%_
                               (lambda (_%g114741114744%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g114741114744%_)))
                              (_%g114739114767%_
                               (lambda (_%g114741114752%_)
                                 ((lambda (_%L114755%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L114755%_ '()))
                                                (cons _%K114563%_
                                                      (cons _%E114555%_
                                                            '())))))
                                  _%g114741114752%_))))
                         (_%g114739114767%_ _%tgt114562%_))
                       (if (gx#stx-datum? _%hd114560%_)
                           (let* ((_%g114773114792%_
                                   (lambda (_%g114774114788%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114774114788%_)))
                                  (_%g114772114851%_
                                   (lambda (_%g114774114796%_)
                                     (if (gx#stx-pair? _%g114774114796%_)
                                         (let ((_%e114778114799%_
                                                (gx#syntax-e
                                                 _%g114774114796%_)))
                                           (let ((_%hd114779114803%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114778114799%_)))
                                                 (_%tl114780114806%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114778114799%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114780114806%_)
                                                 (let ((_%e114781114809%_
                                                        (gx#syntax-e
                                                         _%tl114780114806%_)))
                                                   (let ((_%hd114782114813%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114781114809%_)))
                                                         (_%tl114783114816%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114781114809%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl114783114816%_)
                                                         (let ((_%e114784114819%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl114783114816%_)))
                   (let ((_%hd114785114823%_
                          (let ()
                            (declare (not safe))
                            (##car _%e114784114819%_)))
                         (_%tl114786114826%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e114784114819%_))))
                     (if (gx#stx-null? _%tl114786114826%_)
                         ((lambda (_%L114829%_ _%L114831%_ _%L114832%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L114829%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L114832%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L114831%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K114563%_
                                              (cons _%E114555%_ '())))))
                          _%hd114785114823%_
                          _%hd114782114813%_
                          _%hd114779114803%_)
                         (_%g114773114792%_ _%g114774114796%_))))
                 (_%g114773114792%_ _%g114774114796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114773114792%_
                                                  _%g114774114796%_))))
                                         (_%g114773114792%_
                                          _%g114774114796%_)))))
                             (_%g114772114851%_
                              (list _%tgt114562%_
                                    _%hd114560%_
                                    (let ((_%e114855%_
                                           (gx#stx-e _%hd114560%_)))
                                      (if (or (keyword? _%e114855%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e114855%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e114855%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx114005%_
                            _%where114550%_
                            _%hd114560%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx115295115296%_)
                                                    (let ((_%e114570114877%_
                                                           (gx#syntax-e
                                                            _%__stx115295115296%_)))
                                                      (let ((_%tl114572114884%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e114570114877%_)))
                    (_%hd114571114881%_
                     (let () (declare (not safe)) (##car _%e114570114877%_))))
                (_%__kont115298115299%_
                 _%tl114572114884%_
                 _%hd114571114881%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont115300115301%_)))))))
                                  (_%recur114557%_
                                   _%hd114552%_
                                   _%tgt114157%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender114553%_
                                               (cons _%body114554%_
                                                     (cons _%E114555%_
                                                           '()))))))))
                             (_%generate-clauses114165%_
                              (lambda (_%clauses114288%_)
                                (let _%lp114291%_ ((_%rest114294%_
                                                    _%clauses114288%_)
                                                   (_%E114296%_
                                                    (gx#genident 'E))
                                                   (_%r114297%_ '()))
                                  (let* ((_%__stx115331115332%_ _%rest114294%_)
                                         (_%g114300114312%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx115331115332%_))))
                                    (let ((_%__kont115334115335%_
                                           (lambda (_%L114377%_ _%L114379%_)
                                             (let* ((_%__stx115311115312%_
                                                     _%L114379%_)
                                                    (_%g114391114402%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx115311115312%_))))
                                               (let ((_%__kont115314115315%_
                                                      (lambda (_%L114531%_)
                                                        (if (gx#stx-null?
                                                             _%L114377%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L114531%_)
                             (not (gx#stx-null? _%L114531%_)))
                        (cons (cons _%E114296%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L114531%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L114379%_))
                                          '()))
                              _%r114297%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx114005%_
                         _%L114379%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx114005%_
                     _%L114379%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont115316115317%_
                                                      (lambda ()
                                                        (let* ((_%g114413114421%_
                                                                (lambda (_%g114414114417%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g114414114417%_)))
                       (_%g114412114510%_
                        (lambda (_%g114414114425%_)
                          ((lambda (_%L114428%_)
                             (let* ((_%g114444114452%_
                                     (lambda (_%g114445114448%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g114445114448%_)))
                                    (_%g114443114506%_
                                     (lambda (_%g114445114456%_)
                                       ((lambda (_%L114459%_)
                                          (let* ((_%g114472114480%_
                                                  (lambda (_%g114473114476%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g114473114476%_)))
                                                 (_%g114471114502%_
                                                  (lambda (_%g114473114484%_)
                                                    ((lambda (_%L114487%_)
                                                       (_%lp114291%_
                                                        _%L114377%_
                                                        _%L114428%_
                                                        (cons (cons _%E114296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L114487%_ '()))
                      _%r114297%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g114473114484%_))))
                                            (_%g114471114502%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L114459%_
                                                                '())))
                                              (gx#stx-source _%L114379%_)))))
                                        _%g114445114456%_))))
                               (_%g114443114506%_
                                (_%generate-clause114162%_
                                 _%L114379%_
                                 (cons _%L114428%_ '())))))
                           _%g114414114425%_))))
                  (_%g114412114510%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx115311115312%_)
                                                     (let ((_%e114394114521%_
                                                            (gx#syntax-e
                                                             _%__stx115311115312%_)))
                                                       (let ((_%tl114396114528%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e114394114521%_)))
                     (_%hd114395114525%_
                      (let () (declare (not safe)) (##car _%e114394114521%_))))
                 (if (gx#identifier? _%hd114395114525%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g115368_|
                          _%hd114395114525%_)
                         (_%__kont115314115315%_ _%tl114396114528%_)
                         (_%__kont115316115317%_))
                     (_%__kont115316115317%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont115316115317%_))))))
                                          (_%__kont115336115337%_
                                           (lambda ()
                                             (let* ((_%g114323114331%_
                                                     (lambda (_%g114324114327%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g114324114327%_)))
                                                    (_%g114322114356%_
                                                     (lambda (_%g114324114335%_)
                                                       ((lambda (_%L114338%_)
                                                          (cons (cons _%E114296%_
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
                                 (cons _%L114338%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx114005%_))
                                    '()))
                        _%r114297%_))
                _%g114324114335%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g114322114356%_
                                                _%tgt114157%_)))))
                                      (if (gx#stx-pair? _%__stx115331115332%_)
                                          (let ((_%e114304114367%_
                                                 (gx#syntax-e
                                                  _%__stx115331115332%_)))
                                            (let ((_%tl114306114374%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e114304114367%_)))
                                                  (_%hd114305114371%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e114304114367%_))))
                                              (_%__kont115334115335%_
                                               _%tl114306114374%_
                                               _%hd114305114371%_)))
                                          (_%__kont115336115337%_))))))))
                      (let* ((_%bind114167%_
                              (_%generate-clauses114165%_ _%clauses114160%_))
                             (_%g114170114187%_
                              (lambda (_%g114171114183%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g114171114183%_)))
                             (_%g114169114284%_
                              (lambda (_%g114171114191%_)
                                (if (gx#stx-pair/null? _%g114171114191%_)
                                    (let ((_g115369_
                                           (gx#syntax-split-splice
                                            _%g114171114191%_
                                            '0)))
                                      (begin
                                        (let ((_g115370_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g115369_)
                                                     (##vector-length
                                                      _g115369_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g115370_ 2)))
                                              (error "Context expects 2 values"
                                                     _g115370_)))
                                        (let ((_%target114173114194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g115369_ 0)))
                                              (_%tl114175114197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g115369_ 1))))
                                          (if (gx#stx-null? _%tl114175114197%_)
                                              (letrec ((_%loop114176114200%_
                                                        (lambda (_%hd114174114204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try114180114207%_)
                  (if (gx#stx-pair? _%hd114174114204%_)
                      (let ((_%e114177114210%_
                             (gx#syntax-e _%hd114174114204%_)))
                        (let ((_%lp-hd114178114214%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e114177114210%_)))
                              (_%lp-tl114179114217%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e114177114210%_))))
                          (_%loop114176114200%_
                           _%lp-tl114179114217%_
                           (cons _%lp-hd114178114214%_
                                 _%bind-try114180114207%_))))
                      (let ((_%bind-try114181114220%_
                             (reverse _%bind-try114180114207%_)))
                        ((lambda (_%L114224%_)
                           (let* ((_%g114242114250%_
                                   (lambda (_%g114243114246%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114243114246%_)))
                                  (_%g114241114280%_
                                   (lambda (_%g114243114254%_)
                                     ((lambda (_%L114257%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp115371
                                                           (lambda (_%g114271114274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g114272114277%_)
                     (cons _%g114271114274%_ _%g114272114277%_))))
              (declare (not safe))
              (__foldr1 __tmp115371 '() _%L114224%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L114257%_
                                                                '())
                                                          '()))))
                                      _%g114243114254%_))))
                             (_%g114241114280%_ (car (last _%bind114167%_)))))
                         _%bind-try114181114220%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop114176114200%_
                                                 _%target114173114194%_
                                                 '()))
                                              (_%g114170114187%_
                                               _%g114171114191%_)))))
                                    (_%g114170114187%_ _%g114171114191%_)))))
                        (_%g114169114284%_ _%bind114167%_))))))
          (let* ((_%g114011114030%_
                  (lambda (_%g114012114026%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g114012114026%_)))
                 (_%g114010114153%_
                  (lambda (_%g114012114034%_)
                    (if (gx#stx-pair? _%g114012114034%_)
                        (let ((_%e114016114037%_
                               (gx#syntax-e _%g114012114034%_)))
                          (let ((_%hd114017114041%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e114016114037%_)))
                                (_%tl114018114044%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e114016114037%_))))
                            (if (gx#stx-pair? _%tl114018114044%_)
                                (let ((_%e114019114047%_
                                       (gx#syntax-e _%tl114018114044%_)))
                                  (let ((_%hd114020114051%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e114019114047%_)))
                                        (_%tl114021114054%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e114019114047%_))))
                                    (if (gx#stx-pair? _%tl114021114054%_)
                                        (let ((_%e114022114057%_
                                               (gx#syntax-e
                                                _%tl114021114054%_)))
                                          (let ((_%hd114023114061%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e114022114057%_)))
                                                (_%tl114024114064%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e114022114057%_))))
                                            ((lambda (_%L114067%_
                                                      _%L114069%_
                                                      _%L114070%_)
                                               (if (and (gx#identifier-list?
                                                         _%L114069%_)
                                                        (gx#stx-list?
                                                         _%L114067%_))
                                                   (let* ((_%g114088114096%_
                                                           (lambda (_%g114089114092%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g114089114092%_)))
                                                          (_%g114087114149%_
                                                           (lambda (_%g114089114100%_)
                                                             ((lambda (_%L114103%_)
                                                                (let* ((_%g114115114123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g114116114119%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g114116114119%_)))
                               (_%g114114114145%_
                                (lambda (_%g114116114127%_)
                                  ((lambda (_%L114130%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L114103%_
                                                             (cons _%L114070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L114130%_ '()))))
                                   _%g114116114127%_))))
                          (_%g114114114145%_
                           (_%generate114008%_
                            _%L114103%_
                            (gx#syntax->list _%L114069%_)
                            _%L114067%_))))
                      _%g114089114100%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g114087114149%_
                                                      (gx#genident 'e)))
                                                   (_%g114011114030%_
                                                    _%g114012114034%_)))
                                             _%tl114024114064%_
                                             _%hd114023114061%_
                                             _%hd114020114051%_)))
                                        (_%g114011114030%_
                                         _%g114012114034%_))))
                                (_%g114011114030%_ _%g114012114034%_))))
                        (_%g114011114030%_ _%g114012114034%_)))))
            (_%g114010114153%_ _%stx114005%_)))))))
