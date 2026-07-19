(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/expander~SyntaxSugar[1]#_g1985_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax-rules|
      (lambda (_%stx446%_)
        (let* ((_%$%g449473%_
                (lambda (_%$%g450469%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g450469%_)))
               (_%$%g448775%_
                (lambda (_%$%g450477%_)
                  (if (gx#stx-pair? _%$%g450477%_)
                      (let ((_%$%e453480%_ (gx#syntax-e _%$%g450477%_)))
                        (let ((_%$%hd454484%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e453480%_)))
                              (_%$%tl455487%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e453480%_))))
                          (if (gx#stx-pair? _%$%tl455487%_)
                              (let ((_%$%e456490%_
                                     (gx#syntax-e _%$%tl455487%_)))
                                (let ((_%$%hd457494%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e456490%_)))
                                      (_%$%tl458497%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e456490%_))))
                                  (if (gx#stx-pair/null? _%$%tl458497%_)
                                      (let ((_g1981_ (gx#syntax-split-splice
                                                      _%$%tl458497%_
                                                      '0)))
                                        (begin
                                          (let ((_g1982_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g1981_)
                                                               (##values-length
                                                                _g1981_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g1982_ 2)))
                                                (error "Context expects 2 values"
                                                       _g1982_)))
                                          (let ((_%$%target459500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g1981_ 0)))
                                                (_%$%tl461503%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g1981_ 1))))
                                            (if (gx#stx-null? _%$%tl461503%_)
                                                (letrec ((_%$%loop462506%_
                                                          (lambda (_%$%hd460510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clauses466513%_)
                    (if (gx#stx-pair? _%$%hd460510%_)
                        (let ((_%$%e463515%_ (gx#syntax-e _%$%hd460510%_)))
                          (let ((_%$%lp-hd464519%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e463515%_)))
                                (_%$%lp-tl465522%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e463515%_))))
                            (_%$%loop462506%_
                             _%$%lp-tl465522%_
                             (cons _%$%lp-hd464519%_ _%$%clauses466513%_))))
                        (let ((_%$%clauses467525%_
                               (reverse _%$%clauses466513%_)))
                          (if (gx#identifier-list? _%$%hd457494%_)
                              (let* ((_%body694%_
                                      (gx#stx-map
                                       (lambda (_%clause551%_)
                                         (let* ((_%__stx17181719%_
                                                 _%clause551%_)
                                                (_%$%g555582%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%__stx17181719%_))))
                                           (let ((_%__kont17211722%_
                                                  (lambda (_%$%g557667%_
                                                           _%$%g558669%_)
                                                    (cons _%$%g558669%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'syntax)
                              (cons _%$%g557667%_ '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont17231724%_
                                                  (lambda (_%$%g565619%_
                                                           _%$%g566621%_
                                                           _%$%g567622%_)
                                                    (cons _%$%g567622%_
                                                          (cons _%$%g566621%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'syntax)
                                    (cons _%$%g565619%_ '()))
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair?
                                                  _%__stx17181719%_)
                                                 (let ((_%$%e559647%_
                                                        (gx#syntax-e
                                                         _%__stx17181719%_)))
                                                   (let ((_%$%tl561654%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e559647%_)))
                                                         (_%$%hd560651%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e559647%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%tl561654%_)
                                                         (let ((_%$%e562657%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl561654%_)))
                   (let ((_%$%tl564664%_
                          (let () (declare (not safe)) (##cdr _%$%e562657%_)))
                         (_%$%hd563661%_
                          (let () (declare (not safe)) (##car _%$%e562657%_))))
                     (if (gx#stx-null? _%$%tl564664%_)
                         (_%__kont17211722%_ _%$%hd563661%_ _%$%hd560651%_)
                         (if (gx#stx-pair? _%$%tl564664%_)
                             (let ((_%$%e574609%_
                                    (gx#syntax-e _%$%tl564664%_)))
                               (let ((_%$%tl576616%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e574609%_)))
                                     (_%$%hd575613%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e574609%_))))
                                 (if (gx#stx-null? _%$%tl576616%_)
                                     (_%__kont17231724%_
                                      _%$%hd575613%_
                                      _%$%hd563661%_
                                      _%$%hd560651%_)
                                     (_%$%g555582%_))))
                             (_%$%g555582%_)))))
                 (_%$%g555582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g555582%_)))))
                                       (foldr (lambda (_%$%g685688%_
                                                       _%$%g686691%_)
                                                (cons _%$%g685688%_
                                                      _%$%g686691%_))
                                              '()
                                              _%$%clauses467525%_)))
                                     (_%$%g697714%_
                                      (lambda (_%$%g698710%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g698710%_)))
                                     (_%$%g696771%_
                                      (lambda (_%$%g698718%_)
                                        (if (gx#stx-pair/null? _%$%g698718%_)
                                            (let ((_g1983_ (gx#syntax-split-splice
                                                            _%$%g698718%_
                                                            '0)))
                                              (begin
                                                (let ((_g1984_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g1983_)
                             (##values-length _g1983_)
                             1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g1984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g1984_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target700721%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g1983_
                                                          0)))
                                                      (_%$%tl702724%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g1983_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%$%tl702724%_)
                                                      (letrec ((_%$%loop703727%_
                                                                (lambda (_%$%hd701731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%clause707734%_)
                          (if (gx#stx-pair? _%$%hd701731%_)
                              (let ((_%$%e704736%_
                                     (gx#syntax-e _%$%hd701731%_)))
                                (let ((_%$%lp-hd705740%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e704736%_)))
                                      (_%$%lp-tl706743%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e704736%_))))
                                  (_%$%loop703727%_
                                   _%$%lp-tl706743%_
                                   (cons _%$%lp-hd705740%_
                                         _%$%clause707734%_))))
                              (let ((_%$%clause708746%_
                                     (reverse _%$%clause707734%_)))
                                (cons (gx#datum->syntax '#f 'lambda%)
                                      (cons (cons (gx#datum->syntax '#f '$stx)
                                                  '())
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'syntax-case)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               '$stx)
                                                              (cons _%$%hd457494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr (lambda (_%$%g762765%_ _%$%g763768%_)
                                     (cons _%$%g762765%_ _%$%g763768%_))
                                   '()
                                   _%$%clause708746%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))))
                (_%$%loop703727%_ _%$%target700721%_ '()))
              (_%$%g697714%_ _%$%g698718%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g697714%_ _%$%g698718%_)))))
                                (_%$%g696771%_ _%body694%_))
                              (_%$%g449473%_ _%$%g450477%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop462506%_
                                                   _%$%target459500%_
                                                   '()))
                                                (_%$%g449473%_
                                                 _%$%g450477%_)))))
                                      (_%$%g449473%_ _%$%g450477%_))))
                              (_%$%g449473%_ _%$%g450477%_))))
                      (_%$%g449473%_ _%$%g450477%_)))))
          (_%$%g448775%_ _%stx446%_))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax|
      (lambda (_%stx781%_)
        (let* ((_%__stx17621763%_ _%stx781%_)
               (_%$%g786871%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx17621763%_))))
          (let ((_%__kont17651766%_
                 (lambda (_%$%g7881201%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%$%g12171220%_ _%$%g12181223%_)
                                        (cons _%$%g12171220%_ _%$%g12181223%_))
                                      '()
                                      _%$%g7881201%_)))))
                (_%__kont17691770%_
                 (lambda (_%$%g8041111%_ _%$%g8051113%_ _%$%g8061114%_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons _%$%g8051113%_
                               (cons '()
                                     (cons (cons _%$%g8061114%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%$%g11371140%_ _%$%g11381143%_)
                                    (cons _%$%g11371140%_ _%$%g11381143%_))
                                  '()
                                  _%$%g8041111%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont17731774%_
                 (lambda (_%$%g831976%_ _%$%g832978%_ _%$%g833979%_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons (cons (gx#datum->syntax '#f 'list)
                                     (foldr (lambda (_%$%g10011008%_
                                                     _%$%g10021011%_)
                                              (cons _%$%g10011008%_
                                                    _%$%g10021011%_))
                                            '()
                                            _%$%g832978%_))
                               (cons '()
                                     (cons (cons (foldr (lambda (_%$%g10031014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g10041017%_)
                  (cons _%$%g10031014%_ _%$%g10041017%_))
                '()
                _%$%g833979%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%$%g10051020%_ _%$%g10061023%_)
                                    (cons _%$%g10051020%_ _%$%g10061023%_))
                                  '()
                                  _%$%g831976%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let* ((_%__match18631864%_
                    (lambda (_%$%e834878%_
                             _%$%hd835882%_
                             _%$%tl836885%_
                             _%$%e837888%_
                             _%$%hd838892%_
                             _%$%tl839895%_
                             _%__splice17751776%_
                             _%$%target840898%_
                             _%$%tl842901%_)
                      (letrec ((_%$%loop843904%_
                                (lambda (_%$%hd841908%_
                                         _%$%e847911%_
                                         _%$%pat848912%_)
                                  (if (gx#stx-pair? _%$%hd841908%_)
                                      (let ((_%$%e844914%_
                                             (gx#syntax-e _%$%hd841908%_)))
                                        (let ((_%$%lp-tl846921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e844914%_)))
                                              (_%$%lp-hd845918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e844914%_))))
                                          (if (gx#stx-pair? _%$%lp-hd845918%_)
                                              (let ((_%$%e851924%_
                                                     (gx#syntax-e
                                                      _%$%lp-hd845918%_)))
                                                (let ((_%$%tl853931%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e851924%_)))
                                                      (_%$%hd852928%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e851924%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl853931%_)
                                                      (let ((_%$%e854934%_
                                                             (gx#syntax-e
                                                              _%$%tl853931%_)))
                                                        (let ((_%$%tl856941%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e854934%_)))
                      (_%$%hd855938%_
                       (let () (declare (not safe)) (##car _%$%e854934%_))))
                  (if (gx#stx-null? _%$%tl856941%_)
                      (_%$%loop843904%_
                       _%$%lp-tl846921%_
                       (cons _%$%hd855938%_ _%$%e847911%_)
                       (cons _%$%hd852928%_ _%$%pat848912%_))
                      (let () (declare (not safe)) (_%$%g786871%_)))))
              (let () (declare (not safe)) (_%$%g786871%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g786871%_)))))
                                      (let ((_%$%pat850946%_
                                             (reverse _%$%pat848912%_))
                                            (_%$%e849944%_
                                             (reverse _%$%e847911%_)))
                                        (if (gx#stx-pair/null? _%$%tl839895%_)
                                            (let ((_%__splice17771778%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl839895%_
                                                    '0)))
                                              (let ((_%$%tl859951%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice17771778%_
                                                        '1)))
                                                    (_%$%target857948%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice17771778%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl859951%_)
                                                    (letrec ((_%$%loop860954%_
                                                              (lambda (_%$%hd858958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body864961%_)
                        (if (gx#stx-pair? _%$%hd858958%_)
                            (let ((_%$%e861963%_ (gx#syntax-e _%$%hd858958%_)))
                              (let ((_%$%lp-tl863970%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e861963%_)))
                                    (_%$%lp-hd862967%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e861963%_))))
                                (_%$%loop860954%_
                                 _%$%lp-tl863970%_
                                 (cons _%$%lp-hd862967%_ _%$%body864961%_))))
                            (let ((_%$%body865973%_
                                   (reverse _%$%body864961%_)))
                              (_%__kont17731774%_
                               _%$%body865973%_
                               _%$%e849944%_
                               _%$%pat850946%_))))))
              (_%$%loop860954%_ _%$%target857948%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g786871%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g786871%_))))))))
                        (_%$%loop843904%_ _%$%target840898%_ '() '()))))
                   (_%__match18431844%_
                    (lambda (_%$%e8071033%_
                             _%$%hd8081037%_
                             _%$%tl8091040%_
                             _%$%e8101043%_
                             _%$%hd8111047%_
                             _%$%tl8121050%_
                             _%$%e8131053%_
                             _%$%hd8141057%_
                             _%$%tl8151060%_
                             _%$%e8161063%_
                             _%$%hd8171067%_
                             _%$%tl8181070%_
                             _%$%e8191073%_
                             _%$%hd8201077%_
                             _%$%tl8211080%_
                             _%__splice17711772%_
                             _%$%target8221083%_
                             _%$%tl8241086%_)
                      (letrec ((_%$%loop8251089%_
                                (lambda (_%$%hd8231093%_ _%$%body8291096%_)
                                  (if (gx#stx-pair? _%$%hd8231093%_)
                                      (let ((_%$%e8261098%_
                                             (gx#syntax-e _%$%hd8231093%_)))
                                        (let ((_%$%lp-tl8281105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e8261098%_)))
                                              (_%$%lp-hd8271102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e8261098%_))))
                                          (_%$%loop8251089%_
                                           _%$%lp-tl8281105%_
                                           (cons _%$%lp-hd8271102%_
                                                 _%$%body8291096%_))))
                                      (let ((_%$%body8301108%_
                                             (reverse _%$%body8291096%_)))
                                        (_%__kont17691770%_
                                         _%$%body8301108%_
                                         _%$%hd8201077%_
                                         _%$%hd8171067%_))))))
                        (_%$%loop8251089%_ _%$%target8221083%_ '()))))
                   (_%__match18011802%_
                    (lambda (_%$%e7891153%_
                             _%$%hd7901157%_
                             _%$%tl7911160%_
                             _%$%e7921163%_
                             _%$%hd7931167%_
                             _%$%tl7941170%_
                             _%__splice17671768%_
                             _%$%target7951173%_
                             _%$%tl7971176%_)
                      (letrec ((_%$%loop7981179%_
                                (lambda (_%$%hd7961183%_ _%$%body8021186%_)
                                  (if (gx#stx-pair? _%$%hd7961183%_)
                                      (let ((_%$%e7991188%_
                                             (gx#syntax-e _%$%hd7961183%_)))
                                        (let ((_%$%lp-tl8011195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e7991188%_)))
                                              (_%$%lp-hd8001192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e7991188%_))))
                                          (_%$%loop7981179%_
                                           _%$%lp-tl8011195%_
                                           (cons _%$%lp-hd8001192%_
                                                 _%$%body8021186%_))))
                                      (let ((_%$%body8031198%_
                                             (reverse _%$%body8021186%_)))
                                        (_%__kont17651766%_
                                         _%$%body8031198%_))))))
                        (_%$%loop7981179%_ _%$%target7951173%_ '())))))
              (if (gx#stx-pair? _%__stx17621763%_)
                  (let ((_%$%e7891153%_ (gx#syntax-e _%__stx17621763%_)))
                    (let ((_%$%tl7911160%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e7891153%_)))
                          (_%$%hd7901157%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e7891153%_))))
                      (if (gx#stx-pair? _%$%tl7911160%_)
                          (let ((_%$%e7921163%_ (gx#syntax-e _%$%tl7911160%_)))
                            (let ((_%$%tl7941170%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e7921163%_)))
                                  (_%$%hd7931167%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e7921163%_))))
                              (if (gx#stx-null? _%$%hd7931167%_)
                                  (if (gx#stx-pair/null? _%$%tl7941170%_)
                                      (let ((_%__splice17671768%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl7941170%_
                                              '0)))
                                        (let ((_%$%tl7971176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice17671768%_
                                                  '1)))
                                              (_%$%target7951173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice17671768%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl7971176%_)
                                              (_%__match18011802%_
                                               _%$%e7891153%_
                                               _%$%hd7901157%_
                                               _%$%tl7911160%_
                                               _%$%e7921163%_
                                               _%$%hd7931167%_
                                               _%$%tl7941170%_
                                               _%__splice17671768%_
                                               _%$%target7951173%_
                                               _%$%tl7971176%_)
                                              (if (gx#stx-pair/null?
                                                   _%$%hd7931167%_)
                                                  (let ((_%__splice17751776%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%hd7931167%_
                                                          '0)))
                                                    (let ((_%$%tl842901%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17751776%_
                                                              '1)))
                                                          (_%$%target840898%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17751776%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl842901%_)
                                                          (_%__match18631864%_
                                                           _%$%e7891153%_
                                                           _%$%hd7901157%_
                                                           _%$%tl7911160%_
                                                           _%$%e7921163%_
                                                           _%$%hd7931167%_
                                                           _%$%tl7941170%_
                                                           _%__splice17751776%_
                                                           _%$%target840898%_
                                                           _%$%tl842901%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g786871%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g786871%_))))))
                                      (if (gx#stx-pair/null? _%$%hd7931167%_)
                                          (let ((_%__splice17751776%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%hd7931167%_
                                                  '0)))
                                            (let ((_%$%tl842901%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17751776%_
                                                      '1)))
                                                  (_%$%target840898%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17751776%_
                                                      '0))))
                                              (if (gx#stx-null? _%$%tl842901%_)
                                                  (_%__match18631864%_
                                                   _%$%e7891153%_
                                                   _%$%hd7901157%_
                                                   _%$%tl7911160%_
                                                   _%$%e7921163%_
                                                   _%$%hd7931167%_
                                                   _%$%tl7941170%_
                                                   _%__splice17751776%_
                                                   _%$%target840898%_
                                                   _%$%tl842901%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g786871%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g786871%_))))
                                  (if (gx#stx-pair? _%$%hd7931167%_)
                                      (let ((_%$%e8131053%_
                                             (gx#syntax-e _%$%hd7931167%_)))
                                        (let ((_%$%tl8151060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e8131053%_)))
                                              (_%$%hd8141057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e8131053%_))))
                                          (if (gx#stx-pair? _%$%hd8141057%_)
                                              (let ((_%$%e8161063%_
                                                     (gx#syntax-e
                                                      _%$%hd8141057%_)))
                                                (let ((_%$%tl8181070%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e8161063%_)))
                                                      (_%$%hd8171067%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e8161063%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl8181070%_)
                                                      (let ((_%$%e8191073%_
                                                             (gx#syntax-e
                                                              _%$%tl8181070%_)))
                                                        (let ((_%$%tl8211080%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e8191073%_)))
                      (_%$%hd8201077%_
                       (let () (declare (not safe)) (##car _%$%e8191073%_))))
                  (if (gx#stx-null? _%$%tl8211080%_)
                      (if (gx#stx-null? _%$%tl8151060%_)
                          (if (gx#stx-pair/null? _%$%tl7941170%_)
                              (let ((_%__splice17711772%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl7941170%_
                                      '0)))
                                (let ((_%$%tl8241086%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17711772%_
                                          '1)))
                                      (_%$%target8221083%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17711772%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl8241086%_)
                                      (_%__match18431844%_
                                       _%$%e7891153%_
                                       _%$%hd7901157%_
                                       _%$%tl7911160%_
                                       _%$%e7921163%_
                                       _%$%hd7931167%_
                                       _%$%tl7941170%_
                                       _%$%e8131053%_
                                       _%$%hd8141057%_
                                       _%$%tl8151060%_
                                       _%$%e8161063%_
                                       _%$%hd8171067%_
                                       _%$%tl8181070%_
                                       _%$%e8191073%_
                                       _%$%hd8201077%_
                                       _%$%tl8211080%_
                                       _%__splice17711772%_
                                       _%$%target8221083%_
                                       _%$%tl8241086%_)
                                      (if (gx#stx-pair/null? _%$%hd7931167%_)
                                          (let ((_%__splice17751776%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%hd7931167%_
                                                  '0)))
                                            (let ((_%$%tl842901%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17751776%_
                                                      '1)))
                                                  (_%$%target840898%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17751776%_
                                                      '0))))
                                              (if (gx#stx-null? _%$%tl842901%_)
                                                  (_%__match18631864%_
                                                   _%$%e7891153%_
                                                   _%$%hd7901157%_
                                                   _%$%tl7911160%_
                                                   _%$%e7921163%_
                                                   _%$%hd7931167%_
                                                   _%$%tl7941170%_
                                                   _%__splice17751776%_
                                                   _%$%target840898%_
                                                   _%$%tl842901%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g786871%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g786871%_))))))
                              (if (gx#stx-pair/null? _%$%hd7931167%_)
                                  (let ((_%__splice17751776%_
                                         (gx#syntax-split-splice->vector
                                          _%$%hd7931167%_
                                          '0)))
                                    (let ((_%$%tl842901%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice17751776%_
                                              '1)))
                                          (_%$%target840898%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice17751776%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl842901%_)
                                          (_%__match18631864%_
                                           _%$%e7891153%_
                                           _%$%hd7901157%_
                                           _%$%tl7911160%_
                                           _%$%e7921163%_
                                           _%$%hd7931167%_
                                           _%$%tl7941170%_
                                           _%__splice17751776%_
                                           _%$%target840898%_
                                           _%$%tl842901%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g786871%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g786871%_))))
                          (if (gx#stx-pair/null? _%$%hd7931167%_)
                              (let ((_%__splice17751776%_
                                     (gx#syntax-split-splice->vector
                                      _%$%hd7931167%_
                                      '0)))
                                (let ((_%$%tl842901%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17751776%_
                                          '1)))
                                      (_%$%target840898%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17751776%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl842901%_)
                                      (_%__match18631864%_
                                       _%$%e7891153%_
                                       _%$%hd7901157%_
                                       _%$%tl7911160%_
                                       _%$%e7921163%_
                                       _%$%hd7931167%_
                                       _%$%tl7941170%_
                                       _%__splice17751776%_
                                       _%$%target840898%_
                                       _%$%tl842901%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g786871%_)))))
                              (let () (declare (not safe)) (_%$%g786871%_))))
                      (if (gx#stx-pair/null? _%$%hd7931167%_)
                          (let ((_%__splice17751776%_
                                 (gx#syntax-split-splice->vector
                                  _%$%hd7931167%_
                                  '0)))
                            (let ((_%$%tl842901%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice17751776%_ '1)))
                                  (_%$%target840898%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice17751776%_ '0))))
                              (if (gx#stx-null? _%$%tl842901%_)
                                  (_%__match18631864%_
                                   _%$%e7891153%_
                                   _%$%hd7901157%_
                                   _%$%tl7911160%_
                                   _%$%e7921163%_
                                   _%$%hd7931167%_
                                   _%$%tl7941170%_
                                   _%__splice17751776%_
                                   _%$%target840898%_
                                   _%$%tl842901%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g786871%_)))))
                          (let () (declare (not safe)) (_%$%g786871%_))))))
              (if (gx#stx-pair/null? _%$%hd7931167%_)
                  (let ((_%__splice17751776%_
                         (gx#syntax-split-splice->vector _%$%hd7931167%_ '0)))
                    (let ((_%$%tl842901%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice17751776%_ '1)))
                          (_%$%target840898%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice17751776%_ '0))))
                      (if (gx#stx-null? _%$%tl842901%_)
                          (_%__match18631864%_
                           _%$%e7891153%_
                           _%$%hd7901157%_
                           _%$%tl7911160%_
                           _%$%e7921163%_
                           _%$%hd7931167%_
                           _%$%tl7941170%_
                           _%__splice17751776%_
                           _%$%target840898%_
                           _%$%tl842901%_)
                          (let () (declare (not safe)) (_%$%g786871%_)))))
                  (let () (declare (not safe)) (_%$%g786871%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%$%hd7931167%_)
                                                  (let ((_%__splice17751776%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%hd7931167%_
                                                          '0)))
                                                    (let ((_%$%tl842901%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17751776%_
                                                              '1)))
                                                          (_%$%target840898%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17751776%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl842901%_)
                                                          (_%__match18631864%_
                                                           _%$%e7891153%_
                                                           _%$%hd7901157%_
                                                           _%$%tl7911160%_
                                                           _%$%e7921163%_
                                                           _%$%hd7931167%_
                                                           _%$%tl7941170%_
                                                           _%__splice17751776%_
                                                           _%$%target840898%_
                                                           _%$%tl842901%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g786871%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g786871%_))))))
                                      (if (gx#stx-pair/null? _%$%hd7931167%_)
                                          (let ((_%__splice17751776%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%hd7931167%_
                                                  '0)))
                                            (let ((_%$%tl842901%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17751776%_
                                                      '1)))
                                                  (_%$%target840898%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17751776%_
                                                      '0))))
                                              (if (gx#stx-null? _%$%tl842901%_)
                                                  (_%__match18631864%_
                                                   _%$%e7891153%_
                                                   _%$%hd7901157%_
                                                   _%$%tl7911160%_
                                                   _%$%e7921163%_
                                                   _%$%hd7931167%_
                                                   _%$%tl7941170%_
                                                   _%__splice17751776%_
                                                   _%$%target840898%_
                                                   _%$%tl842901%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g786871%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g786871%_)))))))
                          (let () (declare (not safe)) (_%$%g786871%_)))))
                  (let () (declare (not safe)) (_%$%g786871%_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax*|
      (lambda (_%stx1234%_)
        (let* ((_%__stx18661867%_ _%stx1234%_)
               (_%$%g12391316%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx18661867%_))))
          (let ((_%__kont18691870%_
                 (lambda (_%$%g12411606%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%$%g16221625%_ _%$%g16231628%_)
                                        (cons _%$%g16221625%_ _%$%g16231628%_))
                                      '()
                                      _%$%g12411606%_)))))
                (_%__kont18731874%_
                 (lambda (_%$%g12571510%_
                          _%$%g12581512%_
                          _%$%g12591513%_
                          _%$%g12601514%_
                          _%$%g12611515%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons (cons _%$%g12601514%_
                                           (cons _%$%g12591513%_ '()))
                                     '())
                               (cons (cons _%$%g12611515%_
                                           (cons _%$%g12581512%_
                                                 (foldr (lambda (_%$%g15421545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g15431548%_)
                  (cons _%$%g15421545%_ _%$%g15431548%_))
                '()
                _%$%g12571510%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont18771878%_
                 (lambda (_%$%g12891381%_
                          _%$%g12901383%_
                          _%$%g12911384%_
                          _%$%g12921385%_)
                   (cons (gx#datum->syntax '#f 'with-syntax)
                         (cons (cons _%$%g12911384%_ '())
                               (cons (cons _%$%g12921385%_
                                           (cons _%$%g12901383%_
                                                 (foldr (lambda (_%$%g14061409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g14071412%_)
                  (cons _%$%g14061409%_ _%$%g14071412%_))
                '()
                _%$%g12891381%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match19791980%_
                    (lambda (_%$%e12931323%_
                             _%$%hd12941327%_
                             _%$%tl12951330%_
                             _%$%e12961333%_
                             _%$%hd12971337%_
                             _%$%tl12981340%_
                             _%$%e12991343%_
                             _%$%hd13001347%_
                             _%$%tl13011350%_
                             _%__splice18791880%_
                             _%$%target13021353%_
                             _%$%tl13041356%_)
                      (letrec ((_%$%loop13051359%_
                                (lambda (_%$%hd13031363%_ _%$%body13091366%_)
                                  (if (gx#stx-pair? _%$%hd13031363%_)
                                      (let ((_%$%e13061368%_
                                             (gx#syntax-e _%$%hd13031363%_)))
                                        (let ((_%$%lp-tl13081375%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e13061368%_)))
                                              (_%$%lp-hd13071372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e13061368%_))))
                                          (_%$%loop13051359%_
                                           _%$%lp-tl13081375%_
                                           (cons _%$%lp-hd13071372%_
                                                 _%$%body13091366%_))))
                                      (let ((_%$%body13101378%_
                                             (reverse _%$%body13091366%_)))
                                        (_%__kont18771878%_
                                         _%$%body13101378%_
                                         _%$%tl13011350%_
                                         _%$%hd13001347%_
                                         _%$%hd12941327%_))))))
                        (_%$%loop13051359%_ _%$%target13021353%_ '()))))
                   (_%__match19531954%_
                    (lambda (_%$%e12621422%_
                             _%$%hd12631426%_
                             _%$%tl12641429%_
                             _%$%e12651432%_
                             _%$%hd12661436%_
                             _%$%tl12671439%_
                             _%$%e12681442%_
                             _%$%hd12691446%_
                             _%$%tl12701449%_
                             _%$%e12711452%_
                             _%$%hd12721456%_
                             _%$%tl12731459%_
                             _%$%e12741462%_
                             _%$%hd12751466%_
                             _%$%tl12761469%_
                             _%$%e12771472%_
                             _%$%hd12781476%_
                             _%$%tl12791479%_
                             _%__splice18751876%_
                             _%$%target12801482%_
                             _%$%tl12821485%_)
                      (letrec ((_%$%loop12831488%_
                                (lambda (_%$%hd12811492%_ _%$%body12871495%_)
                                  (if (gx#stx-pair? _%$%hd12811492%_)
                                      (let ((_%$%e12841497%_
                                             (gx#syntax-e _%$%hd12811492%_)))
                                        (let ((_%$%lp-tl12861504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e12841497%_)))
                                              (_%$%lp-hd12851501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e12841497%_))))
                                          (_%$%loop12831488%_
                                           _%$%lp-tl12861504%_
                                           (cons _%$%lp-hd12851501%_
                                                 _%$%body12871495%_))))
                                      (let ((_%$%body12881507%_
                                             (reverse _%$%body12871495%_)))
                                        (_%__kont18731874%_
                                         _%$%body12881507%_
                                         _%$%tl12701449%_
                                         _%$%hd12781476%_
                                         _%$%tl12761469%_
                                         _%$%hd12631426%_))))))
                        (_%$%loop12831488%_ _%$%target12801482%_ '()))))
                   (_%__match19031904%_
                    (lambda (_%$%e12421558%_
                             _%$%hd12431562%_
                             _%$%tl12441565%_
                             _%$%e12451568%_
                             _%$%hd12461572%_
                             _%$%tl12471575%_
                             _%__splice18711872%_
                             _%$%target12481578%_
                             _%$%tl12501581%_)
                      (letrec ((_%$%loop12511584%_
                                (lambda (_%$%hd12491588%_ _%$%body12551591%_)
                                  (if (gx#stx-pair? _%$%hd12491588%_)
                                      (let ((_%$%e12521593%_
                                             (gx#syntax-e _%$%hd12491588%_)))
                                        (let ((_%$%lp-tl12541600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e12521593%_)))
                                              (_%$%lp-hd12531597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e12521593%_))))
                                          (_%$%loop12511584%_
                                           _%$%lp-tl12541600%_
                                           (cons _%$%lp-hd12531597%_
                                                 _%$%body12551591%_))))
                                      (let ((_%$%body12561603%_
                                             (reverse _%$%body12551591%_)))
                                        (_%__kont18691870%_
                                         _%$%body12561603%_))))))
                        (_%$%loop12511584%_ _%$%target12481578%_ '())))))
              (if (gx#stx-pair? _%__stx18661867%_)
                  (let ((_%$%e12421558%_ (gx#syntax-e _%__stx18661867%_)))
                    (let ((_%$%tl12441565%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e12421558%_)))
                          (_%$%hd12431562%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e12421558%_))))
                      (if (gx#stx-pair? _%$%tl12441565%_)
                          (let ((_%$%e12451568%_
                                 (gx#syntax-e _%$%tl12441565%_)))
                            (let ((_%$%tl12471575%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e12451568%_)))
                                  (_%$%hd12461572%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e12451568%_))))
                              (if (gx#stx-null? _%$%hd12461572%_)
                                  (if (gx#stx-pair/null? _%$%tl12471575%_)
                                      (let ((_%__splice18711872%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl12471575%_
                                              '0)))
                                        (let ((_%$%tl12501581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice18711872%_
                                                  '1)))
                                              (_%$%target12481578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice18711872%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl12501581%_)
                                              (_%__match19031904%_
                                               _%$%e12421558%_
                                               _%$%hd12431562%_
                                               _%$%tl12441565%_
                                               _%$%e12451568%_
                                               _%$%hd12461572%_
                                               _%$%tl12471575%_
                                               _%__splice18711872%_
                                               _%$%target12481578%_
                                               _%$%tl12501581%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g12391316%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g12391316%_)))
                                  (if (gx#stx-pair? _%$%hd12461572%_)
                                      (let ((_%$%e12681442%_
                                             (gx#syntax-e _%$%hd12461572%_)))
                                        (let ((_%$%tl12701449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e12681442%_)))
                                              (_%$%hd12691446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e12681442%_))))
                                          (if (gx#stx-pair? _%$%hd12691446%_)
                                              (let ((_%$%e12711452%_
                                                     (gx#syntax-e
                                                      _%$%hd12691446%_)))
                                                (let ((_%$%tl12731459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e12711452%_)))
                                                      (_%$%hd12721456%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e12711452%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%hd12721456%_)
                                                      (let ((_%$%e12741462%_
                                                             (gx#syntax-e
                                                              _%$%hd12721456%_)))
                                                        (let ((_%$%tl12761469%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e12741462%_)))
                      (_%$%hd12751466%_
                       (let () (declare (not safe)) (##car _%$%e12741462%_))))
                  (if (gx#identifier? _%$%hd12751466%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/expander~SyntaxSugar[1]#_g1985_|
                           _%$%hd12751466%_)
                          (if (gx#stx-pair? _%$%tl12731459%_)
                              (let ((_%$%e12771472%_
                                     (gx#syntax-e _%$%tl12731459%_)))
                                (let ((_%$%tl12791479%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e12771472%_)))
                                      (_%$%hd12781476%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e12771472%_))))
                                  (if (gx#stx-null? _%$%tl12791479%_)
                                      (if (gx#stx-pair/null? _%$%tl12471575%_)
                                          (let ((_%__splice18751876%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl12471575%_
                                                  '0)))
                                            (let ((_%$%tl12821485%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18751876%_
                                                      '1)))
                                                  (_%$%target12801482%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18751876%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl12821485%_)
                                                  (_%__match19531954%_
                                                   _%$%e12421558%_
                                                   _%$%hd12431562%_
                                                   _%$%tl12441565%_
                                                   _%$%e12451568%_
                                                   _%$%hd12461572%_
                                                   _%$%tl12471575%_
                                                   _%$%e12681442%_
                                                   _%$%hd12691446%_
                                                   _%$%tl12701449%_
                                                   _%$%e12711452%_
                                                   _%$%hd12721456%_
                                                   _%$%tl12731459%_
                                                   _%$%e12741462%_
                                                   _%$%hd12751466%_
                                                   _%$%tl12761469%_
                                                   _%$%e12771472%_
                                                   _%$%hd12781476%_
                                                   _%$%tl12791479%_
                                                   _%__splice18751876%_
                                                   _%$%target12801482%_
                                                   _%$%tl12821485%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g12391316%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g12391316%_)))
                                      (if (gx#stx-pair/null? _%$%tl12471575%_)
                                          (let ((_%__splice18791880%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl12471575%_
                                                  '0)))
                                            (let ((_%$%tl13041356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18791880%_
                                                      '1)))
                                                  (_%$%target13021353%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18791880%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl13041356%_)
                                                  (_%__match19791980%_
                                                   _%$%e12421558%_
                                                   _%$%hd12431562%_
                                                   _%$%tl12441565%_
                                                   _%$%e12451568%_
                                                   _%$%hd12461572%_
                                                   _%$%tl12471575%_
                                                   _%$%e12681442%_
                                                   _%$%hd12691446%_
                                                   _%$%tl12701449%_
                                                   _%__splice18791880%_
                                                   _%$%target13021353%_
                                                   _%$%tl13041356%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g12391316%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g12391316%_))))))
                              (if (gx#stx-pair/null? _%$%tl12471575%_)
                                  (let ((_%__splice18791880%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl12471575%_
                                          '0)))
                                    (let ((_%$%tl13041356%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice18791880%_
                                              '1)))
                                          (_%$%target13021353%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice18791880%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl13041356%_)
                                          (_%__match19791980%_
                                           _%$%e12421558%_
                                           _%$%hd12431562%_
                                           _%$%tl12441565%_
                                           _%$%e12451568%_
                                           _%$%hd12461572%_
                                           _%$%tl12471575%_
                                           _%$%e12681442%_
                                           _%$%hd12691446%_
                                           _%$%tl12701449%_
                                           _%__splice18791880%_
                                           _%$%target13021353%_
                                           _%$%tl13041356%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g12391316%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g12391316%_))))
                          (if (gx#stx-pair/null? _%$%tl12471575%_)
                              (let ((_%__splice18791880%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl12471575%_
                                      '0)))
                                (let ((_%$%tl13041356%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice18791880%_
                                          '1)))
                                      (_%$%target13021353%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice18791880%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl13041356%_)
                                      (_%__match19791980%_
                                       _%$%e12421558%_
                                       _%$%hd12431562%_
                                       _%$%tl12441565%_
                                       _%$%e12451568%_
                                       _%$%hd12461572%_
                                       _%$%tl12471575%_
                                       _%$%e12681442%_
                                       _%$%hd12691446%_
                                       _%$%tl12701449%_
                                       _%__splice18791880%_
                                       _%$%target13021353%_
                                       _%$%tl13041356%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g12391316%_)))))
                              (let () (declare (not safe)) (_%$%g12391316%_))))
                      (if (gx#stx-pair/null? _%$%tl12471575%_)
                          (let ((_%__splice18791880%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl12471575%_
                                  '0)))
                            (let ((_%$%tl13041356%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice18791880%_ '1)))
                                  (_%$%target13021353%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice18791880%_ '0))))
                              (if (gx#stx-null? _%$%tl13041356%_)
                                  (_%__match19791980%_
                                   _%$%e12421558%_
                                   _%$%hd12431562%_
                                   _%$%tl12441565%_
                                   _%$%e12451568%_
                                   _%$%hd12461572%_
                                   _%$%tl12471575%_
                                   _%$%e12681442%_
                                   _%$%hd12691446%_
                                   _%$%tl12701449%_
                                   _%__splice18791880%_
                                   _%$%target13021353%_
                                   _%$%tl13041356%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g12391316%_)))))
                          (let () (declare (not safe)) (_%$%g12391316%_))))))
              (if (gx#stx-pair/null? _%$%tl12471575%_)
                  (let ((_%__splice18791880%_
                         (gx#syntax-split-splice->vector _%$%tl12471575%_ '0)))
                    (let ((_%$%tl13041356%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice18791880%_ '1)))
                          (_%$%target13021353%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice18791880%_ '0))))
                      (if (gx#stx-null? _%$%tl13041356%_)
                          (_%__match19791980%_
                           _%$%e12421558%_
                           _%$%hd12431562%_
                           _%$%tl12441565%_
                           _%$%e12451568%_
                           _%$%hd12461572%_
                           _%$%tl12471575%_
                           _%$%e12681442%_
                           _%$%hd12691446%_
                           _%$%tl12701449%_
                           _%__splice18791880%_
                           _%$%target13021353%_
                           _%$%tl13041356%_)
                          (let () (declare (not safe)) (_%$%g12391316%_)))))
                  (let () (declare (not safe)) (_%$%g12391316%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%$%tl12471575%_)
                                                  (let ((_%__splice18791880%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl12471575%_
                                                          '0)))
                                                    (let ((_%$%tl13041356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice18791880%_
                                                              '1)))
                                                          (_%$%target13021353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice18791880%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl13041356%_)
                                                          (_%__match19791980%_
                                                           _%$%e12421558%_
                                                           _%$%hd12431562%_
                                                           _%$%tl12441565%_
                                                           _%$%e12451568%_
                                                           _%$%hd12461572%_
                                                           _%$%tl12471575%_
                                                           _%$%e12681442%_
                                                           _%$%hd12691446%_
                                                           _%$%tl12701449%_
                                                           _%__splice18791880%_
                                                           _%$%target13021353%_
                                                           _%$%tl13041356%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g12391316%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g12391316%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g12391316%_))))))
                          (let () (declare (not safe)) (_%$%g12391316%_)))))
                  (let () (declare (not safe)) (_%$%g12391316%_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax/loc|
      (lambda (_%stx1638%_)
        (let* ((_%$%g16411659%_
                (lambda (_%$%g16421655%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g16421655%_)))
               (_%$%g16401714%_
                (lambda (_%$%g16421663%_)
                  (if (gx#stx-pair? _%$%g16421663%_)
                      (let ((_%$%e16451666%_ (gx#syntax-e _%$%g16421663%_)))
                        (let ((_%$%hd16461670%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e16451666%_)))
                              (_%$%tl16471673%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e16451666%_))))
                          (if (gx#stx-pair? _%$%tl16471673%_)
                              (let ((_%$%e16481676%_
                                     (gx#syntax-e _%$%tl16471673%_)))
                                (let ((_%$%hd16491680%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e16481676%_)))
                                      (_%$%tl16501683%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e16481676%_))))
                                  (if (gx#stx-pair? _%$%tl16501683%_)
                                      (let ((_%$%e16511686%_
                                             (gx#syntax-e _%$%tl16501683%_)))
                                        (let ((_%$%hd16521690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e16511686%_)))
                                              (_%$%tl16531693%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e16511686%_))))
                                          (if (gx#stx-null? _%$%tl16531693%_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'stx-wrap-source)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'syntax)
                        (cons _%$%hd16521690%_ '()))
                  (cons (cons (gx#datum->syntax '#f 'stx-source)
                              (cons _%$%hd16491680%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g16411659%_
                                               _%$%g16421663%_))))
                                      (_%$%g16411659%_ _%$%g16421663%_))))
                              (_%$%g16411659%_ _%$%g16421663%_))))
                      (_%$%g16411659%_ _%$%g16421663%_)))))
          (_%$%g16401714%_ _%stx1638%_))))))
