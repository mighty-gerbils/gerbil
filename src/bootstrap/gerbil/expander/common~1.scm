(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g113222_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113224_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113226_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113228_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113229_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113231_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113232_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113234_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113235_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113237_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113238_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113241_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj113218
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
          (##unchecked-structure-set! __obj113218 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113218 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113218 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113218 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113218 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113218 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113218 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113218 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113218 '#f '11 '#f '#f))
        (let ((__tmp113221 |gx[1]#_g113222_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113218 __tmp113221 '12 '#f '#f))
        (let ((__tmp113223 |gx[1]#_g113224_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113218 __tmp113223 '13 '#f '#f))
        (let ((__tmp113225 |gx[1]#_g113226_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113218 __tmp113225 '14 '#f '#f))
        (let ((__tmp113227
               (cons (cons 'e |gx[1]#_g113228_|)
                     (cons (cons 'source |gx[1]#_g113229_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113218 __tmp113227 '15 '#f '#f))
        (let ((__tmp113230
               (cons (cons 'e |gx[1]#_g113231_|)
                     (cons (cons 'source |gx[1]#_g113232_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113218 __tmp113230 '16 '#f '#f))
        (let ((__tmp113233
               (cons (cons 'e |gx[1]#_g113234_|)
                     (cons (cons 'source |gx[1]#_g113235_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113218 __tmp113233 '17 '#f '#f))
        (let ((__tmp113236
               (cons (cons 'e |gx[1]#_g113237_|)
                     (cons (cons 'source |gx[1]#_g113238_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113218 __tmp113236 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113218 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113218 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113218 '() '20 '#f '#f))
        __obj113218))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx111813%_)
        (let* ((_%g111817111831%_
                (lambda (_%g111818111827%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g111818111827%_)))
               (_%g111816111873%_
                (lambda (_%g111818111835%_)
                  (if (gx#stx-pair? _%g111818111835%_)
                      (let ((_%e111822111838%_
                             (gx#syntax-e _%g111818111835%_)))
                        (let ((_%hd111821111842%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e111822111838%_)))
                              (_%tl111820111845%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e111822111838%_))))
                          (if (gx#stx-pair? _%tl111820111845%_)
                              (let ((_%e111825111848%_
                                     (gx#syntax-e _%tl111820111845%_)))
                                (let ((_%hd111824111852%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e111825111848%_)))
                                      (_%tl111823111855%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e111825111848%_))))
                                  (if (gx#stx-null? _%tl111823111855%_)
                                      ((lambda (_%L111858%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L111858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L111858%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd111824111852%_)
                                      (_%g111817111831%_ _%g111818111835%_))))
                              (_%g111817111831%_ _%g111818111835%_))))
                      (_%g111817111831%_ _%g111818111835%_)))))
          (_%g111816111873%_ _%$stx111813%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx111877%_)
        (letrec ((_%generate111880%_
                  (lambda (_%tgt112029%_ _%kws112031%_ _%clauses112032%_)
                    (letrec ((_%generate-clause112034%_
                              (lambda (_%hd112969%_ _%E112971%_)
                                (let* ((_%__stx113121113122%_ _%hd112969%_)
                                       (_%g112975113002%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx113121113122%_))))
                                  (let ((_%__kont113124113125%_
                                         (lambda (_%L113098%_ _%L113100%_)
                                           (_%generate1112036%_
                                            _%hd112969%_
                                            _%L113100%_
                                            '#t
                                            _%L113098%_
                                            _%E112971%_)))
                                        (_%__kont113126113127%_
                                         (lambda (_%L113050%_
                                                  _%L113052%_
                                                  _%L113053%_)
                                           (_%generate1112036%_
                                            _%hd112969%_
                                            _%L113053%_
                                            _%L113052%_
                                            _%L113050%_
                                            _%E112971%_)))
                                        (_%__kont113128113129%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx111877%_
                                            _%hd112969%_))))
                                    (if (gx#stx-pair? _%__stx113121113122%_)
                                        (let ((_%e112981113078%_
                                               (gx#syntax-e
                                                _%__stx113121113122%_)))
                                          (let ((_%tl112979113085%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e112981113078%_)))
                                                (_%hd112980113082%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e112981113078%_))))
                                            (if (gx#stx-pair?
                                                 _%tl112979113085%_)
                                                (let ((_%e112984113088%_
                                                       (gx#syntax-e
                                                        _%tl112979113085%_)))
                                                  (let ((_%tl112982113095%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e112984113088%_)))
                                                        (_%hd112983113092%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e112984113088%_))))
                                                    (if (gx#stx-null?
                                                         _%tl112982113095%_)
                                                        (_%__kont113124113125%_
                                                         _%hd112983113092%_
                                                         _%hd112980113082%_)
                                                        (if (gx#stx-pair?
                                                             _%tl112982113095%_)
                                                            (let ((_%e112996113040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl112982113095%_)))
                      (let ((_%tl112994113047%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112996113040%_)))
                            (_%hd112995113044%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112996113040%_))))
                        (if (gx#stx-null? _%tl112994113047%_)
                            (_%__kont113126113127%_
                             _%hd112995113044%_
                             _%hd112983113092%_
                             _%hd112980113082%_)
                            (_%__kont113128113129%_))))
                    (_%__kont113128113129%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont113128113129%_))))
                                        (_%__kont113128113129%_))))))
                             (_%generate1112036%_
                              (lambda (_%where112422%_
                                       _%hd112424%_
                                       _%fender112425%_
                                       _%body112426%_
                                       _%E112427%_)
                                (letrec ((_%recur112429%_
                                          (lambda (_%hd112432%_
                                                   _%tgt112434%_
                                                   _%K112435%_)
                                            (let* ((_%__stx113167113168%_
                                                    _%hd112432%_)
                                                   (_%g112438112450%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx113167113168%_))))
                                              (let ((_%__kont113170113171%_
                                                     (lambda (_%L112759%_
                                                              _%L112761%_)
                                                       (let* ((_%g112772112780%_
                                                               (lambda (_%g112773112776%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g112773112776%_)))
                      (_%g112771112961%_
                       (lambda (_%g112773112784%_)
                         ((lambda (_%L112787%_)
                            (let ()
                              (let* ((_%g112799112807%_
                                      (lambda (_%g112800112803%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g112800112803%_)))
                                     (_%g112798112957%_
                                      (lambda (_%g112800112811%_)
                                        ((lambda (_%L112814%_)
                                           (let ()
                                             (let* ((_%g112827112835%_
                                                     (lambda (_%g112828112831%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g112828112831%_)))
                                                    (_%g112826112953%_
                                                     (lambda (_%g112828112839%_)
                                                       ((lambda (_%L112842%_)
                                                          (let ()
                                                            (let* ((_%g112855112863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g112856112859%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g112856112859%_)))
                           (_%g112854112949%_
                            (lambda (_%g112856112867%_)
                              ((lambda (_%L112870%_)
                                 (let ()
                                   (let* ((_%g112883112891%_
                                           (lambda (_%g112884112887%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g112884112887%_)))
                                          (_%g112882112945%_
                                           (lambda (_%g112884112895%_)
                                             ((lambda (_%L112898%_)
                                                (let ()
                                                  (let* ((_%g112911112919%_
                                                          (lambda (_%g112912112915%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g112912112915%_)))
                                                         (_%g112910112941%_
                                                          (lambda (_%g112912112923%_)
                                                            ((lambda (_%L112926%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f 'stx-pair?)
                                             (cons _%L112787%_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L112814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'syntax-e)
                                         (cons _%L112787%_ '()))
                                   '()))
                       '())
                 (cons (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _%L112842%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##car)
                                                           (cons _%L112814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons _%L112870%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%L112814%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons _%L112898%_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons _%L112926%_ '())))))))
                     _%g112912112923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g112910112941%_
                                                     _%E112427%_))))
                                              _%g112884112895%_))))
                                     (_%g112882112945%_
                                      (_%recur112429%_
                                       _%L112761%_
                                       _%L112842%_
                                       (_%recur112429%_
                                        _%L112759%_
                                        _%L112870%_
                                        _%K112435%_))))))
                               _%g112856112867%_))))
                      (_%g112854112949%_ (gx#genident 'tl)))))
                _%g112828112839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g112826112953%_
                                                (gx#genident 'hd)))))
                                         _%g112800112811%_))))
                                (_%g112798112957%_ (gx#genident 'e)))))
                          _%g112773112784%_))))
                 (_%g112771112961%_ _%tgt112434%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113172113173%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd112432%_)
                                                           (let ()
                                                             (if (gx#underscore?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd112432%_)
                         (let () _%K112435%_)
                         (if (let ((__tmp113239
                                    (lambda (_%g112464112466%_)
                                      (gx#bound-identifier=?
                                       _%g112464112466%_
                                       _%hd112432%_))))
                               (declare (not safe))
                               (__find __tmp113239 _%kws112031%_))
                             (let ()
                               (let* ((_%g112472112487%_
                                       (lambda (_%g112473112483%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112473112483%_)))
                                      (_%g112471112540%_
                                       (lambda (_%g112473112491%_)
                                         (if (gx#stx-pair? _%g112473112491%_)
                                             (let ((_%e112478112494%_
                                                    (gx#syntax-e
                                                     _%g112473112491%_)))
                                               (let ((_%hd112477112498%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e112478112494%_)))
                                                     (_%tl112476112501%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e112478112494%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl112476112501%_)
                                                     (let ((_%e112481112504%_
                                                            (gx#syntax-e
                                                             _%tl112476112501%_)))
                                                       (let ((_%hd112480112508%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e112481112504%_)))
                     (_%tl112479112511%_
                      (let () (declare (not safe)) (##cdr _%e112481112504%_))))
                 (if (gx#stx-null? _%tl112479112511%_)
                     ((lambda (_%L112514%_ _%L112516%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons (gx#datum->syntax '#f 'and)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'identifier?)
                                                        (cons _%L112516%_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'core-identifier=?)
                                                              (cons _%L112516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _%L112514%_ '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons _%K112435%_
                                            (cons _%E112427%_ '()))))))
                      _%hd112480112508%_
                      _%hd112477112498%_)
                     (_%g112472112487%_ _%g112473112491%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112472112487%_
                                                      _%g112473112491%_))))
                                             (_%g112472112487%_
                                              _%g112473112491%_)))))
                                 (_%g112471112540%_
                                  (list _%tgt112434%_ _%hd112432%_))))
                             (let ()
                               (let* ((_%g112546112561%_
                                       (lambda (_%g112547112557%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112547112557%_)))
                                      (_%g112545112606%_
                                       (lambda (_%g112547112565%_)
                                         (if (gx#stx-pair? _%g112547112565%_)
                                             (let ((_%e112552112568%_
                                                    (gx#syntax-e
                                                     _%g112547112565%_)))
                                               (let ((_%hd112551112572%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e112552112568%_)))
                                                     (_%tl112550112575%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e112552112568%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl112550112575%_)
                                                     (let ((_%e112555112578%_
                                                            (gx#syntax-e
                                                             _%tl112550112575%_)))
                                                       (let ((_%hd112554112582%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e112555112578%_)))
                     (_%tl112553112585%_
                      (let () (declare (not safe)) (##cdr _%e112555112578%_))))
                 (if (gx#stx-null? _%tl112553112585%_)
                     ((lambda (_%L112588%_ _%L112590%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (cons (cons _%L112588%_
                                                  (cons _%L112590%_ '()))
                                            '())
                                      (cons _%K112435%_ '())))))
                      _%hd112554112582%_
                      _%hd112551112572%_)
                     (_%g112546112561%_ _%g112547112565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112546112561%_
                                                      _%g112547112565%_))))
                                             (_%g112546112561%_
                                              _%g112547112565%_)))))
                                 (_%g112545112606%_
                                  (list _%tgt112434%_ _%hd112432%_)))))))
                   (if (gx#stx-null? _%hd112432%_)
                       (let ()
                         (let* ((_%g112612112620%_
                                 (lambda (_%g112613112616%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g112613112616%_)))
                                (_%g112611112639%_
                                 (lambda (_%g112613112624%_)
                                   ((lambda (_%L112627%_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-null?)
                                                          (cons _%L112627%_
                                                                '()))
                                                    (cons _%K112435%_
                                                          (cons _%E112427%_
                                                                '()))))))
                                    _%g112613112624%_))))
                           (_%g112611112639%_ _%tgt112434%_)))
                       (if (gx#stx-datum? _%hd112432%_)
                           (let ()
                             (let* ((_%g112645112664%_
                                     (lambda (_%g112646112660%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g112646112660%_)))
                                    (_%g112644112723%_
                                     (lambda (_%g112646112668%_)
                                       (if (gx#stx-pair? _%g112646112668%_)
                                           (let ((_%e112652112671%_
                                                  (gx#syntax-e
                                                   _%g112646112668%_)))
                                             (let ((_%hd112651112675%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e112652112671%_)))
                                                   (_%tl112650112678%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e112652112671%_))))
                                               (if (gx#stx-pair?
                                                    _%tl112650112678%_)
                                                   (let ((_%e112655112681%_
                                                          (gx#syntax-e
                                                           _%tl112650112678%_)))
                                                     (let ((_%hd112654112685%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e112655112681%_)))
                                                           (_%tl112653112688%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e112655112681%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl112653112688%_)
                                                           (let ((_%e112658112691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl112653112688%_)))
                     (let ((_%hd112657112695%_
                            (let ()
                              (declare (not safe))
                              (##car _%e112658112691%_)))
                           (_%tl112656112698%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e112658112691%_))))
                       (if (gx#stx-null? _%tl112656112698%_)
                           ((lambda (_%L112701%_ _%L112703%_ _%L112704%_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons _%L112701%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'stx-e)
                                                              (cons _%L112704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'quote)
                            (cons _%L112703%_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%K112435%_
                                                  (cons _%E112427%_ '()))))))
                            _%hd112657112695%_
                            _%hd112654112685%_
                            _%hd112651112675%_)
                           (_%g112645112664%_ _%g112646112668%_))))
                   (_%g112645112664%_ _%g112646112668%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g112645112664%_
                                                    _%g112646112668%_))))
                                           (_%g112645112664%_
                                            _%g112646112668%_)))))
                               (_%g112644112723%_
                                (list _%tgt112434%_
                                      _%hd112432%_
                                      (let ((_%e112727%_
                                             (gx#stx-e _%hd112432%_)))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (keyword? _%e112727%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (immediate? _%e112727%_)))
                                            (let ()
                                              (gx#datum->syntax '#f 'eq?))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (number? _%e112727%_))
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
                              _%stx111877%_
                              _%where112422%_
                              _%hd112432%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx113167113168%_)
                                                    (let ((_%e112444112749%_
                                                           (gx#syntax-e
                                                            _%__stx113167113168%_)))
                                                      (let ((_%tl112442112756%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e112444112749%_)))
                    (_%hd112443112753%_
                     (let () (declare (not safe)) (##car _%e112444112749%_))))
                (_%__kont113170113171%_
                 _%tl112442112756%_
                 _%hd112443112753%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113172113173%_)))))))
                                  (_%recur112429%_
                                   _%hd112424%_
                                   _%tgt112029%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender112425%_
                                               (cons _%body112426%_
                                                     (cons _%E112427%_
                                                           '()))))))))
                             (_%generate-clauses112037%_
                              (lambda (_%clauses112160%_)
                                (let _%lp112163%_ ((_%rest112166%_
                                                    _%clauses112160%_)
                                                   (_%E112168%_
                                                    (gx#genident 'E))
                                                   (_%r112169%_ '()))
                                  (let* ((_%__stx113203113204%_ _%rest112166%_)
                                         (_%g112172112184%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx113203113204%_))))
                                    (let ((_%__kont113206113207%_
                                           (lambda (_%L112249%_ _%L112251%_)
                                             (let* ((_%__stx113183113184%_
                                                     _%L112251%_)
                                                    (_%g112263112274%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx113183113184%_))))
                                               (let ((_%__kont113186113187%_
                                                      (lambda (_%L112403%_)
                                                        (if (gx#stx-null?
                                                             _%L112249%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L112403%_)
                             (let ((__tmp113240 (gx#stx-null? _%L112403%_)))
                               (declare (not safe))
                               (not __tmp113240)))
                        (cons (cons _%E112168%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L112403%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L112251%_))
                                          '()))
                              _%r112169%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx111877%_
                         _%L112251%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx111877%_
                     _%L112251%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113188113189%_
                                                      (lambda ()
                                                        (let* ((_%g112285112293%_
                                                                (lambda (_%g112286112289%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g112286112289%_)))
                       (_%g112284112382%_
                        (lambda (_%g112286112297%_)
                          ((lambda (_%L112300%_)
                             (let ()
                               (let* ((_%g112316112324%_
                                       (lambda (_%g112317112320%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112317112320%_)))
                                      (_%g112315112378%_
                                       (lambda (_%g112317112328%_)
                                         ((lambda (_%L112331%_)
                                            (let ()
                                              (let* ((_%g112344112352%_
                                                      (lambda (_%g112345112348%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g112345112348%_)))
                                                     (_%g112343112374%_
                                                      (lambda (_%g112345112356%_)
                                                        ((lambda (_%L112359%_)
                                                           (let ()
                                                             (let ()
                                                               (_%lp112163%_
                                                                _%L112249%_
                                                                _%L112300%_
                                                                (cons (cons _%E112168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%L112359%_ '()))
                              _%r112169%_)))))
                 _%g112345112356%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g112343112374%_
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons _%L112331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%L112251%_))))))
                                          _%g112317112328%_))))
                                 (_%g112315112378%_
                                  (_%generate-clause112034%_
                                   _%L112251%_
                                   (cons _%L112300%_ '()))))))
                           _%g112286112297%_))))
                  (_%g112284112382%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx113183113184%_)
                                                     (let ((_%e112268112393%_
                                                            (gx#syntax-e
                                                             _%__stx113183113184%_)))
                                                       (let ((_%tl112266112400%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e112268112393%_)))
                     (_%hd112267112397%_
                      (let () (declare (not safe)) (##car _%e112268112393%_))))
                 (if (gx#identifier? _%hd112267112397%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g113241_|
                          _%hd112267112397%_)
                         (_%__kont113186113187%_ _%tl112266112400%_)
                         (_%__kont113188113189%_))
                     (_%__kont113188113189%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113188113189%_))))))
                                          (_%__kont113208113209%_
                                           (lambda ()
                                             (let* ((_%g112195112203%_
                                                     (lambda (_%g112196112199%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g112196112199%_)))
                                                    (_%g112194112228%_
                                                     (lambda (_%g112196112207%_)
                                                       ((lambda (_%L112210%_)
                                                          (let ()
                                                            (cons (cons _%E112168%_
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
                                   (cons _%L112210%_ '()))))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (gx#stx-source _%stx111877%_))
                                      '()))
                          _%r112169%_)))
                _%g112196112207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g112194112228%_
                                                _%tgt112029%_)))))
                                      (if (gx#stx-pair? _%__stx113203113204%_)
                                          (let ((_%e112178112239%_
                                                 (gx#syntax-e
                                                  _%__stx113203113204%_)))
                                            (let ((_%tl112176112246%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e112178112239%_)))
                                                  (_%hd112177112243%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e112178112239%_))))
                                              (_%__kont113206113207%_
                                               _%tl112176112246%_
                                               _%hd112177112243%_)))
                                          (_%__kont113208113209%_))))))))
                      (let* ((_%bind112039%_
                              (_%generate-clauses112037%_ _%clauses112032%_))
                             (_%g112042112059%_
                              (lambda (_%g112043112055%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g112043112055%_)))
                             (_%g112041112156%_
                              (lambda (_%g112043112063%_)
                                (if (gx#stx-pair/null? _%g112043112063%_)
                                    (let ((_g113242_
                                           (gx#syntax-split-splice
                                            _%g112043112063%_
                                            '0)))
                                      (begin
                                        (let ((_g113243_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g113242_)
                                                     (##vector-length
                                                      _g113242_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g113243_ 2)))
                                              (error "Context expects 2 values"
                                                     _g113243_)))
                                        (let ((_%target112045112066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113242_ 0)))
                                              (_%tl112047112069%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113242_ 1))))
                                          (if (gx#stx-null? _%tl112047112069%_)
                                              (letrec ((_%loop112048112072%_
                                                        (lambda (_%hd112046112076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try112052112079%_)
                  (if (gx#stx-pair? _%hd112046112076%_)
                      (let ((_%e112049112082%_
                             (gx#syntax-e _%hd112046112076%_)))
                        (let ((_%lp-hd112050112086%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e112049112082%_)))
                              (_%lp-tl112051112089%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e112049112082%_))))
                          (_%loop112048112072%_
                           _%lp-tl112051112089%_
                           (cons _%lp-hd112050112086%_
                                 _%bind-try112052112079%_))))
                      (let ((_%bind-try112053112092%_
                             (reverse _%bind-try112052112079%_)))
                        ((lambda (_%L112096%_)
                           (let ()
                             (let* ((_%g112114112122%_
                                     (lambda (_%g112115112118%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g112115112118%_)))
                                    (_%g112113112152%_
                                     (lambda (_%g112115112126%_)
                                       ((lambda (_%L112129%_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'let*)
                                                    (cons (let ((__tmp113244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g112143112146%_ _%g112144112149%_)
                           (cons _%g112143112146%_ _%g112144112149%_))))
                    (declare (not safe))
                    (__foldr1 __tmp113244 '() _%L112096%_))
                  (cons (cons _%L112129%_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g112115112126%_))))
                               (_%g112113112152%_
                                (car (last _%bind112039%_))))))
                         _%bind-try112053112092%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop112048112072%_
                                                 _%target112045112066%_
                                                 '()))
                                              (_%g112042112059%_
                                               _%g112043112063%_)))))
                                    (_%g112042112059%_ _%g112043112063%_)))))
                        (_%g112041112156%_ _%bind112039%_))))))
          (let* ((_%g111883111902%_
                  (lambda (_%g111884111898%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g111884111898%_)))
                 (_%g111882112025%_
                  (lambda (_%g111884111906%_)
                    (if (gx#stx-pair? _%g111884111906%_)
                        (let ((_%e111890111909%_
                               (gx#syntax-e _%g111884111906%_)))
                          (let ((_%hd111889111913%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e111890111909%_)))
                                (_%tl111888111916%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e111890111909%_))))
                            (if (gx#stx-pair? _%tl111888111916%_)
                                (let ((_%e111893111919%_
                                       (gx#syntax-e _%tl111888111916%_)))
                                  (let ((_%hd111892111923%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e111893111919%_)))
                                        (_%tl111891111926%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e111893111919%_))))
                                    (if (gx#stx-pair? _%tl111891111926%_)
                                        (let ((_%e111896111929%_
                                               (gx#syntax-e
                                                _%tl111891111926%_)))
                                          (let ((_%hd111895111933%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e111896111929%_)))
                                                (_%tl111894111936%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e111896111929%_))))
                                            ((lambda (_%L111939%_
                                                      _%L111941%_
                                                      _%L111942%_)
                                               (if (and (gx#identifier-list?
                                                         _%L111941%_)
                                                        (gx#stx-list?
                                                         _%L111939%_))
                                                   (let* ((_%g111960111968%_
                                                           (lambda (_%g111961111964%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g111961111964%_)))
                                                          (_%g111959112021%_
                                                           (lambda (_%g111961111972%_)
                                                             ((lambda (_%L111975%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g111987111995%_
                                  (lambda (_%g111988111991%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g111988111991%_)))
                                 (_%g111986112017%_
                                  (lambda (_%g111988111999%_)
                                    ((lambda (_%L112002%_)
                                       (let ()
                                         (let ()
                                           (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _%L111975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L111942%_ '()))
                     '())
               (cons _%L112002%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g111988111999%_))))
                            (_%g111986112017%_
                             (_%generate111880%_
                              _%L111975%_
                              (gx#syntax->list _%L111941%_)
                              _%L111939%_)))))
                      _%g111961111972%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g111959112021%_
                                                      (gx#genident 'e)))
                                                   (_%g111883111902%_
                                                    _%g111884111906%_)))
                                             _%tl111894111936%_
                                             _%hd111895111933%_
                                             _%hd111892111923%_)))
                                        (_%g111883111902%_
                                         _%g111884111906%_))))
                                (_%g111883111902%_ _%g111884111906%_))))
                        (_%g111883111902%_ _%g111884111906%_)))))
            (_%g111882112025%_ _%stx111877%_)))))))
