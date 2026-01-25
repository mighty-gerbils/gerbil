(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/expander~SyntaxSugar[1]#_g1900_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax-rules|
      (lambda (_%stx361%_)
        (let* ((_%g364388%_
                (lambda (_%g365384%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g365384%_)))
               (_%g363690%_
                (lambda (_%g365392%_)
                  (if (gx#stx-pair? _%g365392%_)
                      (let ((_%e368395%_ (gx#syntax-e _%g365392%_)))
                        (let ((_%hd369399%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e368395%_)))
                              (_%tl370402%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e368395%_))))
                          (if (gx#stx-pair? _%tl370402%_)
                              (let ((_%e371405%_ (gx#syntax-e _%tl370402%_)))
                                (let ((_%hd372409%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e371405%_)))
                                      (_%tl373412%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e371405%_))))
                                  (if (gx#stx-pair/null? _%tl373412%_)
                                      (let ((_g1896_ (gx#syntax-split-splice
                                                      _%tl373412%_
                                                      '0)))
                                        (begin
                                          (let ((_g1897_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g1896_)
                                                               (##values-length
                                                                _g1896_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g1897_ 2)))
                                                (error "Context expects 2 values"
                                                       _g1897_)))
                                          (let ((_%target374415%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g1896_ 0)))
                                                (_%tl376418%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g1896_ 1))))
                                            (if (gx#stx-null? _%tl376418%_)
                                                (letrec ((_%loop377421%_
                                                          (lambda (_%hd375425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses381428%_)
                    (if (gx#stx-pair? _%hd375425%_)
                        (let ((_%e378430%_ (gx#syntax-e _%hd375425%_)))
                          (let ((_%lp-hd379434%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e378430%_)))
                                (_%lp-tl380437%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e378430%_))))
                            (_%loop377421%_
                             _%lp-tl380437%_
                             (cons _%lp-hd379434%_ _%clauses381428%_))))
                        (let ((_%clauses382440%_ (reverse _%clauses381428%_)))
                          ((lambda (_%g366443%_ _%g367445%_)
                             (if (gx#identifier-list? _%g367445%_)
                                 (let* ((_%body609%_
                                         (gx#stx-map
                                          (lambda (_%clause466%_)
                                            (let* ((_%__stx16331634%_
                                                    _%clause466%_)
                                                   (_%g470497%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx16331634%_))))
                                              (let ((_%__kont16361637%_
                                                     (lambda (_%g472582%_
                                                              _%g473584%_)
                                                       (cons _%g473584%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons _%g472582%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont16381639%_
                                                     (lambda (_%g480534%_
                                                              _%g481536%_
                                                              _%g482537%_)
                                                       (cons _%g482537%_
                                                             (cons _%g481536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'syntax)
                                       (cons _%g480534%_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx16331634%_)
                                                    (let ((_%e474562%_
                                                           (gx#syntax-e
                                                            _%__stx16331634%_)))
                                                      (let ((_%tl476569%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e474562%_)))
                    (_%hd475566%_
                     (let () (declare (not safe)) (##car _%e474562%_))))
                (if (gx#stx-pair? _%tl476569%_)
                    (let ((_%e477572%_ (gx#syntax-e _%tl476569%_)))
                      (let ((_%tl479579%_
                             (let () (declare (not safe)) (##cdr _%e477572%_)))
                            (_%hd478576%_
                             (let ()
                               (declare (not safe))
                               (##car _%e477572%_))))
                        (if (gx#stx-null? _%tl479579%_)
                            (_%__kont16361637%_ _%hd478576%_ _%hd475566%_)
                            (if (gx#stx-pair? _%tl479579%_)
                                (let ((_%e489524%_ (gx#syntax-e _%tl479579%_)))
                                  (let ((_%tl491531%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e489524%_)))
                                        (_%hd490528%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e489524%_))))
                                    (if (gx#stx-null? _%tl491531%_)
                                        (_%__kont16381639%_
                                         _%hd490528%_
                                         _%hd478576%_
                                         _%hd475566%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g470497%_)))))
                                (let () (declare (not safe)) (_%g470497%_))))))
                    (let () (declare (not safe)) (_%g470497%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g470497%_))))))
                                          (foldr (lambda (_%g600603%_
                                                          _%g601606%_)
                                                   (cons _%g600603%_
                                                         _%g601606%_))
                                                 '()
                                                 _%g366443%_)))
                                        (_%g612629%_
                                         (lambda (_%g613625%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g613625%_)))
                                        (_%g611686%_
                                         (lambda (_%g613633%_)
                                           (if (gx#stx-pair/null? _%g613633%_)
                                               (let ((_g1898_ (gx#syntax-split-splice
                                                               _%g613633%_
                                                               '0)))
                                                 (begin
                                                   (let ((_g1899_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (if (##values? _g1898_)
                                (##values-length _g1898_)
                                1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g1899_ 2)))
                 (error "Context expects 2 values" _g1899_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target615636%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g1898_
                                                             0)))
                                                         (_%tl617639%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g1898_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl617639%_)
                                                         (letrec ((_%loop618642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd616646%_ _%clause622649%_)
                             (if (gx#stx-pair? _%hd616646%_)
                                 (let ((_%e619651%_
                                        (gx#syntax-e _%hd616646%_)))
                                   (let ((_%lp-hd620655%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e619651%_)))
                                         (_%lp-tl621658%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e619651%_))))
                                     (_%loop618642%_
                                      _%lp-tl621658%_
                                      (cons _%lp-hd620655%_
                                            _%clause622649%_))))
                                 (let ((_%clause623661%_
                                        (reverse _%clause622649%_)))
                                   ((lambda (_%g614664%_)
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
                            (cons _%g367445%_
                                  (foldr (lambda (_%g677680%_ _%g678683%_)
                                           (cons _%g677680%_ _%g678683%_))
                                         '()
                                         _%g614664%_))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause623661%_))))))
                   (_%loop618642%_ _%target615636%_ '()))
                 (_%g612629%_ _%g613633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g612629%_ _%g613633%_)))))
                                   (_%g611686%_ _%body609%_))
                                 (_%g364388%_ _%g365392%_)))
                           _%clauses382440%_
                           _%hd372409%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop377421%_
                                                   _%target374415%_
                                                   '()))
                                                (_%g364388%_ _%g365392%_)))))
                                      (_%g364388%_ _%g365392%_))))
                              (_%g364388%_ _%g365392%_))))
                      (_%g364388%_ _%g365392%_)))))
          (_%g363690%_ _%stx361%_))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax|
      (lambda (_%stx696%_)
        (let* ((_%__stx16771678%_ _%stx696%_)
               (_%g701786%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx16771678%_))))
          (let ((_%__kont16801681%_
                 (lambda (_%g7031116%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g11321135%_ _%g11331138%_)
                                        (cons _%g11321135%_ _%g11331138%_))
                                      '()
                                      _%g7031116%_)))))
                (_%__kont16841685%_
                 (lambda (_%g7191026%_ _%g7201028%_ _%g7211029%_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons _%g7201028%_
                               (cons '()
                                     (cons (cons _%g7211029%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g10521055%_ _%g10531058%_)
                                    (cons _%g10521055%_ _%g10531058%_))
                                  '()
                                  _%g7191026%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont16881689%_
                 (lambda (_%g746891%_ _%g747893%_ _%g748894%_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons (cons (gx#datum->syntax '#f 'list)
                                     (foldr (lambda (_%g916923%_ _%g917926%_)
                                              (cons _%g916923%_ _%g917926%_))
                                            '()
                                            _%g747893%_))
                               (cons '()
                                     (cons (cons (foldr (lambda (_%g918929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g919932%_)
                  (cons _%g918929%_ _%g919932%_))
                '()
                _%g748894%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g920935%_ _%g921938%_)
                                    (cons _%g920935%_ _%g921938%_))
                                  '()
                                  _%g746891%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let* ((_%__match17781779%_
                    (lambda (_%e749793%_
                             _%hd750797%_
                             _%tl751800%_
                             _%e752803%_
                             _%hd753807%_
                             _%tl754810%_
                             _%__splice16901691%_
                             _%target755813%_
                             _%tl757816%_)
                      (letrec ((_%loop758819%_
                                (lambda (_%hd756823%_
                                         _%e762826%_
                                         _%pat763827%_)
                                  (if (gx#stx-pair? _%hd756823%_)
                                      (let ((_%e759829%_
                                             (gx#syntax-e _%hd756823%_)))
                                        (let ((_%lp-tl761836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e759829%_)))
                                              (_%lp-hd760833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e759829%_))))
                                          (if (gx#stx-pair? _%lp-hd760833%_)
                                              (let ((_%e766839%_
                                                     (gx#syntax-e
                                                      _%lp-hd760833%_)))
                                                (let ((_%tl768846%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e766839%_)))
                                                      (_%hd767843%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e766839%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl768846%_)
                                                      (let ((_%e769849%_
                                                             (gx#syntax-e
                                                              _%tl768846%_)))
                                                        (let ((_%tl771856%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e769849%_)))
                      (_%hd770853%_
                       (let () (declare (not safe)) (##car _%e769849%_))))
                  (if (gx#stx-null? _%tl771856%_)
                      (_%loop758819%_
                       _%lp-tl761836%_
                       (cons _%hd770853%_ _%e762826%_)
                       (cons _%hd767843%_ _%pat763827%_))
                      (let () (declare (not safe)) (_%g701786%_)))))
              (let () (declare (not safe)) (_%g701786%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g701786%_)))))
                                      (let ((_%pat765861%_
                                             (reverse _%pat763827%_))
                                            (_%e764859%_
                                             (reverse _%e762826%_)))
                                        (if (gx#stx-pair/null? _%tl754810%_)
                                            (let ((_%__splice16921693%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl754810%_
                                                    '0)))
                                              (let ((_%tl774866%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice16921693%_
                                                        '1)))
                                                    (_%target772863%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice16921693%_
                                                        '0))))
                                                (if (gx#stx-null? _%tl774866%_)
                                                    (letrec ((_%loop775869%_
                                                              (lambda (_%hd773873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body779876%_)
                        (if (gx#stx-pair? _%hd773873%_)
                            (let ((_%e776878%_ (gx#syntax-e _%hd773873%_)))
                              (let ((_%lp-tl778885%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e776878%_)))
                                    (_%lp-hd777882%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e776878%_))))
                                (_%loop775869%_
                                 _%lp-tl778885%_
                                 (cons _%lp-hd777882%_ _%body779876%_))))
                            (let ((_%body780888%_ (reverse _%body779876%_)))
                              (_%__kont16881689%_
                               _%body780888%_
                               _%e764859%_
                               _%pat765861%_))))))
              (_%loop775869%_ _%target772863%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g701786%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g701786%_))))))))
                        (_%loop758819%_ _%target755813%_ '() '()))))
                   (_%__match17581759%_
                    (lambda (_%e722948%_
                             _%hd723952%_
                             _%tl724955%_
                             _%e725958%_
                             _%hd726962%_
                             _%tl727965%_
                             _%e728968%_
                             _%hd729972%_
                             _%tl730975%_
                             _%e731978%_
                             _%hd732982%_
                             _%tl733985%_
                             _%e734988%_
                             _%hd735992%_
                             _%tl736995%_
                             _%__splice16861687%_
                             _%target737998%_
                             _%tl7391001%_)
                      (letrec ((_%loop7401004%_
                                (lambda (_%hd7381008%_ _%body7441011%_)
                                  (if (gx#stx-pair? _%hd7381008%_)
                                      (let ((_%e7411013%_
                                             (gx#syntax-e _%hd7381008%_)))
                                        (let ((_%lp-tl7431020%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7411013%_)))
                                              (_%lp-hd7421017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7411013%_))))
                                          (_%loop7401004%_
                                           _%lp-tl7431020%_
                                           (cons _%lp-hd7421017%_
                                                 _%body7441011%_))))
                                      (let ((_%body7451023%_
                                             (reverse _%body7441011%_)))
                                        (_%__kont16841685%_
                                         _%body7451023%_
                                         _%hd735992%_
                                         _%hd732982%_))))))
                        (_%loop7401004%_ _%target737998%_ '()))))
                   (_%__match17161717%_
                    (lambda (_%e7041068%_
                             _%hd7051072%_
                             _%tl7061075%_
                             _%e7071078%_
                             _%hd7081082%_
                             _%tl7091085%_
                             _%__splice16821683%_
                             _%target7101088%_
                             _%tl7121091%_)
                      (letrec ((_%loop7131094%_
                                (lambda (_%hd7111098%_ _%body7171101%_)
                                  (if (gx#stx-pair? _%hd7111098%_)
                                      (let ((_%e7141103%_
                                             (gx#syntax-e _%hd7111098%_)))
                                        (let ((_%lp-tl7161110%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7141103%_)))
                                              (_%lp-hd7151107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7141103%_))))
                                          (_%loop7131094%_
                                           _%lp-tl7161110%_
                                           (cons _%lp-hd7151107%_
                                                 _%body7171101%_))))
                                      (let ((_%body7181113%_
                                             (reverse _%body7171101%_)))
                                        (_%__kont16801681%_
                                         _%body7181113%_))))))
                        (_%loop7131094%_ _%target7101088%_ '())))))
              (if (gx#stx-pair? _%__stx16771678%_)
                  (let ((_%e7041068%_ (gx#syntax-e _%__stx16771678%_)))
                    (let ((_%tl7061075%_
                           (let () (declare (not safe)) (##cdr _%e7041068%_)))
                          (_%hd7051072%_
                           (let () (declare (not safe)) (##car _%e7041068%_))))
                      (if (gx#stx-pair? _%tl7061075%_)
                          (let ((_%e7071078%_ (gx#syntax-e _%tl7061075%_)))
                            (let ((_%tl7091085%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7071078%_)))
                                  (_%hd7081082%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7071078%_))))
                              (if (gx#stx-null? _%hd7081082%_)
                                  (if (gx#stx-pair/null? _%tl7091085%_)
                                      (let ((_%__splice16821683%_
                                             (gx#syntax-split-splice->vector
                                              _%tl7091085%_
                                              '0)))
                                        (let ((_%tl7121091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice16821683%_
                                                  '1)))
                                              (_%target7101088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice16821683%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl7121091%_)
                                              (_%__match17161717%_
                                               _%e7041068%_
                                               _%hd7051072%_
                                               _%tl7061075%_
                                               _%e7071078%_
                                               _%hd7081082%_
                                               _%tl7091085%_
                                               _%__splice16821683%_
                                               _%target7101088%_
                                               _%tl7121091%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd7081082%_)
                                                  (let ((_%__splice16901691%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd7081082%_
                                                          '0)))
                                                    (let ((_%tl757816%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice16901691%_
                                                              '1)))
                                                          (_%target755813%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice16901691%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl757816%_)
                                                          (_%__match17781779%_
                                                           _%e7041068%_
                                                           _%hd7051072%_
                                                           _%tl7061075%_
                                                           _%e7071078%_
                                                           _%hd7081082%_
                                                           _%tl7091085%_
                                                           _%__splice16901691%_
                                                           _%target755813%_
                                                           _%tl757816%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g701786%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g701786%_))))))
                                      (if (gx#stx-pair/null? _%hd7081082%_)
                                          (let ((_%__splice16901691%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd7081082%_
                                                  '0)))
                                            (let ((_%tl757816%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice16901691%_
                                                      '1)))
                                                  (_%target755813%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice16901691%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl757816%_)
                                                  (_%__match17781779%_
                                                   _%e7041068%_
                                                   _%hd7051072%_
                                                   _%tl7061075%_
                                                   _%e7071078%_
                                                   _%hd7081082%_
                                                   _%tl7091085%_
                                                   _%__splice16901691%_
                                                   _%target755813%_
                                                   _%tl757816%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g701786%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g701786%_))))
                                  (if (gx#stx-pair? _%hd7081082%_)
                                      (let ((_%e728968%_
                                             (gx#syntax-e _%hd7081082%_)))
                                        (let ((_%tl730975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e728968%_)))
                                              (_%hd729972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e728968%_))))
                                          (if (gx#stx-pair? _%hd729972%_)
                                              (let ((_%e731978%_
                                                     (gx#syntax-e
                                                      _%hd729972%_)))
                                                (let ((_%tl733985%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e731978%_)))
                                                      (_%hd732982%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e731978%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl733985%_)
                                                      (let ((_%e734988%_
                                                             (gx#syntax-e
                                                              _%tl733985%_)))
                                                        (let ((_%tl736995%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e734988%_)))
                      (_%hd735992%_
                       (let () (declare (not safe)) (##car _%e734988%_))))
                  (if (gx#stx-null? _%tl736995%_)
                      (if (gx#stx-null? _%tl730975%_)
                          (if (gx#stx-pair/null? _%tl7091085%_)
                              (let ((_%__splice16861687%_
                                     (gx#syntax-split-splice->vector
                                      _%tl7091085%_
                                      '0)))
                                (let ((_%tl7391001%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice16861687%_
                                          '1)))
                                      (_%target737998%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice16861687%_
                                          '0))))
                                  (if (gx#stx-null? _%tl7391001%_)
                                      (_%__match17581759%_
                                       _%e7041068%_
                                       _%hd7051072%_
                                       _%tl7061075%_
                                       _%e7071078%_
                                       _%hd7081082%_
                                       _%tl7091085%_
                                       _%e728968%_
                                       _%hd729972%_
                                       _%tl730975%_
                                       _%e731978%_
                                       _%hd732982%_
                                       _%tl733985%_
                                       _%e734988%_
                                       _%hd735992%_
                                       _%tl736995%_
                                       _%__splice16861687%_
                                       _%target737998%_
                                       _%tl7391001%_)
                                      (if (gx#stx-pair/null? _%hd7081082%_)
                                          (let ((_%__splice16901691%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd7081082%_
                                                  '0)))
                                            (let ((_%tl757816%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice16901691%_
                                                      '1)))
                                                  (_%target755813%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice16901691%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl757816%_)
                                                  (_%__match17781779%_
                                                   _%e7041068%_
                                                   _%hd7051072%_
                                                   _%tl7061075%_
                                                   _%e7071078%_
                                                   _%hd7081082%_
                                                   _%tl7091085%_
                                                   _%__splice16901691%_
                                                   _%target755813%_
                                                   _%tl757816%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g701786%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g701786%_))))))
                              (if (gx#stx-pair/null? _%hd7081082%_)
                                  (let ((_%__splice16901691%_
                                         (gx#syntax-split-splice->vector
                                          _%hd7081082%_
                                          '0)))
                                    (let ((_%tl757816%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice16901691%_
                                              '1)))
                                          (_%target755813%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice16901691%_
                                              '0))))
                                      (if (gx#stx-null? _%tl757816%_)
                                          (_%__match17781779%_
                                           _%e7041068%_
                                           _%hd7051072%_
                                           _%tl7061075%_
                                           _%e7071078%_
                                           _%hd7081082%_
                                           _%tl7091085%_
                                           _%__splice16901691%_
                                           _%target755813%_
                                           _%tl757816%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g701786%_)))))
                                  (let () (declare (not safe)) (_%g701786%_))))
                          (if (gx#stx-pair/null? _%hd7081082%_)
                              (let ((_%__splice16901691%_
                                     (gx#syntax-split-splice->vector
                                      _%hd7081082%_
                                      '0)))
                                (let ((_%tl757816%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice16901691%_
                                          '1)))
                                      (_%target755813%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice16901691%_
                                          '0))))
                                  (if (gx#stx-null? _%tl757816%_)
                                      (_%__match17781779%_
                                       _%e7041068%_
                                       _%hd7051072%_
                                       _%tl7061075%_
                                       _%e7071078%_
                                       _%hd7081082%_
                                       _%tl7091085%_
                                       _%__splice16901691%_
                                       _%target755813%_
                                       _%tl757816%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g701786%_)))))
                              (let () (declare (not safe)) (_%g701786%_))))
                      (if (gx#stx-pair/null? _%hd7081082%_)
                          (let ((_%__splice16901691%_
                                 (gx#syntax-split-splice->vector
                                  _%hd7081082%_
                                  '0)))
                            (let ((_%tl757816%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice16901691%_ '1)))
                                  (_%target755813%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice16901691%_ '0))))
                              (if (gx#stx-null? _%tl757816%_)
                                  (_%__match17781779%_
                                   _%e7041068%_
                                   _%hd7051072%_
                                   _%tl7061075%_
                                   _%e7071078%_
                                   _%hd7081082%_
                                   _%tl7091085%_
                                   _%__splice16901691%_
                                   _%target755813%_
                                   _%tl757816%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g701786%_)))))
                          (let () (declare (not safe)) (_%g701786%_))))))
              (if (gx#stx-pair/null? _%hd7081082%_)
                  (let ((_%__splice16901691%_
                         (gx#syntax-split-splice->vector _%hd7081082%_ '0)))
                    (let ((_%tl757816%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice16901691%_ '1)))
                          (_%target755813%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice16901691%_ '0))))
                      (if (gx#stx-null? _%tl757816%_)
                          (_%__match17781779%_
                           _%e7041068%_
                           _%hd7051072%_
                           _%tl7061075%_
                           _%e7071078%_
                           _%hd7081082%_
                           _%tl7091085%_
                           _%__splice16901691%_
                           _%target755813%_
                           _%tl757816%_)
                          (let () (declare (not safe)) (_%g701786%_)))))
                  (let () (declare (not safe)) (_%g701786%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd7081082%_)
                                                  (let ((_%__splice16901691%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd7081082%_
                                                          '0)))
                                                    (let ((_%tl757816%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice16901691%_
                                                              '1)))
                                                          (_%target755813%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice16901691%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl757816%_)
                                                          (_%__match17781779%_
                                                           _%e7041068%_
                                                           _%hd7051072%_
                                                           _%tl7061075%_
                                                           _%e7071078%_
                                                           _%hd7081082%_
                                                           _%tl7091085%_
                                                           _%__splice16901691%_
                                                           _%target755813%_
                                                           _%tl757816%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g701786%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g701786%_))))))
                                      (if (gx#stx-pair/null? _%hd7081082%_)
                                          (let ((_%__splice16901691%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd7081082%_
                                                  '0)))
                                            (let ((_%tl757816%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice16901691%_
                                                      '1)))
                                                  (_%target755813%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice16901691%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl757816%_)
                                                  (_%__match17781779%_
                                                   _%e7041068%_
                                                   _%hd7051072%_
                                                   _%tl7061075%_
                                                   _%e7071078%_
                                                   _%hd7081082%_
                                                   _%tl7091085%_
                                                   _%__splice16901691%_
                                                   _%target755813%_
                                                   _%tl757816%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g701786%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g701786%_)))))))
                          (let () (declare (not safe)) (_%g701786%_)))))
                  (let () (declare (not safe)) (_%g701786%_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax*|
      (lambda (_%stx1149%_)
        (let* ((_%__stx17811782%_ _%stx1149%_)
               (_%g11541231%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx17811782%_))))
          (let ((_%__kont17841785%_
                 (lambda (_%g11561521%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g15371540%_ _%g15381543%_)
                                        (cons _%g15371540%_ _%g15381543%_))
                                      '()
                                      _%g11561521%_)))))
                (_%__kont17881789%_
                 (lambda (_%g11721425%_
                          _%g11731427%_
                          _%g11741428%_
                          _%g11751429%_
                          _%g11761430%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons (cons _%g11751429%_
                                           (cons _%g11741428%_ '()))
                                     '())
                               (cons (cons _%g11761430%_
                                           (cons _%g11731427%_
                                                 (foldr (lambda (_%g14571460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g14581463%_)
                  (cons _%g14571460%_ _%g14581463%_))
                '()
                _%g11721425%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont17921793%_
                 (lambda (_%g12041296%_
                          _%g12051298%_
                          _%g12061299%_
                          _%g12071300%_)
                   (cons (gx#datum->syntax '#f 'with-syntax)
                         (cons (cons _%g12061299%_ '())
                               (cons (cons _%g12071300%_
                                           (cons _%g12051298%_
                                                 (foldr (lambda (_%g13211324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g13221327%_)
                  (cons _%g13211324%_ _%g13221327%_))
                '()
                _%g12041296%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match18941895%_
                    (lambda (_%e12081238%_
                             _%hd12091242%_
                             _%tl12101245%_
                             _%e12111248%_
                             _%hd12121252%_
                             _%tl12131255%_
                             _%e12141258%_
                             _%hd12151262%_
                             _%tl12161265%_
                             _%__splice17941795%_
                             _%target12171268%_
                             _%tl12191271%_)
                      (letrec ((_%loop12201274%_
                                (lambda (_%hd12181278%_ _%body12241281%_)
                                  (if (gx#stx-pair? _%hd12181278%_)
                                      (let ((_%e12211283%_
                                             (gx#syntax-e _%hd12181278%_)))
                                        (let ((_%lp-tl12231290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12211283%_)))
                                              (_%lp-hd12221287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12211283%_))))
                                          (_%loop12201274%_
                                           _%lp-tl12231290%_
                                           (cons _%lp-hd12221287%_
                                                 _%body12241281%_))))
                                      (let ((_%body12251293%_
                                             (reverse _%body12241281%_)))
                                        (_%__kont17921793%_
                                         _%body12251293%_
                                         _%tl12161265%_
                                         _%hd12151262%_
                                         _%hd12091242%_))))))
                        (_%loop12201274%_ _%target12171268%_ '()))))
                   (_%__match18681869%_
                    (lambda (_%e11771337%_
                             _%hd11781341%_
                             _%tl11791344%_
                             _%e11801347%_
                             _%hd11811351%_
                             _%tl11821354%_
                             _%e11831357%_
                             _%hd11841361%_
                             _%tl11851364%_
                             _%e11861367%_
                             _%hd11871371%_
                             _%tl11881374%_
                             _%e11891377%_
                             _%hd11901381%_
                             _%tl11911384%_
                             _%e11921387%_
                             _%hd11931391%_
                             _%tl11941394%_
                             _%__splice17901791%_
                             _%target11951397%_
                             _%tl11971400%_)
                      (letrec ((_%loop11981403%_
                                (lambda (_%hd11961407%_ _%body12021410%_)
                                  (if (gx#stx-pair? _%hd11961407%_)
                                      (let ((_%e11991412%_
                                             (gx#syntax-e _%hd11961407%_)))
                                        (let ((_%lp-tl12011419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e11991412%_)))
                                              (_%lp-hd12001416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e11991412%_))))
                                          (_%loop11981403%_
                                           _%lp-tl12011419%_
                                           (cons _%lp-hd12001416%_
                                                 _%body12021410%_))))
                                      (let ((_%body12031422%_
                                             (reverse _%body12021410%_)))
                                        (_%__kont17881789%_
                                         _%body12031422%_
                                         _%tl11851364%_
                                         _%hd11931391%_
                                         _%tl11911384%_
                                         _%hd11781341%_))))))
                        (_%loop11981403%_ _%target11951397%_ '()))))
                   (_%__match18181819%_
                    (lambda (_%e11571473%_
                             _%hd11581477%_
                             _%tl11591480%_
                             _%e11601483%_
                             _%hd11611487%_
                             _%tl11621490%_
                             _%__splice17861787%_
                             _%target11631493%_
                             _%tl11651496%_)
                      (letrec ((_%loop11661499%_
                                (lambda (_%hd11641503%_ _%body11701506%_)
                                  (if (gx#stx-pair? _%hd11641503%_)
                                      (let ((_%e11671508%_
                                             (gx#syntax-e _%hd11641503%_)))
                                        (let ((_%lp-tl11691515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e11671508%_)))
                                              (_%lp-hd11681512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e11671508%_))))
                                          (_%loop11661499%_
                                           _%lp-tl11691515%_
                                           (cons _%lp-hd11681512%_
                                                 _%body11701506%_))))
                                      (let ((_%body11711518%_
                                             (reverse _%body11701506%_)))
                                        (_%__kont17841785%_
                                         _%body11711518%_))))))
                        (_%loop11661499%_ _%target11631493%_ '())))))
              (if (gx#stx-pair? _%__stx17811782%_)
                  (let ((_%e11571473%_ (gx#syntax-e _%__stx17811782%_)))
                    (let ((_%tl11591480%_
                           (let () (declare (not safe)) (##cdr _%e11571473%_)))
                          (_%hd11581477%_
                           (let ()
                             (declare (not safe))
                             (##car _%e11571473%_))))
                      (if (gx#stx-pair? _%tl11591480%_)
                          (let ((_%e11601483%_ (gx#syntax-e _%tl11591480%_)))
                            (let ((_%tl11621490%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e11601483%_)))
                                  (_%hd11611487%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e11601483%_))))
                              (if (gx#stx-null? _%hd11611487%_)
                                  (if (gx#stx-pair/null? _%tl11621490%_)
                                      (let ((_%__splice17861787%_
                                             (gx#syntax-split-splice->vector
                                              _%tl11621490%_
                                              '0)))
                                        (let ((_%tl11651496%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice17861787%_
                                                  '1)))
                                              (_%target11631493%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice17861787%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl11651496%_)
                                              (_%__match18181819%_
                                               _%e11571473%_
                                               _%hd11581477%_
                                               _%tl11591480%_
                                               _%e11601483%_
                                               _%hd11611487%_
                                               _%tl11621490%_
                                               _%__splice17861787%_
                                               _%target11631493%_
                                               _%tl11651496%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g11541231%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g11541231%_)))
                                  (if (gx#stx-pair? _%hd11611487%_)
                                      (let ((_%e11831357%_
                                             (gx#syntax-e _%hd11611487%_)))
                                        (let ((_%tl11851364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e11831357%_)))
                                              (_%hd11841361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e11831357%_))))
                                          (if (gx#stx-pair? _%hd11841361%_)
                                              (let ((_%e11861367%_
                                                     (gx#syntax-e
                                                      _%hd11841361%_)))
                                                (let ((_%tl11881374%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e11861367%_)))
                                                      (_%hd11871371%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e11861367%_))))
                                                  (if (gx#stx-pair?
                                                       _%hd11871371%_)
                                                      (let ((_%e11891377%_
                                                             (gx#syntax-e
                                                              _%hd11871371%_)))
                                                        (let ((_%tl11911384%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e11891377%_)))
                      (_%hd11901381%_
                       (let () (declare (not safe)) (##car _%e11891377%_))))
                  (if (gx#identifier? _%hd11901381%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/expander~SyntaxSugar[1]#_g1900_|
                           _%hd11901381%_)
                          (if (gx#stx-pair? _%tl11881374%_)
                              (let ((_%e11921387%_
                                     (gx#syntax-e _%tl11881374%_)))
                                (let ((_%tl11941394%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e11921387%_)))
                                      (_%hd11931391%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e11921387%_))))
                                  (if (gx#stx-null? _%tl11941394%_)
                                      (if (gx#stx-pair/null? _%tl11621490%_)
                                          (let ((_%__splice17901791%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl11621490%_
                                                  '0)))
                                            (let ((_%tl11971400%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17901791%_
                                                      '1)))
                                                  (_%target11951397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17901791%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl11971400%_)
                                                  (_%__match18681869%_
                                                   _%e11571473%_
                                                   _%hd11581477%_
                                                   _%tl11591480%_
                                                   _%e11601483%_
                                                   _%hd11611487%_
                                                   _%tl11621490%_
                                                   _%e11831357%_
                                                   _%hd11841361%_
                                                   _%tl11851364%_
                                                   _%e11861367%_
                                                   _%hd11871371%_
                                                   _%tl11881374%_
                                                   _%e11891377%_
                                                   _%hd11901381%_
                                                   _%tl11911384%_
                                                   _%e11921387%_
                                                   _%hd11931391%_
                                                   _%tl11941394%_
                                                   _%__splice17901791%_
                                                   _%target11951397%_
                                                   _%tl11971400%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g11541231%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g11541231%_)))
                                      (if (gx#stx-pair/null? _%tl11621490%_)
                                          (let ((_%__splice17941795%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl11621490%_
                                                  '0)))
                                            (let ((_%tl12191271%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17941795%_
                                                      '1)))
                                                  (_%target12171268%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17941795%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl12191271%_)
                                                  (_%__match18941895%_
                                                   _%e11571473%_
                                                   _%hd11581477%_
                                                   _%tl11591480%_
                                                   _%e11601483%_
                                                   _%hd11611487%_
                                                   _%tl11621490%_
                                                   _%e11831357%_
                                                   _%hd11841361%_
                                                   _%tl11851364%_
                                                   _%__splice17941795%_
                                                   _%target12171268%_
                                                   _%tl12191271%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g11541231%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g11541231%_))))))
                              (if (gx#stx-pair/null? _%tl11621490%_)
                                  (let ((_%__splice17941795%_
                                         (gx#syntax-split-splice->vector
                                          _%tl11621490%_
                                          '0)))
                                    (let ((_%tl12191271%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice17941795%_
                                              '1)))
                                          (_%target12171268%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice17941795%_
                                              '0))))
                                      (if (gx#stx-null? _%tl12191271%_)
                                          (_%__match18941895%_
                                           _%e11571473%_
                                           _%hd11581477%_
                                           _%tl11591480%_
                                           _%e11601483%_
                                           _%hd11611487%_
                                           _%tl11621490%_
                                           _%e11831357%_
                                           _%hd11841361%_
                                           _%tl11851364%_
                                           _%__splice17941795%_
                                           _%target12171268%_
                                           _%tl12191271%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g11541231%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g11541231%_))))
                          (if (gx#stx-pair/null? _%tl11621490%_)
                              (let ((_%__splice17941795%_
                                     (gx#syntax-split-splice->vector
                                      _%tl11621490%_
                                      '0)))
                                (let ((_%tl12191271%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17941795%_
                                          '1)))
                                      (_%target12171268%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17941795%_
                                          '0))))
                                  (if (gx#stx-null? _%tl12191271%_)
                                      (_%__match18941895%_
                                       _%e11571473%_
                                       _%hd11581477%_
                                       _%tl11591480%_
                                       _%e11601483%_
                                       _%hd11611487%_
                                       _%tl11621490%_
                                       _%e11831357%_
                                       _%hd11841361%_
                                       _%tl11851364%_
                                       _%__splice17941795%_
                                       _%target12171268%_
                                       _%tl12191271%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g11541231%_)))))
                              (let () (declare (not safe)) (_%g11541231%_))))
                      (if (gx#stx-pair/null? _%tl11621490%_)
                          (let ((_%__splice17941795%_
                                 (gx#syntax-split-splice->vector
                                  _%tl11621490%_
                                  '0)))
                            (let ((_%tl12191271%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice17941795%_ '1)))
                                  (_%target12171268%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice17941795%_ '0))))
                              (if (gx#stx-null? _%tl12191271%_)
                                  (_%__match18941895%_
                                   _%e11571473%_
                                   _%hd11581477%_
                                   _%tl11591480%_
                                   _%e11601483%_
                                   _%hd11611487%_
                                   _%tl11621490%_
                                   _%e11831357%_
                                   _%hd11841361%_
                                   _%tl11851364%_
                                   _%__splice17941795%_
                                   _%target12171268%_
                                   _%tl12191271%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g11541231%_)))))
                          (let () (declare (not safe)) (_%g11541231%_))))))
              (if (gx#stx-pair/null? _%tl11621490%_)
                  (let ((_%__splice17941795%_
                         (gx#syntax-split-splice->vector _%tl11621490%_ '0)))
                    (let ((_%tl12191271%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice17941795%_ '1)))
                          (_%target12171268%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice17941795%_ '0))))
                      (if (gx#stx-null? _%tl12191271%_)
                          (_%__match18941895%_
                           _%e11571473%_
                           _%hd11581477%_
                           _%tl11591480%_
                           _%e11601483%_
                           _%hd11611487%_
                           _%tl11621490%_
                           _%e11831357%_
                           _%hd11841361%_
                           _%tl11851364%_
                           _%__splice17941795%_
                           _%target12171268%_
                           _%tl12191271%_)
                          (let () (declare (not safe)) (_%g11541231%_)))))
                  (let () (declare (not safe)) (_%g11541231%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl11621490%_)
                                                  (let ((_%__splice17941795%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl11621490%_
                                                          '0)))
                                                    (let ((_%tl12191271%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17941795%_
                                                              '1)))
                                                          (_%target12171268%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17941795%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl12191271%_)
                                                          (_%__match18941895%_
                                                           _%e11571473%_
                                                           _%hd11581477%_
                                                           _%tl11591480%_
                                                           _%e11601483%_
                                                           _%hd11611487%_
                                                           _%tl11621490%_
                                                           _%e11831357%_
                                                           _%hd11841361%_
                                                           _%tl11851364%_
                                                           _%__splice17941795%_
                                                           _%target12171268%_
                                                           _%tl12191271%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g11541231%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g11541231%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g11541231%_))))))
                          (let () (declare (not safe)) (_%g11541231%_)))))
                  (let () (declare (not safe)) (_%g11541231%_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax/loc|
      (lambda (_%stx1553%_)
        (let* ((_%g15561574%_
                (lambda (_%g15571570%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g15571570%_)))
               (_%g15551629%_
                (lambda (_%g15571578%_)
                  (if (gx#stx-pair? _%g15571578%_)
                      (let ((_%e15601581%_ (gx#syntax-e _%g15571578%_)))
                        (let ((_%hd15611585%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e15601581%_)))
                              (_%tl15621588%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e15601581%_))))
                          (if (gx#stx-pair? _%tl15621588%_)
                              (let ((_%e15631591%_
                                     (gx#syntax-e _%tl15621588%_)))
                                (let ((_%hd15641595%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e15631591%_)))
                                      (_%tl15651598%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e15631591%_))))
                                  (if (gx#stx-pair? _%tl15651598%_)
                                      (let ((_%e15661601%_
                                             (gx#syntax-e _%tl15651598%_)))
                                        (let ((_%hd15671605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e15661601%_)))
                                              (_%tl15681608%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e15661601%_))))
                                          (if (gx#stx-null? _%tl15681608%_)
                                              ((lambda (_%g15581611%_
                                                        _%g15591613%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-wrap-source)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax)
                           (cons _%g15581611%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'stx-source)
                                 (cons _%g15591613%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd15671605%_
                                               _%hd15641595%_)
                                              (_%g15561574%_ _%g15571578%_))))
                                      (_%g15561574%_ _%g15571578%_))))
                              (_%g15561574%_ _%g15571578%_))))
                      (_%g15561574%_ _%g15571578%_)))))
          (_%g15551629%_ _%stx1553%_))))))
