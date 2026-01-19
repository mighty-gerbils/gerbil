(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g128727_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128729_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128731_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128733_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128734_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128736_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128737_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128739_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128740_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128742_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128743_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128745_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj128723
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
          (##unchecked-structure-set! __obj128723 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128723 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128723 '(e source) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128723 '(e source) '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128723 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128723 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128723 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128723 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128723 '#f '12 '#f '#f))
        (let ((__tmp128726 |gx[1]#_g128727_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj128723 __tmp128726 '3 '#f '#f))
        (let ((__tmp128728 |gx[1]#_g128729_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj128723 __tmp128728 '13 '#f '#f))
        (let ((__tmp128730 |gx[1]#_g128731_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj128723 __tmp128730 '14 '#f '#f))
        (let ((__tmp128732
               (cons (cons 'e |gx[1]#_g128733_|)
                     (cons (cons 'source |gx[1]#_g128734_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj128723 __tmp128732 '15 '#f '#f))
        (let ((__tmp128735
               (cons (cons 'e |gx[1]#_g128736_|)
                     (cons (cons 'source |gx[1]#_g128737_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj128723 __tmp128735 '16 '#f '#f))
        (let ((__tmp128738
               (cons (cons 'e |gx[1]#_g128739_|)
                     (cons (cons 'source |gx[1]#_g128740_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj128723 __tmp128738 '17 '#f '#f))
        (let ((__tmp128741
               (cons (cons 'e |gx[1]#_g128742_|)
                     (cons (cons 'source |gx[1]#_g128743_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj128723 __tmp128741 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128723 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128723 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128723 '() '20 '#f '#f))
        __obj128723))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx127318%_)
        (let* ((_%g127322127336%_
                (lambda (_%g127323127332%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g127323127332%_)))
               (_%g127321127378%_
                (lambda (_%g127323127340%_)
                  (if (gx#stx-pair? _%g127323127340%_)
                      (let ((_%e127325127343%_
                             (gx#syntax-e _%g127323127340%_)))
                        (let ((_%hd127326127347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e127325127343%_)))
                              (_%tl127327127350%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e127325127343%_))))
                          (if (gx#stx-pair? _%tl127327127350%_)
                              (let ((_%e127328127353%_
                                     (gx#syntax-e _%tl127327127350%_)))
                                (let ((_%hd127329127357%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e127328127353%_)))
                                      (_%tl127330127360%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e127328127353%_))))
                                  (if (gx#stx-null? _%tl127330127360%_)
                                      ((lambda (_%L127363%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L127363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L127363%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd127329127357%_)
                                      (_%g127322127336%_ _%g127323127340%_))))
                              (_%g127322127336%_ _%g127323127340%_))))
                      (_%g127322127336%_ _%g127323127340%_)))))
          (_%g127321127378%_ _%$stx127318%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx127382%_)
        (letrec ((_%generate127385%_
                  (lambda (_%tgt127534%_ _%kws127536%_ _%clauses127537%_)
                    (letrec ((_%generate-clause127539%_
                              (lambda (_%hd128474%_ _%E128476%_)
                                (let* ((_%__stx128626128627%_ _%hd128474%_)
                                       (_%g128480128507%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx128626128627%_))))
                                  (let ((_%__kont128629128630%_
                                         (lambda (_%L128603%_ _%L128605%_)
                                           (_%generate1127541%_
                                            _%hd128474%_
                                            _%L128605%_
                                            '#t
                                            _%L128603%_
                                            _%E128476%_)))
                                        (_%__kont128631128632%_
                                         (lambda (_%L128555%_
                                                  _%L128557%_
                                                  _%L128558%_)
                                           (_%generate1127541%_
                                            _%hd128474%_
                                            _%L128558%_
                                            _%L128557%_
                                            _%L128555%_
                                            _%E128476%_)))
                                        (_%__kont128633128634%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx127382%_
                                            _%hd128474%_))))
                                    (if (gx#stx-pair? _%__stx128626128627%_)
                                        (let ((_%e128484128583%_
                                               (gx#syntax-e
                                                _%__stx128626128627%_)))
                                          (let ((_%tl128486128590%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e128484128583%_)))
                                                (_%hd128485128587%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e128484128583%_))))
                                            (if (gx#stx-pair?
                                                 _%tl128486128590%_)
                                                (let ((_%e128487128593%_
                                                       (gx#syntax-e
                                                        _%tl128486128590%_)))
                                                  (let ((_%tl128489128600%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e128487128593%_)))
                                                        (_%hd128488128597%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e128487128593%_))))
                                                    (if (gx#stx-null?
                                                         _%tl128489128600%_)
                                                        (_%__kont128629128630%_
                                                         _%hd128488128597%_
                                                         _%hd128485128587%_)
                                                        (if (gx#stx-pair?
                                                             _%tl128489128600%_)
                                                            (let ((_%e128499128545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl128489128600%_)))
                      (let ((_%tl128501128552%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e128499128545%_)))
                            (_%hd128500128549%_
                             (let ()
                               (declare (not safe))
                               (##car _%e128499128545%_))))
                        (if (gx#stx-null? _%tl128501128552%_)
                            (_%__kont128631128632%_
                             _%hd128500128549%_
                             _%hd128488128597%_
                             _%hd128485128587%_)
                            (_%__kont128633128634%_))))
                    (_%__kont128633128634%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont128633128634%_))))
                                        (_%__kont128633128634%_))))))
                             (_%generate1127541%_
                              (lambda (_%where127927%_
                                       _%hd127929%_
                                       _%fender127930%_
                                       _%body127931%_
                                       _%E127932%_)
                                (letrec ((_%recur127934%_
                                          (lambda (_%hd127937%_
                                                   _%tgt127939%_
                                                   _%K127940%_)
                                            (let* ((_%__stx128672128673%_
                                                    _%hd127937%_)
                                                   (_%g127943127955%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx128672128673%_))))
                                              (let ((_%__kont128675128676%_
                                                     (lambda (_%L128264%_
                                                              _%L128266%_)
                                                       (let* ((_%g128277128285%_
                                                               (lambda (_%g128278128281%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g128278128281%_)))
                      (_%g128276128466%_
                       (lambda (_%g128278128289%_)
                         ((lambda (_%L128292%_)
                            (let* ((_%g128304128312%_
                                    (lambda (_%g128305128308%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g128305128308%_)))
                                   (_%g128303128462%_
                                    (lambda (_%g128305128316%_)
                                      ((lambda (_%L128319%_)
                                         (let* ((_%g128332128340%_
                                                 (lambda (_%g128333128336%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g128333128336%_)))
                                                (_%g128331128458%_
                                                 (lambda (_%g128333128344%_)
                                                   ((lambda (_%L128347%_)
                                                      (let* ((_%g128360128368%_
                                                              (lambda (_%g128361128364%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g128361128364%_)))
                     (_%g128359128454%_
                      (lambda (_%g128361128372%_)
                        ((lambda (_%L128375%_)
                           (let* ((_%g128388128396%_
                                   (lambda (_%g128389128392%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128389128392%_)))
                                  (_%g128387128450%_
                                   (lambda (_%g128389128400%_)
                                     ((lambda (_%L128403%_)
                                        (let* ((_%g128416128424%_
                                                (lambda (_%g128417128420%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g128417128420%_)))
                                               (_%g128415128446%_
                                                (lambda (_%g128417128428%_)
                                                  ((lambda (_%L128431%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L128292%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L128319%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L128292%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L128347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L128319%_ '()))
                                       '()))
                           (cons (cons _%L128375%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L128319%_ '()))
                                             '()))
                                 '()))
                     (cons _%L128403%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L128431%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g128417128428%_))))
                                          (_%g128415128446%_ _%E127932%_)))
                                      _%g128389128400%_))))
                             (_%g128387128450%_
                              (_%recur127934%_
                               _%L128266%_
                               _%L128347%_
                               (_%recur127934%_
                                _%L128264%_
                                _%L128375%_
                                _%K127940%_)))))
                         _%g128361128372%_))))
                (_%g128359128454%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g128333128344%_))))
                                           (_%g128331128458%_
                                            (gx#genident 'hd))))
                                       _%g128305128316%_))))
                              (_%g128303128462%_ (gx#genident 'e))))
                          _%g128278128289%_))))
                 (_%g128276128466%_ _%tgt127939%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont128677128678%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd127937%_)
                                                           (if (gx#underscore?
                                                                _%hd127937%_)
                                                               _%K127940%_
                                                               (if (let ((__tmp128744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g127969127971%_)
                                    (gx#bound-identifier=?
                                     _%g127969127971%_
                                     _%hd127937%_))))
                             (declare (not safe))
                             (__find __tmp128744 _%kws127536%_))
                           (let* ((_%g127977127992%_
                                   (lambda (_%g127978127988%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g127978127988%_)))
                                  (_%g127976128045%_
                                   (lambda (_%g127978127996%_)
                                     (if (gx#stx-pair? _%g127978127996%_)
                                         (let ((_%e127981127999%_
                                                (gx#syntax-e
                                                 _%g127978127996%_)))
                                           (let ((_%hd127982128003%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e127981127999%_)))
                                                 (_%tl127983128006%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e127981127999%_))))
                                             (if (gx#stx-pair?
                                                  _%tl127983128006%_)
                                                 (let ((_%e127984128009%_
                                                        (gx#syntax-e
                                                         _%tl127983128006%_)))
                                                   (let ((_%hd127985128013%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e127984128009%_)))
                                                         (_%tl127986128016%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e127984128009%_))))
                                                     (if (gx#stx-null?
                                                          _%tl127986128016%_)
                                                         ((lambda (_%L128019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L128021%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L128021%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L128021%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L128019%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K127940%_ (cons _%E127932%_ '())))))
                  _%hd127985128013%_
                  _%hd127982128003%_)
                 (_%g127977127992%_ _%g127978127996%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g127977127992%_
                                                  _%g127978127996%_))))
                                         (_%g127977127992%_
                                          _%g127978127996%_)))))
                             (_%g127976128045%_
                              (list _%tgt127939%_ _%hd127937%_)))
                           (let* ((_%g128051128066%_
                                   (lambda (_%g128052128062%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128052128062%_)))
                                  (_%g128050128111%_
                                   (lambda (_%g128052128070%_)
                                     (if (gx#stx-pair? _%g128052128070%_)
                                         (let ((_%e128055128073%_
                                                (gx#syntax-e
                                                 _%g128052128070%_)))
                                           (let ((_%hd128056128077%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e128055128073%_)))
                                                 (_%tl128057128080%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e128055128073%_))))
                                             (if (gx#stx-pair?
                                                  _%tl128057128080%_)
                                                 (let ((_%e128058128083%_
                                                        (gx#syntax-e
                                                         _%tl128057128080%_)))
                                                   (let ((_%hd128059128087%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e128058128083%_)))
                                                         (_%tl128060128090%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e128058128083%_))))
                                                     (if (gx#stx-null?
                                                          _%tl128060128090%_)
                                                         ((lambda (_%L128093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L128095%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L128093%_ (cons _%L128095%_ '()))
                                      '())
                                (cons _%K127940%_ '()))))
                  _%hd128059128087%_
                  _%hd128056128077%_)
                 (_%g128051128066%_ _%g128052128070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g128051128066%_
                                                  _%g128052128070%_))))
                                         (_%g128051128066%_
                                          _%g128052128070%_)))))
                             (_%g128050128111%_
                              (list _%tgt127939%_ _%hd127937%_)))))
                   (if (gx#stx-null? _%hd127937%_)
                       (let* ((_%g128117128125%_
                               (lambda (_%g128118128121%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g128118128121%_)))
                              (_%g128116128144%_
                               (lambda (_%g128118128129%_)
                                 ((lambda (_%L128132%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L128132%_ '()))
                                                (cons _%K127940%_
                                                      (cons _%E127932%_
                                                            '())))))
                                  _%g128118128129%_))))
                         (_%g128116128144%_ _%tgt127939%_))
                       (if (gx#stx-datum? _%hd127937%_)
                           (let* ((_%g128150128169%_
                                   (lambda (_%g128151128165%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128151128165%_)))
                                  (_%g128149128228%_
                                   (lambda (_%g128151128173%_)
                                     (if (gx#stx-pair? _%g128151128173%_)
                                         (let ((_%e128155128176%_
                                                (gx#syntax-e
                                                 _%g128151128173%_)))
                                           (let ((_%hd128156128180%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e128155128176%_)))
                                                 (_%tl128157128183%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e128155128176%_))))
                                             (if (gx#stx-pair?
                                                  _%tl128157128183%_)
                                                 (let ((_%e128158128186%_
                                                        (gx#syntax-e
                                                         _%tl128157128183%_)))
                                                   (let ((_%hd128159128190%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e128158128186%_)))
                                                         (_%tl128160128193%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e128158128186%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl128160128193%_)
                                                         (let ((_%e128161128196%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl128160128193%_)))
                   (let ((_%hd128162128200%_
                          (let ()
                            (declare (not safe))
                            (##car _%e128161128196%_)))
                         (_%tl128163128203%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e128161128196%_))))
                     (if (gx#stx-null? _%tl128163128203%_)
                         ((lambda (_%L128206%_ _%L128208%_ _%L128209%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L128206%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L128209%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L128208%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K127940%_
                                              (cons _%E127932%_ '())))))
                          _%hd128162128200%_
                          _%hd128159128190%_
                          _%hd128156128180%_)
                         (_%g128150128169%_ _%g128151128173%_))))
                 (_%g128150128169%_ _%g128151128173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g128150128169%_
                                                  _%g128151128173%_))))
                                         (_%g128150128169%_
                                          _%g128151128173%_)))))
                             (_%g128149128228%_
                              (list _%tgt127939%_
                                    _%hd127937%_
                                    (let ((_%e128232%_
                                           (gx#stx-e _%hd127937%_)))
                                      (if (or (keyword? _%e128232%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e128232%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e128232%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx127382%_
                            _%where127927%_
                            _%hd127937%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx128672128673%_)
                                                    (let ((_%e127947128254%_
                                                           (gx#syntax-e
                                                            _%__stx128672128673%_)))
                                                      (let ((_%tl127949128261%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e127947128254%_)))
                    (_%hd127948128258%_
                     (let () (declare (not safe)) (##car _%e127947128254%_))))
                (_%__kont128675128676%_
                 _%tl127949128261%_
                 _%hd127948128258%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont128677128678%_)))))))
                                  (_%recur127934%_
                                   _%hd127929%_
                                   _%tgt127534%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender127930%_
                                               (cons _%body127931%_
                                                     (cons _%E127932%_
                                                           '()))))))))
                             (_%generate-clauses127542%_
                              (lambda (_%clauses127665%_)
                                (let _%lp127668%_ ((_%rest127671%_
                                                    _%clauses127665%_)
                                                   (_%E127673%_
                                                    (gx#genident 'E))
                                                   (_%r127674%_ '()))
                                  (let* ((_%__stx128708128709%_ _%rest127671%_)
                                         (_%g127677127689%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx128708128709%_))))
                                    (let ((_%__kont128711128712%_
                                           (lambda (_%L127754%_ _%L127756%_)
                                             (let* ((_%__stx128688128689%_
                                                     _%L127756%_)
                                                    (_%g127768127779%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx128688128689%_))))
                                               (let ((_%__kont128691128692%_
                                                      (lambda (_%L127908%_)
                                                        (if (gx#stx-null?
                                                             _%L127754%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L127908%_)
                             (not (gx#stx-null? _%L127908%_)))
                        (cons (cons _%E127673%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L127908%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L127756%_))
                                          '()))
                              _%r127674%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx127382%_
                         _%L127756%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx127382%_
                     _%L127756%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont128693128694%_
                                                      (lambda ()
                                                        (let* ((_%g127790127798%_
                                                                (lambda (_%g127791127794%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g127791127794%_)))
                       (_%g127789127887%_
                        (lambda (_%g127791127802%_)
                          ((lambda (_%L127805%_)
                             (let* ((_%g127821127829%_
                                     (lambda (_%g127822127825%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g127822127825%_)))
                                    (_%g127820127883%_
                                     (lambda (_%g127822127833%_)
                                       ((lambda (_%L127836%_)
                                          (let* ((_%g127849127857%_
                                                  (lambda (_%g127850127853%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g127850127853%_)))
                                                 (_%g127848127879%_
                                                  (lambda (_%g127850127861%_)
                                                    ((lambda (_%L127864%_)
                                                       (_%lp127668%_
                                                        _%L127754%_
                                                        _%L127805%_
                                                        (cons (cons _%E127673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L127864%_ '()))
                      _%r127674%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g127850127861%_))))
                                            (_%g127848127879%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L127836%_
                                                                '())))
                                              (gx#stx-source _%L127756%_)))))
                                        _%g127822127833%_))))
                               (_%g127820127883%_
                                (_%generate-clause127539%_
                                 _%L127756%_
                                 (cons _%L127805%_ '())))))
                           _%g127791127802%_))))
                  (_%g127789127887%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx128688128689%_)
                                                     (let ((_%e127771127898%_
                                                            (gx#syntax-e
                                                             _%__stx128688128689%_)))
                                                       (let ((_%tl127773127905%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e127771127898%_)))
                     (_%hd127772127902%_
                      (let () (declare (not safe)) (##car _%e127771127898%_))))
                 (if (gx#identifier? _%hd127772127902%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g128745_|
                          _%hd127772127902%_)
                         (_%__kont128691128692%_ _%tl127773127905%_)
                         (_%__kont128693128694%_))
                     (_%__kont128693128694%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont128693128694%_))))))
                                          (_%__kont128713128714%_
                                           (lambda ()
                                             (let* ((_%g127700127708%_
                                                     (lambda (_%g127701127704%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g127701127704%_)))
                                                    (_%g127699127733%_
                                                     (lambda (_%g127701127712%_)
                                                       ((lambda (_%L127715%_)
                                                          (cons (cons _%E127673%_
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
                                 (cons _%L127715%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx127382%_))
                                    '()))
                        _%r127674%_))
                _%g127701127712%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g127699127733%_
                                                _%tgt127534%_)))))
                                      (if (gx#stx-pair? _%__stx128708128709%_)
                                          (let ((_%e127681127744%_
                                                 (gx#syntax-e
                                                  _%__stx128708128709%_)))
                                            (let ((_%tl127683127751%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e127681127744%_)))
                                                  (_%hd127682127748%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e127681127744%_))))
                                              (_%__kont128711128712%_
                                               _%tl127683127751%_
                                               _%hd127682127748%_)))
                                          (_%__kont128713128714%_))))))))
                      (let* ((_%bind127544%_
                              (_%generate-clauses127542%_ _%clauses127537%_))
                             (_%g127547127564%_
                              (lambda (_%g127548127560%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g127548127560%_)))
                             (_%g127546127661%_
                              (lambda (_%g127548127568%_)
                                (if (gx#stx-pair/null? _%g127548127568%_)
                                    (let ((_g128746_
                                           (gx#syntax-split-splice
                                            _%g127548127568%_
                                            '0)))
                                      (begin
                                        (let ((_g128747_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g128746_)
                                                     (##values-length
                                                      _g128746_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g128747_ 2)))
                                              (error "Context expects 2 values"
                                                     _g128747_)))
                                        (let ((_%target127550127571%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g128746_ 0)))
                                              (_%tl127552127574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g128746_ 1))))
                                          (if (gx#stx-null? _%tl127552127574%_)
                                              (letrec ((_%loop127553127577%_
                                                        (lambda (_%hd127551127581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try127557127584%_)
                  (if (gx#stx-pair? _%hd127551127581%_)
                      (let ((_%e127554127587%_
                             (gx#syntax-e _%hd127551127581%_)))
                        (let ((_%lp-hd127555127591%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e127554127587%_)))
                              (_%lp-tl127556127594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e127554127587%_))))
                          (_%loop127553127577%_
                           _%lp-tl127556127594%_
                           (cons _%lp-hd127555127591%_
                                 _%bind-try127557127584%_))))
                      (let ((_%bind-try127558127597%_
                             (reverse _%bind-try127557127584%_)))
                        ((lambda (_%L127601%_)
                           (let* ((_%g127619127627%_
                                   (lambda (_%g127620127623%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g127620127623%_)))
                                  (_%g127618127657%_
                                   (lambda (_%g127620127631%_)
                                     ((lambda (_%L127634%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp128748
                                                           (lambda (_%g127648127651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g127649127654%_)
                     (cons _%g127648127651%_ _%g127649127654%_))))
              (declare (not safe))
              (__foldr1 __tmp128748 '() _%L127601%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L127634%_
                                                                '())
                                                          '()))))
                                      _%g127620127631%_))))
                             (_%g127618127657%_ (car (last _%bind127544%_)))))
                         _%bind-try127558127597%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop127553127577%_
                                                 _%target127550127571%_
                                                 '()))
                                              (_%g127547127564%_
                                               _%g127548127568%_)))))
                                    (_%g127547127564%_ _%g127548127568%_)))))
                        (_%g127546127661%_ _%bind127544%_))))))
          (let* ((_%g127388127407%_
                  (lambda (_%g127389127403%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g127389127403%_)))
                 (_%g127387127530%_
                  (lambda (_%g127389127411%_)
                    (if (gx#stx-pair? _%g127389127411%_)
                        (let ((_%e127393127414%_
                               (gx#syntax-e _%g127389127411%_)))
                          (let ((_%hd127394127418%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e127393127414%_)))
                                (_%tl127395127421%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e127393127414%_))))
                            (if (gx#stx-pair? _%tl127395127421%_)
                                (let ((_%e127396127424%_
                                       (gx#syntax-e _%tl127395127421%_)))
                                  (let ((_%hd127397127428%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e127396127424%_)))
                                        (_%tl127398127431%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e127396127424%_))))
                                    (if (gx#stx-pair? _%tl127398127431%_)
                                        (let ((_%e127399127434%_
                                               (gx#syntax-e
                                                _%tl127398127431%_)))
                                          (let ((_%hd127400127438%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e127399127434%_)))
                                                (_%tl127401127441%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e127399127434%_))))
                                            ((lambda (_%L127444%_
                                                      _%L127446%_
                                                      _%L127447%_)
                                               (if (and (gx#identifier-list?
                                                         _%L127446%_)
                                                        (gx#stx-list?
                                                         _%L127444%_))
                                                   (let* ((_%g127465127473%_
                                                           (lambda (_%g127466127469%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g127466127469%_)))
                                                          (_%g127464127526%_
                                                           (lambda (_%g127466127477%_)
                                                             ((lambda (_%L127480%_)
                                                                (let* ((_%g127492127500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g127493127496%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g127493127496%_)))
                               (_%g127491127522%_
                                (lambda (_%g127493127504%_)
                                  ((lambda (_%L127507%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L127480%_
                                                             (cons _%L127447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L127507%_ '()))))
                                   _%g127493127504%_))))
                          (_%g127491127522%_
                           (_%generate127385%_
                            _%L127480%_
                            (gx#syntax->list _%L127446%_)
                            _%L127444%_))))
                      _%g127466127477%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g127464127526%_
                                                      (gx#genident 'e)))
                                                   (_%g127388127407%_
                                                    _%g127389127411%_)))
                                             _%tl127401127441%_
                                             _%hd127400127438%_
                                             _%hd127397127428%_)))
                                        (_%g127388127407%_
                                         _%g127389127411%_))))
                                (_%g127388127407%_ _%g127389127411%_))))
                        (_%g127388127407%_ _%g127389127411%_)))))
            (_%g127387127530%_ _%stx127382%_)))))))
