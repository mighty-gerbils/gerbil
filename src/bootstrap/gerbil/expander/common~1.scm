(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g113133_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113135_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113137_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113139_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113140_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113142_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113143_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113145_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113146_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113148_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113149_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113152_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj113129
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
          (##unchecked-structure-set! __obj113129 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113129 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113129 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113129 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113129 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113129 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113129 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113129 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113129 '#f '11 '#f '#f))
        (let ((__tmp113132 |gx[1]#_g113133_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113129 __tmp113132 '12 '#f '#f))
        (let ((__tmp113134 |gx[1]#_g113135_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113129 __tmp113134 '13 '#f '#f))
        (let ((__tmp113136 |gx[1]#_g113137_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113129 __tmp113136 '14 '#f '#f))
        (let ((__tmp113138
               (cons (cons 'e |gx[1]#_g113139_|)
                     (cons (cons 'source |gx[1]#_g113140_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113129 __tmp113138 '15 '#f '#f))
        (let ((__tmp113141
               (cons (cons 'e |gx[1]#_g113142_|)
                     (cons (cons 'source |gx[1]#_g113143_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113129 __tmp113141 '16 '#f '#f))
        (let ((__tmp113144
               (cons (cons 'e |gx[1]#_g113145_|)
                     (cons (cons 'source |gx[1]#_g113146_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113129 __tmp113144 '17 '#f '#f))
        (let ((__tmp113147
               (cons (cons 'e |gx[1]#_g113148_|)
                     (cons (cons 'source |gx[1]#_g113149_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113129 __tmp113147 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113129 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113129 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113129 '() '20 '#f '#f))
        __obj113129))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx111724%_)
        (let* ((_%g111728111742%_
                (lambda (_%g111729111738%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g111729111738%_)))
               (_%g111727111784%_
                (lambda (_%g111729111746%_)
                  (if (gx#stx-pair? _%g111729111746%_)
                      (let ((_%e111733111749%_
                             (gx#syntax-e _%g111729111746%_)))
                        (let ((_%hd111732111753%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e111733111749%_)))
                              (_%tl111731111756%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e111733111749%_))))
                          (if (gx#stx-pair? _%tl111731111756%_)
                              (let ((_%e111736111759%_
                                     (gx#syntax-e _%tl111731111756%_)))
                                (let ((_%hd111735111763%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e111736111759%_)))
                                      (_%tl111734111766%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e111736111759%_))))
                                  (if (gx#stx-null? _%tl111734111766%_)
                                      ((lambda (_%L111769%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L111769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L111769%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd111735111763%_)
                                      (_%g111728111742%_ _%g111729111746%_))))
                              (_%g111728111742%_ _%g111729111746%_))))
                      (_%g111728111742%_ _%g111729111746%_)))))
          (_%g111727111784%_ _%$stx111724%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx111788%_)
        (letrec ((_%generate111791%_
                  (lambda (_%tgt111940%_ _%kws111942%_ _%clauses111943%_)
                    (letrec ((_%generate-clause111945%_
                              (lambda (_%hd112880%_ _%E112882%_)
                                (let* ((_%__stx113032113033%_ _%hd112880%_)
                                       (_%g112886112913%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx113032113033%_))))
                                  (let ((_%__kont113035113036%_
                                         (lambda (_%L113009%_ _%L113011%_)
                                           (_%generate1111947%_
                                            _%hd112880%_
                                            _%L113011%_
                                            '#t
                                            _%L113009%_
                                            _%E112882%_)))
                                        (_%__kont113037113038%_
                                         (lambda (_%L112961%_
                                                  _%L112963%_
                                                  _%L112964%_)
                                           (_%generate1111947%_
                                            _%hd112880%_
                                            _%L112964%_
                                            _%L112963%_
                                            _%L112961%_
                                            _%E112882%_)))
                                        (_%__kont113039113040%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx111788%_
                                            _%hd112880%_))))
                                    (if (gx#stx-pair? _%__stx113032113033%_)
                                        (let ((_%e112892112989%_
                                               (gx#syntax-e
                                                _%__stx113032113033%_)))
                                          (let ((_%tl112890112996%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e112892112989%_)))
                                                (_%hd112891112993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e112892112989%_))))
                                            (if (gx#stx-pair?
                                                 _%tl112890112996%_)
                                                (let ((_%e112895112999%_
                                                       (gx#syntax-e
                                                        _%tl112890112996%_)))
                                                  (let ((_%tl112893113006%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e112895112999%_)))
                                                        (_%hd112894113003%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e112895112999%_))))
                                                    (if (gx#stx-null?
                                                         _%tl112893113006%_)
                                                        (_%__kont113035113036%_
                                                         _%hd112894113003%_
                                                         _%hd112891112993%_)
                                                        (if (gx#stx-pair?
                                                             _%tl112893113006%_)
                                                            (let ((_%e112907112951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl112893113006%_)))
                      (let ((_%tl112905112958%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112907112951%_)))
                            (_%hd112906112955%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112907112951%_))))
                        (if (gx#stx-null? _%tl112905112958%_)
                            (_%__kont113037113038%_
                             _%hd112906112955%_
                             _%hd112894113003%_
                             _%hd112891112993%_)
                            (_%__kont113039113040%_))))
                    (_%__kont113039113040%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont113039113040%_))))
                                        (_%__kont113039113040%_))))))
                             (_%generate1111947%_
                              (lambda (_%where112333%_
                                       _%hd112335%_
                                       _%fender112336%_
                                       _%body112337%_
                                       _%E112338%_)
                                (letrec ((_%recur112340%_
                                          (lambda (_%hd112343%_
                                                   _%tgt112345%_
                                                   _%K112346%_)
                                            (let* ((_%__stx113078113079%_
                                                    _%hd112343%_)
                                                   (_%g112349112361%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx113078113079%_))))
                                              (let ((_%__kont113081113082%_
                                                     (lambda (_%L112670%_
                                                              _%L112672%_)
                                                       (let* ((_%g112683112691%_
                                                               (lambda (_%g112684112687%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g112684112687%_)))
                      (_%g112682112872%_
                       (lambda (_%g112684112695%_)
                         ((lambda (_%L112698%_)
                            (let ()
                              (let* ((_%g112710112718%_
                                      (lambda (_%g112711112714%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g112711112714%_)))
                                     (_%g112709112868%_
                                      (lambda (_%g112711112722%_)
                                        ((lambda (_%L112725%_)
                                           (let ()
                                             (let* ((_%g112738112746%_
                                                     (lambda (_%g112739112742%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g112739112742%_)))
                                                    (_%g112737112864%_
                                                     (lambda (_%g112739112750%_)
                                                       ((lambda (_%L112753%_)
                                                          (let ()
                                                            (let* ((_%g112766112774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g112767112770%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g112767112770%_)))
                           (_%g112765112860%_
                            (lambda (_%g112767112778%_)
                              ((lambda (_%L112781%_)
                                 (let ()
                                   (let* ((_%g112794112802%_
                                           (lambda (_%g112795112798%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g112795112798%_)))
                                          (_%g112793112856%_
                                           (lambda (_%g112795112806%_)
                                             ((lambda (_%L112809%_)
                                                (let ()
                                                  (let* ((_%g112822112830%_
                                                          (lambda (_%g112823112826%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g112823112826%_)))
                                                         (_%g112821112852%_
                                                          (lambda (_%g112823112834%_)
                                                            ((lambda (_%L112837%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f 'stx-pair?)
                                             (cons _%L112698%_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L112725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'syntax-e)
                                         (cons _%L112698%_ '()))
                                   '()))
                       '())
                 (cons (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _%L112753%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##car)
                                                           (cons _%L112725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons _%L112781%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%L112725%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons _%L112809%_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons _%L112837%_ '())))))))
                     _%g112823112834%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g112821112852%_
                                                     _%E112338%_))))
                                              _%g112795112806%_))))
                                     (_%g112793112856%_
                                      (_%recur112340%_
                                       _%L112672%_
                                       _%L112753%_
                                       (_%recur112340%_
                                        _%L112670%_
                                        _%L112781%_
                                        _%K112346%_))))))
                               _%g112767112778%_))))
                      (_%g112765112860%_ (gx#genident 'tl)))))
                _%g112739112750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g112737112864%_
                                                (gx#genident 'hd)))))
                                         _%g112711112722%_))))
                                (_%g112709112868%_ (gx#genident 'e)))))
                          _%g112684112695%_))))
                 (_%g112682112872%_ _%tgt112345%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113083113084%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd112343%_)
                                                           (let ()
                                                             (if (gx#underscore?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd112343%_)
                         (let () _%K112346%_)
                         (if (let ((__tmp113150
                                    (lambda (_%g112375112377%_)
                                      (gx#bound-identifier=?
                                       _%g112375112377%_
                                       _%hd112343%_))))
                               (declare (not safe))
                               (__find __tmp113150 _%kws111942%_))
                             (let ()
                               (let* ((_%g112383112398%_
                                       (lambda (_%g112384112394%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112384112394%_)))
                                      (_%g112382112451%_
                                       (lambda (_%g112384112402%_)
                                         (if (gx#stx-pair? _%g112384112402%_)
                                             (let ((_%e112389112405%_
                                                    (gx#syntax-e
                                                     _%g112384112402%_)))
                                               (let ((_%hd112388112409%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e112389112405%_)))
                                                     (_%tl112387112412%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e112389112405%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl112387112412%_)
                                                     (let ((_%e112392112415%_
                                                            (gx#syntax-e
                                                             _%tl112387112412%_)))
                                                       (let ((_%hd112391112419%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e112392112415%_)))
                     (_%tl112390112422%_
                      (let () (declare (not safe)) (##cdr _%e112392112415%_))))
                 (if (gx#stx-null? _%tl112390112422%_)
                     ((lambda (_%L112425%_ _%L112427%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons (gx#datum->syntax '#f 'and)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'identifier?)
                                                        (cons _%L112427%_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'core-identifier=?)
                                                              (cons _%L112427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _%L112425%_ '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons _%K112346%_
                                            (cons _%E112338%_ '()))))))
                      _%hd112391112419%_
                      _%hd112388112409%_)
                     (_%g112383112398%_ _%g112384112402%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112383112398%_
                                                      _%g112384112402%_))))
                                             (_%g112383112398%_
                                              _%g112384112402%_)))))
                                 (_%g112382112451%_
                                  (list _%tgt112345%_ _%hd112343%_))))
                             (let ()
                               (let* ((_%g112457112472%_
                                       (lambda (_%g112458112468%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112458112468%_)))
                                      (_%g112456112517%_
                                       (lambda (_%g112458112476%_)
                                         (if (gx#stx-pair? _%g112458112476%_)
                                             (let ((_%e112463112479%_
                                                    (gx#syntax-e
                                                     _%g112458112476%_)))
                                               (let ((_%hd112462112483%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e112463112479%_)))
                                                     (_%tl112461112486%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e112463112479%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl112461112486%_)
                                                     (let ((_%e112466112489%_
                                                            (gx#syntax-e
                                                             _%tl112461112486%_)))
                                                       (let ((_%hd112465112493%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e112466112489%_)))
                     (_%tl112464112496%_
                      (let () (declare (not safe)) (##cdr _%e112466112489%_))))
                 (if (gx#stx-null? _%tl112464112496%_)
                     ((lambda (_%L112499%_ _%L112501%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (cons (cons _%L112499%_
                                                  (cons _%L112501%_ '()))
                                            '())
                                      (cons _%K112346%_ '())))))
                      _%hd112465112493%_
                      _%hd112462112483%_)
                     (_%g112457112472%_ _%g112458112476%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112457112472%_
                                                      _%g112458112476%_))))
                                             (_%g112457112472%_
                                              _%g112458112476%_)))))
                                 (_%g112456112517%_
                                  (list _%tgt112345%_ _%hd112343%_)))))))
                   (if (gx#stx-null? _%hd112343%_)
                       (let ()
                         (let* ((_%g112523112531%_
                                 (lambda (_%g112524112527%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g112524112527%_)))
                                (_%g112522112550%_
                                 (lambda (_%g112524112535%_)
                                   ((lambda (_%L112538%_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-null?)
                                                          (cons _%L112538%_
                                                                '()))
                                                    (cons _%K112346%_
                                                          (cons _%E112338%_
                                                                '()))))))
                                    _%g112524112535%_))))
                           (_%g112522112550%_ _%tgt112345%_)))
                       (if (gx#stx-datum? _%hd112343%_)
                           (let ()
                             (let* ((_%g112556112575%_
                                     (lambda (_%g112557112571%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g112557112571%_)))
                                    (_%g112555112634%_
                                     (lambda (_%g112557112579%_)
                                       (if (gx#stx-pair? _%g112557112579%_)
                                           (let ((_%e112563112582%_
                                                  (gx#syntax-e
                                                   _%g112557112579%_)))
                                             (let ((_%hd112562112586%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e112563112582%_)))
                                                   (_%tl112561112589%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e112563112582%_))))
                                               (if (gx#stx-pair?
                                                    _%tl112561112589%_)
                                                   (let ((_%e112566112592%_
                                                          (gx#syntax-e
                                                           _%tl112561112589%_)))
                                                     (let ((_%hd112565112596%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e112566112592%_)))
                                                           (_%tl112564112599%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e112566112592%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl112564112599%_)
                                                           (let ((_%e112569112602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl112564112599%_)))
                     (let ((_%hd112568112606%_
                            (let ()
                              (declare (not safe))
                              (##car _%e112569112602%_)))
                           (_%tl112567112609%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e112569112602%_))))
                       (if (gx#stx-null? _%tl112567112609%_)
                           ((lambda (_%L112612%_ _%L112614%_ _%L112615%_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons _%L112612%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'stx-e)
                                                              (cons _%L112615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'quote)
                            (cons _%L112614%_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%K112346%_
                                                  (cons _%E112338%_ '()))))))
                            _%hd112568112606%_
                            _%hd112565112596%_
                            _%hd112562112586%_)
                           (_%g112556112575%_ _%g112557112579%_))))
                   (_%g112556112575%_ _%g112557112579%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g112556112575%_
                                                    _%g112557112579%_))))
                                           (_%g112556112575%_
                                            _%g112557112579%_)))))
                               (_%g112555112634%_
                                (list _%tgt112345%_
                                      _%hd112343%_
                                      (let ((_%e112638%_
                                             (gx#stx-e _%hd112343%_)))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (keyword? _%e112638%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (immediate? _%e112638%_)))
                                            (let ()
                                              (gx#datum->syntax '#f 'eq?))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (number? _%e112638%_))
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
                              _%stx111788%_
                              _%where112333%_
                              _%hd112343%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx113078113079%_)
                                                    (let ((_%e112355112660%_
                                                           (gx#syntax-e
                                                            _%__stx113078113079%_)))
                                                      (let ((_%tl112353112667%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e112355112660%_)))
                    (_%hd112354112664%_
                     (let () (declare (not safe)) (##car _%e112355112660%_))))
                (_%__kont113081113082%_
                 _%tl112353112667%_
                 _%hd112354112664%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113083113084%_)))))))
                                  (_%recur112340%_
                                   _%hd112335%_
                                   _%tgt111940%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender112336%_
                                               (cons _%body112337%_
                                                     (cons _%E112338%_
                                                           '()))))))))
                             (_%generate-clauses111948%_
                              (lambda (_%clauses112071%_)
                                (let _%lp112074%_ ((_%rest112077%_
                                                    _%clauses112071%_)
                                                   (_%E112079%_
                                                    (gx#genident 'E))
                                                   (_%r112080%_ '()))
                                  (let* ((_%__stx113114113115%_ _%rest112077%_)
                                         (_%g112083112095%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx113114113115%_))))
                                    (let ((_%__kont113117113118%_
                                           (lambda (_%L112160%_ _%L112162%_)
                                             (let* ((_%__stx113094113095%_
                                                     _%L112162%_)
                                                    (_%g112174112185%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx113094113095%_))))
                                               (let ((_%__kont113097113098%_
                                                      (lambda (_%L112314%_)
                                                        (if (gx#stx-null?
                                                             _%L112160%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L112314%_)
                             (let ((__tmp113151 (gx#stx-null? _%L112314%_)))
                               (declare (not safe))
                               (not __tmp113151)))
                        (cons (cons _%E112079%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L112314%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L112162%_))
                                          '()))
                              _%r112080%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx111788%_
                         _%L112162%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx111788%_
                     _%L112162%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113099113100%_
                                                      (lambda ()
                                                        (let* ((_%g112196112204%_
                                                                (lambda (_%g112197112200%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g112197112200%_)))
                       (_%g112195112293%_
                        (lambda (_%g112197112208%_)
                          ((lambda (_%L112211%_)
                             (let ()
                               (let* ((_%g112227112235%_
                                       (lambda (_%g112228112231%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112228112231%_)))
                                      (_%g112226112289%_
                                       (lambda (_%g112228112239%_)
                                         ((lambda (_%L112242%_)
                                            (let ()
                                              (let* ((_%g112255112263%_
                                                      (lambda (_%g112256112259%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g112256112259%_)))
                                                     (_%g112254112285%_
                                                      (lambda (_%g112256112267%_)
                                                        ((lambda (_%L112270%_)
                                                           (let ()
                                                             (let ()
                                                               (_%lp112074%_
                                                                _%L112160%_
                                                                _%L112211%_
                                                                (cons (cons _%E112079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%L112270%_ '()))
                              _%r112080%_)))))
                 _%g112256112267%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g112254112285%_
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons _%L112242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%L112162%_))))))
                                          _%g112228112239%_))))
                                 (_%g112226112289%_
                                  (_%generate-clause111945%_
                                   _%L112162%_
                                   (cons _%L112211%_ '()))))))
                           _%g112197112208%_))))
                  (_%g112195112293%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx113094113095%_)
                                                     (let ((_%e112179112304%_
                                                            (gx#syntax-e
                                                             _%__stx113094113095%_)))
                                                       (let ((_%tl112177112311%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e112179112304%_)))
                     (_%hd112178112308%_
                      (let () (declare (not safe)) (##car _%e112179112304%_))))
                 (if (gx#identifier? _%hd112178112308%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g113152_|
                          _%hd112178112308%_)
                         (_%__kont113097113098%_ _%tl112177112311%_)
                         (_%__kont113099113100%_))
                     (_%__kont113099113100%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113099113100%_))))))
                                          (_%__kont113119113120%_
                                           (lambda ()
                                             (let* ((_%g112106112114%_
                                                     (lambda (_%g112107112110%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g112107112110%_)))
                                                    (_%g112105112139%_
                                                     (lambda (_%g112107112118%_)
                                                       ((lambda (_%L112121%_)
                                                          (let ()
                                                            (cons (cons _%E112079%_
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
                                   (cons _%L112121%_ '()))))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (gx#stx-source _%stx111788%_))
                                      '()))
                          _%r112080%_)))
                _%g112107112118%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g112105112139%_
                                                _%tgt111940%_)))))
                                      (if (gx#stx-pair? _%__stx113114113115%_)
                                          (let ((_%e112089112150%_
                                                 (gx#syntax-e
                                                  _%__stx113114113115%_)))
                                            (let ((_%tl112087112157%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e112089112150%_)))
                                                  (_%hd112088112154%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e112089112150%_))))
                                              (_%__kont113117113118%_
                                               _%tl112087112157%_
                                               _%hd112088112154%_)))
                                          (_%__kont113119113120%_))))))))
                      (let* ((_%bind111950%_
                              (_%generate-clauses111948%_ _%clauses111943%_))
                             (_%g111953111970%_
                              (lambda (_%g111954111966%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g111954111966%_)))
                             (_%g111952112067%_
                              (lambda (_%g111954111974%_)
                                (if (gx#stx-pair/null? _%g111954111974%_)
                                    (let ((_g113153_
                                           (gx#syntax-split-splice
                                            _%g111954111974%_
                                            '0)))
                                      (begin
                                        (let ((_g113154_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g113153_)
                                                     (##vector-length
                                                      _g113153_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g113154_ 2)))
                                              (error "Context expects 2 values"
                                                     _g113154_)))
                                        (let ((_%target111956111977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113153_ 0)))
                                              (_%tl111958111980%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113153_ 1))))
                                          (if (gx#stx-null? _%tl111958111980%_)
                                              (letrec ((_%loop111959111983%_
                                                        (lambda (_%hd111957111987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try111963111990%_)
                  (if (gx#stx-pair? _%hd111957111987%_)
                      (let ((_%e111960111993%_
                             (gx#syntax-e _%hd111957111987%_)))
                        (let ((_%lp-hd111961111997%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e111960111993%_)))
                              (_%lp-tl111962112000%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e111960111993%_))))
                          (_%loop111959111983%_
                           _%lp-tl111962112000%_
                           (cons _%lp-hd111961111997%_
                                 _%bind-try111963111990%_))))
                      (let ((_%bind-try111964112003%_
                             (reverse _%bind-try111963111990%_)))
                        ((lambda (_%L112007%_)
                           (let ()
                             (let* ((_%g112025112033%_
                                     (lambda (_%g112026112029%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g112026112029%_)))
                                    (_%g112024112063%_
                                     (lambda (_%g112026112037%_)
                                       ((lambda (_%L112040%_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'let*)
                                                    (cons (let ((__tmp113155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g112054112057%_ _%g112055112060%_)
                           (cons _%g112054112057%_ _%g112055112060%_))))
                    (declare (not safe))
                    (__foldr1 __tmp113155 '() _%L112007%_))
                  (cons (cons _%L112040%_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g112026112037%_))))
                               (_%g112024112063%_
                                (car (last _%bind111950%_))))))
                         _%bind-try111964112003%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop111959111983%_
                                                 _%target111956111977%_
                                                 '()))
                                              (_%g111953111970%_
                                               _%g111954111974%_)))))
                                    (_%g111953111970%_ _%g111954111974%_)))))
                        (_%g111952112067%_ _%bind111950%_))))))
          (let* ((_%g111794111813%_
                  (lambda (_%g111795111809%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g111795111809%_)))
                 (_%g111793111936%_
                  (lambda (_%g111795111817%_)
                    (if (gx#stx-pair? _%g111795111817%_)
                        (let ((_%e111801111820%_
                               (gx#syntax-e _%g111795111817%_)))
                          (let ((_%hd111800111824%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e111801111820%_)))
                                (_%tl111799111827%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e111801111820%_))))
                            (if (gx#stx-pair? _%tl111799111827%_)
                                (let ((_%e111804111830%_
                                       (gx#syntax-e _%tl111799111827%_)))
                                  (let ((_%hd111803111834%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e111804111830%_)))
                                        (_%tl111802111837%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e111804111830%_))))
                                    (if (gx#stx-pair? _%tl111802111837%_)
                                        (let ((_%e111807111840%_
                                               (gx#syntax-e
                                                _%tl111802111837%_)))
                                          (let ((_%hd111806111844%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e111807111840%_)))
                                                (_%tl111805111847%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e111807111840%_))))
                                            ((lambda (_%L111850%_
                                                      _%L111852%_
                                                      _%L111853%_)
                                               (if (and (gx#identifier-list?
                                                         _%L111852%_)
                                                        (gx#stx-list?
                                                         _%L111850%_))
                                                   (let* ((_%g111871111879%_
                                                           (lambda (_%g111872111875%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g111872111875%_)))
                                                          (_%g111870111932%_
                                                           (lambda (_%g111872111883%_)
                                                             ((lambda (_%L111886%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g111898111906%_
                                  (lambda (_%g111899111902%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g111899111902%_)))
                                 (_%g111897111928%_
                                  (lambda (_%g111899111910%_)
                                    ((lambda (_%L111913%_)
                                       (let ()
                                         (let ()
                                           (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _%L111886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L111853%_ '()))
                     '())
               (cons _%L111913%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g111899111910%_))))
                            (_%g111897111928%_
                             (_%generate111791%_
                              _%L111886%_
                              (gx#syntax->list _%L111852%_)
                              _%L111850%_)))))
                      _%g111872111883%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g111870111932%_
                                                      (gx#genident 'e)))
                                                   (_%g111794111813%_
                                                    _%g111795111817%_)))
                                             _%tl111805111847%_
                                             _%hd111806111844%_
                                             _%hd111803111834%_)))
                                        (_%g111794111813%_
                                         _%g111795111817%_))))
                                (_%g111794111813%_ _%g111795111817%_))))
                        (_%g111794111813%_ _%g111795111817%_)))))
            (_%g111793111936%_ _%stx111788%_)))))))
