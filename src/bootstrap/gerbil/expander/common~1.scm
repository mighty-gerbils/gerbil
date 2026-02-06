(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g161533_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g161535_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g161537_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g161539_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g161540_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g161542_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g161543_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g161545_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g161546_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g161548_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g161549_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g161551_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj161529
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
          (##unchecked-structure-set! __obj161529 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj161529 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj161529 '(e source) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj161529 '(e source) '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj161529 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj161529 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj161529 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj161529 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj161529 '#f '12 '#f '#f))
        (let ((__tmp161532 |gx[1]#_g161533_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj161529 __tmp161532 '3 '#f '#f))
        (let ((__tmp161534 |gx[1]#_g161535_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj161529 __tmp161534 '13 '#f '#f))
        (let ((__tmp161536 |gx[1]#_g161537_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj161529 __tmp161536 '14 '#f '#f))
        (let ((__tmp161538
               (cons (cons 'e |gx[1]#_g161539_|)
                     (cons (cons 'source |gx[1]#_g161540_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj161529 __tmp161538 '15 '#f '#f))
        (let ((__tmp161541
               (cons (cons 'e |gx[1]#_g161542_|)
                     (cons (cons 'source |gx[1]#_g161543_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj161529 __tmp161541 '16 '#f '#f))
        (let ((__tmp161544
               (cons (cons 'e |gx[1]#_g161545_|)
                     (cons (cons 'source |gx[1]#_g161546_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj161529 __tmp161544 '17 '#f '#f))
        (let ((__tmp161547
               (cons (cons 'e |gx[1]#_g161548_|)
                     (cons (cons 'source |gx[1]#_g161549_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj161529 __tmp161547 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj161529 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj161529 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj161529 '() '20 '#f '#f))
        __obj161529))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx160126%_)
        (let* ((_%g160130160144%_
                (lambda (_%g160131160140%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g160131160140%_)))
               (_%g160129160186%_
                (lambda (_%g160131160148%_)
                  (if (gx#stx-pair? _%g160131160148%_)
                      (let ((_%e160133160151%_
                             (gx#syntax-e _%g160131160148%_)))
                        (let ((_%hd160134160155%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160133160151%_)))
                              (_%tl160135160158%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160133160151%_))))
                          (if (gx#stx-pair? _%tl160135160158%_)
                              (let ((_%e160136160161%_
                                     (gx#syntax-e _%tl160135160158%_)))
                                (let ((_%hd160137160165%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160136160161%_)))
                                      (_%tl160138160168%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160136160161%_))))
                                  (if (gx#stx-null? _%tl160138160168%_)
                                      ((lambda (_%g160132160171%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%g160132160171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure"
                               (cons _%g160132160171%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd160137160165%_)
                                      (_%g160130160144%_ _%g160131160148%_))))
                              (_%g160130160144%_ _%g160131160148%_))))
                      (_%g160130160144%_ _%g160131160148%_)))))
          (_%g160129160186%_ _%$stx160126%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx160190%_)
        (letrec ((_%generate160193%_
                  (lambda (_%tgt160342%_ _%kws160344%_ _%clauses160345%_)
                    (letrec ((_%generate-clause160347%_
                              (lambda (_%hd161280%_ _%E161282%_)
                                (let* ((_%__stx161432161433%_ _%hd161280%_)
                                       (_%g161286161313%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx161432161433%_))))
                                  (let ((_%__kont161435161436%_
                                         (lambda (_%g161288161409%_
                                                  _%g161289161411%_)
                                           (_%generate1160349%_
                                            _%hd161280%_
                                            _%g161289161411%_
                                            '#t
                                            _%g161288161409%_
                                            _%E161282%_)))
                                        (_%__kont161437161438%_
                                         (lambda (_%g161296161361%_
                                                  _%g161297161363%_
                                                  _%g161298161364%_)
                                           (_%generate1160349%_
                                            _%hd161280%_
                                            _%g161298161364%_
                                            _%g161297161363%_
                                            _%g161296161361%_
                                            _%E161282%_)))
                                        (_%__kont161439161440%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx160190%_
                                            _%hd161280%_))))
                                    (if (gx#stx-pair? _%__stx161432161433%_)
                                        (let ((_%e161290161389%_
                                               (gx#syntax-e
                                                _%__stx161432161433%_)))
                                          (let ((_%tl161292161396%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e161290161389%_)))
                                                (_%hd161291161393%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e161290161389%_))))
                                            (if (gx#stx-pair?
                                                 _%tl161292161396%_)
                                                (let ((_%e161293161399%_
                                                       (gx#syntax-e
                                                        _%tl161292161396%_)))
                                                  (let ((_%tl161295161406%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e161293161399%_)))
                                                        (_%hd161294161403%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e161293161399%_))))
                                                    (if (gx#stx-null?
                                                         _%tl161295161406%_)
                                                        (_%__kont161435161436%_
                                                         _%hd161294161403%_
                                                         _%hd161291161393%_)
                                                        (if (gx#stx-pair?
                                                             _%tl161295161406%_)
                                                            (let ((_%e161305161351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl161295161406%_)))
                      (let ((_%tl161307161358%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e161305161351%_)))
                            (_%hd161306161355%_
                             (let ()
                               (declare (not safe))
                               (##car _%e161305161351%_))))
                        (if (gx#stx-null? _%tl161307161358%_)
                            (_%__kont161437161438%_
                             _%hd161306161355%_
                             _%hd161294161403%_
                             _%hd161291161393%_)
                            (_%__kont161439161440%_))))
                    (_%__kont161439161440%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont161439161440%_))))
                                        (_%__kont161439161440%_))))))
                             (_%generate1160349%_
                              (lambda (_%where160733%_
                                       _%hd160735%_
                                       _%fender160736%_
                                       _%body160737%_
                                       _%E160738%_)
                                (letrec ((_%recur160740%_
                                          (lambda (_%hd160743%_
                                                   _%tgt160745%_
                                                   _%K160746%_)
                                            (let* ((_%__stx161478161479%_
                                                    _%hd160743%_)
                                                   (_%g160749160761%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx161478161479%_))))
                                              (let ((_%__kont161481161482%_
                                                     (lambda (_%g160751161070%_
                                                              _%g160752161072%_)
                                                       (let* ((_%g161083161091%_
                                                               (lambda (_%g161084161087%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g161084161087%_)))
                      (_%g161082161272%_
                       (lambda (_%g161084161095%_)
                         ((lambda (_%g161085161098%_)
                            (let* ((_%g161110161118%_
                                    (lambda (_%g161111161114%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g161111161114%_)))
                                   (_%g161109161268%_
                                    (lambda (_%g161111161122%_)
                                      ((lambda (_%g161112161125%_)
                                         (let* ((_%g161138161146%_
                                                 (lambda (_%g161139161142%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g161139161142%_)))
                                                (_%g161137161264%_
                                                 (lambda (_%g161139161150%_)
                                                   ((lambda (_%g161140161153%_)
                                                      (let* ((_%g161166161174%_
                                                              (lambda (_%g161167161170%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g161167161170%_)))
                     (_%g161165161260%_
                      (lambda (_%g161167161178%_)
                        ((lambda (_%g161168161181%_)
                           (let* ((_%g161194161202%_
                                   (lambda (_%g161195161198%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g161195161198%_)))
                                  (_%g161193161256%_
                                   (lambda (_%g161195161206%_)
                                     ((lambda (_%g161196161209%_)
                                        (let* ((_%g161222161230%_
                                                (lambda (_%g161223161226%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g161223161226%_)))
                                               (_%g161221161252%_
                                                (lambda (_%g161223161234%_)
                                                  ((lambda (_%g161224161237%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%g161085161098%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g161112161125%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%g161085161098%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g161140161153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%g161112161125%_ '()))
                                       '()))
                           (cons (cons _%g161168161181%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%g161112161125%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons _%g161196161209%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g161224161237%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g161223161234%_))))
                                          (_%g161221161252%_ _%E160738%_)))
                                      _%g161195161206%_))))
                             (_%g161193161256%_
                              (_%recur160740%_
                               _%g160752161072%_
                               _%g161140161153%_
                               (_%recur160740%_
                                _%g160751161070%_
                                _%g161168161181%_
                                _%K160746%_)))))
                         _%g161167161178%_))))
                (_%g161165161260%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g161139161150%_))))
                                           (_%g161137161264%_
                                            (gx#genident 'hd))))
                                       _%g161111161122%_))))
                              (_%g161109161268%_ (gx#genident 'e))))
                          _%g161084161095%_))))
                 (_%g161082161272%_ _%tgt160745%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont161483161484%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd160743%_)
                                                           (if (gx#underscore?
                                                                _%hd160743%_)
                                                               _%K160746%_
                                                               (if (let ((__tmp161550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g160775160777%_)
                                    (gx#bound-identifier=?
                                     _%g160775160777%_
                                     _%hd160743%_))))
                             (declare (not safe))
                             (__find __tmp161550 _%kws160344%_))
                           (let* ((_%g160783160798%_
                                   (lambda (_%g160784160794%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g160784160794%_)))
                                  (_%g160782160851%_
                                   (lambda (_%g160784160802%_)
                                     (if (gx#stx-pair? _%g160784160802%_)
                                         (let ((_%e160787160805%_
                                                (gx#syntax-e
                                                 _%g160784160802%_)))
                                           (let ((_%hd160788160809%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e160787160805%_)))
                                                 (_%tl160789160812%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e160787160805%_))))
                                             (if (gx#stx-pair?
                                                  _%tl160789160812%_)
                                                 (let ((_%e160790160815%_
                                                        (gx#syntax-e
                                                         _%tl160789160812%_)))
                                                   (let ((_%hd160791160819%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e160790160815%_)))
                                                         (_%tl160792160822%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e160790160815%_))))
                                                     (if (gx#stx-null?
                                                          _%tl160792160822%_)
                                                         ((lambda (_%g160785160825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g160786160827%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%g160786160827%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%g160786160827%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%g160785160825%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K160746%_ (cons _%E160738%_ '())))))
                  _%hd160791160819%_
                  _%hd160788160809%_)
                 (_%g160783160798%_ _%g160784160802%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g160783160798%_
                                                  _%g160784160802%_))))
                                         (_%g160783160798%_
                                          _%g160784160802%_)))))
                             (_%g160782160851%_
                              (list _%tgt160745%_ _%hd160743%_)))
                           (let* ((_%g160857160872%_
                                   (lambda (_%g160858160868%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g160858160868%_)))
                                  (_%g160856160917%_
                                   (lambda (_%g160858160876%_)
                                     (if (gx#stx-pair? _%g160858160876%_)
                                         (let ((_%e160861160879%_
                                                (gx#syntax-e
                                                 _%g160858160876%_)))
                                           (let ((_%hd160862160883%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e160861160879%_)))
                                                 (_%tl160863160886%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e160861160879%_))))
                                             (if (gx#stx-pair?
                                                  _%tl160863160886%_)
                                                 (let ((_%e160864160889%_
                                                        (gx#syntax-e
                                                         _%tl160863160886%_)))
                                                   (let ((_%hd160865160893%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e160864160889%_)))
                                                         (_%tl160866160896%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e160864160889%_))))
                                                     (if (gx#stx-null?
                                                          _%tl160866160896%_)
                                                         ((lambda (_%g160859160899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g160860160901%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%g160859160899%_
                                            (cons _%g160860160901%_ '()))
                                      '())
                                (cons _%K160746%_ '()))))
                  _%hd160865160893%_
                  _%hd160862160883%_)
                 (_%g160857160872%_ _%g160858160876%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g160857160872%_
                                                  _%g160858160876%_))))
                                         (_%g160857160872%_
                                          _%g160858160876%_)))))
                             (_%g160856160917%_
                              (list _%tgt160745%_ _%hd160743%_)))))
                   (if (gx#stx-null? _%hd160743%_)
                       (let* ((_%g160923160931%_
                               (lambda (_%g160924160927%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g160924160927%_)))
                              (_%g160922160950%_
                               (lambda (_%g160924160935%_)
                                 ((lambda (_%g160925160938%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%g160925160938%_
                                                            '()))
                                                (cons _%K160746%_
                                                      (cons _%E160738%_
                                                            '())))))
                                  _%g160924160935%_))))
                         (_%g160922160950%_ _%tgt160745%_))
                       (if (gx#stx-datum? _%hd160743%_)
                           (let* ((_%g160956160975%_
                                   (lambda (_%g160957160971%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g160957160971%_)))
                                  (_%g160955161034%_
                                   (lambda (_%g160957160979%_)
                                     (if (gx#stx-pair? _%g160957160979%_)
                                         (let ((_%e160961160982%_
                                                (gx#syntax-e
                                                 _%g160957160979%_)))
                                           (let ((_%hd160962160986%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e160961160982%_)))
                                                 (_%tl160963160989%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e160961160982%_))))
                                             (if (gx#stx-pair?
                                                  _%tl160963160989%_)
                                                 (let ((_%e160964160992%_
                                                        (gx#syntax-e
                                                         _%tl160963160989%_)))
                                                   (let ((_%hd160965160996%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e160964160992%_)))
                                                         (_%tl160966160999%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e160964160992%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl160966160999%_)
                                                         (let ((_%e160967161002%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl160966160999%_)))
                   (let ((_%hd160968161006%_
                          (let ()
                            (declare (not safe))
                            (##car _%e160967161002%_)))
                         (_%tl160969161009%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e160967161002%_))))
                     (if (gx#stx-null? _%tl160969161009%_)
                         ((lambda (_%g160958161012%_
                                   _%g160959161014%_
                                   _%g160960161015%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%g160958161012%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%g160960161015%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g160959161014%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K160746%_
                                              (cons _%E160738%_ '())))))
                          _%hd160968161006%_
                          _%hd160965160996%_
                          _%hd160962160986%_)
                         (_%g160956160975%_ _%g160957160979%_))))
                 (_%g160956160975%_ _%g160957160979%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g160956160975%_
                                                  _%g160957160979%_))))
                                         (_%g160956160975%_
                                          _%g160957160979%_)))))
                             (_%g160955161034%_
                              (list _%tgt160745%_
                                    _%hd160743%_
                                    (let ((_%e161038%_
                                           (gx#stx-e _%hd160743%_)))
                                      (if (or (keyword? _%e161038%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e161038%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e161038%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx160190%_
                            _%where160733%_
                            _%hd160743%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx161478161479%_)
                                                    (let ((_%e160753161060%_
                                                           (gx#syntax-e
                                                            _%__stx161478161479%_)))
                                                      (let ((_%tl160755161067%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e160753161060%_)))
                    (_%hd160754161064%_
                     (let () (declare (not safe)) (##car _%e160753161060%_))))
                (_%__kont161481161482%_
                 _%tl160755161067%_
                 _%hd160754161064%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont161483161484%_)))))))
                                  (_%recur160740%_
                                   _%hd160735%_
                                   _%tgt160342%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender160736%_
                                               (cons _%body160737%_
                                                     (cons _%E160738%_
                                                           '()))))))))
                             (_%generate-clauses160350%_
                              (lambda (_%clauses160471%_)
                                (let _%lp160474%_ ((_%rest160477%_
                                                    _%clauses160471%_)
                                                   (_%E160479%_
                                                    (gx#genident 'E))
                                                   (_%r160480%_ '()))
                                  (let* ((_%__stx161514161515%_ _%rest160477%_)
                                         (_%g160483160495%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx161514161515%_))))
                                    (let ((_%__kont161517161518%_
                                           (lambda (_%g160485160560%_
                                                    _%g160486160562%_)
                                             (let* ((_%__stx161494161495%_
                                                     _%g160486160562%_)
                                                    (_%g160574160585%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx161494161495%_))))
                                               (let ((_%__kont161497161498%_
                                                      (lambda (_%g160576160714%_)
                                                        (if (gx#stx-null?
                                                             _%g160485160560%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g160576160714%_)
                             (not (gx#stx-null? _%g160576160714%_)))
                        (cons (cons _%E160479%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g160576160714%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g160486160562%_))
                                          '()))
                              _%r160480%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx160190%_
                         _%g160486160562%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx160190%_
                     _%g160486160562%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont161499161500%_
                                                      (lambda ()
                                                        (let* ((_%g160596160604%_
                                                                (lambda (_%g160597160600%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g160597160600%_)))
                       (_%g160595160693%_
                        (lambda (_%g160597160608%_)
                          ((lambda (_%g160598160611%_)
                             (let* ((_%g160627160635%_
                                     (lambda (_%g160628160631%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g160628160631%_)))
                                    (_%g160626160689%_
                                     (lambda (_%g160628160639%_)
                                       ((lambda (_%g160629160642%_)
                                          (let* ((_%g160655160663%_
                                                  (lambda (_%g160656160659%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g160656160659%_)))
                                                 (_%g160654160685%_
                                                  (lambda (_%g160656160667%_)
                                                    ((lambda (_%g160657160670%_)
                                                       (_%lp160474%_
                                                        _%g160485160560%_
                                                        _%g160598160611%_
                                                        (cons (cons _%E160479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g160657160670%_ '()))
                      _%r160480%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g160656160667%_))))
                                            (_%g160654160685%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%g160629160642%_
                                                                '())))
                                              (gx#stx-source
                                               _%g160486160562%_)))))
                                        _%g160628160639%_))))
                               (_%g160626160689%_
                                (_%generate-clause160347%_
                                 _%g160486160562%_
                                 (cons _%g160598160611%_ '())))))
                           _%g160597160608%_))))
                  (_%g160595160693%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx161494161495%_)
                                                     (let ((_%e160577160704%_
                                                            (gx#syntax-e
                                                             _%__stx161494161495%_)))
                                                       (let ((_%tl160579160711%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e160577160704%_)))
                     (_%hd160578160708%_
                      (let () (declare (not safe)) (##car _%e160577160704%_))))
                 (if (gx#identifier? _%hd160578160708%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g161551_|
                          _%hd160578160708%_)
                         (_%__kont161497161498%_ _%tl160579160711%_)
                         (_%__kont161499161500%_))
                     (_%__kont161499161500%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont161499161500%_))))))
                                          (_%__kont161519161520%_
                                           (lambda ()
                                             (let* ((_%g160506160514%_
                                                     (lambda (_%g160507160510%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g160507160510%_)))
                                                    (_%g160505160539%_
                                                     (lambda (_%g160507160518%_)
                                                       ((lambda (_%g160508160521%_)
                                                          (cons (cons _%E160479%_
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
                                 (cons _%g160508160521%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx160190%_))
                                    '()))
                        _%r160480%_))
                _%g160507160518%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g160505160539%_
                                                _%tgt160342%_)))))
                                      (if (gx#stx-pair? _%__stx161514161515%_)
                                          (let ((_%e160487160550%_
                                                 (gx#syntax-e
                                                  _%__stx161514161515%_)))
                                            (let ((_%tl160489160557%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e160487160550%_)))
                                                  (_%hd160488160554%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e160487160550%_))))
                                              (_%__kont161517161518%_
                                               _%tl160489160557%_
                                               _%hd160488160554%_)))
                                          (_%__kont161519161520%_))))))))
                      (let* ((_%bind160352%_
                              (_%generate-clauses160350%_ _%clauses160345%_))
                             (_%g160355160372%_
                              (lambda (_%g160356160368%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g160356160368%_)))
                             (_%g160354160467%_
                              (lambda (_%g160356160376%_)
                                (if (gx#stx-pair/null? _%g160356160376%_)
                                    (let ((_g161552_
                                           (gx#syntax-split-splice
                                            _%g160356160376%_
                                            '0)))
                                      (begin
                                        (let ((_g161553_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g161552_)
                                                     (##values-length
                                                      _g161552_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g161553_ 2)))
                                              (error "Context expects 2 values"
                                                     _g161553_)))
                                        (let ((_%target160358160379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g161552_ 0)))
                                              (_%tl160360160382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g161552_ 1))))
                                          (if (gx#stx-null? _%tl160360160382%_)
                                              (letrec ((_%loop160361160385%_
                                                        (lambda (_%hd160359160389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try160365160392%_)
                  (if (gx#stx-pair? _%hd160359160389%_)
                      (let ((_%e160362160394%_
                             (gx#syntax-e _%hd160359160389%_)))
                        (let ((_%lp-hd160363160398%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160362160394%_)))
                              (_%lp-tl160364160401%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160362160394%_))))
                          (_%loop160361160385%_
                           _%lp-tl160364160401%_
                           (cons _%lp-hd160363160398%_
                                 _%bind-try160365160392%_))))
                      (let ((_%bind-try160366160404%_
                             (reverse _%bind-try160365160392%_)))
                        ((lambda (_%g160357160407%_)
                           (let* ((_%g160425160433%_
                                   (lambda (_%g160426160429%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g160426160429%_)))
                                  (_%g160424160463%_
                                   (lambda (_%g160426160437%_)
                                     ((lambda (_%g160427160440%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp161554
                                                           (lambda (_%g160454160457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g160455160460%_)
                     (cons _%g160454160457%_ _%g160455160460%_))))
              (declare (not safe))
              (__foldr1 __tmp161554 '() _%g160357160407%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g160427160440%_
                                                                '())
                                                          '()))))
                                      _%g160426160437%_))))
                             (_%g160424160463%_ (car (last _%bind160352%_)))))
                         _%bind-try160366160404%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop160361160385%_
                                                 _%target160358160379%_
                                                 '()))
                                              (_%g160355160372%_
                                               _%g160356160376%_)))))
                                    (_%g160355160372%_ _%g160356160376%_)))))
                        (_%g160354160467%_ _%bind160352%_))))))
          (let* ((_%g160196160215%_
                  (lambda (_%g160197160211%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160197160211%_)))
                 (_%g160195160338%_
                  (lambda (_%g160197160219%_)
                    (if (gx#stx-pair? _%g160197160219%_)
                        (let ((_%e160201160222%_
                               (gx#syntax-e _%g160197160219%_)))
                          (let ((_%hd160202160226%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e160201160222%_)))
                                (_%tl160203160229%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e160201160222%_))))
                            (if (gx#stx-pair? _%tl160203160229%_)
                                (let ((_%e160204160232%_
                                       (gx#syntax-e _%tl160203160229%_)))
                                  (let ((_%hd160205160236%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e160204160232%_)))
                                        (_%tl160206160239%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e160204160232%_))))
                                    (if (gx#stx-pair? _%tl160206160239%_)
                                        (let ((_%e160207160242%_
                                               (gx#syntax-e
                                                _%tl160206160239%_)))
                                          (let ((_%hd160208160246%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e160207160242%_)))
                                                (_%tl160209160249%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e160207160242%_))))
                                            ((lambda (_%g160198160252%_
                                                      _%g160199160254%_
                                                      _%g160200160255%_)
                                               (if (and (gx#identifier-list?
                                                         _%g160199160254%_)
                                                        (gx#stx-list?
                                                         _%g160198160252%_))
                                                   (let* ((_%g160273160281%_
                                                           (lambda (_%g160274160277%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g160274160277%_)))
                                                          (_%g160272160334%_
                                                           (lambda (_%g160274160285%_)
                                                             ((lambda (_%g160275160288%_)
                                                                (let* ((_%g160300160308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g160301160304%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g160301160304%_)))
                               (_%g160299160330%_
                                (lambda (_%g160301160312%_)
                                  ((lambda (_%g160302160315%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%g160275160288%_
                                                             (cons _%g160200160255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g160302160315%_
                                                       '()))))
                                   _%g160301160312%_))))
                          (_%g160299160330%_
                           (_%generate160193%_
                            _%g160275160288%_
                            (gx#syntax->list _%g160199160254%_)
                            _%g160198160252%_))))
                      _%g160274160285%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g160272160334%_
                                                      (gx#genident 'e)))
                                                   (_%g160196160215%_
                                                    _%g160197160219%_)))
                                             _%tl160209160249%_
                                             _%hd160208160246%_
                                             _%hd160205160236%_)))
                                        (_%g160196160215%_
                                         _%g160197160219%_))))
                                (_%g160196160215%_ _%g160197160219%_))))
                        (_%g160196160215%_ _%g160197160219%_)))))
            (_%g160195160338%_ _%stx160190%_)))))))
