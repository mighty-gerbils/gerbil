(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/expander~SyntaxSugar[1]#_g1973_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax-rules|
      (lambda (_%stx434%_)
        (let* ((_%g437461%_
                (lambda (_%g438457%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g438457%_)))
               (_%g436763%_
                (lambda (_%g438465%_)
                  (if (gx#stx-pair? _%g438465%_)
                      (let ((_%e441468%_ (gx#syntax-e _%g438465%_)))
                        (let ((_%hd442472%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e441468%_)))
                              (_%tl443475%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e441468%_))))
                          (if (gx#stx-pair? _%tl443475%_)
                              (let ((_%e444478%_ (gx#syntax-e _%tl443475%_)))
                                (let ((_%hd445482%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e444478%_)))
                                      (_%tl446485%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e444478%_))))
                                  (if (gx#stx-pair/null? _%tl446485%_)
                                      (let ((_g1969_ (gx#syntax-split-splice
                                                      _%tl446485%_
                                                      '0)))
                                        (begin
                                          (let ((_g1970_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g1969_)
                                                               (##values-length
                                                                _g1969_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g1970_ 2)))
                                                (error "Context expects 2 values"
                                                       _g1970_)))
                                          (let ((_%target447488%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g1969_ 0)))
                                                (_%tl449491%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g1969_ 1))))
                                            (if (gx#stx-null? _%tl449491%_)
                                                (letrec ((_%loop450494%_
                                                          (lambda (_%hd448498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses454501%_)
                    (if (gx#stx-pair? _%hd448498%_)
                        (let ((_%e451503%_ (gx#syntax-e _%hd448498%_)))
                          (let ((_%lp-hd452507%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e451503%_)))
                                (_%lp-tl453510%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e451503%_))))
                            (_%loop450494%_
                             _%lp-tl453510%_
                             (cons _%lp-hd452507%_ _%clauses454501%_))))
                        (let ((_%clauses455513%_ (reverse _%clauses454501%_)))
                          ((lambda (_%g439516%_ _%g440518%_)
                             (if (gx#identifier-list? _%g440518%_)
                                 (let* ((_%body682%_
                                         (gx#stx-map
                                          (lambda (_%clause539%_)
                                            (let* ((_%__stx17061707%_
                                                    _%clause539%_)
                                                   (_%g543570%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx17061707%_))))
                                              (let ((_%__kont17091710%_
                                                     (lambda (_%g545655%_
                                                              _%g546657%_)
                                                       (cons _%g546657%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons _%g545655%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont17111712%_
                                                     (lambda (_%g553607%_
                                                              _%g554609%_
                                                              _%g555610%_)
                                                       (cons _%g555610%_
                                                             (cons _%g554609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'syntax)
                                       (cons _%g553607%_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx17061707%_)
                                                    (let ((_%e547635%_
                                                           (gx#syntax-e
                                                            _%__stx17061707%_)))
                                                      (let ((_%tl549642%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e547635%_)))
                    (_%hd548639%_
                     (let () (declare (not safe)) (##car _%e547635%_))))
                (if (gx#stx-pair? _%tl549642%_)
                    (let ((_%e550645%_ (gx#syntax-e _%tl549642%_)))
                      (let ((_%tl552652%_
                             (let () (declare (not safe)) (##cdr _%e550645%_)))
                            (_%hd551649%_
                             (let ()
                               (declare (not safe))
                               (##car _%e550645%_))))
                        (if (gx#stx-null? _%tl552652%_)
                            (_%__kont17091710%_ _%hd551649%_ _%hd548639%_)
                            (if (gx#stx-pair? _%tl552652%_)
                                (let ((_%e562597%_ (gx#syntax-e _%tl552652%_)))
                                  (let ((_%tl564604%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e562597%_)))
                                        (_%hd563601%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e562597%_))))
                                    (if (gx#stx-null? _%tl564604%_)
                                        (_%__kont17111712%_
                                         _%hd563601%_
                                         _%hd551649%_
                                         _%hd548639%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g543570%_)))))
                                (let () (declare (not safe)) (_%g543570%_))))))
                    (let () (declare (not safe)) (_%g543570%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g543570%_))))))
                                          (foldr (lambda (_%g673676%_
                                                          _%g674679%_)
                                                   (cons _%g673676%_
                                                         _%g674679%_))
                                                 '()
                                                 _%g439516%_)))
                                        (_%g685702%_
                                         (lambda (_%g686698%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g686698%_)))
                                        (_%g684759%_
                                         (lambda (_%g686706%_)
                                           (if (gx#stx-pair/null? _%g686706%_)
                                               (let ((_g1971_ (gx#syntax-split-splice
                                                               _%g686706%_
                                                               '0)))
                                                 (begin
                                                   (let ((_g1972_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (if (##values? _g1971_)
                                (##values-length _g1971_)
                                1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g1972_ 2)))
                 (error "Context expects 2 values" _g1972_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target688709%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g1971_
                                                             0)))
                                                         (_%tl690712%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g1971_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl690712%_)
                                                         (letrec ((_%loop691715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd689719%_ _%clause695722%_)
                             (if (gx#stx-pair? _%hd689719%_)
                                 (let ((_%e692724%_
                                        (gx#syntax-e _%hd689719%_)))
                                   (let ((_%lp-hd693728%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e692724%_)))
                                         (_%lp-tl694731%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e692724%_))))
                                     (_%loop691715%_
                                      _%lp-tl694731%_
                                      (cons _%lp-hd693728%_
                                            _%clause695722%_))))
                                 (let ((_%clause696734%_
                                        (reverse _%clause695722%_)))
                                   ((lambda (_%g687737%_)
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
                            (cons _%g440518%_
                                  (foldr (lambda (_%g750753%_ _%g751756%_)
                                           (cons _%g750753%_ _%g751756%_))
                                         '()
                                         _%g687737%_))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause696734%_))))))
                   (_%loop691715%_ _%target688709%_ '()))
                 (_%g685702%_ _%g686706%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g685702%_ _%g686706%_)))))
                                   (_%g684759%_ _%body682%_))
                                 (_%g437461%_ _%g438465%_)))
                           _%clauses455513%_
                           _%hd445482%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop450494%_
                                                   _%target447488%_
                                                   '()))
                                                (_%g437461%_ _%g438465%_)))))
                                      (_%g437461%_ _%g438465%_))))
                              (_%g437461%_ _%g438465%_))))
                      (_%g437461%_ _%g438465%_)))))
          (_%g436763%_ _%stx434%_))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax|
      (lambda (_%stx769%_)
        (let* ((_%__stx17501751%_ _%stx769%_)
               (_%g774859%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx17501751%_))))
          (let ((_%__kont17531754%_
                 (lambda (_%g7761189%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g12051208%_ _%g12061211%_)
                                        (cons _%g12051208%_ _%g12061211%_))
                                      '()
                                      _%g7761189%_)))))
                (_%__kont17571758%_
                 (lambda (_%g7921099%_ _%g7931101%_ _%g7941102%_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons _%g7931101%_
                               (cons '()
                                     (cons (cons _%g7941102%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g11251128%_ _%g11261131%_)
                                    (cons _%g11251128%_ _%g11261131%_))
                                  '()
                                  _%g7921099%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont17611762%_
                 (lambda (_%g819964%_ _%g820966%_ _%g821967%_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons (cons (gx#datum->syntax '#f 'list)
                                     (foldr (lambda (_%g989996%_ _%g990999%_)
                                              (cons _%g989996%_ _%g990999%_))
                                            '()
                                            _%g820966%_))
                               (cons '()
                                     (cons (cons (foldr (lambda (_%g9911002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g9921005%_)
                  (cons _%g9911002%_ _%g9921005%_))
                '()
                _%g821967%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g9931008%_ _%g9941011%_)
                                    (cons _%g9931008%_ _%g9941011%_))
                                  '()
                                  _%g819964%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let* ((_%__match18511852%_
                    (lambda (_%e822866%_
                             _%hd823870%_
                             _%tl824873%_
                             _%e825876%_
                             _%hd826880%_
                             _%tl827883%_
                             _%__splice17631764%_
                             _%target828886%_
                             _%tl830889%_)
                      (letrec ((_%loop831892%_
                                (lambda (_%hd829896%_
                                         _%e835899%_
                                         _%pat836900%_)
                                  (if (gx#stx-pair? _%hd829896%_)
                                      (let ((_%e832902%_
                                             (gx#syntax-e _%hd829896%_)))
                                        (let ((_%lp-tl834909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e832902%_)))
                                              (_%lp-hd833906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e832902%_))))
                                          (if (gx#stx-pair? _%lp-hd833906%_)
                                              (let ((_%e839912%_
                                                     (gx#syntax-e
                                                      _%lp-hd833906%_)))
                                                (let ((_%tl841919%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e839912%_)))
                                                      (_%hd840916%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e839912%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl841919%_)
                                                      (let ((_%e842922%_
                                                             (gx#syntax-e
                                                              _%tl841919%_)))
                                                        (let ((_%tl844929%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e842922%_)))
                      (_%hd843926%_
                       (let () (declare (not safe)) (##car _%e842922%_))))
                  (if (gx#stx-null? _%tl844929%_)
                      (_%loop831892%_
                       _%lp-tl834909%_
                       (cons _%hd843926%_ _%e835899%_)
                       (cons _%hd840916%_ _%pat836900%_))
                      (let () (declare (not safe)) (_%g774859%_)))))
              (let () (declare (not safe)) (_%g774859%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g774859%_)))))
                                      (let ((_%pat838934%_
                                             (reverse _%pat836900%_))
                                            (_%e837932%_
                                             (reverse _%e835899%_)))
                                        (if (gx#stx-pair/null? _%tl827883%_)
                                            (let ((_%__splice17651766%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl827883%_
                                                    '0)))
                                              (let ((_%tl847939%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice17651766%_
                                                        '1)))
                                                    (_%target845936%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice17651766%_
                                                        '0))))
                                                (if (gx#stx-null? _%tl847939%_)
                                                    (letrec ((_%loop848942%_
                                                              (lambda (_%hd846946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body852949%_)
                        (if (gx#stx-pair? _%hd846946%_)
                            (let ((_%e849951%_ (gx#syntax-e _%hd846946%_)))
                              (let ((_%lp-tl851958%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e849951%_)))
                                    (_%lp-hd850955%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e849951%_))))
                                (_%loop848942%_
                                 _%lp-tl851958%_
                                 (cons _%lp-hd850955%_ _%body852949%_))))
                            (let ((_%body853961%_ (reverse _%body852949%_)))
                              (_%__kont17611762%_
                               _%body853961%_
                               _%e837932%_
                               _%pat838934%_))))))
              (_%loop848942%_ _%target845936%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g774859%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g774859%_))))))))
                        (_%loop831892%_ _%target828886%_ '() '()))))
                   (_%__match18311832%_
                    (lambda (_%e7951021%_
                             _%hd7961025%_
                             _%tl7971028%_
                             _%e7981031%_
                             _%hd7991035%_
                             _%tl8001038%_
                             _%e8011041%_
                             _%hd8021045%_
                             _%tl8031048%_
                             _%e8041051%_
                             _%hd8051055%_
                             _%tl8061058%_
                             _%e8071061%_
                             _%hd8081065%_
                             _%tl8091068%_
                             _%__splice17591760%_
                             _%target8101071%_
                             _%tl8121074%_)
                      (letrec ((_%loop8131077%_
                                (lambda (_%hd8111081%_ _%body8171084%_)
                                  (if (gx#stx-pair? _%hd8111081%_)
                                      (let ((_%e8141086%_
                                             (gx#syntax-e _%hd8111081%_)))
                                        (let ((_%lp-tl8161093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8141086%_)))
                                              (_%lp-hd8151090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8141086%_))))
                                          (_%loop8131077%_
                                           _%lp-tl8161093%_
                                           (cons _%lp-hd8151090%_
                                                 _%body8171084%_))))
                                      (let ((_%body8181096%_
                                             (reverse _%body8171084%_)))
                                        (_%__kont17571758%_
                                         _%body8181096%_
                                         _%hd8081065%_
                                         _%hd8051055%_))))))
                        (_%loop8131077%_ _%target8101071%_ '()))))
                   (_%__match17891790%_
                    (lambda (_%e7771141%_
                             _%hd7781145%_
                             _%tl7791148%_
                             _%e7801151%_
                             _%hd7811155%_
                             _%tl7821158%_
                             _%__splice17551756%_
                             _%target7831161%_
                             _%tl7851164%_)
                      (letrec ((_%loop7861167%_
                                (lambda (_%hd7841171%_ _%body7901174%_)
                                  (if (gx#stx-pair? _%hd7841171%_)
                                      (let ((_%e7871176%_
                                             (gx#syntax-e _%hd7841171%_)))
                                        (let ((_%lp-tl7891183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7871176%_)))
                                              (_%lp-hd7881180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7871176%_))))
                                          (_%loop7861167%_
                                           _%lp-tl7891183%_
                                           (cons _%lp-hd7881180%_
                                                 _%body7901174%_))))
                                      (let ((_%body7911186%_
                                             (reverse _%body7901174%_)))
                                        (_%__kont17531754%_
                                         _%body7911186%_))))))
                        (_%loop7861167%_ _%target7831161%_ '())))))
              (if (gx#stx-pair? _%__stx17501751%_)
                  (let ((_%e7771141%_ (gx#syntax-e _%__stx17501751%_)))
                    (let ((_%tl7791148%_
                           (let () (declare (not safe)) (##cdr _%e7771141%_)))
                          (_%hd7781145%_
                           (let () (declare (not safe)) (##car _%e7771141%_))))
                      (if (gx#stx-pair? _%tl7791148%_)
                          (let ((_%e7801151%_ (gx#syntax-e _%tl7791148%_)))
                            (let ((_%tl7821158%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7801151%_)))
                                  (_%hd7811155%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7801151%_))))
                              (if (gx#stx-null? _%hd7811155%_)
                                  (if (gx#stx-pair/null? _%tl7821158%_)
                                      (let ((_%__splice17551756%_
                                             (gx#syntax-split-splice->vector
                                              _%tl7821158%_
                                              '0)))
                                        (let ((_%tl7851164%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice17551756%_
                                                  '1)))
                                              (_%target7831161%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice17551756%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl7851164%_)
                                              (_%__match17891790%_
                                               _%e7771141%_
                                               _%hd7781145%_
                                               _%tl7791148%_
                                               _%e7801151%_
                                               _%hd7811155%_
                                               _%tl7821158%_
                                               _%__splice17551756%_
                                               _%target7831161%_
                                               _%tl7851164%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd7811155%_)
                                                  (let ((_%__splice17631764%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd7811155%_
                                                          '0)))
                                                    (let ((_%tl830889%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17631764%_
                                                              '1)))
                                                          (_%target828886%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17631764%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl830889%_)
                                                          (_%__match18511852%_
                                                           _%e7771141%_
                                                           _%hd7781145%_
                                                           _%tl7791148%_
                                                           _%e7801151%_
                                                           _%hd7811155%_
                                                           _%tl7821158%_
                                                           _%__splice17631764%_
                                                           _%target828886%_
                                                           _%tl830889%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g774859%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g774859%_))))))
                                      (if (gx#stx-pair/null? _%hd7811155%_)
                                          (let ((_%__splice17631764%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd7811155%_
                                                  '0)))
                                            (let ((_%tl830889%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17631764%_
                                                      '1)))
                                                  (_%target828886%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17631764%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl830889%_)
                                                  (_%__match18511852%_
                                                   _%e7771141%_
                                                   _%hd7781145%_
                                                   _%tl7791148%_
                                                   _%e7801151%_
                                                   _%hd7811155%_
                                                   _%tl7821158%_
                                                   _%__splice17631764%_
                                                   _%target828886%_
                                                   _%tl830889%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g774859%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g774859%_))))
                                  (if (gx#stx-pair? _%hd7811155%_)
                                      (let ((_%e8011041%_
                                             (gx#syntax-e _%hd7811155%_)))
                                        (let ((_%tl8031048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e8011041%_)))
                                              (_%hd8021045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e8011041%_))))
                                          (if (gx#stx-pair? _%hd8021045%_)
                                              (let ((_%e8041051%_
                                                     (gx#syntax-e
                                                      _%hd8021045%_)))
                                                (let ((_%tl8061058%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e8041051%_)))
                                                      (_%hd8051055%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e8041051%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl8061058%_)
                                                      (let ((_%e8071061%_
                                                             (gx#syntax-e
                                                              _%tl8061058%_)))
                                                        (let ((_%tl8091068%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e8071061%_)))
                      (_%hd8081065%_
                       (let () (declare (not safe)) (##car _%e8071061%_))))
                  (if (gx#stx-null? _%tl8091068%_)
                      (if (gx#stx-null? _%tl8031048%_)
                          (if (gx#stx-pair/null? _%tl7821158%_)
                              (let ((_%__splice17591760%_
                                     (gx#syntax-split-splice->vector
                                      _%tl7821158%_
                                      '0)))
                                (let ((_%tl8121074%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17591760%_
                                          '1)))
                                      (_%target8101071%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17591760%_
                                          '0))))
                                  (if (gx#stx-null? _%tl8121074%_)
                                      (_%__match18311832%_
                                       _%e7771141%_
                                       _%hd7781145%_
                                       _%tl7791148%_
                                       _%e7801151%_
                                       _%hd7811155%_
                                       _%tl7821158%_
                                       _%e8011041%_
                                       _%hd8021045%_
                                       _%tl8031048%_
                                       _%e8041051%_
                                       _%hd8051055%_
                                       _%tl8061058%_
                                       _%e8071061%_
                                       _%hd8081065%_
                                       _%tl8091068%_
                                       _%__splice17591760%_
                                       _%target8101071%_
                                       _%tl8121074%_)
                                      (if (gx#stx-pair/null? _%hd7811155%_)
                                          (let ((_%__splice17631764%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd7811155%_
                                                  '0)))
                                            (let ((_%tl830889%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17631764%_
                                                      '1)))
                                                  (_%target828886%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17631764%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl830889%_)
                                                  (_%__match18511852%_
                                                   _%e7771141%_
                                                   _%hd7781145%_
                                                   _%tl7791148%_
                                                   _%e7801151%_
                                                   _%hd7811155%_
                                                   _%tl7821158%_
                                                   _%__splice17631764%_
                                                   _%target828886%_
                                                   _%tl830889%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g774859%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g774859%_))))))
                              (if (gx#stx-pair/null? _%hd7811155%_)
                                  (let ((_%__splice17631764%_
                                         (gx#syntax-split-splice->vector
                                          _%hd7811155%_
                                          '0)))
                                    (let ((_%tl830889%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice17631764%_
                                              '1)))
                                          (_%target828886%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice17631764%_
                                              '0))))
                                      (if (gx#stx-null? _%tl830889%_)
                                          (_%__match18511852%_
                                           _%e7771141%_
                                           _%hd7781145%_
                                           _%tl7791148%_
                                           _%e7801151%_
                                           _%hd7811155%_
                                           _%tl7821158%_
                                           _%__splice17631764%_
                                           _%target828886%_
                                           _%tl830889%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g774859%_)))))
                                  (let () (declare (not safe)) (_%g774859%_))))
                          (if (gx#stx-pair/null? _%hd7811155%_)
                              (let ((_%__splice17631764%_
                                     (gx#syntax-split-splice->vector
                                      _%hd7811155%_
                                      '0)))
                                (let ((_%tl830889%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17631764%_
                                          '1)))
                                      (_%target828886%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17631764%_
                                          '0))))
                                  (if (gx#stx-null? _%tl830889%_)
                                      (_%__match18511852%_
                                       _%e7771141%_
                                       _%hd7781145%_
                                       _%tl7791148%_
                                       _%e7801151%_
                                       _%hd7811155%_
                                       _%tl7821158%_
                                       _%__splice17631764%_
                                       _%target828886%_
                                       _%tl830889%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g774859%_)))))
                              (let () (declare (not safe)) (_%g774859%_))))
                      (if (gx#stx-pair/null? _%hd7811155%_)
                          (let ((_%__splice17631764%_
                                 (gx#syntax-split-splice->vector
                                  _%hd7811155%_
                                  '0)))
                            (let ((_%tl830889%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice17631764%_ '1)))
                                  (_%target828886%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice17631764%_ '0))))
                              (if (gx#stx-null? _%tl830889%_)
                                  (_%__match18511852%_
                                   _%e7771141%_
                                   _%hd7781145%_
                                   _%tl7791148%_
                                   _%e7801151%_
                                   _%hd7811155%_
                                   _%tl7821158%_
                                   _%__splice17631764%_
                                   _%target828886%_
                                   _%tl830889%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g774859%_)))))
                          (let () (declare (not safe)) (_%g774859%_))))))
              (if (gx#stx-pair/null? _%hd7811155%_)
                  (let ((_%__splice17631764%_
                         (gx#syntax-split-splice->vector _%hd7811155%_ '0)))
                    (let ((_%tl830889%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice17631764%_ '1)))
                          (_%target828886%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice17631764%_ '0))))
                      (if (gx#stx-null? _%tl830889%_)
                          (_%__match18511852%_
                           _%e7771141%_
                           _%hd7781145%_
                           _%tl7791148%_
                           _%e7801151%_
                           _%hd7811155%_
                           _%tl7821158%_
                           _%__splice17631764%_
                           _%target828886%_
                           _%tl830889%_)
                          (let () (declare (not safe)) (_%g774859%_)))))
                  (let () (declare (not safe)) (_%g774859%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd7811155%_)
                                                  (let ((_%__splice17631764%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd7811155%_
                                                          '0)))
                                                    (let ((_%tl830889%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17631764%_
                                                              '1)))
                                                          (_%target828886%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17631764%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl830889%_)
                                                          (_%__match18511852%_
                                                           _%e7771141%_
                                                           _%hd7781145%_
                                                           _%tl7791148%_
                                                           _%e7801151%_
                                                           _%hd7811155%_
                                                           _%tl7821158%_
                                                           _%__splice17631764%_
                                                           _%target828886%_
                                                           _%tl830889%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g774859%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g774859%_))))))
                                      (if (gx#stx-pair/null? _%hd7811155%_)
                                          (let ((_%__splice17631764%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd7811155%_
                                                  '0)))
                                            (let ((_%tl830889%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17631764%_
                                                      '1)))
                                                  (_%target828886%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17631764%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl830889%_)
                                                  (_%__match18511852%_
                                                   _%e7771141%_
                                                   _%hd7781145%_
                                                   _%tl7791148%_
                                                   _%e7801151%_
                                                   _%hd7811155%_
                                                   _%tl7821158%_
                                                   _%__splice17631764%_
                                                   _%target828886%_
                                                   _%tl830889%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g774859%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g774859%_)))))))
                          (let () (declare (not safe)) (_%g774859%_)))))
                  (let () (declare (not safe)) (_%g774859%_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax*|
      (lambda (_%stx1222%_)
        (let* ((_%__stx18541855%_ _%stx1222%_)
               (_%g12271304%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx18541855%_))))
          (let ((_%__kont18571858%_
                 (lambda (_%g12291594%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g16101613%_ _%g16111616%_)
                                        (cons _%g16101613%_ _%g16111616%_))
                                      '()
                                      _%g12291594%_)))))
                (_%__kont18611862%_
                 (lambda (_%g12451498%_
                          _%g12461500%_
                          _%g12471501%_
                          _%g12481502%_
                          _%g12491503%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons (cons _%g12481502%_
                                           (cons _%g12471501%_ '()))
                                     '())
                               (cons (cons _%g12491503%_
                                           (cons _%g12461500%_
                                                 (foldr (lambda (_%g15301533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g15311536%_)
                  (cons _%g15301533%_ _%g15311536%_))
                '()
                _%g12451498%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont18651866%_
                 (lambda (_%g12771369%_
                          _%g12781371%_
                          _%g12791372%_
                          _%g12801373%_)
                   (cons (gx#datum->syntax '#f 'with-syntax)
                         (cons (cons _%g12791372%_ '())
                               (cons (cons _%g12801373%_
                                           (cons _%g12781371%_
                                                 (foldr (lambda (_%g13941397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g13951400%_)
                  (cons _%g13941397%_ _%g13951400%_))
                '()
                _%g12771369%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match19671968%_
                    (lambda (_%e12811311%_
                             _%hd12821315%_
                             _%tl12831318%_
                             _%e12841321%_
                             _%hd12851325%_
                             _%tl12861328%_
                             _%e12871331%_
                             _%hd12881335%_
                             _%tl12891338%_
                             _%__splice18671868%_
                             _%target12901341%_
                             _%tl12921344%_)
                      (letrec ((_%loop12931347%_
                                (lambda (_%hd12911351%_ _%body12971354%_)
                                  (if (gx#stx-pair? _%hd12911351%_)
                                      (let ((_%e12941356%_
                                             (gx#syntax-e _%hd12911351%_)))
                                        (let ((_%lp-tl12961363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12941356%_)))
                                              (_%lp-hd12951360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12941356%_))))
                                          (_%loop12931347%_
                                           _%lp-tl12961363%_
                                           (cons _%lp-hd12951360%_
                                                 _%body12971354%_))))
                                      (let ((_%body12981366%_
                                             (reverse _%body12971354%_)))
                                        (_%__kont18651866%_
                                         _%body12981366%_
                                         _%tl12891338%_
                                         _%hd12881335%_
                                         _%hd12821315%_))))))
                        (_%loop12931347%_ _%target12901341%_ '()))))
                   (_%__match19411942%_
                    (lambda (_%e12501410%_
                             _%hd12511414%_
                             _%tl12521417%_
                             _%e12531420%_
                             _%hd12541424%_
                             _%tl12551427%_
                             _%e12561430%_
                             _%hd12571434%_
                             _%tl12581437%_
                             _%e12591440%_
                             _%hd12601444%_
                             _%tl12611447%_
                             _%e12621450%_
                             _%hd12631454%_
                             _%tl12641457%_
                             _%e12651460%_
                             _%hd12661464%_
                             _%tl12671467%_
                             _%__splice18631864%_
                             _%target12681470%_
                             _%tl12701473%_)
                      (letrec ((_%loop12711476%_
                                (lambda (_%hd12691480%_ _%body12751483%_)
                                  (if (gx#stx-pair? _%hd12691480%_)
                                      (let ((_%e12721485%_
                                             (gx#syntax-e _%hd12691480%_)))
                                        (let ((_%lp-tl12741492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12721485%_)))
                                              (_%lp-hd12731489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12721485%_))))
                                          (_%loop12711476%_
                                           _%lp-tl12741492%_
                                           (cons _%lp-hd12731489%_
                                                 _%body12751483%_))))
                                      (let ((_%body12761495%_
                                             (reverse _%body12751483%_)))
                                        (_%__kont18611862%_
                                         _%body12761495%_
                                         _%tl12581437%_
                                         _%hd12661464%_
                                         _%tl12641457%_
                                         _%hd12511414%_))))))
                        (_%loop12711476%_ _%target12681470%_ '()))))
                   (_%__match18911892%_
                    (lambda (_%e12301546%_
                             _%hd12311550%_
                             _%tl12321553%_
                             _%e12331556%_
                             _%hd12341560%_
                             _%tl12351563%_
                             _%__splice18591860%_
                             _%target12361566%_
                             _%tl12381569%_)
                      (letrec ((_%loop12391572%_
                                (lambda (_%hd12371576%_ _%body12431579%_)
                                  (if (gx#stx-pair? _%hd12371576%_)
                                      (let ((_%e12401581%_
                                             (gx#syntax-e _%hd12371576%_)))
                                        (let ((_%lp-tl12421588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12401581%_)))
                                              (_%lp-hd12411585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12401581%_))))
                                          (_%loop12391572%_
                                           _%lp-tl12421588%_
                                           (cons _%lp-hd12411585%_
                                                 _%body12431579%_))))
                                      (let ((_%body12441591%_
                                             (reverse _%body12431579%_)))
                                        (_%__kont18571858%_
                                         _%body12441591%_))))))
                        (_%loop12391572%_ _%target12361566%_ '())))))
              (if (gx#stx-pair? _%__stx18541855%_)
                  (let ((_%e12301546%_ (gx#syntax-e _%__stx18541855%_)))
                    (let ((_%tl12321553%_
                           (let () (declare (not safe)) (##cdr _%e12301546%_)))
                          (_%hd12311550%_
                           (let ()
                             (declare (not safe))
                             (##car _%e12301546%_))))
                      (if (gx#stx-pair? _%tl12321553%_)
                          (let ((_%e12331556%_ (gx#syntax-e _%tl12321553%_)))
                            (let ((_%tl12351563%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e12331556%_)))
                                  (_%hd12341560%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e12331556%_))))
                              (if (gx#stx-null? _%hd12341560%_)
                                  (if (gx#stx-pair/null? _%tl12351563%_)
                                      (let ((_%__splice18591860%_
                                             (gx#syntax-split-splice->vector
                                              _%tl12351563%_
                                              '0)))
                                        (let ((_%tl12381569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice18591860%_
                                                  '1)))
                                              (_%target12361566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice18591860%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl12381569%_)
                                              (_%__match18911892%_
                                               _%e12301546%_
                                               _%hd12311550%_
                                               _%tl12321553%_
                                               _%e12331556%_
                                               _%hd12341560%_
                                               _%tl12351563%_
                                               _%__splice18591860%_
                                               _%target12361566%_
                                               _%tl12381569%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g12271304%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g12271304%_)))
                                  (if (gx#stx-pair? _%hd12341560%_)
                                      (let ((_%e12561430%_
                                             (gx#syntax-e _%hd12341560%_)))
                                        (let ((_%tl12581437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12561430%_)))
                                              (_%hd12571434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12561430%_))))
                                          (if (gx#stx-pair? _%hd12571434%_)
                                              (let ((_%e12591440%_
                                                     (gx#syntax-e
                                                      _%hd12571434%_)))
                                                (let ((_%tl12611447%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e12591440%_)))
                                                      (_%hd12601444%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e12591440%_))))
                                                  (if (gx#stx-pair?
                                                       _%hd12601444%_)
                                                      (let ((_%e12621450%_
                                                             (gx#syntax-e
                                                              _%hd12601444%_)))
                                                        (let ((_%tl12641457%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e12621450%_)))
                      (_%hd12631454%_
                       (let () (declare (not safe)) (##car _%e12621450%_))))
                  (if (gx#identifier? _%hd12631454%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/expander~SyntaxSugar[1]#_g1973_|
                           _%hd12631454%_)
                          (if (gx#stx-pair? _%tl12611447%_)
                              (let ((_%e12651460%_
                                     (gx#syntax-e _%tl12611447%_)))
                                (let ((_%tl12671467%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e12651460%_)))
                                      (_%hd12661464%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e12651460%_))))
                                  (if (gx#stx-null? _%tl12671467%_)
                                      (if (gx#stx-pair/null? _%tl12351563%_)
                                          (let ((_%__splice18631864%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl12351563%_
                                                  '0)))
                                            (let ((_%tl12701473%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18631864%_
                                                      '1)))
                                                  (_%target12681470%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18631864%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl12701473%_)
                                                  (_%__match19411942%_
                                                   _%e12301546%_
                                                   _%hd12311550%_
                                                   _%tl12321553%_
                                                   _%e12331556%_
                                                   _%hd12341560%_
                                                   _%tl12351563%_
                                                   _%e12561430%_
                                                   _%hd12571434%_
                                                   _%tl12581437%_
                                                   _%e12591440%_
                                                   _%hd12601444%_
                                                   _%tl12611447%_
                                                   _%e12621450%_
                                                   _%hd12631454%_
                                                   _%tl12641457%_
                                                   _%e12651460%_
                                                   _%hd12661464%_
                                                   _%tl12671467%_
                                                   _%__splice18631864%_
                                                   _%target12681470%_
                                                   _%tl12701473%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g12271304%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g12271304%_)))
                                      (if (gx#stx-pair/null? _%tl12351563%_)
                                          (let ((_%__splice18671868%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl12351563%_
                                                  '0)))
                                            (let ((_%tl12921344%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18671868%_
                                                      '1)))
                                                  (_%target12901341%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18671868%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl12921344%_)
                                                  (_%__match19671968%_
                                                   _%e12301546%_
                                                   _%hd12311550%_
                                                   _%tl12321553%_
                                                   _%e12331556%_
                                                   _%hd12341560%_
                                                   _%tl12351563%_
                                                   _%e12561430%_
                                                   _%hd12571434%_
                                                   _%tl12581437%_
                                                   _%__splice18671868%_
                                                   _%target12901341%_
                                                   _%tl12921344%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g12271304%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g12271304%_))))))
                              (if (gx#stx-pair/null? _%tl12351563%_)
                                  (let ((_%__splice18671868%_
                                         (gx#syntax-split-splice->vector
                                          _%tl12351563%_
                                          '0)))
                                    (let ((_%tl12921344%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice18671868%_
                                              '1)))
                                          (_%target12901341%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice18671868%_
                                              '0))))
                                      (if (gx#stx-null? _%tl12921344%_)
                                          (_%__match19671968%_
                                           _%e12301546%_
                                           _%hd12311550%_
                                           _%tl12321553%_
                                           _%e12331556%_
                                           _%hd12341560%_
                                           _%tl12351563%_
                                           _%e12561430%_
                                           _%hd12571434%_
                                           _%tl12581437%_
                                           _%__splice18671868%_
                                           _%target12901341%_
                                           _%tl12921344%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g12271304%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g12271304%_))))
                          (if (gx#stx-pair/null? _%tl12351563%_)
                              (let ((_%__splice18671868%_
                                     (gx#syntax-split-splice->vector
                                      _%tl12351563%_
                                      '0)))
                                (let ((_%tl12921344%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice18671868%_
                                          '1)))
                                      (_%target12901341%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice18671868%_
                                          '0))))
                                  (if (gx#stx-null? _%tl12921344%_)
                                      (_%__match19671968%_
                                       _%e12301546%_
                                       _%hd12311550%_
                                       _%tl12321553%_
                                       _%e12331556%_
                                       _%hd12341560%_
                                       _%tl12351563%_
                                       _%e12561430%_
                                       _%hd12571434%_
                                       _%tl12581437%_
                                       _%__splice18671868%_
                                       _%target12901341%_
                                       _%tl12921344%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g12271304%_)))))
                              (let () (declare (not safe)) (_%g12271304%_))))
                      (if (gx#stx-pair/null? _%tl12351563%_)
                          (let ((_%__splice18671868%_
                                 (gx#syntax-split-splice->vector
                                  _%tl12351563%_
                                  '0)))
                            (let ((_%tl12921344%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice18671868%_ '1)))
                                  (_%target12901341%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice18671868%_ '0))))
                              (if (gx#stx-null? _%tl12921344%_)
                                  (_%__match19671968%_
                                   _%e12301546%_
                                   _%hd12311550%_
                                   _%tl12321553%_
                                   _%e12331556%_
                                   _%hd12341560%_
                                   _%tl12351563%_
                                   _%e12561430%_
                                   _%hd12571434%_
                                   _%tl12581437%_
                                   _%__splice18671868%_
                                   _%target12901341%_
                                   _%tl12921344%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g12271304%_)))))
                          (let () (declare (not safe)) (_%g12271304%_))))))
              (if (gx#stx-pair/null? _%tl12351563%_)
                  (let ((_%__splice18671868%_
                         (gx#syntax-split-splice->vector _%tl12351563%_ '0)))
                    (let ((_%tl12921344%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice18671868%_ '1)))
                          (_%target12901341%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice18671868%_ '0))))
                      (if (gx#stx-null? _%tl12921344%_)
                          (_%__match19671968%_
                           _%e12301546%_
                           _%hd12311550%_
                           _%tl12321553%_
                           _%e12331556%_
                           _%hd12341560%_
                           _%tl12351563%_
                           _%e12561430%_
                           _%hd12571434%_
                           _%tl12581437%_
                           _%__splice18671868%_
                           _%target12901341%_
                           _%tl12921344%_)
                          (let () (declare (not safe)) (_%g12271304%_)))))
                  (let () (declare (not safe)) (_%g12271304%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl12351563%_)
                                                  (let ((_%__splice18671868%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl12351563%_
                                                          '0)))
                                                    (let ((_%tl12921344%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice18671868%_
                                                              '1)))
                                                          (_%target12901341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice18671868%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl12921344%_)
                                                          (_%__match19671968%_
                                                           _%e12301546%_
                                                           _%hd12311550%_
                                                           _%tl12321553%_
                                                           _%e12331556%_
                                                           _%hd12341560%_
                                                           _%tl12351563%_
                                                           _%e12561430%_
                                                           _%hd12571434%_
                                                           _%tl12581437%_
                                                           _%__splice18671868%_
                                                           _%target12901341%_
                                                           _%tl12921344%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g12271304%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g12271304%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g12271304%_))))))
                          (let () (declare (not safe)) (_%g12271304%_)))))
                  (let () (declare (not safe)) (_%g12271304%_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax/loc|
      (lambda (_%stx1626%_)
        (let* ((_%g16291647%_
                (lambda (_%g16301643%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g16301643%_)))
               (_%g16281702%_
                (lambda (_%g16301651%_)
                  (if (gx#stx-pair? _%g16301651%_)
                      (let ((_%e16331654%_ (gx#syntax-e _%g16301651%_)))
                        (let ((_%hd16341658%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e16331654%_)))
                              (_%tl16351661%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e16331654%_))))
                          (if (gx#stx-pair? _%tl16351661%_)
                              (let ((_%e16361664%_
                                     (gx#syntax-e _%tl16351661%_)))
                                (let ((_%hd16371668%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e16361664%_)))
                                      (_%tl16381671%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e16361664%_))))
                                  (if (gx#stx-pair? _%tl16381671%_)
                                      (let ((_%e16391674%_
                                             (gx#syntax-e _%tl16381671%_)))
                                        (let ((_%hd16401678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e16391674%_)))
                                              (_%tl16411681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e16391674%_))))
                                          (if (gx#stx-null? _%tl16411681%_)
                                              ((lambda (_%g16311684%_
                                                        _%g16321686%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-wrap-source)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax)
                           (cons _%g16311684%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'stx-source)
                                 (cons _%g16321686%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd16401678%_
                                               _%hd16371668%_)
                                              (_%g16291647%_ _%g16301651%_))))
                                      (_%g16291647%_ _%g16301651%_))))
                              (_%g16291647%_ _%g16301651%_))))
                      (_%g16291647%_ _%g16301651%_)))))
          (_%g16281702%_ _%stx1626%_))))))
