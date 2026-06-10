(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/expander~SyntaxSugar[1]#_g1424_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax-rules|
      (lambda (_%stx139%_)
        (let* ((_%$%g142166%_
                (lambda (_%$%g143162%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g143162%_)))
               (_%$%g141468%_
                (lambda (_%$%g143170%_)
                  (if (gx#stx-pair? _%$%g143170%_)
                      (let ((_%$%e146173%_ (gx#syntax-e _%$%g143170%_)))
                        (let ((_%$%hd147177%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e146173%_)))
                              (_%$%tl148180%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e146173%_))))
                          (if (gx#stx-pair? _%$%tl148180%_)
                              (let ((_%$%e149183%_
                                     (gx#syntax-e _%$%tl148180%_)))
                                (let ((_%$%hd150187%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e149183%_)))
                                      (_%$%tl151190%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e149183%_))))
                                  (if (gx#stx-pair/null? _%$%tl151190%_)
                                      (let ((_g1410_ (gx#syntax-split-splice
                                                      _%$%tl151190%_
                                                      '0)))
                                        (begin
                                          (let ((_g1411_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g1410_)
                                                               (##values-length
                                                                _g1410_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g1411_ 2)))
                                                (error "Context expects 2 values"
                                                       _g1411_)))
                                          (let ((_%$%target152193%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g1410_ 0)))
                                                (_%$%tl154196%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g1410_ 1))))
                                            (if (gx#stx-null? _%$%tl154196%_)
                                                (letrec ((_%$%loop155199%_
                                                          (lambda (_%$%hd153203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clauses159206%_)
                    (if (gx#stx-pair? _%$%hd153203%_)
                        (let ((_%$%e156208%_ (gx#syntax-e _%$%hd153203%_)))
                          (let ((_%$%lp-hd157212%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e156208%_)))
                                (_%$%lp-tl158215%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e156208%_))))
                            (_%$%loop155199%_
                             _%$%lp-tl158215%_
                             (cons _%$%lp-hd157212%_ _%$%clauses159206%_))))
                        (let ((_%$%clauses160218%_
                               (reverse _%$%clauses159206%_)))
                          ((lambda (_%$%g144221%_ _%$%g145223%_)
                             (if (gx#identifier-list? _%$%g145223%_)
                                 (let* ((_%body387%_
                                         (gx#stx-map
                                          (lambda (_%clause244%_)
                                            (let* ((_%$%g248275%_
                                                    (lambda (_%$%g249271%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g249271%_)))
                                                   (_%$%g247333%_
                                                    (lambda (_%$%g249279%_)
                                                      (if (gx#stx-pair?
                                                           _%$%g249279%_)
                                                          (let ((_%$%e261282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%g249279%_)))
                    (let ((_%$%hd262286%_
                           (let () (declare (not safe)) (##car _%$%e261282%_)))
                          (_%$%tl263289%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e261282%_))))
                      (if (gx#stx-pair? _%$%tl263289%_)
                          (let ((_%$%e264292%_ (gx#syntax-e _%$%tl263289%_)))
                            (let ((_%$%hd265296%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e264292%_)))
                                  (_%$%tl266299%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e264292%_))))
                              (if (gx#stx-pair? _%$%tl266299%_)
                                  (let ((_%$%e267302%_
                                         (gx#syntax-e _%$%tl266299%_)))
                                    (let ((_%$%hd268306%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e267302%_)))
                                          (_%$%tl269309%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e267302%_))))
                                      (if (gx#stx-null? _%$%tl269309%_)
                                          ((lambda (_%$%g258312%_
                                                    _%$%g259314%_
                                                    _%$%g260315%_)
                                             (cons _%$%g260315%_
                                                   (cons _%$%g259314%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'syntax)
                             (cons _%$%g258312%_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%$%hd268306%_
                                           _%$%hd265296%_
                                           _%$%hd262286%_)
                                          (_%$%g248275%_ _%$%g249279%_))))
                                  (_%$%g248275%_ _%$%g249279%_))))
                          (_%$%g248275%_ _%$%g249279%_))))
                  (_%$%g248275%_ _%$%g249279%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g246375%_
                                                    (lambda (_%$%g249337%_)
                                                      (if (gx#stx-pair?
                                                           _%$%g249337%_)
                                                          (let ((_%$%e252340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%g249337%_)))
                    (let ((_%$%hd253344%_
                           (let () (declare (not safe)) (##car _%$%e252340%_)))
                          (_%$%tl254347%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e252340%_))))
                      (if (gx#stx-pair? _%$%tl254347%_)
                          (let ((_%$%e255350%_ (gx#syntax-e _%$%tl254347%_)))
                            (let ((_%$%hd256354%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e255350%_)))
                                  (_%$%tl257357%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e255350%_))))
                              (if (gx#stx-null? _%$%tl257357%_)
                                  ((lambda (_%$%g250360%_ _%$%g251362%_)
                                     (cons _%$%g251362%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'syntax)
                                                       (cons _%$%g250360%_
                                                             '()))
                                                 '())))
                                   _%$%hd256354%_
                                   _%$%hd253344%_)
                                  (_%$%g247333%_ _%$%g249337%_))))
                          (_%$%g247333%_ _%$%g249337%_))))
                  (_%$%g247333%_ _%$%g249337%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g246375%_ _%clause244%_)))
                                          (foldr (lambda (_%$%g378381%_
                                                          _%$%g379384%_)
                                                   (cons _%$%g378381%_
                                                         _%$%g379384%_))
                                                 '()
                                                 _%$%g144221%_)))
                                        (_%$%g390407%_
                                         (lambda (_%$%g391403%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g391403%_)))
                                        (_%$%g389464%_
                                         (lambda (_%$%g391411%_)
                                           (if (gx#stx-pair/null?
                                                _%$%g391411%_)
                                               (let ((_g1412_ (gx#syntax-split-splice
                                                               _%$%g391411%_
                                                               '0)))
                                                 (begin
                                                   (let ((_g1413_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (if (##values? _g1412_)
                                (##values-length _g1412_)
                                1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g1413_ 2)))
                 (error "Context expects 2 values" _g1413_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%$%target393414%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g1412_
                                                             0)))
                                                         (_%$%tl395417%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g1412_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%$%tl395417%_)
                                                         (letrec ((_%$%loop396420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%hd394424%_ _%$%clause400427%_)
                             (if (gx#stx-pair? _%$%hd394424%_)
                                 (let ((_%$%e397429%_
                                        (gx#syntax-e _%$%hd394424%_)))
                                   (let ((_%$%lp-hd398433%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e397429%_)))
                                         (_%$%lp-tl399436%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e397429%_))))
                                     (_%$%loop396420%_
                                      _%$%lp-tl399436%_
                                      (cons _%$%lp-hd398433%_
                                            _%$%clause400427%_))))
                                 (let ((_%$%clause401439%_
                                        (reverse _%$%clause400427%_)))
                                   ((lambda (_%$%g392442%_)
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
                            (cons _%$%g145223%_
                                  (foldr (lambda (_%$%g455458%_ _%$%g456461%_)
                                           (cons _%$%g455458%_ _%$%g456461%_))
                                         '()
                                         _%$%g392442%_))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$%clause401439%_))))))
                   (_%$%loop396420%_ _%$%target393414%_ '()))
                 (_%$%g390407%_ _%$%g391411%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g390407%_
                                                _%$%g391411%_)))))
                                   (_%$%g389464%_ _%body387%_))
                                 (_%$%g142166%_ _%$%g143170%_)))
                           _%$%clauses160218%_
                           _%$%hd150187%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop155199%_
                                                   _%$%target152193%_
                                                   '()))
                                                (_%$%g142166%_
                                                 _%$%g143170%_)))))
                                      (_%$%g142166%_ _%$%g143170%_))))
                              (_%$%g142166%_ _%$%g143170%_))))
                      (_%$%g142166%_ _%$%g143170%_)))))
          (_%$%g141468%_ _%stx139%_))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax|
      (lambda (_%stx474%_)
        (let* ((_%$%g479564%_
                (lambda (_%$%g480560%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g480560%_)))
               (_%$%g478719%_
                (lambda (_%$%g480568%_)
                  (if (gx#stx-pair? _%$%g480568%_)
                      (let ((_%$%e527571%_ (gx#syntax-e _%$%g480568%_)))
                        (let ((_%$%hd528575%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e527571%_)))
                              (_%$%tl529578%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e527571%_))))
                          (if (gx#stx-pair? _%$%tl529578%_)
                              (let ((_%$%e530581%_
                                     (gx#syntax-e _%$%tl529578%_)))
                                (let ((_%$%hd531585%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e530581%_)))
                                      (_%$%tl532588%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e530581%_))))
                                  (if (gx#stx-pair/null? _%$%hd531585%_)
                                      (let ((_g1414_ (gx#syntax-split-splice
                                                      _%$%hd531585%_
                                                      '0)))
                                        (begin
                                          (let ((_g1415_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g1414_)
                                                               (##values-length
                                                                _g1414_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g1415_ 2)))
                                                (error "Context expects 2 values"
                                                       _g1415_)))
                                          (let ((_%$%target533591%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g1414_ 0)))
                                                (_%$%tl535594%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g1414_ 1))))
                                            (if (gx#stx-null? _%$%tl535594%_)
                                                (letrec ((_%$%loop536597%_
                                                          (lambda (_%$%hd534601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%e540604%_
                           _%$%pat541605%_)
                    (if (gx#stx-pair? _%$%hd534601%_)
                        (let ((_%$%e537607%_ (gx#syntax-e _%$%hd534601%_)))
                          (let ((_%$%lp-hd538611%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e537607%_)))
                                (_%$%lp-tl539614%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e537607%_))))
                            (if (gx#stx-pair? _%$%lp-hd538611%_)
                                (let ((_%$%e544617%_
                                       (gx#syntax-e _%$%lp-hd538611%_)))
                                  (let ((_%$%hd545621%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e544617%_)))
                                        (_%$%tl546624%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e544617%_))))
                                    (if (gx#stx-pair? _%$%tl546624%_)
                                        (let ((_%$%e547627%_
                                               (gx#syntax-e _%$%tl546624%_)))
                                          (let ((_%$%hd548631%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e547627%_)))
                                                (_%$%tl549634%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e547627%_))))
                                            (if (gx#stx-null? _%$%tl549634%_)
                                                (_%$%loop536597%_
                                                 _%$%lp-tl539614%_
                                                 (cons _%$%hd548631%_
                                                       _%$%e540604%_)
                                                 (cons _%$%hd545621%_
                                                       _%$%pat541605%_))
                                                (_%$%g479564%_
                                                 _%$%g480568%_))))
                                        (_%$%g479564%_ _%$%g480568%_))))
                                (_%$%g479564%_ _%$%g480568%_))))
                        (let ((_%$%e542637%_ (reverse _%$%e540604%_))
                              (_%$%pat543639%_ (reverse _%$%pat541605%_)))
                          (if (gx#stx-pair/null? _%$%tl532588%_)
                              (let ((_g1416_ (gx#syntax-split-splice
                                              _%$%tl532588%_
                                              '0)))
                                (begin
                                  (let ((_g1417_ (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g1416_)
                                                       (##values-length
                                                        _g1416_)
                                                       1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g1417_ 2)))
                                        (error "Context expects 2 values"
                                               _g1417_)))
                                  (let ((_%$%target550641%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g1416_ 0)))
                                        (_%$%tl552644%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g1416_ 1))))
                                    (if (gx#stx-null? _%$%tl552644%_)
                                        (letrec ((_%$%loop553647%_
                                                  (lambda (_%$%hd551651%_
                                                           _%$%body557654%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd551651%_)
                                                        (let ((_%$%e554656%_
                                                               (gx#syntax-e
                                                                _%$%hd551651%_)))
                                                          (let ((_%$%lp-hd555660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%$%e554656%_)))
                        (_%$%lp-tl556663%_
                         (let () (declare (not safe)) (##cdr _%$%e554656%_))))
                    (_%$%loop553647%_
                     _%$%lp-tl556663%_
                     (cons _%$%lp-hd555660%_ _%$%body557654%_))))
                (let ((_%$%body558666%_ (reverse _%$%body557654%_)))
                  ((lambda (_%$%g524669%_ _%$%g525671%_ _%$%g526672%_)
                     (cons (gx#datum->syntax '#f 'syntax-case)
                           (cons (cons (gx#datum->syntax '#f 'list)
                                       (foldr (lambda (_%$%g694701%_
                                                       _%$%g695704%_)
                                                (cons _%$%g694701%_
                                                      _%$%g695704%_))
                                              '()
                                              _%$%g525671%_))
                                 (cons '()
                                       (cons (cons (foldr (lambda (_%$%g696707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g697710%_)
                    (cons _%$%g696707%_ _%$%g697710%_))
                  '()
                  _%$%g526672%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let-values)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_%$%g698713%_ _%$%g699716%_)
                                      (cons _%$%g698713%_ _%$%g699716%_))
                                    '()
                                    _%$%g524669%_)))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                   _%$%body558666%_
                   _%$%e542637%_
                   _%$%pat543639%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop553647%_
                                           _%$%target550641%_
                                           '()))
                                        (_%$%g479564%_ _%$%g480568%_)))))
                              (_%$%g479564%_ _%$%g480568%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop536597%_
                                                   _%$%target533591%_
                                                   '()
                                                   '()))
                                                (_%$%g479564%_
                                                 _%$%g480568%_)))))
                                      (_%$%g479564%_ _%$%g480568%_))))
                              (_%$%g479564%_ _%$%g480568%_))))
                      (_%$%g479564%_ _%$%g480568%_))))
               (_%$%g477839%_
                (lambda (_%$%g480723%_)
                  (if (gx#stx-pair? _%$%g480723%_)
                      (let ((_%$%e500726%_ (gx#syntax-e _%$%g480723%_)))
                        (let ((_%$%hd501730%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e500726%_)))
                              (_%$%tl502733%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e500726%_))))
                          (if (gx#stx-pair? _%$%tl502733%_)
                              (let ((_%$%e503736%_
                                     (gx#syntax-e _%$%tl502733%_)))
                                (let ((_%$%hd504740%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e503736%_)))
                                      (_%$%tl505743%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e503736%_))))
                                  (if (gx#stx-pair? _%$%hd504740%_)
                                      (let ((_%$%e506746%_
                                             (gx#syntax-e _%$%hd504740%_)))
                                        (let ((_%$%hd507750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e506746%_)))
                                              (_%$%tl508753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e506746%_))))
                                          (if (gx#stx-pair? _%$%hd507750%_)
                                              (let ((_%$%e509756%_
                                                     (gx#syntax-e
                                                      _%$%hd507750%_)))
                                                (let ((_%$%hd510760%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e509756%_)))
                                                      (_%$%tl511763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e509756%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl511763%_)
                                                      (let ((_%$%e512766%_
                                                             (gx#syntax-e
                                                              _%$%tl511763%_)))
                                                        (let ((_%$%hd513770%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e512766%_)))
                      (_%$%tl514773%_
                       (let () (declare (not safe)) (##cdr _%$%e512766%_))))
                  (if (gx#stx-null? _%$%tl514773%_)
                      (if (gx#stx-null? _%$%tl508753%_)
                          (if (gx#stx-pair/null? _%$%tl505743%_)
                              (let ((_g1418_ (gx#syntax-split-splice
                                              _%$%tl505743%_
                                              '0)))
                                (begin
                                  (let ((_g1419_ (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g1418_)
                                                       (##values-length
                                                        _g1418_)
                                                       1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g1419_ 2)))
                                        (error "Context expects 2 values"
                                               _g1419_)))
                                  (let ((_%$%target515776%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g1418_ 0)))
                                        (_%$%tl517779%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g1418_ 1))))
                                    (if (gx#stx-null? _%$%tl517779%_)
                                        (letrec ((_%$%loop518782%_
                                                  (lambda (_%$%hd516786%_
                                                           _%$%body522789%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd516786%_)
                                                        (let ((_%$%e519791%_
                                                               (gx#syntax-e
                                                                _%$%hd516786%_)))
                                                          (let ((_%$%lp-hd520795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%$%e519791%_)))
                        (_%$%lp-tl521798%_
                         (let () (declare (not safe)) (##cdr _%$%e519791%_))))
                    (_%$%loop518782%_
                     _%$%lp-tl521798%_
                     (cons _%$%lp-hd520795%_ _%$%body522789%_))))
                (let ((_%$%body523801%_ (reverse _%$%body522789%_)))
                  ((lambda (_%$%g497804%_ _%$%g498806%_ _%$%g499807%_)
                     (cons (gx#datum->syntax '#f 'syntax-case)
                           (cons _%$%g498806%_
                                 (cons '()
                                       (cons (cons _%$%g499807%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let-values)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_%$%g830833%_ _%$%g831836%_)
                                      (cons _%$%g830833%_ _%$%g831836%_))
                                    '()
                                    _%$%g497804%_)))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                   _%$%body523801%_
                   _%$%hd513770%_
                   _%$%hd510760%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop518782%_
                                           _%$%target515776%_
                                           '()))
                                        (_%$%g478719%_ _%$%g480723%_)))))
                              (_%$%g478719%_ _%$%g480723%_))
                          (_%$%g478719%_ _%$%g480723%_))
                      (_%$%g478719%_ _%$%g480723%_))))
              (_%$%g478719%_ _%$%g480723%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g478719%_ _%$%g480723%_))))
                                      (_%$%g478719%_ _%$%g480723%_))))
                              (_%$%g478719%_ _%$%g480723%_))))
                      (_%$%g478719%_ _%$%g480723%_))))
               (_%$%g476919%_
                (lambda (_%$%g480843%_)
                  (if (gx#stx-pair? _%$%g480843%_)
                      (let ((_%$%e482846%_ (gx#syntax-e _%$%g480843%_)))
                        (let ((_%$%hd483850%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e482846%_)))
                              (_%$%tl484853%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e482846%_))))
                          (if (gx#stx-pair? _%$%tl484853%_)
                              (let ((_%$%e485856%_
                                     (gx#syntax-e _%$%tl484853%_)))
                                (let ((_%$%hd486860%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e485856%_)))
                                      (_%$%tl487863%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e485856%_))))
                                  (if (gx#stx-null? _%$%hd486860%_)
                                      (if (gx#stx-pair/null? _%$%tl487863%_)
                                          (let ((_g1420_ (gx#syntax-split-splice
                                                          _%$%tl487863%_
                                                          '0)))
                                            (begin
                                              (let ((_g1421_ (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g1420_) (##values-length _g1420_) 1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g1421_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g1421_)))
                                              (let ((_%$%target488866%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g1420_
                                                        0)))
                                                    (_%$%tl490869%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g1420_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl490869%_)
                                                    (letrec ((_%$%loop491872%_
                                                              (lambda (_%$%hd489876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body495879%_)
                        (if (gx#stx-pair? _%$%hd489876%_)
                            (let ((_%$%e492881%_ (gx#syntax-e _%$%hd489876%_)))
                              (let ((_%$%lp-hd493885%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e492881%_)))
                                    (_%$%lp-tl494888%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e492881%_))))
                                (_%$%loop491872%_
                                 _%$%lp-tl494888%_
                                 (cons _%$%lp-hd493885%_ _%$%body495879%_))))
                            (let ((_%$%body496891%_
                                   (reverse _%$%body495879%_)))
                              ((lambda (_%$%g481894%_)
                                 (cons (gx#datum->syntax '#f 'let-values)
                                       (cons '()
                                             (foldr (lambda (_%$%g910913%_
                                                             _%$%g911916%_)
                                                      (cons _%$%g910913%_
                                                            _%$%g911916%_))
                                                    '()
                                                    _%$%g481894%_))))
                               _%$%body496891%_))))))
              (_%$%loop491872%_ _%$%target488866%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g477839%_
                                                     _%$%g480843%_)))))
                                          (_%$%g477839%_ _%$%g480843%_))
                                      (_%$%g477839%_ _%$%g480843%_))))
                              (_%$%g477839%_ _%$%g480843%_))))
                      (_%$%g477839%_ _%$%g480843%_)))))
          (_%$%g476919%_ _%stx474%_))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax*|
      (lambda (_%stx927%_)
        (let* ((_%$%g9321009%_
                (lambda (_%$%g9331005%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g9331005%_)))
               (_%$%g9311108%_
                (lambda (_%$%g9331013%_)
                  (if (gx#stx-pair? _%$%g9331013%_)
                      (let ((_%$%e9861016%_ (gx#syntax-e _%$%g9331013%_)))
                        (let ((_%$%hd9871020%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e9861016%_)))
                              (_%$%tl9881023%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e9861016%_))))
                          (if (gx#stx-pair? _%$%tl9881023%_)
                              (let ((_%$%e9891026%_
                                     (gx#syntax-e _%$%tl9881023%_)))
                                (let ((_%$%hd9901030%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e9891026%_)))
                                      (_%$%tl9911033%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e9891026%_))))
                                  (if (gx#stx-pair? _%$%hd9901030%_)
                                      (let ((_%$%e9921036%_
                                             (gx#syntax-e _%$%hd9901030%_)))
                                        (let ((_%$%hd9931040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e9921036%_)))
                                              (_%$%tl9941043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e9921036%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl9911033%_)
                                              (let ((_g1422_ (gx#syntax-split-splice
                                                              _%$%tl9911033%_
                                                              '0)))
                                                (begin
                                                  (let ((_g1423_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (if (##values? _g1422_)
                               (##values-length _g1422_)
                               1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g1423_ 2)))
                (error "Context expects 2 values" _g1423_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target9951046%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g1422_
                                                            0)))
                                                        (_%$%tl9971049%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g1422_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl9971049%_)
                                                        (letrec ((_%$%loop9981052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd9961056%_ _%$%body10021059%_)
                            (if (gx#stx-pair? _%$%hd9961056%_)
                                (let ((_%$%e9991061%_
                                       (gx#syntax-e _%$%hd9961056%_)))
                                  (let ((_%$%lp-hd10001065%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e9991061%_)))
                                        (_%$%lp-tl10011068%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e9991061%_))))
                                    (_%$%loop9981052%_
                                     _%$%lp-tl10011068%_
                                     (cons _%$%lp-hd10001065%_
                                           _%$%body10021059%_))))
                                (let ((_%$%body10031071%_
                                       (reverse _%$%body10021059%_)))
                                  ((lambda (_%$%g9821074%_
                                            _%$%g9831076%_
                                            _%$%g9841077%_
                                            _%$%g9851078%_)
                                     (cons (gx#datum->syntax '#f 'with-syntax)
                                           (cons (cons _%$%g9841077%_ '())
                                                 (cons (cons _%$%g9851078%_
                                                             (cons _%$%g9831076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%$%g10991102%_ _%$%g11001105%_)
                                    (cons _%$%g10991102%_ _%$%g11001105%_))
                                  '()
                                  _%$%g9821074%_)))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%$%body10031071%_
                                   _%$%tl9941043%_
                                   _%$%hd9931040%_
                                   _%$%hd9871020%_))))))
                  (_%$%loop9981052%_ _%$%target9951046%_ '()))
                (_%$%g9321009%_ _%$%g9331013%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g9321009%_
                                               _%$%g9331013%_))))
                                      (_%$%g9321009%_ _%$%g9331013%_))))
                              (_%$%g9321009%_ _%$%g9331013%_))))
                      (_%$%g9321009%_ _%$%g9331013%_))))
               (_%$%g9301244%_
                (lambda (_%$%g9331112%_)
                  (if (gx#stx-pair? _%$%g9331112%_)
                      (let ((_%$%e9551115%_ (gx#syntax-e _%$%g9331112%_)))
                        (let ((_%$%hd9561119%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e9551115%_)))
                              (_%$%tl9571122%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e9551115%_))))
                          (if (gx#stx-pair? _%$%tl9571122%_)
                              (let ((_%$%e9581125%_
                                     (gx#syntax-e _%$%tl9571122%_)))
                                (let ((_%$%hd9591129%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e9581125%_)))
                                      (_%$%tl9601132%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e9581125%_))))
                                  (if (gx#stx-pair? _%$%hd9591129%_)
                                      (let ((_%$%e9611135%_
                                             (gx#syntax-e _%$%hd9591129%_)))
                                        (let ((_%$%hd9621139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e9611135%_)))
                                              (_%$%tl9631142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e9611135%_))))
                                          (if (gx#stx-pair? _%$%hd9621139%_)
                                              (let ((_%$%e9641145%_
                                                     (gx#syntax-e
                                                      _%$%hd9621139%_)))
                                                (let ((_%$%hd9651149%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e9641145%_)))
                                                      (_%$%tl9661152%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e9641145%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%hd9651149%_)
                                                      (let ((_%$%e9671155%_
                                                             (gx#syntax-e
                                                              _%$%hd9651149%_)))
                                                        (let ((_%$%hd9681159%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e9671155%_)))
                      (_%$%tl9691162%_
                       (let () (declare (not safe)) (##cdr _%$%e9671155%_))))
                  (if (gx#identifier? _%$%hd9681159%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/expander~SyntaxSugar[1]#_g1424_|
                           _%$%hd9681159%_)
                          (if (gx#stx-pair? _%$%tl9661152%_)
                              (let ((_%$%e9701165%_
                                     (gx#syntax-e _%$%tl9661152%_)))
                                (let ((_%$%hd9711169%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e9701165%_)))
                                      (_%$%tl9721172%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e9701165%_))))
                                  (if (gx#stx-null? _%$%tl9721172%_)
                                      (if (gx#stx-pair/null? _%$%tl9601132%_)
                                          (let ((_g1425_ (gx#syntax-split-splice
                                                          _%$%tl9601132%_
                                                          '0)))
                                            (begin
                                              (let ((_g1426_ (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g1425_) (##values-length _g1425_) 1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g1426_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g1426_)))
                                              (let ((_%$%target9731175%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g1425_
                                                        0)))
                                                    (_%$%tl9751178%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g1425_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl9751178%_)
                                                    (letrec ((_%$%loop9761181%_
                                                              (lambda (_%$%hd9741185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body9801188%_)
                        (if (gx#stx-pair? _%$%hd9741185%_)
                            (let ((_%$%e9771190%_
                                   (gx#syntax-e _%$%hd9741185%_)))
                              (let ((_%$%lp-hd9781194%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e9771190%_)))
                                    (_%$%lp-tl9791197%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e9771190%_))))
                                (_%$%loop9761181%_
                                 _%$%lp-tl9791197%_
                                 (cons _%$%lp-hd9781194%_ _%$%body9801188%_))))
                            (let ((_%$%body9811200%_
                                   (reverse _%$%body9801188%_)))
                              ((lambda (_%$%g9501203%_
                                        _%$%g9511205%_
                                        _%$%g9521206%_
                                        _%$%g9531207%_
                                        _%$%g9541208%_)
                                 (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (cons (cons _%$%g9531207%_
                                                         (cons _%$%g9521206%_
                                                               '()))
                                                   '())
                                             (cons (cons _%$%g9541208%_
                                                         (cons _%$%g9511205%_
                                                               (foldr (lambda (_%$%g12351238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%$%g12361241%_)
                                (cons _%$%g12351238%_ _%$%g12361241%_))
                              '()
                              _%$%g9501203%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                               _%$%body9811200%_
                               _%$%tl9631142%_
                               _%$%hd9711169%_
                               _%$%tl9691162%_
                               _%$%hd9561119%_))))))
              (_%$%loop9761181%_ _%$%target9731175%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g9311108%_
                                                     _%$%g9331112%_)))))
                                          (_%$%g9311108%_ _%$%g9331112%_))
                                      (_%$%g9311108%_ _%$%g9331112%_))))
                              (_%$%g9311108%_ _%$%g9331112%_))
                          (_%$%g9311108%_ _%$%g9331112%_))
                      (_%$%g9311108%_ _%$%g9331112%_))))
              (_%$%g9311108%_ _%$%g9331112%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g9311108%_
                                               _%$%g9331112%_))))
                                      (_%$%g9311108%_ _%$%g9331112%_))))
                              (_%$%g9311108%_ _%$%g9331112%_))))
                      (_%$%g9311108%_ _%$%g9331112%_))))
               (_%$%g9291324%_
                (lambda (_%$%g9331248%_)
                  (if (gx#stx-pair? _%$%g9331248%_)
                      (let ((_%$%e9351251%_ (gx#syntax-e _%$%g9331248%_)))
                        (let ((_%$%hd9361255%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e9351251%_)))
                              (_%$%tl9371258%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e9351251%_))))
                          (if (gx#stx-pair? _%$%tl9371258%_)
                              (let ((_%$%e9381261%_
                                     (gx#syntax-e _%$%tl9371258%_)))
                                (let ((_%$%hd9391265%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e9381261%_)))
                                      (_%$%tl9401268%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e9381261%_))))
                                  (if (gx#stx-null? _%$%hd9391265%_)
                                      (if (gx#stx-pair/null? _%$%tl9401268%_)
                                          (let ((_g1427_ (gx#syntax-split-splice
                                                          _%$%tl9401268%_
                                                          '0)))
                                            (begin
                                              (let ((_g1428_ (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g1427_) (##values-length _g1427_) 1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g1428_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g1428_)))
                                              (let ((_%$%target9411271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g1427_
                                                        0)))
                                                    (_%$%tl9431274%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g1427_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl9431274%_)
                                                    (letrec ((_%$%loop9441277%_
                                                              (lambda (_%$%hd9421281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body9481284%_)
                        (if (gx#stx-pair? _%$%hd9421281%_)
                            (let ((_%$%e9451286%_
                                   (gx#syntax-e _%$%hd9421281%_)))
                              (let ((_%$%lp-hd9461290%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e9451286%_)))
                                    (_%$%lp-tl9471293%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e9451286%_))))
                                (_%$%loop9441277%_
                                 _%$%lp-tl9471293%_
                                 (cons _%$%lp-hd9461290%_ _%$%body9481284%_))))
                            (let ((_%$%body9491296%_
                                   (reverse _%$%body9481284%_)))
                              ((lambda (_%$%g9341299%_)
                                 (cons (gx#datum->syntax '#f 'let-values)
                                       (cons '()
                                             (foldr (lambda (_%$%g13151318%_
                                                             _%$%g13161321%_)
                                                      (cons _%$%g13151318%_
                                                            _%$%g13161321%_))
                                                    '()
                                                    _%$%g9341299%_))))
                               _%$%body9491296%_))))))
              (_%$%loop9441277%_ _%$%target9411271%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g9301244%_
                                                     _%$%g9331248%_)))))
                                          (_%$%g9301244%_ _%$%g9331248%_))
                                      (_%$%g9301244%_ _%$%g9331248%_))))
                              (_%$%g9301244%_ _%$%g9331248%_))))
                      (_%$%g9301244%_ _%$%g9331248%_)))))
          (_%$%g9291324%_ _%stx927%_))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax/loc|
      (lambda (_%stx1331%_)
        (let* ((_%$%g13341352%_
                (lambda (_%$%g13351348%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g13351348%_)))
               (_%$%g13331407%_
                (lambda (_%$%g13351356%_)
                  (if (gx#stx-pair? _%$%g13351356%_)
                      (let ((_%$%e13381359%_ (gx#syntax-e _%$%g13351356%_)))
                        (let ((_%$%hd13391363%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e13381359%_)))
                              (_%$%tl13401366%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e13381359%_))))
                          (if (gx#stx-pair? _%$%tl13401366%_)
                              (let ((_%$%e13411369%_
                                     (gx#syntax-e _%$%tl13401366%_)))
                                (let ((_%$%hd13421373%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e13411369%_)))
                                      (_%$%tl13431376%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e13411369%_))))
                                  (if (gx#stx-pair? _%$%tl13431376%_)
                                      (let ((_%$%e13441379%_
                                             (gx#syntax-e _%$%tl13431376%_)))
                                        (let ((_%$%hd13451383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e13441379%_)))
                                              (_%$%tl13461386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e13441379%_))))
                                          (if (gx#stx-null? _%$%tl13461386%_)
                                              ((lambda (_%$%g13361389%_
                                                        _%$%g13371391%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-wrap-source)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax)
                           (cons _%$%g13361389%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'stx-source)
                                 (cons _%$%g13371391%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd13451383%_
                                               _%$%hd13421373%_)
                                              (_%$%g13341352%_
                                               _%$%g13351356%_))))
                                      (_%$%g13341352%_ _%$%g13351356%_))))
                              (_%$%g13341352%_ _%$%g13351356%_))))
                      (_%$%g13341352%_ _%$%g13351356%_)))))
          (_%$%g13331407%_ _%stx1331%_))))))
