(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129230_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129232_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129234_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129236_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129237_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129239_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129240_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129242_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129243_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129245_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129246_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129248_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj129226
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
          (##unchecked-structure-set! __obj129226 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129226 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129226 '(e source) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129226 '(e source) '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129226 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129226 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129226 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129226 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129226 '#f '12 '#f '#f))
        (let ((__tmp129229 |gx[1]#_g129230_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj129226 __tmp129229 '3 '#f '#f))
        (let ((__tmp129231 |gx[1]#_g129232_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj129226 __tmp129231 '13 '#f '#f))
        (let ((__tmp129233 |gx[1]#_g129234_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj129226 __tmp129233 '14 '#f '#f))
        (let ((__tmp129235
               (cons (cons 'e |gx[1]#_g129236_|)
                     (cons (cons 'source |gx[1]#_g129237_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129226 __tmp129235 '15 '#f '#f))
        (let ((__tmp129238
               (cons (cons 'e |gx[1]#_g129239_|)
                     (cons (cons 'source |gx[1]#_g129240_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129226 __tmp129238 '16 '#f '#f))
        (let ((__tmp129241
               (cons (cons 'e |gx[1]#_g129242_|)
                     (cons (cons 'source |gx[1]#_g129243_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129226 __tmp129241 '17 '#f '#f))
        (let ((__tmp129244
               (cons (cons 'e |gx[1]#_g129245_|)
                     (cons (cons 'source |gx[1]#_g129246_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj129226 __tmp129244 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129226 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129226 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj129226 '() '20 '#f '#f))
        __obj129226))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx127823%_)
        (let* ((_%g127827127841%_
                (lambda (_%g127828127837%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g127828127837%_)))
               (_%g127826127883%_
                (lambda (_%g127828127845%_)
                  (if (gx#stx-pair? _%g127828127845%_)
                      (let ((_%e127830127848%_
                             (gx#syntax-e _%g127828127845%_)))
                        (let ((_%hd127831127852%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e127830127848%_)))
                              (_%tl127832127855%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e127830127848%_))))
                          (if (gx#stx-pair? _%tl127832127855%_)
                              (let ((_%e127833127858%_
                                     (gx#syntax-e _%tl127832127855%_)))
                                (let ((_%hd127834127862%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e127833127858%_)))
                                      (_%tl127835127865%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e127833127858%_))))
                                  (if (gx#stx-null? _%tl127835127865%_)
                                      ((lambda (_%g127829127868%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%g127829127868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure"
                               (cons _%g127829127868%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd127834127862%_)
                                      (_%g127827127841%_ _%g127828127845%_))))
                              (_%g127827127841%_ _%g127828127845%_))))
                      (_%g127827127841%_ _%g127828127845%_)))))
          (_%g127826127883%_ _%$stx127823%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx127887%_)
        (letrec ((_%generate127890%_
                  (lambda (_%tgt128039%_ _%kws128041%_ _%clauses128042%_)
                    (letrec ((_%generate-clause128044%_
                              (lambda (_%hd128977%_ _%E128979%_)
                                (let* ((_%__stx129129129130%_ _%hd128977%_)
                                       (_%g128983129010%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx129129129130%_))))
                                  (let ((_%__kont129132129133%_
                                         (lambda (_%g128985129106%_
                                                  _%g128986129108%_)
                                           (_%generate1128046%_
                                            _%hd128977%_
                                            _%g128986129108%_
                                            '#t
                                            _%g128985129106%_
                                            _%E128979%_)))
                                        (_%__kont129134129135%_
                                         (lambda (_%g128993129058%_
                                                  _%g128994129060%_
                                                  _%g128995129061%_)
                                           (_%generate1128046%_
                                            _%hd128977%_
                                            _%g128995129061%_
                                            _%g128994129060%_
                                            _%g128993129058%_
                                            _%E128979%_)))
                                        (_%__kont129136129137%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx127887%_
                                            _%hd128977%_))))
                                    (if (gx#stx-pair? _%__stx129129129130%_)
                                        (let ((_%e128987129086%_
                                               (gx#syntax-e
                                                _%__stx129129129130%_)))
                                          (let ((_%tl128989129093%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e128987129086%_)))
                                                (_%hd128988129090%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e128987129086%_))))
                                            (if (gx#stx-pair?
                                                 _%tl128989129093%_)
                                                (let ((_%e128990129096%_
                                                       (gx#syntax-e
                                                        _%tl128989129093%_)))
                                                  (let ((_%tl128992129103%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e128990129096%_)))
                                                        (_%hd128991129100%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e128990129096%_))))
                                                    (if (gx#stx-null?
                                                         _%tl128992129103%_)
                                                        (_%__kont129132129133%_
                                                         _%hd128991129100%_
                                                         _%hd128988129090%_)
                                                        (if (gx#stx-pair?
                                                             _%tl128992129103%_)
                                                            (let ((_%e129002129048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl128992129103%_)))
                      (let ((_%tl129004129055%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e129002129048%_)))
                            (_%hd129003129052%_
                             (let ()
                               (declare (not safe))
                               (##car _%e129002129048%_))))
                        (if (gx#stx-null? _%tl129004129055%_)
                            (_%__kont129134129135%_
                             _%hd129003129052%_
                             _%hd128991129100%_
                             _%hd128988129090%_)
                            (_%__kont129136129137%_))))
                    (_%__kont129136129137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont129136129137%_))))
                                        (_%__kont129136129137%_))))))
                             (_%generate1128046%_
                              (lambda (_%where128430%_
                                       _%hd128432%_
                                       _%fender128433%_
                                       _%body128434%_
                                       _%E128435%_)
                                (letrec ((_%recur128437%_
                                          (lambda (_%hd128440%_
                                                   _%tgt128442%_
                                                   _%K128443%_)
                                            (let* ((_%__stx129175129176%_
                                                    _%hd128440%_)
                                                   (_%g128446128458%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx129175129176%_))))
                                              (let ((_%__kont129178129179%_
                                                     (lambda (_%g128448128767%_
                                                              _%g128449128769%_)
                                                       (let* ((_%g128780128788%_
                                                               (lambda (_%g128781128784%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g128781128784%_)))
                      (_%g128779128969%_
                       (lambda (_%g128781128792%_)
                         ((lambda (_%g128782128795%_)
                            (let* ((_%g128807128815%_
                                    (lambda (_%g128808128811%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g128808128811%_)))
                                   (_%g128806128965%_
                                    (lambda (_%g128808128819%_)
                                      ((lambda (_%g128809128822%_)
                                         (let* ((_%g128835128843%_
                                                 (lambda (_%g128836128839%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g128836128839%_)))
                                                (_%g128834128961%_
                                                 (lambda (_%g128836128847%_)
                                                   ((lambda (_%g128837128850%_)
                                                      (let* ((_%g128863128871%_
                                                              (lambda (_%g128864128867%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g128864128867%_)))
                     (_%g128862128957%_
                      (lambda (_%g128864128875%_)
                        ((lambda (_%g128865128878%_)
                           (let* ((_%g128891128899%_
                                   (lambda (_%g128892128895%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128892128895%_)))
                                  (_%g128890128953%_
                                   (lambda (_%g128892128903%_)
                                     ((lambda (_%g128893128906%_)
                                        (let* ((_%g128919128927%_
                                                (lambda (_%g128920128923%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g128920128923%_)))
                                               (_%g128918128949%_
                                                (lambda (_%g128920128931%_)
                                                  ((lambda (_%g128921128934%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%g128782128795%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g128809128822%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%g128782128795%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g128837128850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%g128809128822%_ '()))
                                       '()))
                           (cons (cons _%g128865128878%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%g128809128822%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons _%g128893128906%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g128921128934%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g128920128931%_))))
                                          (_%g128918128949%_ _%E128435%_)))
                                      _%g128892128903%_))))
                             (_%g128890128953%_
                              (_%recur128437%_
                               _%g128449128769%_
                               _%g128837128850%_
                               (_%recur128437%_
                                _%g128448128767%_
                                _%g128865128878%_
                                _%K128443%_)))))
                         _%g128864128875%_))))
                (_%g128862128957%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g128836128847%_))))
                                           (_%g128834128961%_
                                            (gx#genident 'hd))))
                                       _%g128808128819%_))))
                              (_%g128806128965%_ (gx#genident 'e))))
                          _%g128781128792%_))))
                 (_%g128779128969%_ _%tgt128442%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont129180129181%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd128440%_)
                                                           (if (gx#underscore?
                                                                _%hd128440%_)
                                                               _%K128443%_
                                                               (if (let ((__tmp129247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g128472128474%_)
                                    (gx#bound-identifier=?
                                     _%g128472128474%_
                                     _%hd128440%_))))
                             (declare (not safe))
                             (__find __tmp129247 _%kws128041%_))
                           (let* ((_%g128480128495%_
                                   (lambda (_%g128481128491%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128481128491%_)))
                                  (_%g128479128548%_
                                   (lambda (_%g128481128499%_)
                                     (if (gx#stx-pair? _%g128481128499%_)
                                         (let ((_%e128484128502%_
                                                (gx#syntax-e
                                                 _%g128481128499%_)))
                                           (let ((_%hd128485128506%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e128484128502%_)))
                                                 (_%tl128486128509%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e128484128502%_))))
                                             (if (gx#stx-pair?
                                                  _%tl128486128509%_)
                                                 (let ((_%e128487128512%_
                                                        (gx#syntax-e
                                                         _%tl128486128509%_)))
                                                   (let ((_%hd128488128516%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e128487128512%_)))
                                                         (_%tl128489128519%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e128487128512%_))))
                                                     (if (gx#stx-null?
                                                          _%tl128489128519%_)
                                                         ((lambda (_%g128482128522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g128483128524%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%g128483128524%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%g128483128524%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%g128482128522%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K128443%_ (cons _%E128435%_ '())))))
                  _%hd128488128516%_
                  _%hd128485128506%_)
                 (_%g128480128495%_ _%g128481128499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g128480128495%_
                                                  _%g128481128499%_))))
                                         (_%g128480128495%_
                                          _%g128481128499%_)))))
                             (_%g128479128548%_
                              (list _%tgt128442%_ _%hd128440%_)))
                           (let* ((_%g128554128569%_
                                   (lambda (_%g128555128565%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128555128565%_)))
                                  (_%g128553128614%_
                                   (lambda (_%g128555128573%_)
                                     (if (gx#stx-pair? _%g128555128573%_)
                                         (let ((_%e128558128576%_
                                                (gx#syntax-e
                                                 _%g128555128573%_)))
                                           (let ((_%hd128559128580%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e128558128576%_)))
                                                 (_%tl128560128583%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e128558128576%_))))
                                             (if (gx#stx-pair?
                                                  _%tl128560128583%_)
                                                 (let ((_%e128561128586%_
                                                        (gx#syntax-e
                                                         _%tl128560128583%_)))
                                                   (let ((_%hd128562128590%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e128561128586%_)))
                                                         (_%tl128563128593%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e128561128586%_))))
                                                     (if (gx#stx-null?
                                                          _%tl128563128593%_)
                                                         ((lambda (_%g128556128596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g128557128598%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%g128556128596%_
                                            (cons _%g128557128598%_ '()))
                                      '())
                                (cons _%K128443%_ '()))))
                  _%hd128562128590%_
                  _%hd128559128580%_)
                 (_%g128554128569%_ _%g128555128573%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g128554128569%_
                                                  _%g128555128573%_))))
                                         (_%g128554128569%_
                                          _%g128555128573%_)))))
                             (_%g128553128614%_
                              (list _%tgt128442%_ _%hd128440%_)))))
                   (if (gx#stx-null? _%hd128440%_)
                       (let* ((_%g128620128628%_
                               (lambda (_%g128621128624%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g128621128624%_)))
                              (_%g128619128647%_
                               (lambda (_%g128621128632%_)
                                 ((lambda (_%g128622128635%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%g128622128635%_
                                                            '()))
                                                (cons _%K128443%_
                                                      (cons _%E128435%_
                                                            '())))))
                                  _%g128621128632%_))))
                         (_%g128619128647%_ _%tgt128442%_))
                       (if (gx#stx-datum? _%hd128440%_)
                           (let* ((_%g128653128672%_
                                   (lambda (_%g128654128668%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128654128668%_)))
                                  (_%g128652128731%_
                                   (lambda (_%g128654128676%_)
                                     (if (gx#stx-pair? _%g128654128676%_)
                                         (let ((_%e128658128679%_
                                                (gx#syntax-e
                                                 _%g128654128676%_)))
                                           (let ((_%hd128659128683%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e128658128679%_)))
                                                 (_%tl128660128686%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e128658128679%_))))
                                             (if (gx#stx-pair?
                                                  _%tl128660128686%_)
                                                 (let ((_%e128661128689%_
                                                        (gx#syntax-e
                                                         _%tl128660128686%_)))
                                                   (let ((_%hd128662128693%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e128661128689%_)))
                                                         (_%tl128663128696%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e128661128689%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl128663128696%_)
                                                         (let ((_%e128664128699%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl128663128696%_)))
                   (let ((_%hd128665128703%_
                          (let ()
                            (declare (not safe))
                            (##car _%e128664128699%_)))
                         (_%tl128666128706%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e128664128699%_))))
                     (if (gx#stx-null? _%tl128666128706%_)
                         ((lambda (_%g128655128709%_
                                   _%g128656128711%_
                                   _%g128657128712%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%g128655128709%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%g128657128712%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g128656128711%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K128443%_
                                              (cons _%E128435%_ '())))))
                          _%hd128665128703%_
                          _%hd128662128693%_
                          _%hd128659128683%_)
                         (_%g128653128672%_ _%g128654128676%_))))
                 (_%g128653128672%_ _%g128654128676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g128653128672%_
                                                  _%g128654128676%_))))
                                         (_%g128653128672%_
                                          _%g128654128676%_)))))
                             (_%g128652128731%_
                              (list _%tgt128442%_
                                    _%hd128440%_
                                    (let ((_%e128735%_
                                           (gx#stx-e _%hd128440%_)))
                                      (if (or (keyword? _%e128735%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e128735%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e128735%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx127887%_
                            _%where128430%_
                            _%hd128440%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx129175129176%_)
                                                    (let ((_%e128450128757%_
                                                           (gx#syntax-e
                                                            _%__stx129175129176%_)))
                                                      (let ((_%tl128452128764%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e128450128757%_)))
                    (_%hd128451128761%_
                     (let () (declare (not safe)) (##car _%e128450128757%_))))
                (_%__kont129178129179%_
                 _%tl128452128764%_
                 _%hd128451128761%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont129180129181%_)))))))
                                  (_%recur128437%_
                                   _%hd128432%_
                                   _%tgt128039%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender128433%_
                                               (cons _%body128434%_
                                                     (cons _%E128435%_
                                                           '()))))))))
                             (_%generate-clauses128047%_
                              (lambda (_%clauses128168%_)
                                (let _%lp128171%_ ((_%rest128174%_
                                                    _%clauses128168%_)
                                                   (_%E128176%_
                                                    (gx#genident 'E))
                                                   (_%r128177%_ '()))
                                  (let* ((_%__stx129211129212%_ _%rest128174%_)
                                         (_%g128180128192%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx129211129212%_))))
                                    (let ((_%__kont129214129215%_
                                           (lambda (_%g128182128257%_
                                                    _%g128183128259%_)
                                             (let* ((_%__stx129191129192%_
                                                     _%g128183128259%_)
                                                    (_%g128271128282%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx129191129192%_))))
                                               (let ((_%__kont129194129195%_
                                                      (lambda (_%g128273128411%_)
                                                        (if (gx#stx-null?
                                                             _%g128182128257%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g128273128411%_)
                             (not (gx#stx-null? _%g128273128411%_)))
                        (cons (cons _%E128176%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g128273128411%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g128183128259%_))
                                          '()))
                              _%r128177%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx127887%_
                         _%g128183128259%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx127887%_
                     _%g128183128259%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont129196129197%_
                                                      (lambda ()
                                                        (let* ((_%g128293128301%_
                                                                (lambda (_%g128294128297%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g128294128297%_)))
                       (_%g128292128390%_
                        (lambda (_%g128294128305%_)
                          ((lambda (_%g128295128308%_)
                             (let* ((_%g128324128332%_
                                     (lambda (_%g128325128328%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g128325128328%_)))
                                    (_%g128323128386%_
                                     (lambda (_%g128325128336%_)
                                       ((lambda (_%g128326128339%_)
                                          (let* ((_%g128352128360%_
                                                  (lambda (_%g128353128356%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g128353128356%_)))
                                                 (_%g128351128382%_
                                                  (lambda (_%g128353128364%_)
                                                    ((lambda (_%g128354128367%_)
                                                       (_%lp128171%_
                                                        _%g128182128257%_
                                                        _%g128295128308%_
                                                        (cons (cons _%E128176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g128354128367%_ '()))
                      _%r128177%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g128353128364%_))))
                                            (_%g128351128382%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%g128326128339%_
                                                                '())))
                                              (gx#stx-source
                                               _%g128183128259%_)))))
                                        _%g128325128336%_))))
                               (_%g128323128386%_
                                (_%generate-clause128044%_
                                 _%g128183128259%_
                                 (cons _%g128295128308%_ '())))))
                           _%g128294128305%_))))
                  (_%g128292128390%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx129191129192%_)
                                                     (let ((_%e128274128401%_
                                                            (gx#syntax-e
                                                             _%__stx129191129192%_)))
                                                       (let ((_%tl128276128408%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e128274128401%_)))
                     (_%hd128275128405%_
                      (let () (declare (not safe)) (##car _%e128274128401%_))))
                 (if (gx#identifier? _%hd128275128405%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g129248_|
                          _%hd128275128405%_)
                         (_%__kont129194129195%_ _%tl128276128408%_)
                         (_%__kont129196129197%_))
                     (_%__kont129196129197%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont129196129197%_))))))
                                          (_%__kont129216129217%_
                                           (lambda ()
                                             (let* ((_%g128203128211%_
                                                     (lambda (_%g128204128207%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g128204128207%_)))
                                                    (_%g128202128236%_
                                                     (lambda (_%g128204128215%_)
                                                       ((lambda (_%g128205128218%_)
                                                          (cons (cons _%E128176%_
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
                                 (cons _%g128205128218%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx127887%_))
                                    '()))
                        _%r128177%_))
                _%g128204128215%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g128202128236%_
                                                _%tgt128039%_)))))
                                      (if (gx#stx-pair? _%__stx129211129212%_)
                                          (let ((_%e128184128247%_
                                                 (gx#syntax-e
                                                  _%__stx129211129212%_)))
                                            (let ((_%tl128186128254%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e128184128247%_)))
                                                  (_%hd128185128251%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e128184128247%_))))
                                              (_%__kont129214129215%_
                                               _%tl128186128254%_
                                               _%hd128185128251%_)))
                                          (_%__kont129216129217%_))))))))
                      (let* ((_%bind128049%_
                              (_%generate-clauses128047%_ _%clauses128042%_))
                             (_%g128052128069%_
                              (lambda (_%g128053128065%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g128053128065%_)))
                             (_%g128051128164%_
                              (lambda (_%g128053128073%_)
                                (if (gx#stx-pair/null? _%g128053128073%_)
                                    (let ((_g129249_
                                           (gx#syntax-split-splice
                                            _%g128053128073%_
                                            '0)))
                                      (begin
                                        (let ((_g129250_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g129249_)
                                                     (##values-length
                                                      _g129249_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g129250_ 2)))
                                              (error "Context expects 2 values"
                                                     _g129250_)))
                                        (let ((_%target128055128076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g129249_ 0)))
                                              (_%tl128057128079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g129249_ 1))))
                                          (if (gx#stx-null? _%tl128057128079%_)
                                              (letrec ((_%loop128058128082%_
                                                        (lambda (_%hd128056128086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try128062128089%_)
                  (if (gx#stx-pair? _%hd128056128086%_)
                      (let ((_%e128059128091%_
                             (gx#syntax-e _%hd128056128086%_)))
                        (let ((_%lp-hd128060128095%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e128059128091%_)))
                              (_%lp-tl128061128098%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e128059128091%_))))
                          (_%loop128058128082%_
                           _%lp-tl128061128098%_
                           (cons _%lp-hd128060128095%_
                                 _%bind-try128062128089%_))))
                      (let ((_%bind-try128063128101%_
                             (reverse _%bind-try128062128089%_)))
                        ((lambda (_%g128054128104%_)
                           (let* ((_%g128122128130%_
                                   (lambda (_%g128123128126%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128123128126%_)))
                                  (_%g128121128160%_
                                   (lambda (_%g128123128134%_)
                                     ((lambda (_%g128124128137%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp129251
                                                           (lambda (_%g128151128154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g128152128157%_)
                     (cons _%g128151128154%_ _%g128152128157%_))))
              (declare (not safe))
              (__foldr1 __tmp129251 '() _%g128054128104%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g128124128137%_
                                                                '())
                                                          '()))))
                                      _%g128123128134%_))))
                             (_%g128121128160%_ (car (last _%bind128049%_)))))
                         _%bind-try128063128101%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop128058128082%_
                                                 _%target128055128076%_
                                                 '()))
                                              (_%g128052128069%_
                                               _%g128053128073%_)))))
                                    (_%g128052128069%_ _%g128053128073%_)))))
                        (_%g128051128164%_ _%bind128049%_))))))
          (let* ((_%g127893127912%_
                  (lambda (_%g127894127908%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g127894127908%_)))
                 (_%g127892128035%_
                  (lambda (_%g127894127916%_)
                    (if (gx#stx-pair? _%g127894127916%_)
                        (let ((_%e127898127919%_
                               (gx#syntax-e _%g127894127916%_)))
                          (let ((_%hd127899127923%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e127898127919%_)))
                                (_%tl127900127926%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e127898127919%_))))
                            (if (gx#stx-pair? _%tl127900127926%_)
                                (let ((_%e127901127929%_
                                       (gx#syntax-e _%tl127900127926%_)))
                                  (let ((_%hd127902127933%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e127901127929%_)))
                                        (_%tl127903127936%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e127901127929%_))))
                                    (if (gx#stx-pair? _%tl127903127936%_)
                                        (let ((_%e127904127939%_
                                               (gx#syntax-e
                                                _%tl127903127936%_)))
                                          (let ((_%hd127905127943%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e127904127939%_)))
                                                (_%tl127906127946%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e127904127939%_))))
                                            ((lambda (_%g127895127949%_
                                                      _%g127896127951%_
                                                      _%g127897127952%_)
                                               (if (and (gx#identifier-list?
                                                         _%g127896127951%_)
                                                        (gx#stx-list?
                                                         _%g127895127949%_))
                                                   (let* ((_%g127970127978%_
                                                           (lambda (_%g127971127974%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g127971127974%_)))
                                                          (_%g127969128031%_
                                                           (lambda (_%g127971127982%_)
                                                             ((lambda (_%g127972127985%_)
                                                                (let* ((_%g127997128005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g127998128001%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g127998128001%_)))
                               (_%g127996128027%_
                                (lambda (_%g127998128009%_)
                                  ((lambda (_%g127999128012%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%g127972127985%_
                                                             (cons _%g127897127952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g127999128012%_
                                                       '()))))
                                   _%g127998128009%_))))
                          (_%g127996128027%_
                           (_%generate127890%_
                            _%g127972127985%_
                            (gx#syntax->list _%g127896127951%_)
                            _%g127895127949%_))))
                      _%g127971127982%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g127969128031%_
                                                      (gx#genident 'e)))
                                                   (_%g127893127912%_
                                                    _%g127894127916%_)))
                                             _%tl127906127946%_
                                             _%hd127905127943%_
                                             _%hd127902127933%_)))
                                        (_%g127893127912%_
                                         _%g127894127916%_))))
                                (_%g127893127912%_ _%g127894127916%_))))
                        (_%g127893127912%_ _%g127894127916%_)))))
            (_%g127892128035%_ _%stx127887%_)))))))
