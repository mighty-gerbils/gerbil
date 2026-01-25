(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129174_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129176_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129178_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129180_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129181_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129183_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129184_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129186_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129187_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129189_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129190_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129192_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj129170
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
          (##unchecked-structure-set! __obj129170 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129170 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129170 '(e source) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129170 '(e source) '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129170 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129170 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129170 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129170 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129170 '#f '12 '#f '#f))
        (let ((__tmp129173 |gx[1]#_g129174_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj129170 __tmp129173 '3 '#f '#f))
        (let ((__tmp129175 |gx[1]#_g129176_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj129170 __tmp129175 '13 '#f '#f))
        (let ((__tmp129177 |gx[1]#_g129178_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj129170 __tmp129177 '14 '#f '#f))
        (let ((__tmp129179
               (cons (cons 'e |gx[1]#_g129180_|)
                     (cons (cons 'source |gx[1]#_g129181_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129170 __tmp129179 '15 '#f '#f))
        (let ((__tmp129182
               (cons (cons 'e |gx[1]#_g129183_|)
                     (cons (cons 'source |gx[1]#_g129184_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129170 __tmp129182 '16 '#f '#f))
        (let ((__tmp129185
               (cons (cons 'e |gx[1]#_g129186_|)
                     (cons (cons 'source |gx[1]#_g129187_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129170 __tmp129185 '17 '#f '#f))
        (let ((__tmp129188
               (cons (cons 'e |gx[1]#_g129189_|)
                     (cons (cons 'source |gx[1]#_g129190_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129170 __tmp129188 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129170 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129170 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129170 '() '20 '#f '#f))
        __obj129170))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx127767%_)
        (let* ((_%g127771127785%_
                (lambda (_%g127772127781%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g127772127781%_)))
               (_%g127770127827%_
                (lambda (_%g127772127789%_)
                  (if (gx#stx-pair? _%g127772127789%_)
                      (let ((_%e127774127792%_
                             (gx#syntax-e _%g127772127789%_)))
                        (let ((_%hd127775127796%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e127774127792%_)))
                              (_%tl127776127799%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e127774127792%_))))
                          (if (gx#stx-pair? _%tl127776127799%_)
                              (let ((_%e127777127802%_
                                     (gx#syntax-e _%tl127776127799%_)))
                                (let ((_%hd127778127806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e127777127802%_)))
                                      (_%tl127779127809%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e127777127802%_))))
                                  (if (gx#stx-null? _%tl127779127809%_)
                                      ((lambda (_%g127773127812%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%g127773127812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure"
                               (cons _%g127773127812%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd127778127806%_)
                                      (_%g127771127785%_ _%g127772127789%_))))
                              (_%g127771127785%_ _%g127772127789%_))))
                      (_%g127771127785%_ _%g127772127789%_)))))
          (_%g127770127827%_ _%$stx127767%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx127831%_)
        (letrec ((_%generate127834%_
                  (lambda (_%tgt127983%_ _%kws127985%_ _%clauses127986%_)
                    (letrec ((_%generate-clause127988%_
                              (lambda (_%hd128921%_ _%E128923%_)
                                (let* ((_%__stx129073129074%_ _%hd128921%_)
                                       (_%g128927128954%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx129073129074%_))))
                                  (let ((_%__kont129076129077%_
                                         (lambda (_%g128929129050%_
                                                  _%g128930129052%_)
                                           (_%generate1127990%_
                                            _%hd128921%_
                                            _%g128930129052%_
                                            '#t
                                            _%g128929129050%_
                                            _%E128923%_)))
                                        (_%__kont129078129079%_
                                         (lambda (_%g128937129002%_
                                                  _%g128938129004%_
                                                  _%g128939129005%_)
                                           (_%generate1127990%_
                                            _%hd128921%_
                                            _%g128939129005%_
                                            _%g128938129004%_
                                            _%g128937129002%_
                                            _%E128923%_)))
                                        (_%__kont129080129081%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx127831%_
                                            _%hd128921%_))))
                                    (if (gx#stx-pair? _%__stx129073129074%_)
                                        (let ((_%e128931129030%_
                                               (gx#syntax-e
                                                _%__stx129073129074%_)))
                                          (let ((_%tl128933129037%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e128931129030%_)))
                                                (_%hd128932129034%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e128931129030%_))))
                                            (if (gx#stx-pair?
                                                 _%tl128933129037%_)
                                                (let ((_%e128934129040%_
                                                       (gx#syntax-e
                                                        _%tl128933129037%_)))
                                                  (let ((_%tl128936129047%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e128934129040%_)))
                                                        (_%hd128935129044%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e128934129040%_))))
                                                    (if (gx#stx-null?
                                                         _%tl128936129047%_)
                                                        (_%__kont129076129077%_
                                                         _%hd128935129044%_
                                                         _%hd128932129034%_)
                                                        (if (gx#stx-pair?
                                                             _%tl128936129047%_)
                                                            (let ((_%e128946128992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl128936129047%_)))
                      (let ((_%tl128948128999%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e128946128992%_)))
                            (_%hd128947128996%_
                             (let ()
                               (declare (not safe))
                               (##car _%e128946128992%_))))
                        (if (gx#stx-null? _%tl128948128999%_)
                            (_%__kont129078129079%_
                             _%hd128947128996%_
                             _%hd128935129044%_
                             _%hd128932129034%_)
                            (_%__kont129080129081%_))))
                    (_%__kont129080129081%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont129080129081%_))))
                                        (_%__kont129080129081%_))))))
                             (_%generate1127990%_
                              (lambda (_%where128374%_
                                       _%hd128376%_
                                       _%fender128377%_
                                       _%body128378%_
                                       _%E128379%_)
                                (letrec ((_%recur128381%_
                                          (lambda (_%hd128384%_
                                                   _%tgt128386%_
                                                   _%K128387%_)
                                            (let* ((_%__stx129119129120%_
                                                    _%hd128384%_)
                                                   (_%g128390128402%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx129119129120%_))))
                                              (let ((_%__kont129122129123%_
                                                     (lambda (_%g128392128711%_
                                                              _%g128393128713%_)
                                                       (let* ((_%g128724128732%_
                                                               (lambda (_%g128725128728%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g128725128728%_)))
                      (_%g128723128913%_
                       (lambda (_%g128725128736%_)
                         ((lambda (_%g128726128739%_)
                            (let* ((_%g128751128759%_
                                    (lambda (_%g128752128755%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g128752128755%_)))
                                   (_%g128750128909%_
                                    (lambda (_%g128752128763%_)
                                      ((lambda (_%g128753128766%_)
                                         (let* ((_%g128779128787%_
                                                 (lambda (_%g128780128783%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g128780128783%_)))
                                                (_%g128778128905%_
                                                 (lambda (_%g128780128791%_)
                                                   ((lambda (_%g128781128794%_)
                                                      (let* ((_%g128807128815%_
                                                              (lambda (_%g128808128811%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g128808128811%_)))
                     (_%g128806128901%_
                      (lambda (_%g128808128819%_)
                        ((lambda (_%g128809128822%_)
                           (let* ((_%g128835128843%_
                                   (lambda (_%g128836128839%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128836128839%_)))
                                  (_%g128834128897%_
                                   (lambda (_%g128836128847%_)
                                     ((lambda (_%g128837128850%_)
                                        (let* ((_%g128863128871%_
                                                (lambda (_%g128864128867%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g128864128867%_)))
                                               (_%g128862128893%_
                                                (lambda (_%g128864128875%_)
                                                  ((lambda (_%g128865128878%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%g128726128739%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g128753128766%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%g128726128739%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g128781128794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%g128753128766%_ '()))
                                       '()))
                           (cons (cons _%g128809128822%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%g128753128766%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons _%g128837128850%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g128865128878%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g128864128875%_))))
                                          (_%g128862128893%_ _%E128379%_)))
                                      _%g128836128847%_))))
                             (_%g128834128897%_
                              (_%recur128381%_
                               _%g128393128713%_
                               _%g128781128794%_
                               (_%recur128381%_
                                _%g128392128711%_
                                _%g128809128822%_
                                _%K128387%_)))))
                         _%g128808128819%_))))
                (_%g128806128901%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g128780128791%_))))
                                           (_%g128778128905%_
                                            (gx#genident 'hd))))
                                       _%g128752128763%_))))
                              (_%g128750128909%_ (gx#genident 'e))))
                          _%g128725128736%_))))
                 (_%g128723128913%_ _%tgt128386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont129124129125%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd128384%_)
                                                           (if (gx#underscore?
                                                                _%hd128384%_)
                                                               _%K128387%_
                                                               (if (let ((__tmp129191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g128416128418%_)
                                    (gx#bound-identifier=?
                                     _%g128416128418%_
                                     _%hd128384%_))))
                             (declare (not safe))
                             (__find __tmp129191 _%kws127985%_))
                           (let* ((_%g128424128439%_
                                   (lambda (_%g128425128435%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128425128435%_)))
                                  (_%g128423128492%_
                                   (lambda (_%g128425128443%_)
                                     (if (gx#stx-pair? _%g128425128443%_)
                                         (let ((_%e128428128446%_
                                                (gx#syntax-e
                                                 _%g128425128443%_)))
                                           (let ((_%hd128429128450%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e128428128446%_)))
                                                 (_%tl128430128453%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e128428128446%_))))
                                             (if (gx#stx-pair?
                                                  _%tl128430128453%_)
                                                 (let ((_%e128431128456%_
                                                        (gx#syntax-e
                                                         _%tl128430128453%_)))
                                                   (let ((_%hd128432128460%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e128431128456%_)))
                                                         (_%tl128433128463%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e128431128456%_))))
                                                     (if (gx#stx-null?
                                                          _%tl128433128463%_)
                                                         ((lambda (_%g128426128466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g128427128468%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%g128427128468%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%g128427128468%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%g128426128466%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K128387%_ (cons _%E128379%_ '())))))
                  _%hd128432128460%_
                  _%hd128429128450%_)
                 (_%g128424128439%_ _%g128425128443%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g128424128439%_
                                                  _%g128425128443%_))))
                                         (_%g128424128439%_
                                          _%g128425128443%_)))))
                             (_%g128423128492%_
                              (list _%tgt128386%_ _%hd128384%_)))
                           (let* ((_%g128498128513%_
                                   (lambda (_%g128499128509%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128499128509%_)))
                                  (_%g128497128558%_
                                   (lambda (_%g128499128517%_)
                                     (if (gx#stx-pair? _%g128499128517%_)
                                         (let ((_%e128502128520%_
                                                (gx#syntax-e
                                                 _%g128499128517%_)))
                                           (let ((_%hd128503128524%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e128502128520%_)))
                                                 (_%tl128504128527%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e128502128520%_))))
                                             (if (gx#stx-pair?
                                                  _%tl128504128527%_)
                                                 (let ((_%e128505128530%_
                                                        (gx#syntax-e
                                                         _%tl128504128527%_)))
                                                   (let ((_%hd128506128534%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e128505128530%_)))
                                                         (_%tl128507128537%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e128505128530%_))))
                                                     (if (gx#stx-null?
                                                          _%tl128507128537%_)
                                                         ((lambda (_%g128500128540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g128501128542%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%g128500128540%_
                                            (cons _%g128501128542%_ '()))
                                      '())
                                (cons _%K128387%_ '()))))
                  _%hd128506128534%_
                  _%hd128503128524%_)
                 (_%g128498128513%_ _%g128499128517%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g128498128513%_
                                                  _%g128499128517%_))))
                                         (_%g128498128513%_
                                          _%g128499128517%_)))))
                             (_%g128497128558%_
                              (list _%tgt128386%_ _%hd128384%_)))))
                   (if (gx#stx-null? _%hd128384%_)
                       (let* ((_%g128564128572%_
                               (lambda (_%g128565128568%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g128565128568%_)))
                              (_%g128563128591%_
                               (lambda (_%g128565128576%_)
                                 ((lambda (_%g128566128579%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%g128566128579%_
                                                            '()))
                                                (cons _%K128387%_
                                                      (cons _%E128379%_
                                                            '())))))
                                  _%g128565128576%_))))
                         (_%g128563128591%_ _%tgt128386%_))
                       (if (gx#stx-datum? _%hd128384%_)
                           (let* ((_%g128597128616%_
                                   (lambda (_%g128598128612%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128598128612%_)))
                                  (_%g128596128675%_
                                   (lambda (_%g128598128620%_)
                                     (if (gx#stx-pair? _%g128598128620%_)
                                         (let ((_%e128602128623%_
                                                (gx#syntax-e
                                                 _%g128598128620%_)))
                                           (let ((_%hd128603128627%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e128602128623%_)))
                                                 (_%tl128604128630%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e128602128623%_))))
                                             (if (gx#stx-pair?
                                                  _%tl128604128630%_)
                                                 (let ((_%e128605128633%_
                                                        (gx#syntax-e
                                                         _%tl128604128630%_)))
                                                   (let ((_%hd128606128637%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e128605128633%_)))
                                                         (_%tl128607128640%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e128605128633%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl128607128640%_)
                                                         (let ((_%e128608128643%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl128607128640%_)))
                   (let ((_%hd128609128647%_
                          (let ()
                            (declare (not safe))
                            (##car _%e128608128643%_)))
                         (_%tl128610128650%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e128608128643%_))))
                     (if (gx#stx-null? _%tl128610128650%_)
                         ((lambda (_%g128599128653%_
                                   _%g128600128655%_
                                   _%g128601128656%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%g128599128653%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%g128601128656%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g128600128655%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K128387%_
                                              (cons _%E128379%_ '())))))
                          _%hd128609128647%_
                          _%hd128606128637%_
                          _%hd128603128627%_)
                         (_%g128597128616%_ _%g128598128620%_))))
                 (_%g128597128616%_ _%g128598128620%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g128597128616%_
                                                  _%g128598128620%_))))
                                         (_%g128597128616%_
                                          _%g128598128620%_)))))
                             (_%g128596128675%_
                              (list _%tgt128386%_
                                    _%hd128384%_
                                    (let ((_%e128679%_
                                           (gx#stx-e _%hd128384%_)))
                                      (if (or (keyword? _%e128679%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e128679%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e128679%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx127831%_
                            _%where128374%_
                            _%hd128384%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx129119129120%_)
                                                    (let ((_%e128394128701%_
                                                           (gx#syntax-e
                                                            _%__stx129119129120%_)))
                                                      (let ((_%tl128396128708%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e128394128701%_)))
                    (_%hd128395128705%_
                     (let () (declare (not safe)) (##car _%e128394128701%_))))
                (_%__kont129122129123%_
                 _%tl128396128708%_
                 _%hd128395128705%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont129124129125%_)))))))
                                  (_%recur128381%_
                                   _%hd128376%_
                                   _%tgt127983%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender128377%_
                                               (cons _%body128378%_
                                                     (cons _%E128379%_
                                                           '()))))))))
                             (_%generate-clauses127991%_
                              (lambda (_%clauses128112%_)
                                (let _%lp128115%_ ((_%rest128118%_
                                                    _%clauses128112%_)
                                                   (_%E128120%_
                                                    (gx#genident 'E))
                                                   (_%r128121%_ '()))
                                  (let* ((_%__stx129155129156%_ _%rest128118%_)
                                         (_%g128124128136%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx129155129156%_))))
                                    (let ((_%__kont129158129159%_
                                           (lambda (_%g128126128201%_
                                                    _%g128127128203%_)
                                             (let* ((_%__stx129135129136%_
                                                     _%g128127128203%_)
                                                    (_%g128215128226%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx129135129136%_))))
                                               (let ((_%__kont129138129139%_
                                                      (lambda (_%g128217128355%_)
                                                        (if (gx#stx-null?
                                                             _%g128126128201%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g128217128355%_)
                             (not (gx#stx-null? _%g128217128355%_)))
                        (cons (cons _%E128120%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g128217128355%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g128127128203%_))
                                          '()))
                              _%r128121%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx127831%_
                         _%g128127128203%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx127831%_
                     _%g128127128203%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont129140129141%_
                                                      (lambda ()
                                                        (let* ((_%g128237128245%_
                                                                (lambda (_%g128238128241%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g128238128241%_)))
                       (_%g128236128334%_
                        (lambda (_%g128238128249%_)
                          ((lambda (_%g128239128252%_)
                             (let* ((_%g128268128276%_
                                     (lambda (_%g128269128272%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g128269128272%_)))
                                    (_%g128267128330%_
                                     (lambda (_%g128269128280%_)
                                       ((lambda (_%g128270128283%_)
                                          (let* ((_%g128296128304%_
                                                  (lambda (_%g128297128300%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g128297128300%_)))
                                                 (_%g128295128326%_
                                                  (lambda (_%g128297128308%_)
                                                    ((lambda (_%g128298128311%_)
                                                       (_%lp128115%_
                                                        _%g128126128201%_
                                                        _%g128239128252%_
                                                        (cons (cons _%E128120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g128298128311%_ '()))
                      _%r128121%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g128297128308%_))))
                                            (_%g128295128326%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%g128270128283%_
                                                                '())))
                                              (gx#stx-source
                                               _%g128127128203%_)))))
                                        _%g128269128280%_))))
                               (_%g128267128330%_
                                (_%generate-clause127988%_
                                 _%g128127128203%_
                                 (cons _%g128239128252%_ '())))))
                           _%g128238128249%_))))
                  (_%g128236128334%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx129135129136%_)
                                                     (let ((_%e128218128345%_
                                                            (gx#syntax-e
                                                             _%__stx129135129136%_)))
                                                       (let ((_%tl128220128352%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e128218128345%_)))
                     (_%hd128219128349%_
                      (let () (declare (not safe)) (##car _%e128218128345%_))))
                 (if (gx#identifier? _%hd128219128349%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g129192_|
                          _%hd128219128349%_)
                         (_%__kont129138129139%_ _%tl128220128352%_)
                         (_%__kont129140129141%_))
                     (_%__kont129140129141%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont129140129141%_))))))
                                          (_%__kont129160129161%_
                                           (lambda ()
                                             (let* ((_%g128147128155%_
                                                     (lambda (_%g128148128151%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g128148128151%_)))
                                                    (_%g128146128180%_
                                                     (lambda (_%g128148128159%_)
                                                       ((lambda (_%g128149128162%_)
                                                          (cons (cons _%E128120%_
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
                                 (cons _%g128149128162%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx127831%_))
                                    '()))
                        _%r128121%_))
                _%g128148128159%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g128146128180%_
                                                _%tgt127983%_)))))
                                      (if (gx#stx-pair? _%__stx129155129156%_)
                                          (let ((_%e128128128191%_
                                                 (gx#syntax-e
                                                  _%__stx129155129156%_)))
                                            (let ((_%tl128130128198%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e128128128191%_)))
                                                  (_%hd128129128195%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e128128128191%_))))
                                              (_%__kont129158129159%_
                                               _%tl128130128198%_
                                               _%hd128129128195%_)))
                                          (_%__kont129160129161%_))))))))
                      (let* ((_%bind127993%_
                              (_%generate-clauses127991%_ _%clauses127986%_))
                             (_%g127996128013%_
                              (lambda (_%g127997128009%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g127997128009%_)))
                             (_%g127995128108%_
                              (lambda (_%g127997128017%_)
                                (if (gx#stx-pair/null? _%g127997128017%_)
                                    (let ((_g129193_
                                           (gx#syntax-split-splice
                                            _%g127997128017%_
                                            '0)))
                                      (begin
                                        (let ((_g129194_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g129193_)
                                                     (##values-length
                                                      _g129193_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g129194_ 2)))
                                              (error "Context expects 2 values"
                                                     _g129194_)))
                                        (let ((_%target127999128020%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g129193_ 0)))
                                              (_%tl128001128023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g129193_ 1))))
                                          (if (gx#stx-null? _%tl128001128023%_)
                                              (letrec ((_%loop128002128026%_
                                                        (lambda (_%hd128000128030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try128006128033%_)
                  (if (gx#stx-pair? _%hd128000128030%_)
                      (let ((_%e128003128035%_
                             (gx#syntax-e _%hd128000128030%_)))
                        (let ((_%lp-hd128004128039%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e128003128035%_)))
                              (_%lp-tl128005128042%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e128003128035%_))))
                          (_%loop128002128026%_
                           _%lp-tl128005128042%_
                           (cons _%lp-hd128004128039%_
                                 _%bind-try128006128033%_))))
                      (let ((_%bind-try128007128045%_
                             (reverse _%bind-try128006128033%_)))
                        ((lambda (_%g127998128048%_)
                           (let* ((_%g128066128074%_
                                   (lambda (_%g128067128070%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128067128070%_)))
                                  (_%g128065128104%_
                                   (lambda (_%g128067128078%_)
                                     ((lambda (_%g128068128081%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp129195
                                                           (lambda (_%g128095128098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g128096128101%_)
                     (cons _%g128095128098%_ _%g128096128101%_))))
              (declare (not safe))
              (__foldr1 __tmp129195 '() _%g127998128048%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g128068128081%_
                                                                '())
                                                          '()))))
                                      _%g128067128078%_))))
                             (_%g128065128104%_ (car (last _%bind127993%_)))))
                         _%bind-try128007128045%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop128002128026%_
                                                 _%target127999128020%_
                                                 '()))
                                              (_%g127996128013%_
                                               _%g127997128017%_)))))
                                    (_%g127996128013%_ _%g127997128017%_)))))
                        (_%g127995128108%_ _%bind127993%_))))))
          (let* ((_%g127837127856%_
                  (lambda (_%g127838127852%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g127838127852%_)))
                 (_%g127836127979%_
                  (lambda (_%g127838127860%_)
                    (if (gx#stx-pair? _%g127838127860%_)
                        (let ((_%e127842127863%_
                               (gx#syntax-e _%g127838127860%_)))
                          (let ((_%hd127843127867%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e127842127863%_)))
                                (_%tl127844127870%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e127842127863%_))))
                            (if (gx#stx-pair? _%tl127844127870%_)
                                (let ((_%e127845127873%_
                                       (gx#syntax-e _%tl127844127870%_)))
                                  (let ((_%hd127846127877%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e127845127873%_)))
                                        (_%tl127847127880%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e127845127873%_))))
                                    (if (gx#stx-pair? _%tl127847127880%_)
                                        (let ((_%e127848127883%_
                                               (gx#syntax-e
                                                _%tl127847127880%_)))
                                          (let ((_%hd127849127887%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e127848127883%_)))
                                                (_%tl127850127890%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e127848127883%_))))
                                            ((lambda (_%g127839127893%_
                                                      _%g127840127895%_
                                                      _%g127841127896%_)
                                               (if (and (gx#identifier-list?
                                                         _%g127840127895%_)
                                                        (gx#stx-list?
                                                         _%g127839127893%_))
                                                   (let* ((_%g127914127922%_
                                                           (lambda (_%g127915127918%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g127915127918%_)))
                                                          (_%g127913127975%_
                                                           (lambda (_%g127915127926%_)
                                                             ((lambda (_%g127916127929%_)
                                                                (let* ((_%g127941127949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g127942127945%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g127942127945%_)))
                               (_%g127940127971%_
                                (lambda (_%g127942127953%_)
                                  ((lambda (_%g127943127956%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%g127916127929%_
                                                             (cons _%g127841127896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g127943127956%_
                                                       '()))))
                                   _%g127942127953%_))))
                          (_%g127940127971%_
                           (_%generate127834%_
                            _%g127916127929%_
                            (gx#syntax->list _%g127840127895%_)
                            _%g127839127893%_))))
                      _%g127915127926%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g127913127975%_
                                                      (gx#genident 'e)))
                                                   (_%g127837127856%_
                                                    _%g127838127860%_)))
                                             _%tl127850127890%_
                                             _%hd127849127887%_
                                             _%hd127846127877%_)))
                                        (_%g127837127856%_
                                         _%g127838127860%_))))
                                (_%g127837127856%_ _%g127838127860%_))))
                        (_%g127837127856%_ _%g127838127860%_)))))
            (_%g127836127979%_ _%stx127831%_)))))))
