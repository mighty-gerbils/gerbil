(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/expander~SyntaxSugar[1]#_g1980_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax-rules|
      (lambda (_%stx441%_)
        (let* ((_%g444468%_
                (lambda (_%g445464%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g445464%_)))
               (_%g443770%_
                (lambda (_%g445472%_)
                  (if (gx#stx-pair? _%g445472%_)
                      (let ((_%e448475%_ (gx#syntax-e _%g445472%_)))
                        (let ((_%hd449479%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e448475%_)))
                              (_%tl450482%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e448475%_))))
                          (if (gx#stx-pair? _%tl450482%_)
                              (let ((_%e451485%_ (gx#syntax-e _%tl450482%_)))
                                (let ((_%hd452489%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e451485%_)))
                                      (_%tl453492%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e451485%_))))
                                  (if (gx#stx-pair/null? _%tl453492%_)
                                      (let ((_g1976_ (gx#syntax-split-splice
                                                      _%tl453492%_
                                                      '0)))
                                        (begin
                                          (let ((_g1977_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g1976_)
                                                               (##values-length
                                                                _g1976_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g1977_ 2)))
                                                (error "Context expects 2 values"
                                                       _g1977_)))
                                          (let ((_%target454495%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g1976_ 0)))
                                                (_%tl456498%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g1976_ 1))))
                                            (if (gx#stx-null? _%tl456498%_)
                                                (letrec ((_%loop457501%_
                                                          (lambda (_%hd455505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses461508%_)
                    (if (gx#stx-pair? _%hd455505%_)
                        (let ((_%e458510%_ (gx#syntax-e _%hd455505%_)))
                          (let ((_%lp-hd459514%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e458510%_)))
                                (_%lp-tl460517%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e458510%_))))
                            (_%loop457501%_
                             _%lp-tl460517%_
                             (cons _%lp-hd459514%_ _%clauses461508%_))))
                        (let ((_%clauses462520%_ (reverse _%clauses461508%_)))
                          ((lambda (_%g446523%_ _%g447525%_)
                             (if (gx#identifier-list? _%g447525%_)
                                 (let* ((_%body689%_
                                         (gx#stx-map
                                          (lambda (_%clause546%_)
                                            (let* ((_%__stx17131714%_
                                                    _%clause546%_)
                                                   (_%g550577%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx17131714%_))))
                                              (let ((_%__kont17161717%_
                                                     (lambda (_%g552662%_
                                                              _%g553664%_)
                                                       (cons _%g553664%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons _%g552662%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont17181719%_
                                                     (lambda (_%g560614%_
                                                              _%g561616%_
                                                              _%g562617%_)
                                                       (cons _%g562617%_
                                                             (cons _%g561616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'syntax)
                                       (cons _%g560614%_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx17131714%_)
                                                    (let ((_%e554642%_
                                                           (gx#syntax-e
                                                            _%__stx17131714%_)))
                                                      (let ((_%tl556649%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e554642%_)))
                    (_%hd555646%_
                     (let () (declare (not safe)) (##car _%e554642%_))))
                (if (gx#stx-pair? _%tl556649%_)
                    (let ((_%e557652%_ (gx#syntax-e _%tl556649%_)))
                      (let ((_%tl559659%_
                             (let () (declare (not safe)) (##cdr _%e557652%_)))
                            (_%hd558656%_
                             (let ()
                               (declare (not safe))
                               (##car _%e557652%_))))
                        (if (gx#stx-null? _%tl559659%_)
                            (_%__kont17161717%_ _%hd558656%_ _%hd555646%_)
                            (if (gx#stx-pair? _%tl559659%_)
                                (let ((_%e569604%_ (gx#syntax-e _%tl559659%_)))
                                  (let ((_%tl571611%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e569604%_)))
                                        (_%hd570608%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e569604%_))))
                                    (if (gx#stx-null? _%tl571611%_)
                                        (_%__kont17181719%_
                                         _%hd570608%_
                                         _%hd558656%_
                                         _%hd555646%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g550577%_)))))
                                (let () (declare (not safe)) (_%g550577%_))))))
                    (let () (declare (not safe)) (_%g550577%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g550577%_))))))
                                          (foldr (lambda (_%g680683%_
                                                          _%g681686%_)
                                                   (cons _%g680683%_
                                                         _%g681686%_))
                                                 '()
                                                 _%g446523%_)))
                                        (_%g692709%_
                                         (lambda (_%g693705%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g693705%_)))
                                        (_%g691766%_
                                         (lambda (_%g693713%_)
                                           (if (gx#stx-pair/null? _%g693713%_)
                                               (let ((_g1978_ (gx#syntax-split-splice
                                                               _%g693713%_
                                                               '0)))
                                                 (begin
                                                   (let ((_g1979_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (if (##values? _g1978_)
                                (##values-length _g1978_)
                                1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g1979_ 2)))
                 (error "Context expects 2 values" _g1979_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target695716%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g1978_
                                                             0)))
                                                         (_%tl697719%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g1978_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl697719%_)
                                                         (letrec ((_%loop698722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd696726%_ _%clause702729%_)
                             (if (gx#stx-pair? _%hd696726%_)
                                 (let ((_%e699731%_
                                        (gx#syntax-e _%hd696726%_)))
                                   (let ((_%lp-hd700735%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e699731%_)))
                                         (_%lp-tl701738%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e699731%_))))
                                     (_%loop698722%_
                                      _%lp-tl701738%_
                                      (cons _%lp-hd700735%_
                                            _%clause702729%_))))
                                 (let ((_%clause703741%_
                                        (reverse _%clause702729%_)))
                                   ((lambda (_%g694744%_)
                                      (cons (gx#datum->syntax '#f 'lambda%)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$stx)
                                                        '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-case)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$stx)
                            (cons _%g447525%_
                                  (foldr (lambda (_%g757760%_ _%g758763%_)
                                           (cons _%g757760%_ _%g758763%_))
                                         '()
                                         _%g694744%_))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause703741%_))))))
                   (_%loop698722%_ _%target695716%_ '()))
                 (_%g692709%_ _%g693713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g692709%_ _%g693713%_)))))
                                   (_%g691766%_ _%body689%_))
                                 (_%g444468%_ _%g445472%_)))
                           _%clauses462520%_
                           _%hd452489%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop457501%_
                                                   _%target454495%_
                                                   '()))
                                                (_%g444468%_ _%g445472%_)))))
                                      (_%g444468%_ _%g445472%_))))
                              (_%g444468%_ _%g445472%_))))
                      (_%g444468%_ _%g445472%_)))))
          (_%g443770%_ _%stx441%_))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax|
      (lambda (_%stx776%_)
        (let* ((_%__stx17571758%_ _%stx776%_)
               (_%g781866%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx17571758%_))))
          (let ((_%__kont17601761%_
                 (lambda (_%g7831196%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g12121215%_ _%g12131218%_)
                                        (cons _%g12121215%_ _%g12131218%_))
                                      '()
                                      _%g7831196%_)))))
                (_%__kont17641765%_
                 (lambda (_%g7991106%_ _%g8001108%_ _%g8011109%_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons _%g8001108%_
                               (cons '()
                                     (cons (cons _%g8011109%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g11321135%_ _%g11331138%_)
                                    (cons _%g11321135%_ _%g11331138%_))
                                  '()
                                  _%g7991106%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont17681769%_
                 (lambda (_%g826971%_ _%g827973%_ _%g828974%_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons (cons (gx#datum->syntax '#f 'list)
                                     (foldr (lambda (_%g9961003%_ _%g9971006%_)
                                              (cons _%g9961003%_ _%g9971006%_))
                                            '()
                                            _%g827973%_))
                               (cons '()
                                     (cons (cons (foldr (lambda (_%g9981009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g9991012%_)
                  (cons _%g9981009%_ _%g9991012%_))
                '()
                _%g828974%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g10001015%_ _%g10011018%_)
                                    (cons _%g10001015%_ _%g10011018%_))
                                  '()
                                  _%g826971%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let* ((_%__match18581859%_
                    (lambda (_%e829873%_
                             _%hd830877%_
                             _%tl831880%_
                             _%e832883%_
                             _%hd833887%_
                             _%tl834890%_
                             _%__splice17701771%_
                             _%target835893%_
                             _%tl837896%_)
                      (letrec ((_%loop838899%_
                                (lambda (_%hd836903%_
                                         _%e842906%_
                                         _%pat843907%_)
                                  (if (gx#stx-pair? _%hd836903%_)
                                      (let ((_%e839909%_
                                             (gx#syntax-e _%hd836903%_)))
                                        (let ((_%lp-tl841916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e839909%_)))
                                              (_%lp-hd840913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e839909%_))))
                                          (if (gx#stx-pair? _%lp-hd840913%_)
                                              (let ((_%e846919%_
                                                     (gx#syntax-e
                                                      _%lp-hd840913%_)))
                                                (let ((_%tl848926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e846919%_)))
                                                      (_%hd847923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e846919%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl848926%_)
                                                      (let ((_%e849929%_
                                                             (gx#syntax-e
                                                              _%tl848926%_)))
                                                        (let ((_%tl851936%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e849929%_)))
                      (_%hd850933%_
                       (let () (declare (not safe)) (##car _%e849929%_))))
                  (if (gx#stx-null? _%tl851936%_)
                      (_%loop838899%_
                       _%lp-tl841916%_
                       (cons _%hd850933%_ _%e842906%_)
                       (cons _%hd847923%_ _%pat843907%_))
                      (let () (declare (not safe)) (_%g781866%_)))))
              (let () (declare (not safe)) (_%g781866%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g781866%_)))))
                                      (let ((_%pat845941%_
                                             (reverse _%pat843907%_))
                                            (_%e844939%_
                                             (reverse _%e842906%_)))
                                        (if (gx#stx-pair/null? _%tl834890%_)
                                            (let ((_%__splice17721773%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl834890%_
                                                    '0)))
                                              (let ((_%tl854946%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice17721773%_
                                                        '1)))
                                                    (_%target852943%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice17721773%_
                                                        '0))))
                                                (if (gx#stx-null? _%tl854946%_)
                                                    (letrec ((_%loop855949%_
                                                              (lambda (_%hd853953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body859956%_)
                        (if (gx#stx-pair? _%hd853953%_)
                            (let ((_%e856958%_ (gx#syntax-e _%hd853953%_)))
                              (let ((_%lp-tl858965%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e856958%_)))
                                    (_%lp-hd857962%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e856958%_))))
                                (_%loop855949%_
                                 _%lp-tl858965%_
                                 (cons _%lp-hd857962%_ _%body859956%_))))
                            (let ((_%body860968%_ (reverse _%body859956%_)))
                              (_%__kont17681769%_
                               _%body860968%_
                               _%e844939%_
                               _%pat845941%_))))))
              (_%loop855949%_ _%target852943%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g781866%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g781866%_))))))))
                        (_%loop838899%_ _%target835893%_ '() '()))))
                   (_%__match18381839%_
                    (lambda (_%e8021028%_
                             _%hd8031032%_
                             _%tl8041035%_
                             _%e8051038%_
                             _%hd8061042%_
                             _%tl8071045%_
                             _%e8081048%_
                             _%hd8091052%_
                             _%tl8101055%_
                             _%e8111058%_
                             _%hd8121062%_
                             _%tl8131065%_
                             _%e8141068%_
                             _%hd8151072%_
                             _%tl8161075%_
                             _%__splice17661767%_
                             _%target8171078%_
                             _%tl8191081%_)
                      (letrec ((_%loop8201084%_
                                (lambda (_%hd8181088%_ _%body8241091%_)
                                  (if (gx#stx-pair? _%hd8181088%_)
                                      (let ((_%e8211093%_
                                             (gx#syntax-e _%hd8181088%_)))
                                        (let ((_%lp-tl8231100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8211093%_)))
                                              (_%lp-hd8221097%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8211093%_))))
                                          (_%loop8201084%_
                                           _%lp-tl8231100%_
                                           (cons _%lp-hd8221097%_
                                                 _%body8241091%_))))
                                      (let ((_%body8251103%_
                                             (reverse _%body8241091%_)))
                                        (_%__kont17641765%_
                                         _%body8251103%_
                                         _%hd8151072%_
                                         _%hd8121062%_))))))
                        (_%loop8201084%_ _%target8171078%_ '()))))
                   (_%__match17961797%_
                    (lambda (_%e7841148%_
                             _%hd7851152%_
                             _%tl7861155%_
                             _%e7871158%_
                             _%hd7881162%_
                             _%tl7891165%_
                             _%__splice17621763%_
                             _%target7901168%_
                             _%tl7921171%_)
                      (letrec ((_%loop7931174%_
                                (lambda (_%hd7911178%_ _%body7971181%_)
                                  (if (gx#stx-pair? _%hd7911178%_)
                                      (let ((_%e7941183%_
                                             (gx#syntax-e _%hd7911178%_)))
                                        (let ((_%lp-tl7961190%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7941183%_)))
                                              (_%lp-hd7951187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7941183%_))))
                                          (_%loop7931174%_
                                           _%lp-tl7961190%_
                                           (cons _%lp-hd7951187%_
                                                 _%body7971181%_))))
                                      (let ((_%body7981193%_
                                             (reverse _%body7971181%_)))
                                        (_%__kont17601761%_
                                         _%body7981193%_))))))
                        (_%loop7931174%_ _%target7901168%_ '())))))
              (if (gx#stx-pair? _%__stx17571758%_)
                  (let ((_%e7841148%_ (gx#syntax-e _%__stx17571758%_)))
                    (let ((_%tl7861155%_
                           (let () (declare (not safe)) (##cdr _%e7841148%_)))
                          (_%hd7851152%_
                           (let () (declare (not safe)) (##car _%e7841148%_))))
                      (if (gx#stx-pair? _%tl7861155%_)
                          (let ((_%e7871158%_ (gx#syntax-e _%tl7861155%_)))
                            (let ((_%tl7891165%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7871158%_)))
                                  (_%hd7881162%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7871158%_))))
                              (if (gx#stx-null? _%hd7881162%_)
                                  (if (gx#stx-pair/null? _%tl7891165%_)
                                      (let ((_%__splice17621763%_
                                             (gx#syntax-split-splice->vector
                                              _%tl7891165%_
                                              '0)))
                                        (let ((_%tl7921171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice17621763%_
                                                  '1)))
                                              (_%target7901168%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice17621763%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl7921171%_)
                                              (_%__match17961797%_
                                               _%e7841148%_
                                               _%hd7851152%_
                                               _%tl7861155%_
                                               _%e7871158%_
                                               _%hd7881162%_
                                               _%tl7891165%_
                                               _%__splice17621763%_
                                               _%target7901168%_
                                               _%tl7921171%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd7881162%_)
                                                  (let ((_%__splice17701771%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd7881162%_
                                                          '0)))
                                                    (let ((_%tl837896%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17701771%_
                                                              '1)))
                                                          (_%target835893%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17701771%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl837896%_)
                                                          (_%__match18581859%_
                                                           _%e7841148%_
                                                           _%hd7851152%_
                                                           _%tl7861155%_
                                                           _%e7871158%_
                                                           _%hd7881162%_
                                                           _%tl7891165%_
                                                           _%__splice17701771%_
                                                           _%target835893%_
                                                           _%tl837896%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g781866%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g781866%_))))))
                                      (if (gx#stx-pair/null? _%hd7881162%_)
                                          (let ((_%__splice17701771%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd7881162%_
                                                  '0)))
                                            (let ((_%tl837896%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17701771%_
                                                      '1)))
                                                  (_%target835893%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17701771%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl837896%_)
                                                  (_%__match18581859%_
                                                   _%e7841148%_
                                                   _%hd7851152%_
                                                   _%tl7861155%_
                                                   _%e7871158%_
                                                   _%hd7881162%_
                                                   _%tl7891165%_
                                                   _%__splice17701771%_
                                                   _%target835893%_
                                                   _%tl837896%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g781866%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g781866%_))))
                                  (if (gx#stx-pair? _%hd7881162%_)
                                      (let ((_%e8081048%_
                                             (gx#syntax-e _%hd7881162%_)))
                                        (let ((_%tl8101055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8081048%_)))
                                              (_%hd8091052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8081048%_))))
                                          (if (gx#stx-pair? _%hd8091052%_)
                                              (let ((_%e8111058%_
                                                     (gx#syntax-e
                                                      _%hd8091052%_)))
                                                (let ((_%tl8131065%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8111058%_)))
                                                      (_%hd8121062%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8111058%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8131065%_)
                                                      (let ((_%e8141068%_
                                                             (gx#syntax-e
                                                              _%tl8131065%_)))
                                                        (let ((_%tl8161075%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8141068%_)))
                      (_%hd8151072%_
                       (let () (declare (not safe)) (##car _%e8141068%_))))
                  (if (gx#stx-null? _%tl8161075%_)
                      (if (gx#stx-null? _%tl8101055%_)
                          (if (gx#stx-pair/null? _%tl7891165%_)
                              (let ((_%__splice17661767%_
                                     (gx#syntax-split-splice->vector
                                      _%tl7891165%_
                                      '0)))
                                (let ((_%tl8191081%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17661767%_
                                          '1)))
                                      (_%target8171078%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17661767%_
                                          '0))))
                                  (if (gx#stx-null? _%tl8191081%_)
                                      (_%__match18381839%_
                                       _%e7841148%_
                                       _%hd7851152%_
                                       _%tl7861155%_
                                       _%e7871158%_
                                       _%hd7881162%_
                                       _%tl7891165%_
                                       _%e8081048%_
                                       _%hd8091052%_
                                       _%tl8101055%_
                                       _%e8111058%_
                                       _%hd8121062%_
                                       _%tl8131065%_
                                       _%e8141068%_
                                       _%hd8151072%_
                                       _%tl8161075%_
                                       _%__splice17661767%_
                                       _%target8171078%_
                                       _%tl8191081%_)
                                      (if (gx#stx-pair/null? _%hd7881162%_)
                                          (let ((_%__splice17701771%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd7881162%_
                                                  '0)))
                                            (let ((_%tl837896%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17701771%_
                                                      '1)))
                                                  (_%target835893%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17701771%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl837896%_)
                                                  (_%__match18581859%_
                                                   _%e7841148%_
                                                   _%hd7851152%_
                                                   _%tl7861155%_
                                                   _%e7871158%_
                                                   _%hd7881162%_
                                                   _%tl7891165%_
                                                   _%__splice17701771%_
                                                   _%target835893%_
                                                   _%tl837896%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g781866%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g781866%_))))))
                              (if (gx#stx-pair/null? _%hd7881162%_)
                                  (let ((_%__splice17701771%_
                                         (gx#syntax-split-splice->vector
                                          _%hd7881162%_
                                          '0)))
                                    (let ((_%tl837896%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice17701771%_
                                              '1)))
                                          (_%target835893%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice17701771%_
                                              '0))))
                                      (if (gx#stx-null? _%tl837896%_)
                                          (_%__match18581859%_
                                           _%e7841148%_
                                           _%hd7851152%_
                                           _%tl7861155%_
                                           _%e7871158%_
                                           _%hd7881162%_
                                           _%tl7891165%_
                                           _%__splice17701771%_
                                           _%target835893%_
                                           _%tl837896%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g781866%_)))))
                                  (let () (declare (not safe)) (_%g781866%_))))
                          (if (gx#stx-pair/null? _%hd7881162%_)
                              (let ((_%__splice17701771%_
                                     (gx#syntax-split-splice->vector
                                      _%hd7881162%_
                                      '0)))
                                (let ((_%tl837896%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17701771%_
                                          '1)))
                                      (_%target835893%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17701771%_
                                          '0))))
                                  (if (gx#stx-null? _%tl837896%_)
                                      (_%__match18581859%_
                                       _%e7841148%_
                                       _%hd7851152%_
                                       _%tl7861155%_
                                       _%e7871158%_
                                       _%hd7881162%_
                                       _%tl7891165%_
                                       _%__splice17701771%_
                                       _%target835893%_
                                       _%tl837896%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g781866%_)))))
                              (let () (declare (not safe)) (_%g781866%_))))
                      (if (gx#stx-pair/null? _%hd7881162%_)
                          (let ((_%__splice17701771%_
                                 (gx#syntax-split-splice->vector
                                  _%hd7881162%_
                                  '0)))
                            (let ((_%tl837896%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice17701771%_ '1)))
                                  (_%target835893%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice17701771%_ '0))))
                              (if (gx#stx-null? _%tl837896%_)
                                  (_%__match18581859%_
                                   _%e7841148%_
                                   _%hd7851152%_
                                   _%tl7861155%_
                                   _%e7871158%_
                                   _%hd7881162%_
                                   _%tl7891165%_
                                   _%__splice17701771%_
                                   _%target835893%_
                                   _%tl837896%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g781866%_)))))
                          (let () (declare (not safe)) (_%g781866%_))))))
              (if (gx#stx-pair/null? _%hd7881162%_)
                  (let ((_%__splice17701771%_
                         (gx#syntax-split-splice->vector _%hd7881162%_ '0)))
                    (let ((_%tl837896%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice17701771%_ '1)))
                          (_%target835893%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice17701771%_ '0))))
                      (if (gx#stx-null? _%tl837896%_)
                          (_%__match18581859%_
                           _%e7841148%_
                           _%hd7851152%_
                           _%tl7861155%_
                           _%e7871158%_
                           _%hd7881162%_
                           _%tl7891165%_
                           _%__splice17701771%_
                           _%target835893%_
                           _%tl837896%_)
                          (let () (declare (not safe)) (_%g781866%_)))))
                  (let () (declare (not safe)) (_%g781866%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd7881162%_)
                                                  (let ((_%__splice17701771%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd7881162%_
                                                          '0)))
                                                    (let ((_%tl837896%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17701771%_
                                                              '1)))
                                                          (_%target835893%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17701771%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl837896%_)
                                                          (_%__match18581859%_
                                                           _%e7841148%_
                                                           _%hd7851152%_
                                                           _%tl7861155%_
                                                           _%e7871158%_
                                                           _%hd7881162%_
                                                           _%tl7891165%_
                                                           _%__splice17701771%_
                                                           _%target835893%_
                                                           _%tl837896%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g781866%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g781866%_))))))
                                      (if (gx#stx-pair/null? _%hd7881162%_)
                                          (let ((_%__splice17701771%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd7881162%_
                                                  '0)))
                                            (let ((_%tl837896%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17701771%_
                                                      '1)))
                                                  (_%target835893%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17701771%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl837896%_)
                                                  (_%__match18581859%_
                                                   _%e7841148%_
                                                   _%hd7851152%_
                                                   _%tl7861155%_
                                                   _%e7871158%_
                                                   _%hd7881162%_
                                                   _%tl7891165%_
                                                   _%__splice17701771%_
                                                   _%target835893%_
                                                   _%tl837896%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g781866%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g781866%_)))))))
                          (let () (declare (not safe)) (_%g781866%_)))))
                  (let () (declare (not safe)) (_%g781866%_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax*|
      (lambda (_%stx1229%_)
        (let* ((_%__stx18611862%_ _%stx1229%_)
               (_%g12341311%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx18611862%_))))
          (let ((_%__kont18641865%_
                 (lambda (_%g12361601%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g16171620%_ _%g16181623%_)
                                        (cons _%g16171620%_ _%g16181623%_))
                                      '()
                                      _%g12361601%_)))))
                (_%__kont18681869%_
                 (lambda (_%g12521505%_
                          _%g12531507%_
                          _%g12541508%_
                          _%g12551509%_
                          _%g12561510%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons (cons _%g12551509%_
                                           (cons _%g12541508%_ '()))
                                     '())
                               (cons (cons _%g12561510%_
                                           (cons _%g12531507%_
                                                 (foldr (lambda (_%g15371540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g15381543%_)
                  (cons _%g15371540%_ _%g15381543%_))
                '()
                _%g12521505%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont18721873%_
                 (lambda (_%g12841376%_
                          _%g12851378%_
                          _%g12861379%_
                          _%g12871380%_)
                   (cons (gx#datum->syntax '#f 'with-syntax)
                         (cons (cons _%g12861379%_ '())
                               (cons (cons _%g12871380%_
                                           (cons _%g12851378%_
                                                 (foldr (lambda (_%g14011404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g14021407%_)
                  (cons _%g14011404%_ _%g14021407%_))
                '()
                _%g12841376%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match19741975%_
                    (lambda (_%e12881318%_
                             _%hd12891322%_
                             _%tl12901325%_
                             _%e12911328%_
                             _%hd12921332%_
                             _%tl12931335%_
                             _%e12941338%_
                             _%hd12951342%_
                             _%tl12961345%_
                             _%__splice18741875%_
                             _%target12971348%_
                             _%tl12991351%_)
                      (letrec ((_%loop13001354%_
                                (lambda (_%hd12981358%_ _%body13041361%_)
                                  (if (gx#stx-pair? _%hd12981358%_)
                                      (let ((_%e13011363%_
                                             (gx#syntax-e _%hd12981358%_)))
                                        (let ((_%lp-tl13031370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e13011363%_)))
                                              (_%lp-hd13021367%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e13011363%_))))
                                          (_%loop13001354%_
                                           _%lp-tl13031370%_
                                           (cons _%lp-hd13021367%_
                                                 _%body13041361%_))))
                                      (let ((_%body13051373%_
                                             (reverse _%body13041361%_)))
                                        (_%__kont18721873%_
                                         _%body13051373%_
                                         _%tl12961345%_
                                         _%hd12951342%_
                                         _%hd12891322%_))))))
                        (_%loop13001354%_ _%target12971348%_ '()))))
                   (_%__match19481949%_
                    (lambda (_%e12571417%_
                             _%hd12581421%_
                             _%tl12591424%_
                             _%e12601427%_
                             _%hd12611431%_
                             _%tl12621434%_
                             _%e12631437%_
                             _%hd12641441%_
                             _%tl12651444%_
                             _%e12661447%_
                             _%hd12671451%_
                             _%tl12681454%_
                             _%e12691457%_
                             _%hd12701461%_
                             _%tl12711464%_
                             _%e12721467%_
                             _%hd12731471%_
                             _%tl12741474%_
                             _%__splice18701871%_
                             _%target12751477%_
                             _%tl12771480%_)
                      (letrec ((_%loop12781483%_
                                (lambda (_%hd12761487%_ _%body12821490%_)
                                  (if (gx#stx-pair? _%hd12761487%_)
                                      (let ((_%e12791492%_
                                             (gx#syntax-e _%hd12761487%_)))
                                        (let ((_%lp-tl12811499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12791492%_)))
                                              (_%lp-hd12801496%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12791492%_))))
                                          (_%loop12781483%_
                                           _%lp-tl12811499%_
                                           (cons _%lp-hd12801496%_
                                                 _%body12821490%_))))
                                      (let ((_%body12831502%_
                                             (reverse _%body12821490%_)))
                                        (_%__kont18681869%_
                                         _%body12831502%_
                                         _%tl12651444%_
                                         _%hd12731471%_
                                         _%tl12711464%_
                                         _%hd12581421%_))))))
                        (_%loop12781483%_ _%target12751477%_ '()))))
                   (_%__match18981899%_
                    (lambda (_%e12371553%_
                             _%hd12381557%_
                             _%tl12391560%_
                             _%e12401563%_
                             _%hd12411567%_
                             _%tl12421570%_
                             _%__splice18661867%_
                             _%target12431573%_
                             _%tl12451576%_)
                      (letrec ((_%loop12461579%_
                                (lambda (_%hd12441583%_ _%body12501586%_)
                                  (if (gx#stx-pair? _%hd12441583%_)
                                      (let ((_%e12471588%_
                                             (gx#syntax-e _%hd12441583%_)))
                                        (let ((_%lp-tl12491595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12471588%_)))
                                              (_%lp-hd12481592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12471588%_))))
                                          (_%loop12461579%_
                                           _%lp-tl12491595%_
                                           (cons _%lp-hd12481592%_
                                                 _%body12501586%_))))
                                      (let ((_%body12511598%_
                                             (reverse _%body12501586%_)))
                                        (_%__kont18641865%_
                                         _%body12511598%_))))))
                        (_%loop12461579%_ _%target12431573%_ '())))))
              (if (gx#stx-pair? _%__stx18611862%_)
                  (let ((_%e12371553%_ (gx#syntax-e _%__stx18611862%_)))
                    (let ((_%tl12391560%_
                           (let () (declare (not safe)) (##cdr _%e12371553%_)))
                          (_%hd12381557%_
                           (let ()
                             (declare (not safe))
                             (##car _%e12371553%_))))
                      (if (gx#stx-pair? _%tl12391560%_)
                          (let ((_%e12401563%_ (gx#syntax-e _%tl12391560%_)))
                            (let ((_%tl12421570%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e12401563%_)))
                                  (_%hd12411567%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e12401563%_))))
                              (if (gx#stx-null? _%hd12411567%_)
                                  (if (gx#stx-pair/null? _%tl12421570%_)
                                      (let ((_%__splice18661867%_
                                             (gx#syntax-split-splice->vector
                                              _%tl12421570%_
                                              '0)))
                                        (let ((_%tl12451576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice18661867%_
                                                  '1)))
                                              (_%target12431573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice18661867%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl12451576%_)
                                              (_%__match18981899%_
                                               _%e12371553%_
                                               _%hd12381557%_
                                               _%tl12391560%_
                                               _%e12401563%_
                                               _%hd12411567%_
                                               _%tl12421570%_
                                               _%__splice18661867%_
                                               _%target12431573%_
                                               _%tl12451576%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g12341311%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g12341311%_)))
                                  (if (gx#stx-pair? _%hd12411567%_)
                                      (let ((_%e12631437%_
                                             (gx#syntax-e _%hd12411567%_)))
                                        (let ((_%tl12651444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12631437%_)))
                                              (_%hd12641441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12631437%_))))
                                          (if (gx#stx-pair? _%hd12641441%_)
                                              (let ((_%e12661447%_
                                                     (gx#syntax-e
                                                      _%hd12641441%_)))
                                                (let ((_%tl12681454%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e12661447%_)))
                                                      (_%hd12671451%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e12661447%_))))
                                                  (if (gx#stx-pair?
                                                       _%hd12671451%_)
                                                      (let ((_%e12691457%_
                                                             (gx#syntax-e
                                                              _%hd12671451%_)))
                                                        (let ((_%tl12711464%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e12691457%_)))
                      (_%hd12701461%_
                       (let () (declare (not safe)) (##car _%e12691457%_))))
                  (if (gx#identifier? _%hd12701461%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/expander~SyntaxSugar[1]#_g1980_|
                           _%hd12701461%_)
                          (if (gx#stx-pair? _%tl12681454%_)
                              (let ((_%e12721467%_
                                     (gx#syntax-e _%tl12681454%_)))
                                (let ((_%tl12741474%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e12721467%_)))
                                      (_%hd12731471%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e12721467%_))))
                                  (if (gx#stx-null? _%tl12741474%_)
                                      (if (gx#stx-pair/null? _%tl12421570%_)
                                          (let ((_%__splice18701871%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl12421570%_
                                                  '0)))
                                            (let ((_%tl12771480%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18701871%_
                                                      '1)))
                                                  (_%target12751477%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18701871%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl12771480%_)
                                                  (_%__match19481949%_
                                                   _%e12371553%_
                                                   _%hd12381557%_
                                                   _%tl12391560%_
                                                   _%e12401563%_
                                                   _%hd12411567%_
                                                   _%tl12421570%_
                                                   _%e12631437%_
                                                   _%hd12641441%_
                                                   _%tl12651444%_
                                                   _%e12661447%_
                                                   _%hd12671451%_
                                                   _%tl12681454%_
                                                   _%e12691457%_
                                                   _%hd12701461%_
                                                   _%tl12711464%_
                                                   _%e12721467%_
                                                   _%hd12731471%_
                                                   _%tl12741474%_
                                                   _%__splice18701871%_
                                                   _%target12751477%_
                                                   _%tl12771480%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g12341311%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g12341311%_)))
                                      (if (gx#stx-pair/null? _%tl12421570%_)
                                          (let ((_%__splice18741875%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl12421570%_
                                                  '0)))
                                            (let ((_%tl12991351%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18741875%_
                                                      '1)))
                                                  (_%target12971348%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18741875%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl12991351%_)
                                                  (_%__match19741975%_
                                                   _%e12371553%_
                                                   _%hd12381557%_
                                                   _%tl12391560%_
                                                   _%e12401563%_
                                                   _%hd12411567%_
                                                   _%tl12421570%_
                                                   _%e12631437%_
                                                   _%hd12641441%_
                                                   _%tl12651444%_
                                                   _%__splice18741875%_
                                                   _%target12971348%_
                                                   _%tl12991351%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g12341311%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g12341311%_))))))
                              (if (gx#stx-pair/null? _%tl12421570%_)
                                  (let ((_%__splice18741875%_
                                         (gx#syntax-split-splice->vector
                                          _%tl12421570%_
                                          '0)))
                                    (let ((_%tl12991351%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice18741875%_
                                              '1)))
                                          (_%target12971348%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice18741875%_
                                              '0))))
                                      (if (gx#stx-null? _%tl12991351%_)
                                          (_%__match19741975%_
                                           _%e12371553%_
                                           _%hd12381557%_
                                           _%tl12391560%_
                                           _%e12401563%_
                                           _%hd12411567%_
                                           _%tl12421570%_
                                           _%e12631437%_
                                           _%hd12641441%_
                                           _%tl12651444%_
                                           _%__splice18741875%_
                                           _%target12971348%_
                                           _%tl12991351%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g12341311%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g12341311%_))))
                          (if (gx#stx-pair/null? _%tl12421570%_)
                              (let ((_%__splice18741875%_
                                     (gx#syntax-split-splice->vector
                                      _%tl12421570%_
                                      '0)))
                                (let ((_%tl12991351%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice18741875%_
                                          '1)))
                                      (_%target12971348%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice18741875%_
                                          '0))))
                                  (if (gx#stx-null? _%tl12991351%_)
                                      (_%__match19741975%_
                                       _%e12371553%_
                                       _%hd12381557%_
                                       _%tl12391560%_
                                       _%e12401563%_
                                       _%hd12411567%_
                                       _%tl12421570%_
                                       _%e12631437%_
                                       _%hd12641441%_
                                       _%tl12651444%_
                                       _%__splice18741875%_
                                       _%target12971348%_
                                       _%tl12991351%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g12341311%_)))))
                              (let () (declare (not safe)) (_%g12341311%_))))
                      (if (gx#stx-pair/null? _%tl12421570%_)
                          (let ((_%__splice18741875%_
                                 (gx#syntax-split-splice->vector
                                  _%tl12421570%_
                                  '0)))
                            (let ((_%tl12991351%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice18741875%_ '1)))
                                  (_%target12971348%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice18741875%_ '0))))
                              (if (gx#stx-null? _%tl12991351%_)
                                  (_%__match19741975%_
                                   _%e12371553%_
                                   _%hd12381557%_
                                   _%tl12391560%_
                                   _%e12401563%_
                                   _%hd12411567%_
                                   _%tl12421570%_
                                   _%e12631437%_
                                   _%hd12641441%_
                                   _%tl12651444%_
                                   _%__splice18741875%_
                                   _%target12971348%_
                                   _%tl12991351%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g12341311%_)))))
                          (let () (declare (not safe)) (_%g12341311%_))))))
              (if (gx#stx-pair/null? _%tl12421570%_)
                  (let ((_%__splice18741875%_
                         (gx#syntax-split-splice->vector _%tl12421570%_ '0)))
                    (let ((_%tl12991351%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice18741875%_ '1)))
                          (_%target12971348%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice18741875%_ '0))))
                      (if (gx#stx-null? _%tl12991351%_)
                          (_%__match19741975%_
                           _%e12371553%_
                           _%hd12381557%_
                           _%tl12391560%_
                           _%e12401563%_
                           _%hd12411567%_
                           _%tl12421570%_
                           _%e12631437%_
                           _%hd12641441%_
                           _%tl12651444%_
                           _%__splice18741875%_
                           _%target12971348%_
                           _%tl12991351%_)
                          (let () (declare (not safe)) (_%g12341311%_)))))
                  (let () (declare (not safe)) (_%g12341311%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl12421570%_)
                                                  (let ((_%__splice18741875%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl12421570%_
                                                          '0)))
                                                    (let ((_%tl12991351%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice18741875%_
                                                              '1)))
                                                          (_%target12971348%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice18741875%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl12991351%_)
                                                          (_%__match19741975%_
                                                           _%e12371553%_
                                                           _%hd12381557%_
                                                           _%tl12391560%_
                                                           _%e12401563%_
                                                           _%hd12411567%_
                                                           _%tl12421570%_
                                                           _%e12631437%_
                                                           _%hd12641441%_
                                                           _%tl12651444%_
                                                           _%__splice18741875%_
                                                           _%target12971348%_
                                                           _%tl12991351%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g12341311%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g12341311%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g12341311%_))))))
                          (let () (declare (not safe)) (_%g12341311%_)))))
                  (let () (declare (not safe)) (_%g12341311%_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax/loc|
      (lambda (_%stx1633%_)
        (let* ((_%g16361654%_
                (lambda (_%g16371650%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g16371650%_)))
               (_%g16351709%_
                (lambda (_%g16371658%_)
                  (if (gx#stx-pair? _%g16371658%_)
                      (let ((_%e16401661%_ (gx#syntax-e _%g16371658%_)))
                        (let ((_%hd16411665%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e16401661%_)))
                              (_%tl16421668%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e16401661%_))))
                          (if (gx#stx-pair? _%tl16421668%_)
                              (let ((_%e16431671%_
                                     (gx#syntax-e _%tl16421668%_)))
                                (let ((_%hd16441675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e16431671%_)))
                                      (_%tl16451678%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e16431671%_))))
                                  (if (gx#stx-pair? _%tl16451678%_)
                                      (let ((_%e16461681%_
                                             (gx#syntax-e _%tl16451678%_)))
                                        (let ((_%hd16471685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e16461681%_)))
                                              (_%tl16481688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e16461681%_))))
                                          (if (gx#stx-null? _%tl16481688%_)
                                              ((lambda (_%g16381691%_
                                                        _%g16391693%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-wrap-source)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax)
                           (cons _%g16381691%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'stx-source)
                                 (cons _%g16391693%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd16471685%_
                                               _%hd16441675%_)
                                              (_%g16361654%_ _%g16371658%_))))
                                      (_%g16361654%_ _%g16371658%_))))
                              (_%g16361654%_ _%g16371658%_))))
                      (_%g16361654%_ _%g16371658%_)))))
          (_%g16351709%_ _%stx1633%_))))))
