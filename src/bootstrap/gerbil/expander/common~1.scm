(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g115291_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115293_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115295_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115297_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115298_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115300_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115301_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115303_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115304_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115306_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115307_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115309_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj115287
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
          (##unchecked-structure-set! __obj115287 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115287 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115287 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115287 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115287 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115287 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115287 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115287 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115287 '#f '11 '#f '#f))
        (let ((__tmp115290 |gx[1]#_g115291_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj115287 __tmp115290 '12 '#f '#f))
        (let ((__tmp115292 |gx[1]#_g115293_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj115287 __tmp115292 '13 '#f '#f))
        (let ((__tmp115294 |gx[1]#_g115295_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj115287 __tmp115294 '14 '#f '#f))
        (let ((__tmp115296
               (cons (cons 'e |gx[1]#_g115297_|)
                     (cons (cons 'source |gx[1]#_g115298_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj115287 __tmp115296 '15 '#f '#f))
        (let ((__tmp115299
               (cons (cons 'e |gx[1]#_g115300_|)
                     (cons (cons 'source |gx[1]#_g115301_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj115287 __tmp115299 '16 '#f '#f))
        (let ((__tmp115302
               (cons (cons 'e |gx[1]#_g115303_|)
                     (cons (cons 'source |gx[1]#_g115304_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj115287 __tmp115302 '17 '#f '#f))
        (let ((__tmp115305
               (cons (cons 'e |gx[1]#_g115306_|)
                     (cons (cons 'source |gx[1]#_g115307_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj115287 __tmp115305 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115287 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115287 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115287 '() '20 '#f '#f))
        __obj115287))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx113882%_)
        (let* ((_%g113886113900%_
                (lambda (_%g113887113896%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g113887113896%_)))
               (_%g113885113942%_
                (lambda (_%g113887113904%_)
                  (if (gx#stx-pair? _%g113887113904%_)
                      (let ((_%e113889113907%_
                             (gx#syntax-e _%g113887113904%_)))
                        (let ((_%hd113890113911%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e113889113907%_)))
                              (_%tl113891113914%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e113889113907%_))))
                          (if (gx#stx-pair? _%tl113891113914%_)
                              (let ((_%e113892113917%_
                                     (gx#syntax-e _%tl113891113914%_)))
                                (let ((_%hd113893113921%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e113892113917%_)))
                                      (_%tl113894113924%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e113892113917%_))))
                                  (if (gx#stx-null? _%tl113894113924%_)
                                      ((lambda (_%L113927%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L113927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L113927%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd113893113921%_)
                                      (_%g113886113900%_ _%g113887113904%_))))
                              (_%g113886113900%_ _%g113887113904%_))))
                      (_%g113886113900%_ _%g113887113904%_)))))
          (_%g113885113942%_ _%$stx113882%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx113946%_)
        (letrec ((_%generate113949%_
                  (lambda (_%tgt114098%_ _%kws114100%_ _%clauses114101%_)
                    (letrec ((_%generate-clause114103%_
                              (lambda (_%hd115038%_ _%E115040%_)
                                (let* ((_%__stx115190115191%_ _%hd115038%_)
                                       (_%g115044115071%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx115190115191%_))))
                                  (let ((_%__kont115193115194%_
                                         (lambda (_%L115167%_ _%L115169%_)
                                           (_%generate1114105%_
                                            _%hd115038%_
                                            _%L115169%_
                                            '#t
                                            _%L115167%_
                                            _%E115040%_)))
                                        (_%__kont115195115196%_
                                         (lambda (_%L115119%_
                                                  _%L115121%_
                                                  _%L115122%_)
                                           (_%generate1114105%_
                                            _%hd115038%_
                                            _%L115122%_
                                            _%L115121%_
                                            _%L115119%_
                                            _%E115040%_)))
                                        (_%__kont115197115198%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx113946%_
                                            _%hd115038%_))))
                                    (if (gx#stx-pair? _%__stx115190115191%_)
                                        (let ((_%e115048115147%_
                                               (gx#syntax-e
                                                _%__stx115190115191%_)))
                                          (let ((_%tl115050115154%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e115048115147%_)))
                                                (_%hd115049115151%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e115048115147%_))))
                                            (if (gx#stx-pair?
                                                 _%tl115050115154%_)
                                                (let ((_%e115051115157%_
                                                       (gx#syntax-e
                                                        _%tl115050115154%_)))
                                                  (let ((_%tl115053115164%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e115051115157%_)))
                                                        (_%hd115052115161%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e115051115157%_))))
                                                    (if (gx#stx-null?
                                                         _%tl115053115164%_)
                                                        (_%__kont115193115194%_
                                                         _%hd115052115161%_
                                                         _%hd115049115151%_)
                                                        (if (gx#stx-pair?
                                                             _%tl115053115164%_)
                                                            (let ((_%e115063115109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl115053115164%_)))
                      (let ((_%tl115065115116%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115063115109%_)))
                            (_%hd115064115113%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115063115109%_))))
                        (if (gx#stx-null? _%tl115065115116%_)
                            (_%__kont115195115196%_
                             _%hd115064115113%_
                             _%hd115052115161%_
                             _%hd115049115151%_)
                            (_%__kont115197115198%_))))
                    (_%__kont115197115198%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont115197115198%_))))
                                        (_%__kont115197115198%_))))))
                             (_%generate1114105%_
                              (lambda (_%where114491%_
                                       _%hd114493%_
                                       _%fender114494%_
                                       _%body114495%_
                                       _%E114496%_)
                                (letrec ((_%recur114498%_
                                          (lambda (_%hd114501%_
                                                   _%tgt114503%_
                                                   _%K114504%_)
                                            (let* ((_%__stx115236115237%_
                                                    _%hd114501%_)
                                                   (_%g114507114519%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx115236115237%_))))
                                              (let ((_%__kont115239115240%_
                                                     (lambda (_%L114828%_
                                                              _%L114830%_)
                                                       (let* ((_%g114841114849%_
                                                               (lambda (_%g114842114845%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g114842114845%_)))
                      (_%g114840115030%_
                       (lambda (_%g114842114853%_)
                         ((lambda (_%L114856%_)
                            (let* ((_%g114868114876%_
                                    (lambda (_%g114869114872%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g114869114872%_)))
                                   (_%g114867115026%_
                                    (lambda (_%g114869114880%_)
                                      ((lambda (_%L114883%_)
                                         (let* ((_%g114896114904%_
                                                 (lambda (_%g114897114900%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g114897114900%_)))
                                                (_%g114895115022%_
                                                 (lambda (_%g114897114908%_)
                                                   ((lambda (_%L114911%_)
                                                      (let* ((_%g114924114932%_
                                                              (lambda (_%g114925114928%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g114925114928%_)))
                     (_%g114923115018%_
                      (lambda (_%g114925114936%_)
                        ((lambda (_%L114939%_)
                           (let* ((_%g114952114960%_
                                   (lambda (_%g114953114956%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114953114956%_)))
                                  (_%g114951115014%_
                                   (lambda (_%g114953114964%_)
                                     ((lambda (_%L114967%_)
                                        (let* ((_%g114980114988%_
                                                (lambda (_%g114981114984%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g114981114984%_)))
                                               (_%g114979115010%_
                                                (lambda (_%g114981114992%_)
                                                  ((lambda (_%L114995%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L114856%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L114883%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L114856%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L114911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L114883%_ '()))
                                       '()))
                           (cons (cons _%L114939%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L114883%_ '()))
                                             '()))
                                 '()))
                     (cons _%L114967%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L114995%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g114981114992%_))))
                                          (_%g114979115010%_ _%E114496%_)))
                                      _%g114953114964%_))))
                             (_%g114951115014%_
                              (_%recur114498%_
                               _%L114830%_
                               _%L114911%_
                               (_%recur114498%_
                                _%L114828%_
                                _%L114939%_
                                _%K114504%_)))))
                         _%g114925114936%_))))
                (_%g114923115018%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g114897114908%_))))
                                           (_%g114895115022%_
                                            (gx#genident 'hd))))
                                       _%g114869114880%_))))
                              (_%g114867115026%_ (gx#genident 'e))))
                          _%g114842114853%_))))
                 (_%g114840115030%_ _%tgt114503%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont115241115242%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd114501%_)
                                                           (if (gx#underscore?
                                                                _%hd114501%_)
                                                               _%K114504%_
                                                               (if (let ((__tmp115308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g114533114535%_)
                                    (gx#bound-identifier=?
                                     _%g114533114535%_
                                     _%hd114501%_))))
                             (declare (not safe))
                             (__find __tmp115308 _%kws114100%_))
                           (let* ((_%g114541114556%_
                                   (lambda (_%g114542114552%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114542114552%_)))
                                  (_%g114540114609%_
                                   (lambda (_%g114542114560%_)
                                     (if (gx#stx-pair? _%g114542114560%_)
                                         (let ((_%e114545114563%_
                                                (gx#syntax-e
                                                 _%g114542114560%_)))
                                           (let ((_%hd114546114567%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114545114563%_)))
                                                 (_%tl114547114570%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114545114563%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114547114570%_)
                                                 (let ((_%e114548114573%_
                                                        (gx#syntax-e
                                                         _%tl114547114570%_)))
                                                   (let ((_%hd114549114577%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114548114573%_)))
                                                         (_%tl114550114580%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114548114573%_))))
                                                     (if (gx#stx-null?
                                                          _%tl114550114580%_)
                                                         ((lambda (_%L114583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L114585%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L114585%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L114585%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L114583%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K114504%_ (cons _%E114496%_ '())))))
                  _%hd114549114577%_
                  _%hd114546114567%_)
                 (_%g114541114556%_ _%g114542114560%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114541114556%_
                                                  _%g114542114560%_))))
                                         (_%g114541114556%_
                                          _%g114542114560%_)))))
                             (_%g114540114609%_
                              (list _%tgt114503%_ _%hd114501%_)))
                           (let* ((_%g114615114630%_
                                   (lambda (_%g114616114626%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114616114626%_)))
                                  (_%g114614114675%_
                                   (lambda (_%g114616114634%_)
                                     (if (gx#stx-pair? _%g114616114634%_)
                                         (let ((_%e114619114637%_
                                                (gx#syntax-e
                                                 _%g114616114634%_)))
                                           (let ((_%hd114620114641%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114619114637%_)))
                                                 (_%tl114621114644%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114619114637%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114621114644%_)
                                                 (let ((_%e114622114647%_
                                                        (gx#syntax-e
                                                         _%tl114621114644%_)))
                                                   (let ((_%hd114623114651%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114622114647%_)))
                                                         (_%tl114624114654%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114622114647%_))))
                                                     (if (gx#stx-null?
                                                          _%tl114624114654%_)
                                                         ((lambda (_%L114657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L114659%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L114657%_ (cons _%L114659%_ '()))
                                      '())
                                (cons _%K114504%_ '()))))
                  _%hd114623114651%_
                  _%hd114620114641%_)
                 (_%g114615114630%_ _%g114616114634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114615114630%_
                                                  _%g114616114634%_))))
                                         (_%g114615114630%_
                                          _%g114616114634%_)))))
                             (_%g114614114675%_
                              (list _%tgt114503%_ _%hd114501%_)))))
                   (if (gx#stx-null? _%hd114501%_)
                       (let* ((_%g114681114689%_
                               (lambda (_%g114682114685%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g114682114685%_)))
                              (_%g114680114708%_
                               (lambda (_%g114682114693%_)
                                 ((lambda (_%L114696%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L114696%_ '()))
                                                (cons _%K114504%_
                                                      (cons _%E114496%_
                                                            '())))))
                                  _%g114682114693%_))))
                         (_%g114680114708%_ _%tgt114503%_))
                       (if (gx#stx-datum? _%hd114501%_)
                           (let* ((_%g114714114733%_
                                   (lambda (_%g114715114729%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114715114729%_)))
                                  (_%g114713114792%_
                                   (lambda (_%g114715114737%_)
                                     (if (gx#stx-pair? _%g114715114737%_)
                                         (let ((_%e114719114740%_
                                                (gx#syntax-e
                                                 _%g114715114737%_)))
                                           (let ((_%hd114720114744%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114719114740%_)))
                                                 (_%tl114721114747%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114719114740%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114721114747%_)
                                                 (let ((_%e114722114750%_
                                                        (gx#syntax-e
                                                         _%tl114721114747%_)))
                                                   (let ((_%hd114723114754%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114722114750%_)))
                                                         (_%tl114724114757%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114722114750%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl114724114757%_)
                                                         (let ((_%e114725114760%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl114724114757%_)))
                   (let ((_%hd114726114764%_
                          (let ()
                            (declare (not safe))
                            (##car _%e114725114760%_)))
                         (_%tl114727114767%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e114725114760%_))))
                     (if (gx#stx-null? _%tl114727114767%_)
                         ((lambda (_%L114770%_ _%L114772%_ _%L114773%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L114770%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L114773%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L114772%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K114504%_
                                              (cons _%E114496%_ '())))))
                          _%hd114726114764%_
                          _%hd114723114754%_
                          _%hd114720114744%_)
                         (_%g114714114733%_ _%g114715114737%_))))
                 (_%g114714114733%_ _%g114715114737%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114714114733%_
                                                  _%g114715114737%_))))
                                         (_%g114714114733%_
                                          _%g114715114737%_)))))
                             (_%g114713114792%_
                              (list _%tgt114503%_
                                    _%hd114501%_
                                    (let ((_%e114796%_
                                           (gx#stx-e _%hd114501%_)))
                                      (if (or (keyword? _%e114796%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e114796%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e114796%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx113946%_
                            _%where114491%_
                            _%hd114501%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx115236115237%_)
                                                    (let ((_%e114511114818%_
                                                           (gx#syntax-e
                                                            _%__stx115236115237%_)))
                                                      (let ((_%tl114513114825%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e114511114818%_)))
                    (_%hd114512114822%_
                     (let () (declare (not safe)) (##car _%e114511114818%_))))
                (_%__kont115239115240%_
                 _%tl114513114825%_
                 _%hd114512114822%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont115241115242%_)))))))
                                  (_%recur114498%_
                                   _%hd114493%_
                                   _%tgt114098%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender114494%_
                                               (cons _%body114495%_
                                                     (cons _%E114496%_
                                                           '()))))))))
                             (_%generate-clauses114106%_
                              (lambda (_%clauses114229%_)
                                (let _%lp114232%_ ((_%rest114235%_
                                                    _%clauses114229%_)
                                                   (_%E114237%_
                                                    (gx#genident 'E))
                                                   (_%r114238%_ '()))
                                  (let* ((_%__stx115272115273%_ _%rest114235%_)
                                         (_%g114241114253%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx115272115273%_))))
                                    (let ((_%__kont115275115276%_
                                           (lambda (_%L114318%_ _%L114320%_)
                                             (let* ((_%__stx115252115253%_
                                                     _%L114320%_)
                                                    (_%g114332114343%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx115252115253%_))))
                                               (let ((_%__kont115255115256%_
                                                      (lambda (_%L114472%_)
                                                        (if (gx#stx-null?
                                                             _%L114318%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L114472%_)
                             (not (gx#stx-null? _%L114472%_)))
                        (cons (cons _%E114237%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L114472%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L114320%_))
                                          '()))
                              _%r114238%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx113946%_
                         _%L114320%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx113946%_
                     _%L114320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont115257115258%_
                                                      (lambda ()
                                                        (let* ((_%g114354114362%_
                                                                (lambda (_%g114355114358%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g114355114358%_)))
                       (_%g114353114451%_
                        (lambda (_%g114355114366%_)
                          ((lambda (_%L114369%_)
                             (let* ((_%g114385114393%_
                                     (lambda (_%g114386114389%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g114386114389%_)))
                                    (_%g114384114447%_
                                     (lambda (_%g114386114397%_)
                                       ((lambda (_%L114400%_)
                                          (let* ((_%g114413114421%_
                                                  (lambda (_%g114414114417%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g114414114417%_)))
                                                 (_%g114412114443%_
                                                  (lambda (_%g114414114425%_)
                                                    ((lambda (_%L114428%_)
                                                       (_%lp114232%_
                                                        _%L114318%_
                                                        _%L114369%_
                                                        (cons (cons _%E114237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L114428%_ '()))
                      _%r114238%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g114414114425%_))))
                                            (_%g114412114443%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L114400%_
                                                                '())))
                                              (gx#stx-source _%L114320%_)))))
                                        _%g114386114397%_))))
                               (_%g114384114447%_
                                (_%generate-clause114103%_
                                 _%L114320%_
                                 (cons _%L114369%_ '())))))
                           _%g114355114366%_))))
                  (_%g114353114451%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx115252115253%_)
                                                     (let ((_%e114335114462%_
                                                            (gx#syntax-e
                                                             _%__stx115252115253%_)))
                                                       (let ((_%tl114337114469%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e114335114462%_)))
                     (_%hd114336114466%_
                      (let () (declare (not safe)) (##car _%e114335114462%_))))
                 (if (gx#identifier? _%hd114336114466%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g115309_|
                          _%hd114336114466%_)
                         (_%__kont115255115256%_ _%tl114337114469%_)
                         (_%__kont115257115258%_))
                     (_%__kont115257115258%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont115257115258%_))))))
                                          (_%__kont115277115278%_
                                           (lambda ()
                                             (let* ((_%g114264114272%_
                                                     (lambda (_%g114265114268%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g114265114268%_)))
                                                    (_%g114263114297%_
                                                     (lambda (_%g114265114276%_)
                                                       ((lambda (_%L114279%_)
                                                          (cons (cons _%E114237%_
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
                                 (cons _%L114279%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx113946%_))
                                    '()))
                        _%r114238%_))
                _%g114265114276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g114263114297%_
                                                _%tgt114098%_)))))
                                      (if (gx#stx-pair? _%__stx115272115273%_)
                                          (let ((_%e114245114308%_
                                                 (gx#syntax-e
                                                  _%__stx115272115273%_)))
                                            (let ((_%tl114247114315%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e114245114308%_)))
                                                  (_%hd114246114312%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e114245114308%_))))
                                              (_%__kont115275115276%_
                                               _%tl114247114315%_
                                               _%hd114246114312%_)))
                                          (_%__kont115277115278%_))))))))
                      (let* ((_%bind114108%_
                              (_%generate-clauses114106%_ _%clauses114101%_))
                             (_%g114111114128%_
                              (lambda (_%g114112114124%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g114112114124%_)))
                             (_%g114110114225%_
                              (lambda (_%g114112114132%_)
                                (if (gx#stx-pair/null? _%g114112114132%_)
                                    (let ((_g115310_
                                           (gx#syntax-split-splice
                                            _%g114112114132%_
                                            '0)))
                                      (begin
                                        (let ((_g115311_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g115310_)
                                                     (##vector-length
                                                      _g115310_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g115311_ 2)))
                                              (error "Context expects 2 values"
                                                     _g115311_)))
                                        (let ((_%target114114114135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g115310_ 0)))
                                              (_%tl114116114138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g115310_ 1))))
                                          (if (gx#stx-null? _%tl114116114138%_)
                                              (letrec ((_%loop114117114141%_
                                                        (lambda (_%hd114115114145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try114121114148%_)
                  (if (gx#stx-pair? _%hd114115114145%_)
                      (let ((_%e114118114151%_
                             (gx#syntax-e _%hd114115114145%_)))
                        (let ((_%lp-hd114119114155%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e114118114151%_)))
                              (_%lp-tl114120114158%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e114118114151%_))))
                          (_%loop114117114141%_
                           _%lp-tl114120114158%_
                           (cons _%lp-hd114119114155%_
                                 _%bind-try114121114148%_))))
                      (let ((_%bind-try114122114161%_
                             (reverse _%bind-try114121114148%_)))
                        ((lambda (_%L114165%_)
                           (let* ((_%g114183114191%_
                                   (lambda (_%g114184114187%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114184114187%_)))
                                  (_%g114182114221%_
                                   (lambda (_%g114184114195%_)
                                     ((lambda (_%L114198%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp115312
                                                           (lambda (_%g114212114215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g114213114218%_)
                     (cons _%g114212114215%_ _%g114213114218%_))))
              (declare (not safe))
              (__foldr1 __tmp115312 '() _%L114165%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L114198%_
                                                                '())
                                                          '()))))
                                      _%g114184114195%_))))
                             (_%g114182114221%_ (car (last _%bind114108%_)))))
                         _%bind-try114122114161%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop114117114141%_
                                                 _%target114114114135%_
                                                 '()))
                                              (_%g114111114128%_
                                               _%g114112114132%_)))))
                                    (_%g114111114128%_ _%g114112114132%_)))))
                        (_%g114110114225%_ _%bind114108%_))))))
          (let* ((_%g113952113971%_
                  (lambda (_%g113953113967%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g113953113967%_)))
                 (_%g113951114094%_
                  (lambda (_%g113953113975%_)
                    (if (gx#stx-pair? _%g113953113975%_)
                        (let ((_%e113957113978%_
                               (gx#syntax-e _%g113953113975%_)))
                          (let ((_%hd113958113982%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e113957113978%_)))
                                (_%tl113959113985%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e113957113978%_))))
                            (if (gx#stx-pair? _%tl113959113985%_)
                                (let ((_%e113960113988%_
                                       (gx#syntax-e _%tl113959113985%_)))
                                  (let ((_%hd113961113992%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e113960113988%_)))
                                        (_%tl113962113995%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e113960113988%_))))
                                    (if (gx#stx-pair? _%tl113962113995%_)
                                        (let ((_%e113963113998%_
                                               (gx#syntax-e
                                                _%tl113962113995%_)))
                                          (let ((_%hd113964114002%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e113963113998%_)))
                                                (_%tl113965114005%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e113963113998%_))))
                                            ((lambda (_%L114008%_
                                                      _%L114010%_
                                                      _%L114011%_)
                                               (if (and (gx#identifier-list?
                                                         _%L114010%_)
                                                        (gx#stx-list?
                                                         _%L114008%_))
                                                   (let* ((_%g114029114037%_
                                                           (lambda (_%g114030114033%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g114030114033%_)))
                                                          (_%g114028114090%_
                                                           (lambda (_%g114030114041%_)
                                                             ((lambda (_%L114044%_)
                                                                (let* ((_%g114056114064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g114057114060%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g114057114060%_)))
                               (_%g114055114086%_
                                (lambda (_%g114057114068%_)
                                  ((lambda (_%L114071%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L114044%_
                                                             (cons _%L114011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L114071%_ '()))))
                                   _%g114057114068%_))))
                          (_%g114055114086%_
                           (_%generate113949%_
                            _%L114044%_
                            (gx#syntax->list _%L114010%_)
                            _%L114008%_))))
                      _%g114030114041%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g114028114090%_
                                                      (gx#genident 'e)))
                                                   (_%g113952113971%_
                                                    _%g113953113975%_)))
                                             _%tl113965114005%_
                                             _%hd113964114002%_
                                             _%hd113961113992%_)))
                                        (_%g113952113971%_
                                         _%g113953113975%_))))
                                (_%g113952113971%_ _%g113953113975%_))))
                        (_%g113952113971%_ _%g113953113975%_)))))
            (_%g113951114094%_ _%stx113946%_)))))))
