(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g173075_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173077_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173079_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173081_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173082_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173084_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173085_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173087_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173088_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173090_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173091_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173093_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj173071
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
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173071 'gerbil#AST::t '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173071 'syntax '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173071 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173071 '(e source) '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173071 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173071 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173071 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173071 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173071 '#f '13 '#f '#f))
        (let ((__tmp173074 |gx[1]#_g173075_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj173071 __tmp173074 '4 '#f '#f))
        (let ((__tmp173076 |gx[1]#_g173077_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj173071 __tmp173076 '14 '#f '#f))
        (let ((__tmp173078 |gx[1]#_g173079_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj173071 __tmp173078 '15 '#f '#f))
        (let ((__tmp173080
               (cons (cons 'e |gx[1]#_g173081_|)
                     (cons (cons 'source |gx[1]#_g173082_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj173071 __tmp173080 '16 '#f '#f))
        (let ((__tmp173083
               (cons (cons 'e |gx[1]#_g173084_|)
                     (cons (cons 'source |gx[1]#_g173085_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj173071 __tmp173083 '17 '#f '#f))
        (let ((__tmp173086
               (cons (cons 'e |gx[1]#_g173087_|)
                     (cons (cons 'source |gx[1]#_g173088_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj173071 __tmp173086 '18 '#f '#f))
        (let ((__tmp173089
               (cons (cons 'e |gx[1]#_g173090_|)
                     (cons (cons 'source |gx[1]#_g173091_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj173071 __tmp173089 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173071 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173071 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173071 '() '21 '#f '#f))
        __obj173071))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx171668%_)
        (let* ((_%g171672171686%_
                (lambda (_%g171673171682%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g171673171682%_)))
               (_%g171671171728%_
                (lambda (_%g171673171690%_)
                  (if (gx#stx-pair? _%g171673171690%_)
                      (let ((_%e171675171693%_
                             (gx#syntax-e _%g171673171690%_)))
                        (let ((_%hd171676171697%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171675171693%_)))
                              (_%tl171677171700%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171675171693%_))))
                          (if (gx#stx-pair? _%tl171677171700%_)
                              (let ((_%e171678171703%_
                                     (gx#syntax-e _%tl171677171700%_)))
                                (let ((_%hd171679171707%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171678171703%_)))
                                      (_%tl171680171710%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171678171703%_))))
                                  (if (gx#stx-null? _%tl171680171710%_)
                                      ((lambda (_%g171674171713%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%g171674171713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure"
                               (cons _%g171674171713%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd171679171707%_)
                                      (_%g171672171686%_ _%g171673171690%_))))
                              (_%g171672171686%_ _%g171673171690%_))))
                      (_%g171672171686%_ _%g171673171690%_)))))
          (_%g171671171728%_ _%$stx171668%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx171732%_)
        (letrec ((_%generate171735%_
                  (lambda (_%tgt171884%_ _%kws171886%_ _%clauses171887%_)
                    (letrec ((_%generate-clause171889%_
                              (lambda (_%hd172822%_ _%E172824%_)
                                (let* ((_%__stx172974172975%_ _%hd172822%_)
                                       (_%g172828172855%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx172974172975%_))))
                                  (let ((_%__kont172977172978%_
                                         (lambda (_%g172830172951%_
                                                  _%g172831172953%_)
                                           (_%generate1171891%_
                                            _%hd172822%_
                                            _%g172831172953%_
                                            '#t
                                            _%g172830172951%_
                                            _%E172824%_)))
                                        (_%__kont172979172980%_
                                         (lambda (_%g172838172903%_
                                                  _%g172839172905%_
                                                  _%g172840172906%_)
                                           (_%generate1171891%_
                                            _%hd172822%_
                                            _%g172840172906%_
                                            _%g172839172905%_
                                            _%g172838172903%_
                                            _%E172824%_)))
                                        (_%__kont172981172982%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx171732%_
                                            _%hd172822%_))))
                                    (if (gx#stx-pair? _%__stx172974172975%_)
                                        (let ((_%e172832172931%_
                                               (gx#syntax-e
                                                _%__stx172974172975%_)))
                                          (let ((_%tl172834172938%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172832172931%_)))
                                                (_%hd172833172935%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172832172931%_))))
                                            (if (gx#stx-pair?
                                                 _%tl172834172938%_)
                                                (let ((_%e172835172941%_
                                                       (gx#syntax-e
                                                        _%tl172834172938%_)))
                                                  (let ((_%tl172837172948%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172835172941%_)))
                                                        (_%hd172836172945%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172835172941%_))))
                                                    (if (gx#stx-null?
                                                         _%tl172837172948%_)
                                                        (_%__kont172977172978%_
                                                         _%hd172836172945%_
                                                         _%hd172833172935%_)
                                                        (if (gx#stx-pair?
                                                             _%tl172837172948%_)
                                                            (let ((_%e172847172893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl172837172948%_)))
                      (let ((_%tl172849172900%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172847172893%_)))
                            (_%hd172848172897%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172847172893%_))))
                        (if (gx#stx-null? _%tl172849172900%_)
                            (_%__kont172979172980%_
                             _%hd172848172897%_
                             _%hd172836172945%_
                             _%hd172833172935%_)
                            (_%__kont172981172982%_))))
                    (_%__kont172981172982%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont172981172982%_))))
                                        (_%__kont172981172982%_))))))
                             (_%generate1171891%_
                              (lambda (_%where172275%_
                                       _%hd172277%_
                                       _%fender172278%_
                                       _%body172279%_
                                       _%E172280%_)
                                (letrec ((_%recur172282%_
                                          (lambda (_%hd172285%_
                                                   _%tgt172287%_
                                                   _%K172288%_)
                                            (let* ((_%__stx173020173021%_
                                                    _%hd172285%_)
                                                   (_%g172291172303%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx173020173021%_))))
                                              (let ((_%__kont173023173024%_
                                                     (lambda (_%g172293172612%_
                                                              _%g172294172614%_)
                                                       (let* ((_%g172625172633%_
                                                               (lambda (_%g172626172629%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g172626172629%_)))
                      (_%g172624172814%_
                       (lambda (_%g172626172637%_)
                         ((lambda (_%g172627172640%_)
                            (let* ((_%g172652172660%_
                                    (lambda (_%g172653172656%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g172653172656%_)))
                                   (_%g172651172810%_
                                    (lambda (_%g172653172664%_)
                                      ((lambda (_%g172654172667%_)
                                         (let* ((_%g172680172688%_
                                                 (lambda (_%g172681172684%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g172681172684%_)))
                                                (_%g172679172806%_
                                                 (lambda (_%g172681172692%_)
                                                   ((lambda (_%g172682172695%_)
                                                      (let* ((_%g172708172716%_
                                                              (lambda (_%g172709172712%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g172709172712%_)))
                     (_%g172707172802%_
                      (lambda (_%g172709172720%_)
                        ((lambda (_%g172710172723%_)
                           (let* ((_%g172736172744%_
                                   (lambda (_%g172737172740%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g172737172740%_)))
                                  (_%g172735172798%_
                                   (lambda (_%g172737172748%_)
                                     ((lambda (_%g172738172751%_)
                                        (let* ((_%g172764172772%_
                                                (lambda (_%g172765172768%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g172765172768%_)))
                                               (_%g172763172794%_
                                                (lambda (_%g172765172776%_)
                                                  ((lambda (_%g172766172779%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%g172627172640%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g172654172667%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%g172627172640%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g172682172695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%g172654172667%_ '()))
                                       '()))
                           (cons (cons _%g172710172723%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%g172654172667%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons _%g172738172751%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g172766172779%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g172765172776%_))))
                                          (_%g172763172794%_ _%E172280%_)))
                                      _%g172737172748%_))))
                             (_%g172735172798%_
                              (_%recur172282%_
                               _%g172294172614%_
                               _%g172682172695%_
                               (_%recur172282%_
                                _%g172293172612%_
                                _%g172710172723%_
                                _%K172288%_)))))
                         _%g172709172720%_))))
                (_%g172707172802%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g172681172692%_))))
                                           (_%g172679172806%_
                                            (gx#genident 'hd))))
                                       _%g172653172664%_))))
                              (_%g172651172810%_ (gx#genident 'e))))
                          _%g172626172637%_))))
                 (_%g172624172814%_ _%tgt172287%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont173025173026%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd172285%_)
                                                           (if (gx#underscore?
                                                                _%hd172285%_)
                                                               _%K172288%_
                                                               (if (let ((__tmp173092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g172317172319%_)
                                    (gx#bound-identifier=?
                                     _%g172317172319%_
                                     _%hd172285%_))))
                             (declare (not safe))
                             (__find __tmp173092 _%kws171886%_))
                           (let* ((_%g172325172340%_
                                   (lambda (_%g172326172336%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g172326172336%_)))
                                  (_%g172324172393%_
                                   (lambda (_%g172326172344%_)
                                     (if (gx#stx-pair? _%g172326172344%_)
                                         (let ((_%e172329172347%_
                                                (gx#syntax-e
                                                 _%g172326172344%_)))
                                           (let ((_%hd172330172351%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e172329172347%_)))
                                                 (_%tl172331172354%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e172329172347%_))))
                                             (if (gx#stx-pair?
                                                  _%tl172331172354%_)
                                                 (let ((_%e172332172357%_
                                                        (gx#syntax-e
                                                         _%tl172331172354%_)))
                                                   (let ((_%hd172333172361%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e172332172357%_)))
                                                         (_%tl172334172364%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e172332172357%_))))
                                                     (if (gx#stx-null?
                                                          _%tl172334172364%_)
                                                         ((lambda (_%g172327172367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g172328172369%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%g172328172369%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%g172328172369%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%g172327172367%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K172288%_ (cons _%E172280%_ '())))))
                  _%hd172333172361%_
                  _%hd172330172351%_)
                 (_%g172325172340%_ _%g172326172344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g172325172340%_
                                                  _%g172326172344%_))))
                                         (_%g172325172340%_
                                          _%g172326172344%_)))))
                             (_%g172324172393%_
                              (list _%tgt172287%_ _%hd172285%_)))
                           (let* ((_%g172399172414%_
                                   (lambda (_%g172400172410%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g172400172410%_)))
                                  (_%g172398172459%_
                                   (lambda (_%g172400172418%_)
                                     (if (gx#stx-pair? _%g172400172418%_)
                                         (let ((_%e172403172421%_
                                                (gx#syntax-e
                                                 _%g172400172418%_)))
                                           (let ((_%hd172404172425%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e172403172421%_)))
                                                 (_%tl172405172428%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e172403172421%_))))
                                             (if (gx#stx-pair?
                                                  _%tl172405172428%_)
                                                 (let ((_%e172406172431%_
                                                        (gx#syntax-e
                                                         _%tl172405172428%_)))
                                                   (let ((_%hd172407172435%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e172406172431%_)))
                                                         (_%tl172408172438%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e172406172431%_))))
                                                     (if (gx#stx-null?
                                                          _%tl172408172438%_)
                                                         ((lambda (_%g172401172441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g172402172443%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%g172401172441%_
                                            (cons _%g172402172443%_ '()))
                                      '())
                                (cons _%K172288%_ '()))))
                  _%hd172407172435%_
                  _%hd172404172425%_)
                 (_%g172399172414%_ _%g172400172418%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g172399172414%_
                                                  _%g172400172418%_))))
                                         (_%g172399172414%_
                                          _%g172400172418%_)))))
                             (_%g172398172459%_
                              (list _%tgt172287%_ _%hd172285%_)))))
                   (if (gx#stx-null? _%hd172285%_)
                       (let* ((_%g172465172473%_
                               (lambda (_%g172466172469%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g172466172469%_)))
                              (_%g172464172492%_
                               (lambda (_%g172466172477%_)
                                 ((lambda (_%g172467172480%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%g172467172480%_
                                                            '()))
                                                (cons _%K172288%_
                                                      (cons _%E172280%_
                                                            '())))))
                                  _%g172466172477%_))))
                         (_%g172464172492%_ _%tgt172287%_))
                       (if (gx#stx-datum? _%hd172285%_)
                           (let* ((_%g172498172517%_
                                   (lambda (_%g172499172513%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g172499172513%_)))
                                  (_%g172497172576%_
                                   (lambda (_%g172499172521%_)
                                     (if (gx#stx-pair? _%g172499172521%_)
                                         (let ((_%e172503172524%_
                                                (gx#syntax-e
                                                 _%g172499172521%_)))
                                           (let ((_%hd172504172528%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e172503172524%_)))
                                                 (_%tl172505172531%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e172503172524%_))))
                                             (if (gx#stx-pair?
                                                  _%tl172505172531%_)
                                                 (let ((_%e172506172534%_
                                                        (gx#syntax-e
                                                         _%tl172505172531%_)))
                                                   (let ((_%hd172507172538%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e172506172534%_)))
                                                         (_%tl172508172541%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e172506172534%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl172508172541%_)
                                                         (let ((_%e172509172544%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl172508172541%_)))
                   (let ((_%hd172510172548%_
                          (let ()
                            (declare (not safe))
                            (##car _%e172509172544%_)))
                         (_%tl172511172551%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e172509172544%_))))
                     (if (gx#stx-null? _%tl172511172551%_)
                         ((lambda (_%g172500172554%_
                                   _%g172501172556%_
                                   _%g172502172557%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%g172500172554%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%g172502172557%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g172501172556%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K172288%_
                                              (cons _%E172280%_ '())))))
                          _%hd172510172548%_
                          _%hd172507172538%_
                          _%hd172504172528%_)
                         (_%g172498172517%_ _%g172499172521%_))))
                 (_%g172498172517%_ _%g172499172521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g172498172517%_
                                                  _%g172499172521%_))))
                                         (_%g172498172517%_
                                          _%g172499172521%_)))))
                             (_%g172497172576%_
                              (list _%tgt172287%_
                                    _%hd172285%_
                                    (let ((_%e172580%_
                                           (gx#stx-e _%hd172285%_)))
                                      (if (or (keyword? _%e172580%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e172580%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e172580%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx171732%_
                            _%where172275%_
                            _%hd172285%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx173020173021%_)
                                                    (let ((_%e172295172602%_
                                                           (gx#syntax-e
                                                            _%__stx173020173021%_)))
                                                      (let ((_%tl172297172609%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172295172602%_)))
                    (_%hd172296172606%_
                     (let () (declare (not safe)) (##car _%e172295172602%_))))
                (_%__kont173023173024%_
                 _%tl172297172609%_
                 _%hd172296172606%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont173025173026%_)))))))
                                  (_%recur172282%_
                                   _%hd172277%_
                                   _%tgt171884%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender172278%_
                                               (cons _%body172279%_
                                                     (cons _%E172280%_
                                                           '()))))))))
                             (_%generate-clauses171892%_
                              (lambda (_%clauses172013%_)
                                (let _%lp172016%_ ((_%rest172019%_
                                                    _%clauses172013%_)
                                                   (_%E172021%_
                                                    (gx#genident 'E))
                                                   (_%r172022%_ '()))
                                  (let* ((_%__stx173056173057%_ _%rest172019%_)
                                         (_%g172025172037%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx173056173057%_))))
                                    (let ((_%__kont173059173060%_
                                           (lambda (_%g172027172102%_
                                                    _%g172028172104%_)
                                             (let* ((_%__stx173036173037%_
                                                     _%g172028172104%_)
                                                    (_%g172116172127%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx173036173037%_))))
                                               (let ((_%__kont173039173040%_
                                                      (lambda (_%g172118172256%_)
                                                        (if (gx#stx-null?
                                                             _%g172027172102%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g172118172256%_)
                             (not (gx#stx-null? _%g172118172256%_)))
                        (cons (cons _%E172021%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g172118172256%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g172028172104%_))
                                          '()))
                              _%r172022%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx171732%_
                         _%g172028172104%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx171732%_
                     _%g172028172104%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont173041173042%_
                                                      (lambda ()
                                                        (let* ((_%g172138172146%_
                                                                (lambda (_%g172139172142%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g172139172142%_)))
                       (_%g172137172235%_
                        (lambda (_%g172139172150%_)
                          ((lambda (_%g172140172153%_)
                             (let* ((_%g172169172177%_
                                     (lambda (_%g172170172173%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g172170172173%_)))
                                    (_%g172168172231%_
                                     (lambda (_%g172170172181%_)
                                       ((lambda (_%g172171172184%_)
                                          (let* ((_%g172197172205%_
                                                  (lambda (_%g172198172201%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g172198172201%_)))
                                                 (_%g172196172227%_
                                                  (lambda (_%g172198172209%_)
                                                    ((lambda (_%g172199172212%_)
                                                       (_%lp172016%_
                                                        _%g172027172102%_
                                                        _%g172140172153%_
                                                        (cons (cons _%E172021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g172199172212%_ '()))
                      _%r172022%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g172198172209%_))))
                                            (_%g172196172227%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%g172171172184%_
                                                                '())))
                                              (gx#stx-source
                                               _%g172028172104%_)))))
                                        _%g172170172181%_))))
                               (_%g172168172231%_
                                (_%generate-clause171889%_
                                 _%g172028172104%_
                                 (cons _%g172140172153%_ '())))))
                           _%g172139172150%_))))
                  (_%g172137172235%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx173036173037%_)
                                                     (let ((_%e172119172246%_
                                                            (gx#syntax-e
                                                             _%__stx173036173037%_)))
                                                       (let ((_%tl172121172253%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e172119172246%_)))
                     (_%hd172120172250%_
                      (let () (declare (not safe)) (##car _%e172119172246%_))))
                 (if (gx#identifier? _%hd172120172250%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g173093_|
                          _%hd172120172250%_)
                         (_%__kont173039173040%_ _%tl172121172253%_)
                         (_%__kont173041173042%_))
                     (_%__kont173041173042%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont173041173042%_))))))
                                          (_%__kont173061173062%_
                                           (lambda ()
                                             (let* ((_%g172048172056%_
                                                     (lambda (_%g172049172052%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g172049172052%_)))
                                                    (_%g172047172081%_
                                                     (lambda (_%g172049172060%_)
                                                       ((lambda (_%g172050172063%_)
                                                          (cons (cons _%E172021%_
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
                                 (cons _%g172050172063%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx171732%_))
                                    '()))
                        _%r172022%_))
                _%g172049172060%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g172047172081%_
                                                _%tgt171884%_)))))
                                      (if (gx#stx-pair? _%__stx173056173057%_)
                                          (let ((_%e172029172092%_
                                                 (gx#syntax-e
                                                  _%__stx173056173057%_)))
                                            (let ((_%tl172031172099%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e172029172092%_)))
                                                  (_%hd172030172096%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e172029172092%_))))
                                              (_%__kont173059173060%_
                                               _%tl172031172099%_
                                               _%hd172030172096%_)))
                                          (_%__kont173061173062%_))))))))
                      (let* ((_%bind171894%_
                              (_%generate-clauses171892%_ _%clauses171887%_))
                             (_%g171897171914%_
                              (lambda (_%g171898171910%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g171898171910%_)))
                             (_%g171896172009%_
                              (lambda (_%g171898171918%_)
                                (if (gx#stx-pair/null? _%g171898171918%_)
                                    (let ((_g173094_
                                           (gx#syntax-split-splice
                                            _%g171898171918%_
                                            '0)))
                                      (begin
                                        (let ((_g173095_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g173094_)
                                                     (##values-length
                                                      _g173094_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g173095_ 2)))
                                              (error "Context expects 2 values"
                                                     _g173095_)))
                                        (let ((_%target171900171921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g173094_ 0)))
                                              (_%tl171902171924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g173094_ 1))))
                                          (if (gx#stx-null? _%tl171902171924%_)
                                              (letrec ((_%loop171903171927%_
                                                        (lambda (_%hd171901171931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try171907171934%_)
                  (if (gx#stx-pair? _%hd171901171931%_)
                      (let ((_%e171904171936%_
                             (gx#syntax-e _%hd171901171931%_)))
                        (let ((_%lp-hd171905171940%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171904171936%_)))
                              (_%lp-tl171906171943%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171904171936%_))))
                          (_%loop171903171927%_
                           _%lp-tl171906171943%_
                           (cons _%lp-hd171905171940%_
                                 _%bind-try171907171934%_))))
                      (let ((_%bind-try171908171946%_
                             (reverse _%bind-try171907171934%_)))
                        ((lambda (_%g171899171949%_)
                           (let* ((_%g171967171975%_
                                   (lambda (_%g171968171971%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171968171971%_)))
                                  (_%g171966172005%_
                                   (lambda (_%g171968171979%_)
                                     ((lambda (_%g171969171982%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp173096
                                                           (lambda (_%g171996171999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g171997172002%_)
                     (cons _%g171996171999%_ _%g171997172002%_))))
              (declare (not safe))
              (foldr__0 __tmp173096 '() _%g171899171949%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g171969171982%_
                                                                '())
                                                          '()))))
                                      _%g171968171979%_))))
                             (_%g171966172005%_ (car (last _%bind171894%_)))))
                         _%bind-try171908171946%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop171903171927%_
                                                 _%target171900171921%_
                                                 '()))
                                              (_%g171897171914%_
                                               _%g171898171918%_)))))
                                    (_%g171897171914%_ _%g171898171918%_)))))
                        (_%g171896172009%_ _%bind171894%_))))))
          (let* ((_%g171738171757%_
                  (lambda (_%g171739171753%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171739171753%_)))
                 (_%g171737171880%_
                  (lambda (_%g171739171761%_)
                    (if (gx#stx-pair? _%g171739171761%_)
                        (let ((_%e171743171764%_
                               (gx#syntax-e _%g171739171761%_)))
                          (let ((_%hd171744171768%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171743171764%_)))
                                (_%tl171745171771%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171743171764%_))))
                            (if (gx#stx-pair? _%tl171745171771%_)
                                (let ((_%e171746171774%_
                                       (gx#syntax-e _%tl171745171771%_)))
                                  (let ((_%hd171747171778%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171746171774%_)))
                                        (_%tl171748171781%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171746171774%_))))
                                    (if (gx#stx-pair? _%tl171748171781%_)
                                        (let ((_%e171749171784%_
                                               (gx#syntax-e
                                                _%tl171748171781%_)))
                                          (let ((_%hd171750171788%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171749171784%_)))
                                                (_%tl171751171791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171749171784%_))))
                                            ((lambda (_%g171740171794%_
                                                      _%g171741171796%_
                                                      _%g171742171797%_)
                                               (if (and (gx#identifier-list?
                                                         _%g171741171796%_)
                                                        (gx#stx-list?
                                                         _%g171740171794%_))
                                                   (let* ((_%g171815171823%_
                                                           (lambda (_%g171816171819%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g171816171819%_)))
                                                          (_%g171814171876%_
                                                           (lambda (_%g171816171827%_)
                                                             ((lambda (_%g171817171830%_)
                                                                (let* ((_%g171842171850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g171843171846%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g171843171846%_)))
                               (_%g171841171872%_
                                (lambda (_%g171843171854%_)
                                  ((lambda (_%g171844171857%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%g171817171830%_
                                                             (cons _%g171742171797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g171844171857%_
                                                       '()))))
                                   _%g171843171854%_))))
                          (_%g171841171872%_
                           (_%generate171735%_
                            _%g171817171830%_
                            (gx#syntax->list _%g171741171796%_)
                            _%g171740171794%_))))
                      _%g171816171827%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g171814171876%_
                                                      (gx#genident 'e)))
                                                   (_%g171738171757%_
                                                    _%g171739171761%_)))
                                             _%tl171751171791%_
                                             _%hd171750171788%_
                                             _%hd171747171778%_)))
                                        (_%g171738171757%_
                                         _%g171739171761%_))))
                                (_%g171738171757%_ _%g171739171761%_))))
                        (_%g171738171757%_ _%g171739171761%_)))))
            (_%g171737171880%_ _%stx171732%_)))))))
