(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g113161_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113163_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113165_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113167_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113168_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113170_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113171_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113173_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113174_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113176_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113177_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113180_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj113157
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
          (##unchecked-structure-set! __obj113157 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113157 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113157 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113157 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113157 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113157 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113157 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113157 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113157 '#f '11 '#f '#f))
        (let ((__tmp113160 |gx[1]#_g113161_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113157 __tmp113160 '12 '#f '#f))
        (let ((__tmp113162 |gx[1]#_g113163_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113157 __tmp113162 '13 '#f '#f))
        (let ((__tmp113164 |gx[1]#_g113165_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113157 __tmp113164 '14 '#f '#f))
        (let ((__tmp113166
               (cons (cons 'e |gx[1]#_g113167_|)
                     (cons (cons 'source |gx[1]#_g113168_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113157 __tmp113166 '15 '#f '#f))
        (let ((__tmp113169
               (cons (cons 'e |gx[1]#_g113170_|)
                     (cons (cons 'source |gx[1]#_g113171_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113157 __tmp113169 '16 '#f '#f))
        (let ((__tmp113172
               (cons (cons 'e |gx[1]#_g113173_|)
                     (cons (cons 'source |gx[1]#_g113174_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113157 __tmp113172 '17 '#f '#f))
        (let ((__tmp113175
               (cons (cons 'e |gx[1]#_g113176_|)
                     (cons (cons 'source |gx[1]#_g113177_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113157 __tmp113175 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113157 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113157 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113157 '() '20 '#f '#f))
        __obj113157))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx111752%_)
        (let* ((_%g111756111770%_
                (lambda (_%g111757111766%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g111757111766%_)))
               (_%g111755111812%_
                (lambda (_%g111757111774%_)
                  (if (gx#stx-pair? _%g111757111774%_)
                      (let ((_%e111761111777%_
                             (gx#syntax-e _%g111757111774%_)))
                        (let ((_%hd111760111781%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e111761111777%_)))
                              (_%tl111759111784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e111761111777%_))))
                          (if (gx#stx-pair? _%tl111759111784%_)
                              (let ((_%e111764111787%_
                                     (gx#syntax-e _%tl111759111784%_)))
                                (let ((_%hd111763111791%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e111764111787%_)))
                                      (_%tl111762111794%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e111764111787%_))))
                                  (if (gx#stx-null? _%tl111762111794%_)
                                      ((lambda (_%L111797%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L111797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L111797%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd111763111791%_)
                                      (_%g111756111770%_ _%g111757111774%_))))
                              (_%g111756111770%_ _%g111757111774%_))))
                      (_%g111756111770%_ _%g111757111774%_)))))
          (_%g111755111812%_ _%$stx111752%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx111816%_)
        (letrec ((_%generate111819%_
                  (lambda (_%tgt111968%_ _%kws111970%_ _%clauses111971%_)
                    (letrec ((_%generate-clause111973%_
                              (lambda (_%hd112908%_ _%E112910%_)
                                (let* ((_%__stx113060113061%_ _%hd112908%_)
                                       (_%g112914112941%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx113060113061%_))))
                                  (let ((_%__kont113063113064%_
                                         (lambda (_%L113037%_ _%L113039%_)
                                           (_%generate1111975%_
                                            _%hd112908%_
                                            _%L113039%_
                                            '#t
                                            _%L113037%_
                                            _%E112910%_)))
                                        (_%__kont113065113066%_
                                         (lambda (_%L112989%_
                                                  _%L112991%_
                                                  _%L112992%_)
                                           (_%generate1111975%_
                                            _%hd112908%_
                                            _%L112992%_
                                            _%L112991%_
                                            _%L112989%_
                                            _%E112910%_)))
                                        (_%__kont113067113068%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx111816%_
                                            _%hd112908%_))))
                                    (if (gx#stx-pair? _%__stx113060113061%_)
                                        (let ((_%e112920113017%_
                                               (gx#syntax-e
                                                _%__stx113060113061%_)))
                                          (let ((_%tl112918113024%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e112920113017%_)))
                                                (_%hd112919113021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e112920113017%_))))
                                            (if (gx#stx-pair?
                                                 _%tl112918113024%_)
                                                (let ((_%e112923113027%_
                                                       (gx#syntax-e
                                                        _%tl112918113024%_)))
                                                  (let ((_%tl112921113034%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e112923113027%_)))
                                                        (_%hd112922113031%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e112923113027%_))))
                                                    (if (gx#stx-null?
                                                         _%tl112921113034%_)
                                                        (_%__kont113063113064%_
                                                         _%hd112922113031%_
                                                         _%hd112919113021%_)
                                                        (if (gx#stx-pair?
                                                             _%tl112921113034%_)
                                                            (let ((_%e112935112979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl112921113034%_)))
                      (let ((_%tl112933112986%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112935112979%_)))
                            (_%hd112934112983%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112935112979%_))))
                        (if (gx#stx-null? _%tl112933112986%_)
                            (_%__kont113065113066%_
                             _%hd112934112983%_
                             _%hd112922113031%_
                             _%hd112919113021%_)
                            (_%__kont113067113068%_))))
                    (_%__kont113067113068%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont113067113068%_))))
                                        (_%__kont113067113068%_))))))
                             (_%generate1111975%_
                              (lambda (_%where112361%_
                                       _%hd112363%_
                                       _%fender112364%_
                                       _%body112365%_
                                       _%E112366%_)
                                (letrec ((_%recur112368%_
                                          (lambda (_%hd112371%_
                                                   _%tgt112373%_
                                                   _%K112374%_)
                                            (let* ((_%__stx113106113107%_
                                                    _%hd112371%_)
                                                   (_%g112377112389%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx113106113107%_))))
                                              (let ((_%__kont113109113110%_
                                                     (lambda (_%L112698%_
                                                              _%L112700%_)
                                                       (let* ((_%g112711112719%_
                                                               (lambda (_%g112712112715%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g112712112715%_)))
                      (_%g112710112900%_
                       (lambda (_%g112712112723%_)
                         ((lambda (_%L112726%_)
                            (let ()
                              (let* ((_%g112738112746%_
                                      (lambda (_%g112739112742%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g112739112742%_)))
                                     (_%g112737112896%_
                                      (lambda (_%g112739112750%_)
                                        ((lambda (_%L112753%_)
                                           (let ()
                                             (let* ((_%g112766112774%_
                                                     (lambda (_%g112767112770%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g112767112770%_)))
                                                    (_%g112765112892%_
                                                     (lambda (_%g112767112778%_)
                                                       ((lambda (_%L112781%_)
                                                          (let ()
                                                            (let* ((_%g112794112802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g112795112798%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g112795112798%_)))
                           (_%g112793112888%_
                            (lambda (_%g112795112806%_)
                              ((lambda (_%L112809%_)
                                 (let ()
                                   (let* ((_%g112822112830%_
                                           (lambda (_%g112823112826%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g112823112826%_)))
                                          (_%g112821112884%_
                                           (lambda (_%g112823112834%_)
                                             ((lambda (_%L112837%_)
                                                (let ()
                                                  (let* ((_%g112850112858%_
                                                          (lambda (_%g112851112854%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g112851112854%_)))
                                                         (_%g112849112880%_
                                                          (lambda (_%g112851112862%_)
                                                            ((lambda (_%L112865%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'stx-pair?)
                                           (cons _%L112726%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _%L112753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'syntax-e)
                                       (cons _%L112726%_ '()))
                                 '()))
                     '())
               (cons (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _%L112781%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##car)
                                                         (cons _%L112753%_
                                                               '()))
                                                   '()))
                                       (cons (cons _%L112809%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##cdr)
                                                               (cons _%L112753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons _%L112837%_ '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%L112865%_ '()))))))
                     _%g112851112862%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g112849112880%_
                                                     _%E112366%_))))
                                              _%g112823112834%_))))
                                     (_%g112821112884%_
                                      (_%recur112368%_
                                       _%L112700%_
                                       _%L112781%_
                                       (_%recur112368%_
                                        _%L112698%_
                                        _%L112809%_
                                        _%K112374%_))))))
                               _%g112795112806%_))))
                      (_%g112793112888%_ (gx#genident 'tl)))))
                _%g112767112778%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g112765112892%_
                                                (gx#genident 'hd)))))
                                         _%g112739112750%_))))
                                (_%g112737112896%_ (gx#genident 'e)))))
                          _%g112712112723%_))))
                 (_%g112710112900%_ _%tgt112373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113111113112%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd112371%_)
                                                           (let ()
                                                             (if (gx#underscore?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd112371%_)
                         (let () _%K112374%_)
                         (if (let ((__tmp113178
                                    (lambda (_%g112403112405%_)
                                      (gx#bound-identifier=?
                                       _%g112403112405%_
                                       _%hd112371%_))))
                               (declare (not safe))
                               (__find __tmp113178 _%kws111970%_))
                             (let ()
                               (let* ((_%g112411112426%_
                                       (lambda (_%g112412112422%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112412112422%_)))
                                      (_%g112410112479%_
                                       (lambda (_%g112412112430%_)
                                         (if (gx#stx-pair? _%g112412112430%_)
                                             (let ((_%e112417112433%_
                                                    (gx#syntax-e
                                                     _%g112412112430%_)))
                                               (let ((_%hd112416112437%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e112417112433%_)))
                                                     (_%tl112415112440%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e112417112433%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl112415112440%_)
                                                     (let ((_%e112420112443%_
                                                            (gx#syntax-e
                                                             _%tl112415112440%_)))
                                                       (let ((_%hd112419112447%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e112420112443%_)))
                     (_%tl112418112450%_
                      (let () (declare (not safe)) (##cdr _%e112420112443%_))))
                 (if (gx#stx-null? _%tl112418112450%_)
                     ((lambda (_%L112453%_ _%L112455%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons (gx#datum->syntax '#f 'and)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'identifier?)
                                                        (cons _%L112455%_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'core-identifier=?)
                                                              (cons _%L112455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _%L112453%_ '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons _%K112374%_
                                            (cons _%E112366%_ '()))))))
                      _%hd112419112447%_
                      _%hd112416112437%_)
                     (_%g112411112426%_ _%g112412112430%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112411112426%_
                                                      _%g112412112430%_))))
                                             (_%g112411112426%_
                                              _%g112412112430%_)))))
                                 (_%g112410112479%_
                                  (list _%tgt112373%_ _%hd112371%_))))
                             (let ()
                               (let* ((_%g112485112500%_
                                       (lambda (_%g112486112496%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112486112496%_)))
                                      (_%g112484112545%_
                                       (lambda (_%g112486112504%_)
                                         (if (gx#stx-pair? _%g112486112504%_)
                                             (let ((_%e112491112507%_
                                                    (gx#syntax-e
                                                     _%g112486112504%_)))
                                               (let ((_%hd112490112511%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e112491112507%_)))
                                                     (_%tl112489112514%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e112491112507%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl112489112514%_)
                                                     (let ((_%e112494112517%_
                                                            (gx#syntax-e
                                                             _%tl112489112514%_)))
                                                       (let ((_%hd112493112521%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e112494112517%_)))
                     (_%tl112492112524%_
                      (let () (declare (not safe)) (##cdr _%e112494112517%_))))
                 (if (gx#stx-null? _%tl112492112524%_)
                     ((lambda (_%L112527%_ _%L112529%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (cons (cons _%L112527%_
                                                  (cons _%L112529%_ '()))
                                            '())
                                      (cons _%K112374%_ '())))))
                      _%hd112493112521%_
                      _%hd112490112511%_)
                     (_%g112485112500%_ _%g112486112504%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112485112500%_
                                                      _%g112486112504%_))))
                                             (_%g112485112500%_
                                              _%g112486112504%_)))))
                                 (_%g112484112545%_
                                  (list _%tgt112373%_ _%hd112371%_)))))))
                   (if (gx#stx-null? _%hd112371%_)
                       (let ()
                         (let* ((_%g112551112559%_
                                 (lambda (_%g112552112555%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g112552112555%_)))
                                (_%g112550112578%_
                                 (lambda (_%g112552112563%_)
                                   ((lambda (_%L112566%_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-null?)
                                                          (cons _%L112566%_
                                                                '()))
                                                    (cons _%K112374%_
                                                          (cons _%E112366%_
                                                                '()))))))
                                    _%g112552112563%_))))
                           (_%g112550112578%_ _%tgt112373%_)))
                       (if (gx#stx-datum? _%hd112371%_)
                           (let ()
                             (let* ((_%g112584112603%_
                                     (lambda (_%g112585112599%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g112585112599%_)))
                                    (_%g112583112662%_
                                     (lambda (_%g112585112607%_)
                                       (if (gx#stx-pair? _%g112585112607%_)
                                           (let ((_%e112591112610%_
                                                  (gx#syntax-e
                                                   _%g112585112607%_)))
                                             (let ((_%hd112590112614%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e112591112610%_)))
                                                   (_%tl112589112617%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e112591112610%_))))
                                               (if (gx#stx-pair?
                                                    _%tl112589112617%_)
                                                   (let ((_%e112594112620%_
                                                          (gx#syntax-e
                                                           _%tl112589112617%_)))
                                                     (let ((_%hd112593112624%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e112594112620%_)))
                                                           (_%tl112592112627%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e112594112620%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl112592112627%_)
                                                           (let ((_%e112597112630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl112592112627%_)))
                     (let ((_%hd112596112634%_
                            (let ()
                              (declare (not safe))
                              (##car _%e112597112630%_)))
                           (_%tl112595112637%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e112597112630%_))))
                       (if (gx#stx-null? _%tl112595112637%_)
                           ((lambda (_%L112640%_ _%L112642%_ _%L112643%_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons _%L112640%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'stx-e)
                                                              (cons _%L112643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'quote)
                            (cons _%L112642%_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%K112374%_
                                                  (cons _%E112366%_ '()))))))
                            _%hd112596112634%_
                            _%hd112593112624%_
                            _%hd112590112614%_)
                           (_%g112584112603%_ _%g112585112607%_))))
                   (_%g112584112603%_ _%g112585112607%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g112584112603%_
                                                    _%g112585112607%_))))
                                           (_%g112584112603%_
                                            _%g112585112607%_)))))
                               (_%g112583112662%_
                                (list _%tgt112373%_
                                      _%hd112371%_
                                      (let ((_%e112666%_
                                             (gx#stx-e _%hd112371%_)))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (keyword? _%e112666%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (immediate? _%e112666%_)))
                                            (let ()
                                              (gx#datum->syntax '#f 'eq?))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (number? _%e112666%_))
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
                              _%stx111816%_
                              _%where112361%_
                              _%hd112371%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx113106113107%_)
                                                    (let ((_%e112383112688%_
                                                           (gx#syntax-e
                                                            _%__stx113106113107%_)))
                                                      (let ((_%tl112381112695%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e112383112688%_)))
                    (_%hd112382112692%_
                     (let () (declare (not safe)) (##car _%e112383112688%_))))
                (_%__kont113109113110%_
                 _%tl112381112695%_
                 _%hd112382112692%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113111113112%_)))))))
                                  (_%recur112368%_
                                   _%hd112363%_
                                   _%tgt111968%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender112364%_
                                               (cons _%body112365%_
                                                     (cons _%E112366%_
                                                           '()))))))))
                             (_%generate-clauses111976%_
                              (lambda (_%clauses112099%_)
                                (let _%lp112102%_ ((_%rest112105%_
                                                    _%clauses112099%_)
                                                   (_%E112107%_
                                                    (gx#genident 'E))
                                                   (_%r112108%_ '()))
                                  (let* ((_%__stx113142113143%_ _%rest112105%_)
                                         (_%g112111112123%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx113142113143%_))))
                                    (let ((_%__kont113145113146%_
                                           (lambda (_%L112188%_ _%L112190%_)
                                             (let* ((_%__stx113122113123%_
                                                     _%L112190%_)
                                                    (_%g112202112213%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx113122113123%_))))
                                               (let ((_%__kont113125113126%_
                                                      (lambda (_%L112342%_)
                                                        (if (gx#stx-null?
                                                             _%L112188%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L112342%_)
                             (let ((__tmp113179 (gx#stx-null? _%L112342%_)))
                               (declare (not safe))
                               (not __tmp113179)))
                        (cons (cons _%E112107%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L112342%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L112190%_))
                                          '()))
                              _%r112108%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx111816%_
                         _%L112190%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx111816%_
                     _%L112190%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113127113128%_
                                                      (lambda ()
                                                        (let* ((_%g112224112232%_
                                                                (lambda (_%g112225112228%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g112225112228%_)))
                       (_%g112223112321%_
                        (lambda (_%g112225112236%_)
                          ((lambda (_%L112239%_)
                             (let ()
                               (let* ((_%g112255112263%_
                                       (lambda (_%g112256112259%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112256112259%_)))
                                      (_%g112254112317%_
                                       (lambda (_%g112256112267%_)
                                         ((lambda (_%L112270%_)
                                            (let ()
                                              (let* ((_%g112283112291%_
                                                      (lambda (_%g112284112287%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g112284112287%_)))
                                                     (_%g112282112313%_
                                                      (lambda (_%g112284112295%_)
                                                        ((lambda (_%L112298%_)
                                                           (let ()
                                                             (_%lp112102%_
                                                              _%L112188%_
                                                              _%L112239%_
                                                              (cons (cons _%E112107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _%L112298%_ '()))
                            _%r112108%_))))
                 _%g112284112295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g112282112313%_
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons _%L112270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%L112190%_))))))
                                          _%g112256112267%_))))
                                 (_%g112254112317%_
                                  (_%generate-clause111973%_
                                   _%L112190%_
                                   (cons _%L112239%_ '()))))))
                           _%g112225112236%_))))
                  (_%g112223112321%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx113122113123%_)
                                                     (let ((_%e112207112332%_
                                                            (gx#syntax-e
                                                             _%__stx113122113123%_)))
                                                       (let ((_%tl112205112339%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e112207112332%_)))
                     (_%hd112206112336%_
                      (let () (declare (not safe)) (##car _%e112207112332%_))))
                 (if (gx#identifier? _%hd112206112336%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g113180_|
                          _%hd112206112336%_)
                         (_%__kont113125113126%_ _%tl112205112339%_)
                         (_%__kont113127113128%_))
                     (_%__kont113127113128%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113127113128%_))))))
                                          (_%__kont113147113148%_
                                           (lambda ()
                                             (let* ((_%g112134112142%_
                                                     (lambda (_%g112135112138%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g112135112138%_)))
                                                    (_%g112133112167%_
                                                     (lambda (_%g112135112146%_)
                                                       ((lambda (_%L112149%_)
                                                          (let ()
                                                            (cons (cons _%E112107%_
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
                                   (cons _%L112149%_ '()))))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (gx#stx-source _%stx111816%_))
                                      '()))
                          _%r112108%_)))
                _%g112135112146%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g112133112167%_
                                                _%tgt111968%_)))))
                                      (if (gx#stx-pair? _%__stx113142113143%_)
                                          (let ((_%e112117112178%_
                                                 (gx#syntax-e
                                                  _%__stx113142113143%_)))
                                            (let ((_%tl112115112185%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e112117112178%_)))
                                                  (_%hd112116112182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e112117112178%_))))
                                              (_%__kont113145113146%_
                                               _%tl112115112185%_
                                               _%hd112116112182%_)))
                                          (_%__kont113147113148%_))))))))
                      (let* ((_%bind111978%_
                              (_%generate-clauses111976%_ _%clauses111971%_))
                             (_%g111981111998%_
                              (lambda (_%g111982111994%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g111982111994%_)))
                             (_%g111980112095%_
                              (lambda (_%g111982112002%_)
                                (if (gx#stx-pair/null? _%g111982112002%_)
                                    (let ((_g113181_
                                           (gx#syntax-split-splice
                                            _%g111982112002%_
                                            '0)))
                                      (begin
                                        (let ((_g113182_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g113181_)
                                                     (##vector-length
                                                      _g113181_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g113182_ 2)))
                                              (error "Context expects 2 values"
                                                     _g113182_)))
                                        (let ((_%target111984112005%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113181_ 0)))
                                              (_%tl111986112008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113181_ 1))))
                                          (if (gx#stx-null? _%tl111986112008%_)
                                              (letrec ((_%loop111987112011%_
                                                        (lambda (_%hd111985112015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try111991112018%_)
                  (if (gx#stx-pair? _%hd111985112015%_)
                      (let ((_%e111988112021%_
                             (gx#syntax-e _%hd111985112015%_)))
                        (let ((_%lp-hd111989112025%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e111988112021%_)))
                              (_%lp-tl111990112028%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e111988112021%_))))
                          (_%loop111987112011%_
                           _%lp-tl111990112028%_
                           (cons _%lp-hd111989112025%_
                                 _%bind-try111991112018%_))))
                      (let ((_%bind-try111992112031%_
                             (reverse _%bind-try111991112018%_)))
                        ((lambda (_%L112035%_)
                           (let ()
                             (let* ((_%g112053112061%_
                                     (lambda (_%g112054112057%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g112054112057%_)))
                                    (_%g112052112091%_
                                     (lambda (_%g112054112065%_)
                                       ((lambda (_%L112068%_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'let*)
                                                  (cons (let ((__tmp113183
                                                               (lambda (_%g112082112085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g112083112088%_)
                         (cons _%g112082112085%_ _%g112083112088%_))))
                  (declare (not safe))
                  (__foldr1 __tmp113183 '() _%L112035%_))
                (cons (cons _%L112068%_ '()) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g112054112065%_))))
                               (_%g112052112091%_
                                (car (last _%bind111978%_))))))
                         _%bind-try111992112031%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop111987112011%_
                                                 _%target111984112005%_
                                                 '()))
                                              (_%g111981111998%_
                                               _%g111982112002%_)))))
                                    (_%g111981111998%_ _%g111982112002%_)))))
                        (_%g111980112095%_ _%bind111978%_))))))
          (let* ((_%g111822111841%_
                  (lambda (_%g111823111837%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g111823111837%_)))
                 (_%g111821111964%_
                  (lambda (_%g111823111845%_)
                    (if (gx#stx-pair? _%g111823111845%_)
                        (let ((_%e111829111848%_
                               (gx#syntax-e _%g111823111845%_)))
                          (let ((_%hd111828111852%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e111829111848%_)))
                                (_%tl111827111855%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e111829111848%_))))
                            (if (gx#stx-pair? _%tl111827111855%_)
                                (let ((_%e111832111858%_
                                       (gx#syntax-e _%tl111827111855%_)))
                                  (let ((_%hd111831111862%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e111832111858%_)))
                                        (_%tl111830111865%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e111832111858%_))))
                                    (if (gx#stx-pair? _%tl111830111865%_)
                                        (let ((_%e111835111868%_
                                               (gx#syntax-e
                                                _%tl111830111865%_)))
                                          (let ((_%hd111834111872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e111835111868%_)))
                                                (_%tl111833111875%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e111835111868%_))))
                                            ((lambda (_%L111878%_
                                                      _%L111880%_
                                                      _%L111881%_)
                                               (if (and (gx#identifier-list?
                                                         _%L111880%_)
                                                        (gx#stx-list?
                                                         _%L111878%_))
                                                   (let* ((_%g111899111907%_
                                                           (lambda (_%g111900111903%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g111900111903%_)))
                                                          (_%g111898111960%_
                                                           (lambda (_%g111900111911%_)
                                                             ((lambda (_%L111914%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g111926111934%_
                                  (lambda (_%g111927111930%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g111927111930%_)))
                                 (_%g111925111956%_
                                  (lambda (_%g111927111938%_)
                                    ((lambda (_%L111941%_)
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (cons _%L111914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L111881%_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%L111941%_ '())))))
                                     _%g111927111938%_))))
                            (_%g111925111956%_
                             (_%generate111819%_
                              _%L111914%_
                              (gx#syntax->list _%L111880%_)
                              _%L111878%_)))))
                      _%g111900111911%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g111898111960%_
                                                      (gx#genident 'e)))
                                                   (_%g111822111841%_
                                                    _%g111823111845%_)))
                                             _%tl111833111875%_
                                             _%hd111834111872%_
                                             _%hd111831111862%_)))
                                        (_%g111822111841%_
                                         _%g111823111845%_))))
                                (_%g111822111841%_ _%g111823111845%_))))
                        (_%g111822111841%_ _%g111823111845%_)))))
            (_%g111821111964%_ _%stx111816%_)))))))
