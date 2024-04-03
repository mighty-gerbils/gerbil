(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g113168_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113170_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113172_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113174_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113175_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113177_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113178_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113180_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113181_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113183_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113184_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113187_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj113164
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
          (##unchecked-structure-set! __obj113164 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113164 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113164 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113164 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113164 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113164 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113164 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113164 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113164 '#f '11 '#f '#f))
        (let ((__tmp113167 |gx[1]#_g113168_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113164 __tmp113167 '12 '#f '#f))
        (let ((__tmp113169 |gx[1]#_g113170_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113164 __tmp113169 '13 '#f '#f))
        (let ((__tmp113171 |gx[1]#_g113172_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113164 __tmp113171 '14 '#f '#f))
        (let ((__tmp113173
               (cons (cons 'e |gx[1]#_g113174_|)
                     (cons (cons 'source |gx[1]#_g113175_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113164 __tmp113173 '15 '#f '#f))
        (let ((__tmp113176
               (cons (cons 'e |gx[1]#_g113177_|)
                     (cons (cons 'source |gx[1]#_g113178_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113164 __tmp113176 '16 '#f '#f))
        (let ((__tmp113179
               (cons (cons 'e |gx[1]#_g113180_|)
                     (cons (cons 'source |gx[1]#_g113181_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113164 __tmp113179 '17 '#f '#f))
        (let ((__tmp113182
               (cons (cons 'e |gx[1]#_g113183_|)
                     (cons (cons 'source |gx[1]#_g113184_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113164 __tmp113182 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113164 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113164 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113164 '() '20 '#f '#f))
        __obj113164))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx111759%_)
        (let* ((_%g111763111777%_
                (lambda (_%g111764111773%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g111764111773%_)))
               (_%g111762111819%_
                (lambda (_%g111764111781%_)
                  (if (gx#stx-pair? _%g111764111781%_)
                      (let ((_%e111768111784%_
                             (gx#syntax-e _%g111764111781%_)))
                        (let ((_%hd111767111788%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e111768111784%_)))
                              (_%tl111766111791%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e111768111784%_))))
                          (if (gx#stx-pair? _%tl111766111791%_)
                              (let ((_%e111771111794%_
                                     (gx#syntax-e _%tl111766111791%_)))
                                (let ((_%hd111770111798%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e111771111794%_)))
                                      (_%tl111769111801%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e111771111794%_))))
                                  (if (gx#stx-null? _%tl111769111801%_)
                                      ((lambda (_%L111804%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L111804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L111804%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd111770111798%_)
                                      (_%g111763111777%_ _%g111764111781%_))))
                              (_%g111763111777%_ _%g111764111781%_))))
                      (_%g111763111777%_ _%g111764111781%_)))))
          (_%g111762111819%_ _%$stx111759%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx111823%_)
        (letrec ((_%generate111826%_
                  (lambda (_%tgt111975%_ _%kws111977%_ _%clauses111978%_)
                    (letrec ((_%generate-clause111980%_
                              (lambda (_%hd112915%_ _%E112917%_)
                                (let* ((_%__stx113067113068%_ _%hd112915%_)
                                       (_%g112921112948%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx113067113068%_))))
                                  (let ((_%__kont113070113071%_
                                         (lambda (_%L113044%_ _%L113046%_)
                                           (_%generate1111982%_
                                            _%hd112915%_
                                            _%L113046%_
                                            '#t
                                            _%L113044%_
                                            _%E112917%_)))
                                        (_%__kont113072113073%_
                                         (lambda (_%L112996%_
                                                  _%L112998%_
                                                  _%L112999%_)
                                           (_%generate1111982%_
                                            _%hd112915%_
                                            _%L112999%_
                                            _%L112998%_
                                            _%L112996%_
                                            _%E112917%_)))
                                        (_%__kont113074113075%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx111823%_
                                            _%hd112915%_))))
                                    (if (gx#stx-pair? _%__stx113067113068%_)
                                        (let ((_%e112927113024%_
                                               (gx#syntax-e
                                                _%__stx113067113068%_)))
                                          (let ((_%tl112925113031%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e112927113024%_)))
                                                (_%hd112926113028%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e112927113024%_))))
                                            (if (gx#stx-pair?
                                                 _%tl112925113031%_)
                                                (let ((_%e112930113034%_
                                                       (gx#syntax-e
                                                        _%tl112925113031%_)))
                                                  (let ((_%tl112928113041%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e112930113034%_)))
                                                        (_%hd112929113038%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e112930113034%_))))
                                                    (if (gx#stx-null?
                                                         _%tl112928113041%_)
                                                        (_%__kont113070113071%_
                                                         _%hd112929113038%_
                                                         _%hd112926113028%_)
                                                        (if (gx#stx-pair?
                                                             _%tl112928113041%_)
                                                            (let ((_%e112942112986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl112928113041%_)))
                      (let ((_%tl112940112993%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112942112986%_)))
                            (_%hd112941112990%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112942112986%_))))
                        (if (gx#stx-null? _%tl112940112993%_)
                            (_%__kont113072113073%_
                             _%hd112941112990%_
                             _%hd112929113038%_
                             _%hd112926113028%_)
                            (_%__kont113074113075%_))))
                    (_%__kont113074113075%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont113074113075%_))))
                                        (_%__kont113074113075%_))))))
                             (_%generate1111982%_
                              (lambda (_%where112368%_
                                       _%hd112370%_
                                       _%fender112371%_
                                       _%body112372%_
                                       _%E112373%_)
                                (letrec ((_%recur112375%_
                                          (lambda (_%hd112378%_
                                                   _%tgt112380%_
                                                   _%K112381%_)
                                            (let* ((_%__stx113113113114%_
                                                    _%hd112378%_)
                                                   (_%g112384112396%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx113113113114%_))))
                                              (let ((_%__kont113116113117%_
                                                     (lambda (_%L112705%_
                                                              _%L112707%_)
                                                       (let* ((_%g112718112726%_
                                                               (lambda (_%g112719112722%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g112719112722%_)))
                      (_%g112717112907%_
                       (lambda (_%g112719112730%_)
                         ((lambda (_%L112733%_)
                            (let ()
                              (let* ((_%g112745112753%_
                                      (lambda (_%g112746112749%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g112746112749%_)))
                                     (_%g112744112903%_
                                      (lambda (_%g112746112757%_)
                                        ((lambda (_%L112760%_)
                                           (let ()
                                             (let* ((_%g112773112781%_
                                                     (lambda (_%g112774112777%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g112774112777%_)))
                                                    (_%g112772112899%_
                                                     (lambda (_%g112774112785%_)
                                                       ((lambda (_%L112788%_)
                                                          (let ()
                                                            (let* ((_%g112801112809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g112802112805%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g112802112805%_)))
                           (_%g112800112895%_
                            (lambda (_%g112802112813%_)
                              ((lambda (_%L112816%_)
                                 (let ()
                                   (let* ((_%g112829112837%_
                                           (lambda (_%g112830112833%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g112830112833%_)))
                                          (_%g112828112891%_
                                           (lambda (_%g112830112841%_)
                                             ((lambda (_%L112844%_)
                                                (let ()
                                                  (let* ((_%g112857112865%_
                                                          (lambda (_%g112858112861%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g112858112861%_)))
                                                         (_%g112856112887%_
                                                          (lambda (_%g112858112869%_)
                                                            ((lambda (_%L112872%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f 'stx-pair?)
                                             (cons _%L112733%_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L112760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'syntax-e)
                                         (cons _%L112733%_ '()))
                                   '()))
                       '())
                 (cons (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _%L112788%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##car)
                                                           (cons _%L112760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons _%L112816%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%L112760%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons _%L112844%_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons _%L112872%_ '())))))))
                     _%g112858112869%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g112856112887%_
                                                     _%E112373%_))))
                                              _%g112830112841%_))))
                                     (_%g112828112891%_
                                      (_%recur112375%_
                                       _%L112707%_
                                       _%L112788%_
                                       (_%recur112375%_
                                        _%L112705%_
                                        _%L112816%_
                                        _%K112381%_))))))
                               _%g112802112813%_))))
                      (_%g112800112895%_ (gx#genident 'tl)))))
                _%g112774112785%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g112772112899%_
                                                (gx#genident 'hd)))))
                                         _%g112746112757%_))))
                                (_%g112744112903%_ (gx#genident 'e)))))
                          _%g112719112730%_))))
                 (_%g112717112907%_ _%tgt112380%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113118113119%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd112378%_)
                                                           (let ()
                                                             (if (gx#underscore?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd112378%_)
                         (let () _%K112381%_)
                         (if (let ((__tmp113185
                                    (lambda (_%g112410112412%_)
                                      (gx#bound-identifier=?
                                       _%g112410112412%_
                                       _%hd112378%_))))
                               (declare (not safe))
                               (__find __tmp113185 _%kws111977%_))
                             (let ()
                               (let* ((_%g112418112433%_
                                       (lambda (_%g112419112429%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112419112429%_)))
                                      (_%g112417112486%_
                                       (lambda (_%g112419112437%_)
                                         (if (gx#stx-pair? _%g112419112437%_)
                                             (let ((_%e112424112440%_
                                                    (gx#syntax-e
                                                     _%g112419112437%_)))
                                               (let ((_%hd112423112444%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e112424112440%_)))
                                                     (_%tl112422112447%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e112424112440%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl112422112447%_)
                                                     (let ((_%e112427112450%_
                                                            (gx#syntax-e
                                                             _%tl112422112447%_)))
                                                       (let ((_%hd112426112454%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e112427112450%_)))
                     (_%tl112425112457%_
                      (let () (declare (not safe)) (##cdr _%e112427112450%_))))
                 (if (gx#stx-null? _%tl112425112457%_)
                     ((lambda (_%L112460%_ _%L112462%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons (gx#datum->syntax '#f 'and)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'identifier?)
                                                        (cons _%L112462%_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'core-identifier=?)
                                                              (cons _%L112462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _%L112460%_ '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons _%K112381%_
                                            (cons _%E112373%_ '()))))))
                      _%hd112426112454%_
                      _%hd112423112444%_)
                     (_%g112418112433%_ _%g112419112437%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112418112433%_
                                                      _%g112419112437%_))))
                                             (_%g112418112433%_
                                              _%g112419112437%_)))))
                                 (_%g112417112486%_
                                  (list _%tgt112380%_ _%hd112378%_))))
                             (let ()
                               (let* ((_%g112492112507%_
                                       (lambda (_%g112493112503%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112493112503%_)))
                                      (_%g112491112552%_
                                       (lambda (_%g112493112511%_)
                                         (if (gx#stx-pair? _%g112493112511%_)
                                             (let ((_%e112498112514%_
                                                    (gx#syntax-e
                                                     _%g112493112511%_)))
                                               (let ((_%hd112497112518%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e112498112514%_)))
                                                     (_%tl112496112521%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e112498112514%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl112496112521%_)
                                                     (let ((_%e112501112524%_
                                                            (gx#syntax-e
                                                             _%tl112496112521%_)))
                                                       (let ((_%hd112500112528%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e112501112524%_)))
                     (_%tl112499112531%_
                      (let () (declare (not safe)) (##cdr _%e112501112524%_))))
                 (if (gx#stx-null? _%tl112499112531%_)
                     ((lambda (_%L112534%_ _%L112536%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (cons (cons _%L112534%_
                                                  (cons _%L112536%_ '()))
                                            '())
                                      (cons _%K112381%_ '())))))
                      _%hd112500112528%_
                      _%hd112497112518%_)
                     (_%g112492112507%_ _%g112493112511%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112492112507%_
                                                      _%g112493112511%_))))
                                             (_%g112492112507%_
                                              _%g112493112511%_)))))
                                 (_%g112491112552%_
                                  (list _%tgt112380%_ _%hd112378%_)))))))
                   (if (gx#stx-null? _%hd112378%_)
                       (let ()
                         (let* ((_%g112558112566%_
                                 (lambda (_%g112559112562%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g112559112562%_)))
                                (_%g112557112585%_
                                 (lambda (_%g112559112570%_)
                                   ((lambda (_%L112573%_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-null?)
                                                          (cons _%L112573%_
                                                                '()))
                                                    (cons _%K112381%_
                                                          (cons _%E112373%_
                                                                '()))))))
                                    _%g112559112570%_))))
                           (_%g112557112585%_ _%tgt112380%_)))
                       (if (gx#stx-datum? _%hd112378%_)
                           (let ()
                             (let* ((_%g112591112610%_
                                     (lambda (_%g112592112606%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g112592112606%_)))
                                    (_%g112590112669%_
                                     (lambda (_%g112592112614%_)
                                       (if (gx#stx-pair? _%g112592112614%_)
                                           (let ((_%e112598112617%_
                                                  (gx#syntax-e
                                                   _%g112592112614%_)))
                                             (let ((_%hd112597112621%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e112598112617%_)))
                                                   (_%tl112596112624%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e112598112617%_))))
                                               (if (gx#stx-pair?
                                                    _%tl112596112624%_)
                                                   (let ((_%e112601112627%_
                                                          (gx#syntax-e
                                                           _%tl112596112624%_)))
                                                     (let ((_%hd112600112631%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e112601112627%_)))
                                                           (_%tl112599112634%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e112601112627%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl112599112634%_)
                                                           (let ((_%e112604112637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl112599112634%_)))
                     (let ((_%hd112603112641%_
                            (let ()
                              (declare (not safe))
                              (##car _%e112604112637%_)))
                           (_%tl112602112644%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e112604112637%_))))
                       (if (gx#stx-null? _%tl112602112644%_)
                           ((lambda (_%L112647%_ _%L112649%_ _%L112650%_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons _%L112647%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'stx-e)
                                                              (cons _%L112650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'quote)
                            (cons _%L112649%_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%K112381%_
                                                  (cons _%E112373%_ '()))))))
                            _%hd112603112641%_
                            _%hd112600112631%_
                            _%hd112597112621%_)
                           (_%g112591112610%_ _%g112592112614%_))))
                   (_%g112591112610%_ _%g112592112614%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g112591112610%_
                                                    _%g112592112614%_))))
                                           (_%g112591112610%_
                                            _%g112592112614%_)))))
                               (_%g112590112669%_
                                (list _%tgt112380%_
                                      _%hd112378%_
                                      (let ((_%e112673%_
                                             (gx#stx-e _%hd112378%_)))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (keyword? _%e112673%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (immediate? _%e112673%_)))
                                            (let ()
                                              (gx#datum->syntax '#f 'eq?))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (number? _%e112673%_))
                                                (let ()
                                                  (gx#datum->syntax '#f 'eqv?))
                                                (let ()
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?)))))))))
                           (let ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid syntax-case head"
                              _%stx111823%_
                              _%where112368%_
                              _%hd112378%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx113113113114%_)
                                                    (let ((_%e112390112695%_
                                                           (gx#syntax-e
                                                            _%__stx113113113114%_)))
                                                      (let ((_%tl112388112702%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e112390112695%_)))
                    (_%hd112389112699%_
                     (let () (declare (not safe)) (##car _%e112390112695%_))))
                (_%__kont113116113117%_
                 _%tl112388112702%_
                 _%hd112389112699%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113118113119%_)))))))
                                  (_%recur112375%_
                                   _%hd112370%_
                                   _%tgt111975%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender112371%_
                                               (cons _%body112372%_
                                                     (cons _%E112373%_
                                                           '()))))))))
                             (_%generate-clauses111983%_
                              (lambda (_%clauses112106%_)
                                (let _%lp112109%_ ((_%rest112112%_
                                                    _%clauses112106%_)
                                                   (_%E112114%_
                                                    (gx#genident 'E))
                                                   (_%r112115%_ '()))
                                  (let* ((_%__stx113149113150%_ _%rest112112%_)
                                         (_%g112118112130%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx113149113150%_))))
                                    (let ((_%__kont113152113153%_
                                           (lambda (_%L112195%_ _%L112197%_)
                                             (let* ((_%__stx113129113130%_
                                                     _%L112197%_)
                                                    (_%g112209112220%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx113129113130%_))))
                                               (let ((_%__kont113132113133%_
                                                      (lambda (_%L112349%_)
                                                        (if (gx#stx-null?
                                                             _%L112195%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L112349%_)
                             (let ((__tmp113186 (gx#stx-null? _%L112349%_)))
                               (declare (not safe))
                               (not __tmp113186)))
                        (cons (cons _%E112114%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L112349%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L112197%_))
                                          '()))
                              _%r112115%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx111823%_
                         _%L112197%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx111823%_
                     _%L112197%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113134113135%_
                                                      (lambda ()
                                                        (let* ((_%g112231112239%_
                                                                (lambda (_%g112232112235%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g112232112235%_)))
                       (_%g112230112328%_
                        (lambda (_%g112232112243%_)
                          ((lambda (_%L112246%_)
                             (let ()
                               (let* ((_%g112262112270%_
                                       (lambda (_%g112263112266%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112263112266%_)))
                                      (_%g112261112324%_
                                       (lambda (_%g112263112274%_)
                                         ((lambda (_%L112277%_)
                                            (let ()
                                              (let* ((_%g112290112298%_
                                                      (lambda (_%g112291112294%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g112291112294%_)))
                                                     (_%g112289112320%_
                                                      (lambda (_%g112291112302%_)
                                                        ((lambda (_%L112305%_)
                                                           (let ()
                                                             (let ()
                                                               (_%lp112109%_
                                                                _%L112195%_
                                                                _%L112246%_
                                                                (cons (cons _%E112114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%L112305%_ '()))
                              _%r112115%_)))))
                 _%g112291112302%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g112289112320%_
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons _%L112277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%L112197%_))))))
                                          _%g112263112274%_))))
                                 (_%g112261112324%_
                                  (_%generate-clause111980%_
                                   _%L112197%_
                                   (cons _%L112246%_ '()))))))
                           _%g112232112243%_))))
                  (_%g112230112328%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx113129113130%_)
                                                     (let ((_%e112214112339%_
                                                            (gx#syntax-e
                                                             _%__stx113129113130%_)))
                                                       (let ((_%tl112212112346%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e112214112339%_)))
                     (_%hd112213112343%_
                      (let () (declare (not safe)) (##car _%e112214112339%_))))
                 (if (gx#identifier? _%hd112213112343%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g113187_|
                          _%hd112213112343%_)
                         (_%__kont113132113133%_ _%tl112212112346%_)
                         (_%__kont113134113135%_))
                     (_%__kont113134113135%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113134113135%_))))))
                                          (_%__kont113154113155%_
                                           (lambda ()
                                             (let* ((_%g112141112149%_
                                                     (lambda (_%g112142112145%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g112142112145%_)))
                                                    (_%g112140112174%_
                                                     (lambda (_%g112142112153%_)
                                                       ((lambda (_%L112156%_)
                                                          (let ()
                                                            (cons (cons _%E112114%_
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
                                   (cons _%L112156%_ '()))))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (gx#stx-source _%stx111823%_))
                                      '()))
                          _%r112115%_)))
                _%g112142112153%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g112140112174%_
                                                _%tgt111975%_)))))
                                      (if (gx#stx-pair? _%__stx113149113150%_)
                                          (let ((_%e112124112185%_
                                                 (gx#syntax-e
                                                  _%__stx113149113150%_)))
                                            (let ((_%tl112122112192%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e112124112185%_)))
                                                  (_%hd112123112189%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e112124112185%_))))
                                              (_%__kont113152113153%_
                                               _%tl112122112192%_
                                               _%hd112123112189%_)))
                                          (_%__kont113154113155%_))))))))
                      (let* ((_%bind111985%_
                              (_%generate-clauses111983%_ _%clauses111978%_))
                             (_%g111988112005%_
                              (lambda (_%g111989112001%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g111989112001%_)))
                             (_%g111987112102%_
                              (lambda (_%g111989112009%_)
                                (if (gx#stx-pair/null? _%g111989112009%_)
                                    (let ((_g113188_
                                           (gx#syntax-split-splice
                                            _%g111989112009%_
                                            '0)))
                                      (begin
                                        (let ((_g113189_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g113188_)
                                                     (##vector-length
                                                      _g113188_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g113189_ 2)))
                                              (error "Context expects 2 values"
                                                     _g113189_)))
                                        (let ((_%target111991112012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113188_ 0)))
                                              (_%tl111993112015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113188_ 1))))
                                          (if (gx#stx-null? _%tl111993112015%_)
                                              (letrec ((_%loop111994112018%_
                                                        (lambda (_%hd111992112022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try111998112025%_)
                  (if (gx#stx-pair? _%hd111992112022%_)
                      (let ((_%e111995112028%_
                             (gx#syntax-e _%hd111992112022%_)))
                        (let ((_%lp-hd111996112032%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e111995112028%_)))
                              (_%lp-tl111997112035%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e111995112028%_))))
                          (_%loop111994112018%_
                           _%lp-tl111997112035%_
                           (cons _%lp-hd111996112032%_
                                 _%bind-try111998112025%_))))
                      (let ((_%bind-try111999112038%_
                             (reverse _%bind-try111998112025%_)))
                        ((lambda (_%L112042%_)
                           (let ()
                             (let* ((_%g112060112068%_
                                     (lambda (_%g112061112064%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g112061112064%_)))
                                    (_%g112059112098%_
                                     (lambda (_%g112061112072%_)
                                       ((lambda (_%L112075%_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'let*)
                                                    (cons (let ((__tmp113190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g112089112092%_ _%g112090112095%_)
                           (cons _%g112089112092%_ _%g112090112095%_))))
                    (declare (not safe))
                    (__foldr1 __tmp113190 '() _%L112042%_))
                  (cons (cons _%L112075%_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g112061112072%_))))
                               (_%g112059112098%_
                                (car (last _%bind111985%_))))))
                         _%bind-try111999112038%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop111994112018%_
                                                 _%target111991112012%_
                                                 '()))
                                              (_%g111988112005%_
                                               _%g111989112009%_)))))
                                    (_%g111988112005%_ _%g111989112009%_)))))
                        (_%g111987112102%_ _%bind111985%_))))))
          (let* ((_%g111829111848%_
                  (lambda (_%g111830111844%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g111830111844%_)))
                 (_%g111828111971%_
                  (lambda (_%g111830111852%_)
                    (if (gx#stx-pair? _%g111830111852%_)
                        (let ((_%e111836111855%_
                               (gx#syntax-e _%g111830111852%_)))
                          (let ((_%hd111835111859%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e111836111855%_)))
                                (_%tl111834111862%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e111836111855%_))))
                            (if (gx#stx-pair? _%tl111834111862%_)
                                (let ((_%e111839111865%_
                                       (gx#syntax-e _%tl111834111862%_)))
                                  (let ((_%hd111838111869%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e111839111865%_)))
                                        (_%tl111837111872%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e111839111865%_))))
                                    (if (gx#stx-pair? _%tl111837111872%_)
                                        (let ((_%e111842111875%_
                                               (gx#syntax-e
                                                _%tl111837111872%_)))
                                          (let ((_%hd111841111879%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e111842111875%_)))
                                                (_%tl111840111882%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e111842111875%_))))
                                            ((lambda (_%L111885%_
                                                      _%L111887%_
                                                      _%L111888%_)
                                               (if (and (gx#identifier-list?
                                                         _%L111887%_)
                                                        (gx#stx-list?
                                                         _%L111885%_))
                                                   (let* ((_%g111906111914%_
                                                           (lambda (_%g111907111910%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g111907111910%_)))
                                                          (_%g111905111967%_
                                                           (lambda (_%g111907111918%_)
                                                             ((lambda (_%L111921%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g111933111941%_
                                  (lambda (_%g111934111937%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g111934111937%_)))
                                 (_%g111932111963%_
                                  (lambda (_%g111934111945%_)
                                    ((lambda (_%L111948%_)
                                       (let ()
                                         (let ()
                                           (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _%L111921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L111888%_ '()))
                     '())
               (cons _%L111948%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g111934111945%_))))
                            (_%g111932111963%_
                             (_%generate111826%_
                              _%L111921%_
                              (gx#syntax->list _%L111887%_)
                              _%L111885%_)))))
                      _%g111907111918%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g111905111967%_
                                                      (gx#genident 'e)))
                                                   (_%g111829111848%_
                                                    _%g111830111852%_)))
                                             _%tl111840111882%_
                                             _%hd111841111879%_
                                             _%hd111838111869%_)))
                                        (_%g111829111848%_
                                         _%g111830111852%_))))
                                (_%g111829111848%_ _%g111830111852%_))))
                        (_%g111829111848%_ _%g111830111852%_)))))
            (_%g111828111971%_ _%stx111823%_)))))))
