(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-1[1]#_g20907_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20908_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20911_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20912_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrules|
      (lambda (_%$stx1925%_)
        (let* ((_%g19291957%_
                (lambda (_%g19301953%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g19301953%_)))
               (_%g19282058%_
                (lambda (_%g19301961%_)
                  (if (gx#stx-pair? _%g19301961%_)
                      (let ((_%e19341964%_ (gx#syntax-e _%g19301961%_)))
                        (let ((_%hd19351968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e19341964%_)))
                              (_%tl19361971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e19341964%_))))
                          (if (gx#stx-pair? _%tl19361971%_)
                              (let ((_%e19371974%_
                                     (gx#syntax-e _%tl19361971%_)))
                                (let ((_%hd19381978%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e19371974%_)))
                                      (_%tl19391981%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e19371974%_))))
                                  (if (gx#stx-pair? _%tl19391981%_)
                                      (let ((_%e19401984%_
                                             (gx#syntax-e _%tl19391981%_)))
                                        (let ((_%hd19411988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e19401984%_)))
                                              (_%tl19421991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e19401984%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl19421991%_)
                                              (let ((_g20899_
                                                     (gx#syntax-split-splice
                                                      _%tl19421991%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20900_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20899_)
                                                               (##vector-length
                                                                _g20899_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20900_ 2)))
                (error "Context expects 2 values" _g20900_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target19431994%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g20899_
                                                            0)))
                                                        (_%tl19451997%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g20899_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl19451997%_)
                                                        (letrec ((_%loop19462000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd19442004%_ _%clauses19502007%_)
                            (if (gx#stx-pair? _%hd19442004%_)
                                (let ((_%e19472010%_
                                       (gx#syntax-e _%hd19442004%_)))
                                  (let ((_%lp-hd19482014%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e19472010%_)))
                                        (_%lp-tl19492017%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e19472010%_))))
                                    (_%loop19462000%_
                                     _%lp-tl19492017%_
                                     (cons _%lp-hd19482014%_
                                           _%clauses19502007%_))))
                                (let ((_%clauses19512020%_
                                       (reverse _%clauses19502007%_)))
                                  ((lambda (_%L2024%_ _%L2026%_ _%L2027%_)
                                     (if (gx#identifier? _%L2027%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'define-syntax)
                                               (cons _%L2027%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'syntax-rules)
                         (cons _%L2026%_
                               (foldr (lambda (_%g20492052%_ _%g20502055%_)
                                        (cons _%g20492052%_ _%g20502055%_))
                                      '()
                                      _%L2024%_)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%g19291957%_ _%g19301961%_)))
                                   _%clauses19512020%_
                                   _%hd19411988%_
                                   _%hd19381978%_))))))
                  (_%loop19462000%_ _%target19431994%_ '()))
                (_%g19291957%_ _%g19301961%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g19291957%_ _%g19301961%_))))
                                      (_%g19291957%_ _%g19301961%_))))
                              (_%g19291957%_ _%g19301961%_))))
                      (_%g19291957%_ _%g19301961%_)))))
          (_%g19282058%_ _%$stx1925%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrule|
      (lambda (_%$stx2063%_)
        (let* ((_%__stx1848018481%_ _%$stx2063%_)
               (_%g20682109%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1848018481%_))))
          (let ((_%__kont1848318484%_
                 (lambda (_%L2239%_ _%L2241%_ _%L2242%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L2242%_
                               (cons (cons (gx#datum->syntax '#f 'syntax-rules)
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           _%L2241%_)
                     (cons _%L2239%_ '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1848518486%_
                 (lambda (_%L2166%_ _%L2168%_ _%L2169%_ _%L2170%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L2170%_
                               (cons (cons (gx#datum->syntax '#f 'syntax-rules)
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           _%L2169%_)
                     (cons _%L2168%_ (cons _%L2166%_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match1854518546%_
                    (lambda (_%e20892116%_
                             _%hd20902120%_
                             _%tl20912123%_
                             _%e20922126%_
                             _%hd20932130%_
                             _%tl20942133%_
                             _%e20952136%_
                             _%hd20962140%_
                             _%tl20972143%_
                             _%e20982146%_
                             _%hd20992150%_
                             _%tl21002153%_
                             _%e21012156%_
                             _%hd21022160%_
                             _%tl21032163%_)
                      (let ((_%L2166%_ _%hd21022160%_)
                            (_%L2168%_ _%hd20992150%_)
                            (_%L2169%_ _%tl20972143%_)
                            (_%L2170%_ _%hd20962140%_))
                        (if (gx#identifier? _%L2170%_)
                            (_%__kont1848518486%_
                             _%L2166%_
                             _%L2168%_
                             _%L2169%_
                             _%L2170%_)
                            (let () (declare (not safe)) (_%g20682109%_))))))
                   (_%__match1851318514%_
                    (lambda (_%e20732199%_
                             _%hd20742203%_
                             _%tl20752206%_
                             _%e20762209%_
                             _%hd20772213%_
                             _%tl20782216%_
                             _%e20792219%_
                             _%hd20802223%_
                             _%tl20812226%_
                             _%e20822229%_
                             _%hd20832233%_
                             _%tl20842236%_)
                      (let ((_%L2239%_ _%hd20832233%_)
                            (_%L2241%_ _%tl20812226%_)
                            (_%L2242%_ _%hd20802223%_))
                        (if (gx#identifier? _%L2242%_)
                            (_%__kont1848318484%_
                             _%L2239%_
                             _%L2241%_
                             _%L2242%_)
                            (let () (declare (not safe)) (_%g20682109%_)))))))
              (if (gx#stx-pair? _%__stx1848018481%_)
                  (let ((_%e20732199%_ (gx#syntax-e _%__stx1848018481%_)))
                    (let ((_%tl20752206%_
                           (let () (declare (not safe)) (##cdr _%e20732199%_)))
                          (_%hd20742203%_
                           (let ()
                             (declare (not safe))
                             (##car _%e20732199%_))))
                      (if (gx#stx-pair? _%tl20752206%_)
                          (let ((_%e20762209%_ (gx#syntax-e _%tl20752206%_)))
                            (let ((_%tl20782216%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e20762209%_)))
                                  (_%hd20772213%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e20762209%_))))
                              (if (gx#stx-pair? _%hd20772213%_)
                                  (let ((_%e20792219%_
                                         (gx#syntax-e _%hd20772213%_)))
                                    (let ((_%tl20812226%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e20792219%_)))
                                          (_%hd20802223%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e20792219%_))))
                                      (if (gx#stx-pair? _%tl20782216%_)
                                          (let ((_%e20822229%_
                                                 (gx#syntax-e _%tl20782216%_)))
                                            (let ((_%tl20842236%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e20822229%_)))
                                                  (_%hd20832233%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e20822229%_))))
                                              (if (gx#stx-null? _%tl20842236%_)
                                                  (_%__match1851318514%_
                                                   _%e20732199%_
                                                   _%hd20742203%_
                                                   _%tl20752206%_
                                                   _%e20762209%_
                                                   _%hd20772213%_
                                                   _%tl20782216%_
                                                   _%e20792219%_
                                                   _%hd20802223%_
                                                   _%tl20812226%_
                                                   _%e20822229%_
                                                   _%hd20832233%_
                                                   _%tl20842236%_)
                                                  (if (gx#stx-pair?
                                                       _%tl20842236%_)
                                                      (let ((_%e21012156%_
                                                             (gx#syntax-e
                                                              _%tl20842236%_)))
                                                        (let ((_%tl21032163%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e21012156%_)))
                      (_%hd21022160%_
                       (let () (declare (not safe)) (##car _%e21012156%_))))
                  (if (gx#stx-null? _%tl21032163%_)
                      (_%__match1854518546%_
                       _%e20732199%_
                       _%hd20742203%_
                       _%tl20752206%_
                       _%e20762209%_
                       _%hd20772213%_
                       _%tl20782216%_
                       _%e20792219%_
                       _%hd20802223%_
                       _%tl20812226%_
                       _%e20822229%_
                       _%hd20832233%_
                       _%tl20842236%_
                       _%e21012156%_
                       _%hd21022160%_
                       _%tl21032163%_)
                      (let () (declare (not safe)) (_%g20682109%_)))))
              (let () (declare (not safe)) (_%g20682109%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%g20682109%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g20682109%_)))))
                          (let () (declare (not safe)) (_%g20682109%_)))))
                  (let () (declare (not safe)) (_%g20682109%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defsyntax%|
      (lambda (_%$stx2264%_)
        (let* ((_%__stx1854818549%_ _%$stx2264%_)
               (_%g22692308%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1854818549%_))))
          (let ((_%__kont1855118552%_
                 (lambda (_%L2430%_ _%L2432%_ _%L2433%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L2433%_
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _%L2432%_
                                                 (foldr (lambda (_%g24522455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g24532458%_)
                  (cons _%g24522455%_ _%g24532458%_))
                '()
                _%L2430%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1855518556%_
                 (lambda (_%L2345%_ _%L2347%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L2347%_ (cons _%L2345%_ '()))))))
            (let* ((_%__match1860318604%_
                    (lambda (_%e22942315%_
                             _%hd22952319%_
                             _%tl22962322%_
                             _%e22972325%_
                             _%hd22982329%_
                             _%tl22992332%_
                             _%e23002335%_
                             _%hd23012339%_
                             _%tl23022342%_)
                      (let ((_%L2345%_ _%hd23012339%_)
                            (_%L2347%_ _%hd22982329%_))
                        (if (gx#identifier? _%L2347%_)
                            (_%__kont1855518556%_ _%L2345%_ _%L2347%_)
                            (let () (declare (not safe)) (_%g22692308%_))))))
                   (_%__match1859518596%_
                    (lambda (_%e22942315%_
                             _%hd22952319%_
                             _%tl22962322%_
                             _%e22972325%_
                             _%hd22982329%_
                             _%tl22992332%_)
                      (if (gx#stx-pair? _%tl22992332%_)
                          (let ((_%e23002335%_ (gx#syntax-e _%tl22992332%_)))
                            (let ((_%tl23022342%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e23002335%_)))
                                  (_%hd23012339%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e23002335%_))))
                              (if (gx#stx-null? _%tl23022342%_)
                                  (_%__match1860318604%_
                                   _%e22942315%_
                                   _%hd22952319%_
                                   _%tl22962322%_
                                   _%e22972325%_
                                   _%hd22982329%_
                                   _%tl22992332%_
                                   _%e23002335%_
                                   _%hd23012339%_
                                   _%tl23022342%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g22692308%_)))))
                          (let () (declare (not safe)) (_%g22692308%_)))))
                   (_%__match1858318584%_
                    (lambda (_%e22742370%_
                             _%hd22752374%_
                             _%tl22762377%_
                             _%e22772380%_
                             _%hd22782384%_
                             _%tl22792387%_
                             _%e22802390%_
                             _%hd22812394%_
                             _%tl22822397%_
                             _%__splice1855318554%_
                             _%target22832400%_
                             _%tl22852403%_)
                      (letrec ((_%loop22862406%_
                                (lambda (_%hd22842410%_ _%body22902413%_)
                                  (if (gx#stx-pair? _%hd22842410%_)
                                      (let ((_%e22872416%_
                                             (gx#syntax-e _%hd22842410%_)))
                                        (let ((_%lp-tl22892423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e22872416%_)))
                                              (_%lp-hd22882420%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e22872416%_))))
                                          (_%loop22862406%_
                                           _%lp-tl22892423%_
                                           (cons _%lp-hd22882420%_
                                                 _%body22902413%_))))
                                      (let ((_%body22912426%_
                                             (reverse _%body22902413%_)))
                                        (let ((_%L2430%_ _%body22912426%_)
                                              (_%L2432%_ _%tl22822397%_)
                                              (_%L2433%_ _%hd22812394%_))
                                          (if (gx#identifier? _%L2433%_)
                                              (_%__kont1855118552%_
                                               _%L2430%_
                                               _%L2432%_
                                               _%L2433%_)
                                              (_%__match1859518596%_
                                               _%e22742370%_
                                               _%hd22752374%_
                                               _%tl22762377%_
                                               _%e22772380%_
                                               _%hd22782384%_
                                               _%tl22792387%_))))))))
                        (_%loop22862406%_ _%target22832400%_ '())))))
              (if (gx#stx-pair? _%__stx1854818549%_)
                  (let ((_%e22742370%_ (gx#syntax-e _%__stx1854818549%_)))
                    (let ((_%tl22762377%_
                           (let () (declare (not safe)) (##cdr _%e22742370%_)))
                          (_%hd22752374%_
                           (let ()
                             (declare (not safe))
                             (##car _%e22742370%_))))
                      (if (gx#stx-pair? _%tl22762377%_)
                          (let ((_%e22772380%_ (gx#syntax-e _%tl22762377%_)))
                            (let ((_%tl22792387%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e22772380%_)))
                                  (_%hd22782384%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e22772380%_))))
                              (if (gx#stx-pair? _%hd22782384%_)
                                  (let ((_%e22802390%_
                                         (gx#syntax-e _%hd22782384%_)))
                                    (let ((_%tl22822397%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e22802390%_)))
                                          (_%hd22812394%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e22802390%_))))
                                      (if (gx#stx-pair/null? _%tl22792387%_)
                                          (let ((_%__splice1855318554%_
                                                 (gx#syntax-split-splice
                                                  _%tl22792387%_
                                                  '0)))
                                            (let ((_%tl22852403%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1855318554%_
                                                      '1)))
                                                  (_%target22832400%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1855318554%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl22852403%_)
                                                  (_%__match1858318584%_
                                                   _%e22742370%_
                                                   _%hd22752374%_
                                                   _%tl22762377%_
                                                   _%e22772380%_
                                                   _%hd22782384%_
                                                   _%tl22792387%_
                                                   _%e22802390%_
                                                   _%hd22812394%_
                                                   _%tl22822397%_
                                                   _%__splice1855318554%_
                                                   _%target22832400%_
                                                   _%tl22852403%_)
                                                  (if (gx#stx-pair?
                                                       _%tl22792387%_)
                                                      (let ((_%e23002335%_
                                                             (gx#syntax-e
                                                              _%tl22792387%_)))
                                                        (let ((_%tl23022342%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e23002335%_)))
                      (_%hd23012339%_
                       (let () (declare (not safe)) (##car _%e23002335%_))))
                  (if (gx#stx-null? _%tl23022342%_)
                      (_%__match1860318604%_
                       _%e22742370%_
                       _%hd22752374%_
                       _%tl22762377%_
                       _%e22772380%_
                       _%hd22782384%_
                       _%tl22792387%_
                       _%e23002335%_
                       _%hd23012339%_
                       _%tl23022342%_)
                      (let () (declare (not safe)) (_%g22692308%_)))))
              (let () (declare (not safe)) (_%g22692308%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl22792387%_)
                                              (let ((_%e23002335%_
                                                     (gx#syntax-e
                                                      _%tl22792387%_)))
                                                (let ((_%tl23022342%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e23002335%_)))
                                                      (_%hd23012339%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e23002335%_))))
                                                  (if (gx#stx-null?
                                                       _%tl23022342%_)
                                                      (_%__match1860318604%_
                                                       _%e22742370%_
                                                       _%hd22752374%_
                                                       _%tl22762377%_
                                                       _%e22772380%_
                                                       _%hd22782384%_
                                                       _%tl22792387%_
                                                       _%e23002335%_
                                                       _%hd23012339%_
                                                       _%tl23022342%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g22692308%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g22692308%_))))))
                                  (if (gx#stx-pair? _%tl22792387%_)
                                      (let ((_%e23002335%_
                                             (gx#syntax-e _%tl22792387%_)))
                                        (let ((_%tl23022342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e23002335%_)))
                                              (_%hd23012339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e23002335%_))))
                                          (if (gx#stx-null? _%tl23022342%_)
                                              (_%__match1860318604%_
                                               _%e22742370%_
                                               _%hd22752374%_
                                               _%tl22762377%_
                                               _%e22772380%_
                                               _%hd22782384%_
                                               _%tl22792387%_
                                               _%e23002335%_
                                               _%hd23012339%_
                                               _%tl23022342%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g22692308%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g22692308%_))))))
                          (let () (declare (not safe)) (_%g22692308%_)))))
                  (let () (declare (not safe)) (_%g22692308%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#define|
      (lambda (_%$stx2466%_)
        (let* ((_%__stx1860618607%_ _%$stx2466%_)
               (_%g24712510%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1860618607%_))))
          (let ((_%__kont1860918610%_
                 (lambda (_%L2632%_ _%L2634%_ _%L2635%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L2635%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _%L2634%_
                                                 (foldr (lambda (_%g26542657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g26552660%_)
                  (cons _%g26542657%_ _%g26552660%_))
                '()
                _%L2632%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1861318614%_
                 (lambda (_%L2547%_ _%L2549%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L2549%_ '()) (cons _%L2547%_ '()))))))
            (let* ((_%__match1866118662%_
                    (lambda (_%e24962517%_
                             _%hd24972521%_
                             _%tl24982524%_
                             _%e24992527%_
                             _%hd25002531%_
                             _%tl25012534%_
                             _%e25022537%_
                             _%hd25032541%_
                             _%tl25042544%_)
                      (let ((_%L2547%_ _%hd25032541%_)
                            (_%L2549%_ _%hd25002531%_))
                        (if (gx#identifier? _%L2549%_)
                            (_%__kont1861318614%_ _%L2547%_ _%L2549%_)
                            (let () (declare (not safe)) (_%g24712510%_))))))
                   (_%__match1865318654%_
                    (lambda (_%e24962517%_
                             _%hd24972521%_
                             _%tl24982524%_
                             _%e24992527%_
                             _%hd25002531%_
                             _%tl25012534%_)
                      (if (gx#stx-pair? _%tl25012534%_)
                          (let ((_%e25022537%_ (gx#syntax-e _%tl25012534%_)))
                            (let ((_%tl25042544%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e25022537%_)))
                                  (_%hd25032541%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e25022537%_))))
                              (if (gx#stx-null? _%tl25042544%_)
                                  (_%__match1866118662%_
                                   _%e24962517%_
                                   _%hd24972521%_
                                   _%tl24982524%_
                                   _%e24992527%_
                                   _%hd25002531%_
                                   _%tl25012534%_
                                   _%e25022537%_
                                   _%hd25032541%_
                                   _%tl25042544%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g24712510%_)))))
                          (let () (declare (not safe)) (_%g24712510%_)))))
                   (_%__match1864118642%_
                    (lambda (_%e24762572%_
                             _%hd24772576%_
                             _%tl24782579%_
                             _%e24792582%_
                             _%hd24802586%_
                             _%tl24812589%_
                             _%e24822592%_
                             _%hd24832596%_
                             _%tl24842599%_
                             _%__splice1861118612%_
                             _%target24852602%_
                             _%tl24872605%_)
                      (letrec ((_%loop24882608%_
                                (lambda (_%hd24862612%_ _%body24922615%_)
                                  (if (gx#stx-pair? _%hd24862612%_)
                                      (let ((_%e24892618%_
                                             (gx#syntax-e _%hd24862612%_)))
                                        (let ((_%lp-tl24912625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e24892618%_)))
                                              (_%lp-hd24902622%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e24892618%_))))
                                          (_%loop24882608%_
                                           _%lp-tl24912625%_
                                           (cons _%lp-hd24902622%_
                                                 _%body24922615%_))))
                                      (let ((_%body24932628%_
                                             (reverse _%body24922615%_)))
                                        (let ((_%L2632%_ _%body24932628%_)
                                              (_%L2634%_ _%tl24842599%_)
                                              (_%L2635%_ _%hd24832596%_))
                                          (if (gx#identifier? _%L2635%_)
                                              (_%__kont1860918610%_
                                               _%L2632%_
                                               _%L2634%_
                                               _%L2635%_)
                                              (_%__match1865318654%_
                                               _%e24762572%_
                                               _%hd24772576%_
                                               _%tl24782579%_
                                               _%e24792582%_
                                               _%hd24802586%_
                                               _%tl24812589%_))))))))
                        (_%loop24882608%_ _%target24852602%_ '())))))
              (if (gx#stx-pair? _%__stx1860618607%_)
                  (let ((_%e24762572%_ (gx#syntax-e _%__stx1860618607%_)))
                    (let ((_%tl24782579%_
                           (let () (declare (not safe)) (##cdr _%e24762572%_)))
                          (_%hd24772576%_
                           (let ()
                             (declare (not safe))
                             (##car _%e24762572%_))))
                      (if (gx#stx-pair? _%tl24782579%_)
                          (let ((_%e24792582%_ (gx#syntax-e _%tl24782579%_)))
                            (let ((_%tl24812589%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e24792582%_)))
                                  (_%hd24802586%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e24792582%_))))
                              (if (gx#stx-pair? _%hd24802586%_)
                                  (let ((_%e24822592%_
                                         (gx#syntax-e _%hd24802586%_)))
                                    (let ((_%tl24842599%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e24822592%_)))
                                          (_%hd24832596%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e24822592%_))))
                                      (if (gx#stx-pair/null? _%tl24812589%_)
                                          (let ((_%__splice1861118612%_
                                                 (gx#syntax-split-splice
                                                  _%tl24812589%_
                                                  '0)))
                                            (let ((_%tl24872605%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1861118612%_
                                                      '1)))
                                                  (_%target24852602%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1861118612%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl24872605%_)
                                                  (_%__match1864118642%_
                                                   _%e24762572%_
                                                   _%hd24772576%_
                                                   _%tl24782579%_
                                                   _%e24792582%_
                                                   _%hd24802586%_
                                                   _%tl24812589%_
                                                   _%e24822592%_
                                                   _%hd24832596%_
                                                   _%tl24842599%_
                                                   _%__splice1861118612%_
                                                   _%target24852602%_
                                                   _%tl24872605%_)
                                                  (if (gx#stx-pair?
                                                       _%tl24812589%_)
                                                      (let ((_%e25022537%_
                                                             (gx#syntax-e
                                                              _%tl24812589%_)))
                                                        (let ((_%tl25042544%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e25022537%_)))
                      (_%hd25032541%_
                       (let () (declare (not safe)) (##car _%e25022537%_))))
                  (if (gx#stx-null? _%tl25042544%_)
                      (_%__match1866118662%_
                       _%e24762572%_
                       _%hd24772576%_
                       _%tl24782579%_
                       _%e24792582%_
                       _%hd24802586%_
                       _%tl24812589%_
                       _%e25022537%_
                       _%hd25032541%_
                       _%tl25042544%_)
                      (let () (declare (not safe)) (_%g24712510%_)))))
              (let () (declare (not safe)) (_%g24712510%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl24812589%_)
                                              (let ((_%e25022537%_
                                                     (gx#syntax-e
                                                      _%tl24812589%_)))
                                                (let ((_%tl25042544%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e25022537%_)))
                                                      (_%hd25032541%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e25022537%_))))
                                                  (if (gx#stx-null?
                                                       _%tl25042544%_)
                                                      (_%__match1866118662%_
                                                       _%e24762572%_
                                                       _%hd24772576%_
                                                       _%tl24782579%_
                                                       _%e24792582%_
                                                       _%hd24802586%_
                                                       _%tl24812589%_
                                                       _%e25022537%_
                                                       _%hd25032541%_
                                                       _%tl25042544%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g24712510%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g24712510%_))))))
                                  (if (gx#stx-pair? _%tl24812589%_)
                                      (let ((_%e25022537%_
                                             (gx#syntax-e _%tl24812589%_)))
                                        (let ((_%tl25042544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e25022537%_)))
                                              (_%hd25032541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e25022537%_))))
                                          (if (gx#stx-null? _%tl25042544%_)
                                              (_%__match1866118662%_
                                               _%e24762572%_
                                               _%hd24772576%_
                                               _%tl24782579%_
                                               _%e24792582%_
                                               _%hd24802586%_
                                               _%tl24812589%_
                                               _%e25022537%_
                                               _%hd25032541%_
                                               _%tl25042544%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g24712510%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g24712510%_))))))
                          (let () (declare (not safe)) (_%g24712510%_)))))
                  (let () (declare (not safe)) (_%g24712510%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*-values|
      (lambda (_%$stx2668%_)
        (let* ((_%__stx1866418665%_ _%$stx2668%_)
               (_%g26732718%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1866418665%_))))
          (let ((_%__kont1866718668%_
                 (lambda (_%L2876%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g28922895%_ _%g28932898%_)
                                        (cons _%g28922895%_ _%g28932898%_))
                                      '()
                                      _%L2876%_)))))
                (_%__kont1867118672%_
                 (lambda (_%L2785%_ _%L2787%_ _%L2788%_ _%L2789%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons _%L2788%_ '())
                               (cons (cons _%L2789%_
                                           (cons _%L2787%_
                                                 (foldr (lambda (_%g28102813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g28112816%_)
                  (cons _%g28102813%_ _%g28112816%_))
                '()
                _%L2785%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match1872318724%_
                    (lambda (_%e26952725%_
                             _%hd26962729%_
                             _%tl26972732%_
                             _%e26982735%_
                             _%hd26992739%_
                             _%tl27002742%_
                             _%e27012745%_
                             _%hd27022749%_
                             _%tl27032752%_
                             _%__splice1867318674%_
                             _%target27042755%_
                             _%tl27062758%_)
                      (letrec ((_%loop27072761%_
                                (lambda (_%hd27052765%_ _%body27112768%_)
                                  (if (gx#stx-pair? _%hd27052765%_)
                                      (let ((_%e27082771%_
                                             (gx#syntax-e _%hd27052765%_)))
                                        (let ((_%lp-tl27102778%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e27082771%_)))
                                              (_%lp-hd27092775%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e27082771%_))))
                                          (_%loop27072761%_
                                           _%lp-tl27102778%_
                                           (cons _%lp-hd27092775%_
                                                 _%body27112768%_))))
                                      (let ((_%body27122781%_
                                             (reverse _%body27112768%_)))
                                        (_%__kont1867118672%_
                                         _%body27122781%_
                                         _%tl27032752%_
                                         _%hd27022749%_
                                         _%hd26962729%_))))))
                        (_%loop27072761%_ _%target27042755%_ '()))))
                   (_%__match1869718698%_
                    (lambda (_%e26762826%_
                             _%hd26772830%_
                             _%tl26782833%_
                             _%e26792836%_
                             _%hd26802840%_
                             _%tl26812843%_
                             _%__splice1866918670%_
                             _%target26822846%_
                             _%tl26842849%_)
                      (letrec ((_%loop26852852%_
                                (lambda (_%hd26832856%_ _%body26892859%_)
                                  (if (gx#stx-pair? _%hd26832856%_)
                                      (let ((_%e26862862%_
                                             (gx#syntax-e _%hd26832856%_)))
                                        (let ((_%lp-tl26882869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e26862862%_)))
                                              (_%lp-hd26872866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e26862862%_))))
                                          (_%loop26852852%_
                                           _%lp-tl26882869%_
                                           (cons _%lp-hd26872866%_
                                                 _%body26892859%_))))
                                      (let ((_%body26902872%_
                                             (reverse _%body26892859%_)))
                                        (_%__kont1866718668%_
                                         _%body26902872%_))))))
                        (_%loop26852852%_ _%target26822846%_ '())))))
              (if (gx#stx-pair? _%__stx1866418665%_)
                  (let ((_%e26762826%_ (gx#syntax-e _%__stx1866418665%_)))
                    (let ((_%tl26782833%_
                           (let () (declare (not safe)) (##cdr _%e26762826%_)))
                          (_%hd26772830%_
                           (let ()
                             (declare (not safe))
                             (##car _%e26762826%_))))
                      (if (gx#stx-pair? _%tl26782833%_)
                          (let ((_%e26792836%_ (gx#syntax-e _%tl26782833%_)))
                            (let ((_%tl26812843%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e26792836%_)))
                                  (_%hd26802840%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e26792836%_))))
                              (if (gx#stx-null? _%hd26802840%_)
                                  (if (gx#stx-pair/null? _%tl26812843%_)
                                      (let ((_%__splice1866918670%_
                                             (gx#syntax-split-splice
                                              _%tl26812843%_
                                              '0)))
                                        (let ((_%tl26842849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1866918670%_
                                                  '1)))
                                              (_%target26822846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1866918670%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl26842849%_)
                                              (_%__match1869718698%_
                                               _%e26762826%_
                                               _%hd26772830%_
                                               _%tl26782833%_
                                               _%e26792836%_
                                               _%hd26802840%_
                                               _%tl26812843%_
                                               _%__splice1866918670%_
                                               _%target26822846%_
                                               _%tl26842849%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g26732718%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g26732718%_)))
                                  (if (gx#stx-pair? _%hd26802840%_)
                                      (let ((_%e27012745%_
                                             (gx#syntax-e _%hd26802840%_)))
                                        (let ((_%tl27032752%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e27012745%_)))
                                              (_%hd27022749%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e27012745%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl26812843%_)
                                              (let ((_%__splice1867318674%_
                                                     (gx#syntax-split-splice
                                                      _%tl26812843%_
                                                      '0)))
                                                (let ((_%tl27062758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1867318674%_
                                                          '1)))
                                                      (_%target27042755%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1867318674%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl27062758%_)
                                                      (_%__match1872318724%_
                                                       _%e26762826%_
                                                       _%hd26772830%_
                                                       _%tl26782833%_
                                                       _%e26792836%_
                                                       _%hd26802840%_
                                                       _%tl26812843%_
                                                       _%e27012745%_
                                                       _%hd27022749%_
                                                       _%tl27032752%_
                                                       _%__splice1867318674%_
                                                       _%target27042755%_
                                                       _%tl27062758%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g26732718%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g26732718%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g26732718%_))))))
                          (let () (declare (not safe)) (_%g26732718%_)))))
                  (let () (declare (not safe)) (_%g26732718%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let|
      (lambda (_%$stx2907%_)
        (let* ((_%__stx1872618727%_ _%$stx2907%_)
               (_%g29122976%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1872618727%_))))
          (let ((_%__kont1872918730%_
                 (lambda (_%L3182%_ _%L3184%_ _%L3185%_ _%L3186%_ _%L3187%_)
                   (cons (cons (gx#datum->syntax '#f 'letrec-values)
                               (cons (cons (cons (cons _%L3187%_ '())
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda%)
                                                             (cons (foldr (lambda (_%g32163219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%g32173222%_)
                                    (cons _%g32163219%_ _%g32173222%_))
                                  _%L3184%_
                                  _%L3186%_)
                           (foldr (lambda (_%g32143225%_ _%g32153228%_)
                                    (cons _%g32143225%_ _%g32153228%_))
                                  '()
                                  _%L3182%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L3187%_ '())))
                         (foldr (lambda (_%g32123231%_ _%g32133234%_)
                                  (cons _%g32123231%_ _%g32133234%_))
                                '()
                                _%L3185%_))))
                (_%__kont1873518736%_
                 (lambda (_%L3033%_ _%L3035%_)
                   (cons (gx#datum->syntax '#f '~let)
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons _%L3035%_
                                     (foldr (lambda (_%g30523055%_
                                                     _%g30533058%_)
                                              (cons _%g30523055%_
                                                    _%g30533058%_))
                                            '()
                                            _%L3033%_)))))))
            (let* ((_%__match1878318784%_
                    (lambda (_%e29562983%_
                             _%hd29572987%_
                             _%tl29582990%_
                             _%e29592993%_
                             _%hd29602997%_
                             _%tl29613000%_
                             _%__splice1873718738%_
                             _%target29623003%_
                             _%tl29643006%_)
                      (letrec ((_%loop29653009%_
                                (lambda (_%hd29633013%_ _%body29693016%_)
                                  (if (gx#stx-pair? _%hd29633013%_)
                                      (let ((_%e29663019%_
                                             (gx#syntax-e _%hd29633013%_)))
                                        (let ((_%lp-tl29683026%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e29663019%_)))
                                              (_%lp-hd29673023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e29663019%_))))
                                          (_%loop29653009%_
                                           _%lp-tl29683026%_
                                           (cons _%lp-hd29673023%_
                                                 _%body29693016%_))))
                                      (let ((_%body29703029%_
                                             (reverse _%body29693016%_)))
                                        (_%__kont1873518736%_
                                         _%body29703029%_
                                         _%hd29602997%_))))))
                        (_%loop29653009%_ _%target29623003%_ '()))))
                   (_%__match1877518776%_
                    (lambda (_%e29562983%_
                             _%hd29572987%_
                             _%tl29582990%_
                             _%e29592993%_
                             _%hd29602997%_
                             _%tl29613000%_)
                      (if (gx#stx-pair/null? _%tl29613000%_)
                          (let ((_%__splice1873718738%_
                                 (gx#syntax-split-splice _%tl29613000%_ '0)))
                            (let ((_%tl29643006%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1873718738%_ '1)))
                                  (_%target29623003%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1873718738%_
                                      '0))))
                              (if (gx#stx-null? _%tl29643006%_)
                                  (_%__match1878318784%_
                                   _%e29562983%_
                                   _%hd29572987%_
                                   _%tl29582990%_
                                   _%e29592993%_
                                   _%hd29602997%_
                                   _%tl29613000%_
                                   _%__splice1873718738%_
                                   _%target29623003%_
                                   _%tl29643006%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g29122976%_)))))
                          (let () (declare (not safe)) (_%g29122976%_)))))
                   (_%__match1876318764%_
                    (lambda (_%e29193068%_
                             _%hd29203072%_
                             _%tl29213075%_
                             _%e29223078%_
                             _%hd29233082%_
                             _%tl29243085%_
                             _%e29253088%_
                             _%hd29263092%_
                             _%tl29273095%_
                             _%__splice1873118732%_
                             _%target29283098%_
                             _%tl29303101%_)
                      (letrec ((_%loop29313104%_
                                (lambda (_%hd29293108%_
                                         _%arg29353111%_
                                         _%var29363113%_)
                                  (if (gx#stx-pair? _%hd29293108%_)
                                      (let ((_%e29323116%_
                                             (gx#syntax-e _%hd29293108%_)))
                                        (let ((_%lp-tl29343123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e29323116%_)))
                                              (_%lp-hd29333120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e29323116%_))))
                                          (if (gx#stx-pair? _%lp-hd29333120%_)
                                              (let ((_%e29483126%_
                                                     (gx#syntax-e
                                                      _%lp-hd29333120%_)))
                                                (let ((_%tl29503133%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e29483126%_)))
                                                      (_%hd29493130%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e29483126%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl29503133%_)
                                                      (let ((_%e29513136%_
                                                             (gx#syntax-e
                                                              _%tl29503133%_)))
                                                        (let ((_%tl29533143%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e29513136%_)))
                      (_%hd29523140%_
                       (let () (declare (not safe)) (##car _%e29513136%_))))
                  (if (gx#stx-null? _%tl29533143%_)
                      (_%loop29313104%_
                       _%lp-tl29343123%_
                       (cons _%hd29523140%_ _%arg29353111%_)
                       (cons _%hd29493130%_ _%var29363113%_))
                      (_%__match1877518776%_
                       _%e29193068%_
                       _%hd29203072%_
                       _%tl29213075%_
                       _%e29223078%_
                       _%hd29233082%_
                       _%tl29243085%_))))
              (_%__match1877518776%_
               _%e29193068%_
               _%hd29203072%_
               _%tl29213075%_
               _%e29223078%_
               _%hd29233082%_
               _%tl29243085%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__match1877518776%_
                                               _%e29193068%_
                                               _%hd29203072%_
                                               _%tl29213075%_
                                               _%e29223078%_
                                               _%hd29233082%_
                                               _%tl29243085%_))))
                                      (let ((_%var29383149%_
                                             (reverse _%var29363113%_))
                                            (_%arg29373146%_
                                             (reverse _%arg29353111%_)))
                                        (if (gx#stx-pair/null? _%tl29273095%_)
                                            (let ((_%__splice1873318734%_
                                                   (gx#syntax-split-splice
                                                    _%tl29273095%_
                                                    '0)))
                                              (let ((_%tl29413155%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1873318734%_
                                                        '1)))
                                                    (_%target29393152%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1873318734%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl29413155%_)
                                                    (letrec ((_%loop29423158%_
                                                              (lambda (_%hd29403162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body29463165%_)
                        (if (gx#stx-pair? _%hd29403162%_)
                            (let ((_%e29433168%_ (gx#syntax-e _%hd29403162%_)))
                              (let ((_%lp-tl29453175%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e29433168%_)))
                                    (_%lp-hd29443172%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e29433168%_))))
                                (_%loop29423158%_
                                 _%lp-tl29453175%_
                                 (cons _%lp-hd29443172%_ _%body29463165%_))))
                            (let ((_%body29473178%_
                                   (reverse _%body29463165%_)))
                              (let ((_%L3182%_ _%body29473178%_)
                                    (_%L3184%_ _%tl29303101%_)
                                    (_%L3185%_ _%arg29373146%_)
                                    (_%L3186%_ _%var29383149%_)
                                    (_%L3187%_ _%hd29233082%_))
                                (if (gx#identifier? _%L3187%_)
                                    (_%__kont1872918730%_
                                     _%L3182%_
                                     _%L3184%_
                                     _%L3185%_
                                     _%L3186%_
                                     _%L3187%_)
                                    (_%__match1877518776%_
                                     _%e29193068%_
                                     _%hd29203072%_
                                     _%tl29213075%_
                                     _%e29223078%_
                                     _%hd29233082%_
                                     _%tl29243085%_))))))))
              (_%loop29423158%_ _%target29393152%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match1877518776%_
                                                     _%e29193068%_
                                                     _%hd29203072%_
                                                     _%tl29213075%_
                                                     _%e29223078%_
                                                     _%hd29233082%_
                                                     _%tl29243085%_))))
                                            (_%__match1877518776%_
                                             _%e29193068%_
                                             _%hd29203072%_
                                             _%tl29213075%_
                                             _%e29223078%_
                                             _%hd29233082%_
                                             _%tl29243085%_)))))))
                        (_%loop29313104%_ _%target29283098%_ '() '())))))
              (if (gx#stx-pair? _%__stx1872618727%_)
                  (let ((_%e29193068%_ (gx#syntax-e _%__stx1872618727%_)))
                    (let ((_%tl29213075%_
                           (let () (declare (not safe)) (##cdr _%e29193068%_)))
                          (_%hd29203072%_
                           (let ()
                             (declare (not safe))
                             (##car _%e29193068%_))))
                      (if (gx#stx-pair? _%tl29213075%_)
                          (let ((_%e29223078%_ (gx#syntax-e _%tl29213075%_)))
                            (let ((_%tl29243085%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e29223078%_)))
                                  (_%hd29233082%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e29223078%_))))
                              (if (gx#stx-pair? _%tl29243085%_)
                                  (let ((_%e29253088%_
                                         (gx#syntax-e _%tl29243085%_)))
                                    (let ((_%tl29273095%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e29253088%_)))
                                          (_%hd29263092%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e29253088%_))))
                                      (if (gx#stx-pair/null? _%hd29263092%_)
                                          (let ((_%__splice1873118732%_
                                                 (gx#syntax-split-splice
                                                  _%hd29263092%_
                                                  '0)))
                                            (let ((_%tl29303101%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1873118732%_
                                                      '1)))
                                                  (_%target29283098%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1873118732%_
                                                      '0))))
                                              (_%__match1876318764%_
                                               _%e29193068%_
                                               _%hd29203072%_
                                               _%tl29213075%_
                                               _%e29223078%_
                                               _%hd29233082%_
                                               _%tl29243085%_
                                               _%e29253088%_
                                               _%hd29263092%_
                                               _%tl29273095%_
                                               _%__splice1873118732%_
                                               _%target29283098%_
                                               _%tl29303101%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl29243085%_)
                                              (let ((_%__splice1873718738%_
                                                     (gx#syntax-split-splice
                                                      _%tl29243085%_
                                                      '0)))
                                                (let ((_%tl29643006%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1873718738%_
                                                          '1)))
                                                      (_%target29623003%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1873718738%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl29643006%_)
                                                      (_%__match1878318784%_
                                                       _%e29193068%_
                                                       _%hd29203072%_
                                                       _%tl29213075%_
                                                       _%e29223078%_
                                                       _%hd29233082%_
                                                       _%tl29243085%_
                                                       _%__splice1873718738%_
                                                       _%target29623003%_
                                                       _%tl29643006%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g29122976%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g29122976%_))))))
                                  (if (gx#stx-pair/null? _%tl29243085%_)
                                      (let ((_%__splice1873718738%_
                                             (gx#syntax-split-splice
                                              _%tl29243085%_
                                              '0)))
                                        (let ((_%tl29643006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1873718738%_
                                                  '1)))
                                              (_%target29623003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1873718738%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl29643006%_)
                                              (_%__match1878318784%_
                                               _%e29193068%_
                                               _%hd29203072%_
                                               _%tl29213075%_
                                               _%e29223078%_
                                               _%hd29233082%_
                                               _%tl29243085%_
                                               _%__splice1873718738%_
                                               _%target29623003%_
                                               _%tl29643006%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g29122976%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g29122976%_))))))
                          (let () (declare (not safe)) (_%g29122976%_)))))
                  (let () (declare (not safe)) (_%g29122976%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*|
      (lambda (_%$stx3244%_)
        (let* ((_%g32483272%_
                (lambda (_%g32493268%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g32493268%_)))
               (_%g32473357%_
                (lambda (_%g32493276%_)
                  (if (gx#stx-pair? _%g32493276%_)
                      (let ((_%e32523279%_ (gx#syntax-e _%g32493276%_)))
                        (let ((_%hd32533283%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e32523279%_)))
                              (_%tl32543286%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e32523279%_))))
                          (if (gx#stx-pair? _%tl32543286%_)
                              (let ((_%e32553289%_
                                     (gx#syntax-e _%tl32543286%_)))
                                (let ((_%hd32563293%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e32553289%_)))
                                      (_%tl32573296%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e32553289%_))))
                                  (if (gx#stx-pair/null? _%tl32573296%_)
                                      (let ((_g20901_
                                             (gx#syntax-split-splice
                                              _%tl32573296%_
                                              '0)))
                                        (begin
                                          (let ((_g20902_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20901_)
                                                       (##vector-length
                                                        _g20901_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20902_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20902_)))
                                          (let ((_%target32583299%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20901_ 0)))
                                                (_%tl32603302%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20901_ 1))))
                                            (if (gx#stx-null? _%tl32603302%_)
                                                (letrec ((_%loop32613305%_
                                                          (lambda (_%hd32593309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body32653312%_)
                    (if (gx#stx-pair? _%hd32593309%_)
                        (let ((_%e32623315%_ (gx#syntax-e _%hd32593309%_)))
                          (let ((_%lp-hd32633319%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e32623315%_)))
                                (_%lp-tl32643322%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e32623315%_))))
                            (_%loop32613305%_
                             _%lp-tl32643322%_
                             (cons _%lp-hd32633319%_ _%body32653312%_))))
                        (let ((_%body32663325%_ (reverse _%body32653312%_)))
                          ((lambda (_%L3329%_ _%L3331%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'let*-values)
                                         (cons _%L3331%_
                                               (foldr (lambda (_%g33483351%_
                                                               _%g33493354%_)
                                                        (cons _%g33483351%_
                                                              _%g33493354%_))
                                                      '()
                                                      _%L3329%_)))))
                           _%body32663325%_
                           _%hd32563293%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop32613305%_
                                                   _%target32583299%_
                                                   '()))
                                                (_%g32483272%_
                                                 _%g32493276%_)))))
                                      (_%g32483272%_ _%g32493276%_))))
                              (_%g32483272%_ _%g32493276%_))))
                      (_%g32483272%_ _%g32493276%_)))))
          (_%g32473357%_ _%$stx3244%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec|
      (lambda (_%$stx3362%_)
        (let* ((_%g33663390%_
                (lambda (_%g33673386%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g33673386%_)))
               (_%g33653475%_
                (lambda (_%g33673394%_)
                  (if (gx#stx-pair? _%g33673394%_)
                      (let ((_%e33703397%_ (gx#syntax-e _%g33673394%_)))
                        (let ((_%hd33713401%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e33703397%_)))
                              (_%tl33723404%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e33703397%_))))
                          (if (gx#stx-pair? _%tl33723404%_)
                              (let ((_%e33733407%_
                                     (gx#syntax-e _%tl33723404%_)))
                                (let ((_%hd33743411%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e33733407%_)))
                                      (_%tl33753414%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e33733407%_))))
                                  (if (gx#stx-pair/null? _%tl33753414%_)
                                      (let ((_g20903_
                                             (gx#syntax-split-splice
                                              _%tl33753414%_
                                              '0)))
                                        (begin
                                          (let ((_g20904_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20903_)
                                                       (##vector-length
                                                        _g20903_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20904_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20904_)))
                                          (let ((_%target33763417%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20903_ 0)))
                                                (_%tl33783420%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20903_ 1))))
                                            (if (gx#stx-null? _%tl33783420%_)
                                                (letrec ((_%loop33793423%_
                                                          (lambda (_%hd33773427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body33833430%_)
                    (if (gx#stx-pair? _%hd33773427%_)
                        (let ((_%e33803433%_ (gx#syntax-e _%hd33773427%_)))
                          (let ((_%lp-hd33813437%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e33803433%_)))
                                (_%lp-tl33823440%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e33803433%_))))
                            (_%loop33793423%_
                             _%lp-tl33823440%_
                             (cons _%lp-hd33813437%_ _%body33833430%_))))
                        (let ((_%body33843443%_ (reverse _%body33833430%_)))
                          ((lambda (_%L3447%_ _%L3449%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec-values)
                                         (cons _%L3449%_
                                               (foldr (lambda (_%g34663469%_
                                                               _%g34673472%_)
                                                        (cons _%g34663469%_
                                                              _%g34673472%_))
                                                      '()
                                                      _%L3447%_)))))
                           _%body33843443%_
                           _%hd33743411%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop33793423%_
                                                   _%target33763417%_
                                                   '()))
                                                (_%g33663390%_
                                                 _%g33673394%_)))))
                                      (_%g33663390%_ _%g33673394%_))))
                              (_%g33663390%_ _%g33673394%_))))
                      (_%g33663390%_ _%g33673394%_)))))
          (_%g33653475%_ _%$stx3362%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec*|
      (lambda (_%$stx3480%_)
        (let* ((_%g34843508%_
                (lambda (_%g34853504%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g34853504%_)))
               (_%g34833593%_
                (lambda (_%g34853512%_)
                  (if (gx#stx-pair? _%g34853512%_)
                      (let ((_%e34883515%_ (gx#syntax-e _%g34853512%_)))
                        (let ((_%hd34893519%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e34883515%_)))
                              (_%tl34903522%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e34883515%_))))
                          (if (gx#stx-pair? _%tl34903522%_)
                              (let ((_%e34913525%_
                                     (gx#syntax-e _%tl34903522%_)))
                                (let ((_%hd34923529%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e34913525%_)))
                                      (_%tl34933532%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e34913525%_))))
                                  (if (gx#stx-pair/null? _%tl34933532%_)
                                      (let ((_g20905_
                                             (gx#syntax-split-splice
                                              _%tl34933532%_
                                              '0)))
                                        (begin
                                          (let ((_g20906_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20905_)
                                                       (##vector-length
                                                        _g20905_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20906_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20906_)))
                                          (let ((_%target34943535%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20905_ 0)))
                                                (_%tl34963538%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20905_ 1))))
                                            (if (gx#stx-null? _%tl34963538%_)
                                                (letrec ((_%loop34973541%_
                                                          (lambda (_%hd34953545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body35013548%_)
                    (if (gx#stx-pair? _%hd34953545%_)
                        (let ((_%e34983551%_ (gx#syntax-e _%hd34953545%_)))
                          (let ((_%lp-hd34993555%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e34983551%_)))
                                (_%lp-tl35003558%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e34983551%_))))
                            (_%loop34973541%_
                             _%lp-tl35003558%_
                             (cons _%lp-hd34993555%_ _%body35013548%_))))
                        (let ((_%body35023561%_ (reverse _%body35013548%_)))
                          ((lambda (_%L3565%_ _%L3567%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec*-values)
                                         (cons _%L3567%_
                                               (foldr (lambda (_%g35843587%_
                                                               _%g35853590%_)
                                                        (cons _%g35843587%_
                                                              _%g35853590%_))
                                                      '()
                                                      _%L3565%_)))))
                           _%body35023561%_
                           _%hd34923529%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop34973541%_
                                                   _%target34943535%_
                                                   '()))
                                                (_%g34843508%_
                                                 _%g34853512%_)))))
                                      (_%g34843508%_ _%g34853512%_))))
                              (_%g34843508%_ _%g34853512%_))))
                      (_%g34843508%_ _%g34853512%_)))))
          (_%g34833593%_ _%$stx3480%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#~let|
      (lambda (_%stx3598%_)
        (letrec ((_%let-head?3601%_
                  (lambda (_%x4081%_)
                    (let* ((_%__stx1878618787%_ _%x4081%_)
                           (_%g40854096%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1878618787%_))))
                      (let ((_%__kont1878918790%_
                             (lambda (_%L4124%_)
                               (gx#stx-andmap gx#identifier? _%L4124%_)))
                            (_%__kont1879118792%_
                             (lambda () (gx#identifier? _%x4081%_))))
                        (if (gx#stx-pair? _%__stx1878618787%_)
                            (let ((_%e40884114%_
                                   (gx#syntax-e _%__stx1878618787%_)))
                              (let ((_%tl40904121%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e40884114%_)))
                                    (_%hd40894118%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e40884114%_))))
                                (if (gx#identifier? _%hd40894118%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g20907_|
                                         _%hd40894118%_)
                                        (_%__kont1878918790%_ _%tl40904121%_)
                                        (_%__kont1879118792%_))
                                    (_%__kont1879118792%_))))
                            (_%__kont1879118792%_))))))
                 (_%let-head3603%_
                  (lambda (_%x4021%_)
                    (let* ((_%__stx1880618807%_ _%x4021%_)
                           (_%g40254036%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1880618807%_))))
                      (let ((_%__kont1880918810%_
                             (lambda (_%L4064%_) _%L4064%_))
                            (_%__kont1881118812%_
                             (lambda () (list _%x4021%_))))
                        (if (gx#stx-pair? _%__stx1880618807%_)
                            (let ((_%e40284054%_
                                   (gx#syntax-e _%__stx1880618807%_)))
                              (let ((_%tl40304061%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e40284054%_)))
                                    (_%hd40294058%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e40284054%_))))
                                (if (gx#identifier? _%hd40294058%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g20908_|
                                         _%hd40294058%_)
                                        (_%__kont1880918810%_ _%tl40304061%_)
                                        (_%__kont1881118812%_))
                                    (_%__kont1881118812%_))))
                            (_%__kont1881118812%_)))))))
          (let* ((_%__stx1882618827%_ _%stx3598%_)
                 (_%g36063672%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1882618827%_))))
            (let ((_%__kont1882918830%_
                   (lambda (_%L3990%_ _%L3992%_ _%L3993%_ _%L3994%_ _%L3995%_)
                     (cons _%L3995%_
                           (cons _%L3994%_
                                 (cons (cons (cons _%L3993%_
                                                   (cons _%L3992%_ '()))
                                             '())
                                       _%L3990%_)))))
                  (_%__kont1883118832%_
                   (lambda (_%L3793%_ _%L3795%_ _%L3796%_ _%L3797%_)
                     (let* ((_%g38323849%_
                             (lambda (_%g38333845%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g38333845%_)))
                            (_%g38313921%_
                             (lambda (_%g38333853%_)
                               (if (gx#stx-pair/null? _%g38333853%_)
                                   (let ((_g20909_
                                          (gx#syntax-split-splice
                                           _%g38333853%_
                                           '0)))
                                     (begin
                                       (let ((_g20910_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20909_)
                                                    (##vector-length _g20909_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20910_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20910_)))
                                       (let ((_%target38353856%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20909_ 0)))
                                             (_%tl38373859%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20909_ 1))))
                                         (if (gx#stx-null? _%tl38373859%_)
                                             (letrec ((_%loop38383862%_
                                                       (lambda (_%hd38363866%_
                                                                _%hd-bind38423869%_)
                                                         (if (gx#stx-pair?
                                                              _%hd38363866%_)
                                                             (let ((_%e38393872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd38363866%_)))
                       (let ((_%lp-hd38403876%_
                              (let ()
                                (declare (not safe))
                                (##car _%e38393872%_)))
                             (_%lp-tl38413879%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e38393872%_))))
                         (_%loop38383862%_
                          _%lp-tl38413879%_
                          (cons _%lp-hd38403876%_ _%hd-bind38423869%_))))
                     (let ((_%hd-bind38433882%_ (reverse _%hd-bind38423869%_)))
                       ((lambda (_%L3886%_)
                          (cons _%L3797%_
                                (cons (begin
                                        (gx#syntax-check-splice-targets
                                         _%L3795%_
                                         _%L3886%_)
                                        (foldr (lambda (_%g39033907%_
                                                        _%g39043910%_
                                                        _%g39053912%_)
                                                 (cons (cons _%g39043910%_
                                                             (cons _%g39033907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%g39053912%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _%L3795%_
                                               _%L3886%_))
                                      (foldr (lambda (_%g39013915%_
                                                      _%g39023918%_)
                                               (cons _%g39013915%_
                                                     _%g39023918%_))
                                             '()
                                             _%L3793%_))))
                        _%hd-bind38433882%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop38383862%_
                                                _%target38353856%_
                                                '()))
                                             (_%g38323849%_ _%g38333853%_)))))
                                   (_%g38323849%_ _%g38333853%_)))))
                       (_%g38313921%_
                        (gx#stx-map
                         _%let-head3603%_
                         (foldr (lambda (_%g39243927%_ _%g39253930%_)
                                  (cons _%g39243927%_ _%g39253930%_))
                                '()
                                _%L3796%_)))))))
              (let* ((_%__match1889518896%_
                      (lambda (_%e36323679%_
                               _%hd36333683%_
                               _%tl36343686%_
                               _%e36353689%_
                               _%hd36363693%_
                               _%tl36373696%_
                               _%e36383699%_
                               _%hd36393703%_
                               _%tl36403706%_
                               _%__splice1883318834%_
                               _%target36413709%_
                               _%tl36433712%_)
                        (letrec ((_%loop36443715%_
                                  (lambda (_%hd36423719%_
                                           _%e36483722%_
                                           _%hd36493724%_)
                                    (if (gx#stx-pair? _%hd36423719%_)
                                        (let ((_%e36453727%_
                                               (gx#syntax-e _%hd36423719%_)))
                                          (let ((_%lp-tl36473734%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e36453727%_)))
                                                (_%lp-hd36463731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e36453727%_))))
                                            (if (gx#stx-pair?
                                                 _%lp-hd36463731%_)
                                                (let ((_%e36613737%_
                                                       (gx#syntax-e
                                                        _%lp-hd36463731%_)))
                                                  (let ((_%tl36633744%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e36613737%_)))
                                                        (_%hd36623741%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e36613737%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl36633744%_)
                                                        (let ((_%e36643747%_
                                                               (gx#syntax-e
                                                                _%tl36633744%_)))
                                                          (let ((_%tl36663754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e36643747%_)))
                        (_%hd36653751%_
                         (let () (declare (not safe)) (##car _%e36643747%_))))
                    (if (gx#stx-null? _%tl36663754%_)
                        (_%loop36443715%_
                         _%lp-tl36473734%_
                         (cons _%hd36653751%_ _%e36483722%_)
                         (cons _%hd36623741%_ _%hd36493724%_))
                        (let () (declare (not safe)) (_%g36063672%_)))))
                (let () (declare (not safe)) (_%g36063672%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g36063672%_)))))
                                        (let ((_%hd36513760%_
                                               (reverse _%hd36493724%_))
                                              (_%e36503757%_
                                               (reverse _%e36483722%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl36403706%_)
                                              (let ((_%__splice1883518836%_
                                                     (gx#syntax-split-splice
                                                      _%tl36403706%_
                                                      '0)))
                                                (let ((_%tl36543766%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1883518836%_
                                                          '1)))
                                                      (_%target36523763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1883518836%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl36543766%_)
                                                      (letrec ((_%loop36553769%_
                                                                (lambda (_%hd36533773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body36593776%_)
                          (if (gx#stx-pair? _%hd36533773%_)
                              (let ((_%e36563779%_
                                     (gx#syntax-e _%hd36533773%_)))
                                (let ((_%lp-tl36583786%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e36563779%_)))
                                      (_%lp-hd36573783%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e36563779%_))))
                                  (_%loop36553769%_
                                   _%lp-tl36583786%_
                                   (cons _%lp-hd36573783%_ _%body36593776%_))))
                              (let ((_%body36603789%_
                                     (reverse _%body36593776%_)))
                                (let ((_%L3793%_ _%body36603789%_)
                                      (_%L3795%_ _%e36503757%_)
                                      (_%L3796%_ _%hd36513760%_)
                                      (_%L3797%_ _%hd36363693%_))
                                  (if (gx#stx-andmap
                                       _%let-head?3601%_
                                       (foldr (lambda (_%g38233826%_
                                                       _%g38243829%_)
                                                (cons _%g38233826%_
                                                      _%g38243829%_))
                                              '()
                                              _%L3796%_))
                                      (_%__kont1883118832%_
                                       _%L3793%_
                                       _%L3795%_
                                       _%L3796%_
                                       _%L3797%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g36063672%_)))))))))
                (_%loop36553769%_ _%target36523763%_ '()))
              (let () (declare (not safe)) (_%g36063672%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g36063672%_))))))))
                          (_%loop36443715%_ _%target36413709%_ '() '()))))
                     (_%__match1886918870%_
                      (lambda (_%e36133940%_
                               _%hd36143944%_
                               _%tl36153947%_
                               _%e36163950%_
                               _%hd36173954%_
                               _%tl36183957%_
                               _%e36193960%_
                               _%hd36203964%_
                               _%tl36213967%_
                               _%e36223970%_
                               _%hd36233974%_
                               _%tl36243977%_
                               _%e36253980%_
                               _%hd36263984%_
                               _%tl36273987%_)
                        (let ((_%L3990%_ _%tl36213967%_)
                              (_%L3992%_ _%hd36263984%_)
                              (_%L3993%_ _%hd36233974%_)
                              (_%L3994%_ _%hd36173954%_)
                              (_%L3995%_ _%hd36143944%_))
                          (if (_%let-head?3601%_ _%L3993%_)
                              (_%__kont1882918830%_
                               _%L3990%_
                               _%L3992%_
                               _%L3993%_
                               _%L3994%_
                               _%L3995%_)
                              (if (gx#stx-pair/null? _%hd36203964%_)
                                  (let ((_%__splice1883318834%_
                                         (gx#syntax-split-splice
                                          _%hd36203964%_
                                          '0)))
                                    (let ((_%tl36433712%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1883318834%_
                                              '1)))
                                          (_%target36413709%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1883318834%_
                                              '0))))
                                      (if (gx#stx-null? _%tl36433712%_)
                                          (_%__match1889518896%_
                                           _%e36133940%_
                                           _%hd36143944%_
                                           _%tl36153947%_
                                           _%e36163950%_
                                           _%hd36173954%_
                                           _%tl36183957%_
                                           _%e36193960%_
                                           _%hd36203964%_
                                           _%tl36213967%_
                                           _%__splice1883318834%_
                                           _%target36413709%_
                                           _%tl36433712%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g36063672%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g36063672%_))))))))
                (if (gx#stx-pair? _%__stx1882618827%_)
                    (let ((_%e36133940%_ (gx#syntax-e _%__stx1882618827%_)))
                      (let ((_%tl36153947%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e36133940%_)))
                            (_%hd36143944%_
                             (let ()
                               (declare (not safe))
                               (##car _%e36133940%_))))
                        (if (gx#stx-pair? _%tl36153947%_)
                            (let ((_%e36163950%_ (gx#syntax-e _%tl36153947%_)))
                              (let ((_%tl36183957%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e36163950%_)))
                                    (_%hd36173954%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e36163950%_))))
                                (if (gx#stx-pair? _%tl36183957%_)
                                    (let ((_%e36193960%_
                                           (gx#syntax-e _%tl36183957%_)))
                                      (let ((_%tl36213967%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e36193960%_)))
                                            (_%hd36203964%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e36193960%_))))
                                        (if (gx#stx-pair? _%hd36203964%_)
                                            (let ((_%e36223970%_
                                                   (gx#syntax-e
                                                    _%hd36203964%_)))
                                              (let ((_%tl36243977%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e36223970%_)))
                                                    (_%hd36233974%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e36223970%_))))
                                                (if (gx#stx-pair?
                                                     _%tl36243977%_)
                                                    (let ((_%e36253980%_
                                                           (gx#syntax-e
                                                            _%tl36243977%_)))
                                                      (let ((_%tl36273987%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e36253980%_)))
                    (_%hd36263984%_
                     (let () (declare (not safe)) (##car _%e36253980%_))))
                (if (gx#stx-null? _%tl36273987%_)
                    (_%__match1886918870%_
                     _%e36133940%_
                     _%hd36143944%_
                     _%tl36153947%_
                     _%e36163950%_
                     _%hd36173954%_
                     _%tl36183957%_
                     _%e36193960%_
                     _%hd36203964%_
                     _%tl36213967%_
                     _%e36223970%_
                     _%hd36233974%_
                     _%tl36243977%_
                     _%e36253980%_
                     _%hd36263984%_
                     _%tl36273987%_)
                    (if (gx#stx-pair/null? _%hd36203964%_)
                        (let ((_%__splice1883318834%_
                               (gx#syntax-split-splice _%hd36203964%_ '0)))
                          (let ((_%tl36433712%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1883318834%_ '1)))
                                (_%target36413709%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1883318834%_ '0))))
                            (if (gx#stx-null? _%tl36433712%_)
                                (_%__match1889518896%_
                                 _%e36133940%_
                                 _%hd36143944%_
                                 _%tl36153947%_
                                 _%e36163950%_
                                 _%hd36173954%_
                                 _%tl36183957%_
                                 _%e36193960%_
                                 _%hd36203964%_
                                 _%tl36213967%_
                                 _%__splice1883318834%_
                                 _%target36413709%_
                                 _%tl36433712%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g36063672%_)))))
                        (let () (declare (not safe)) (_%g36063672%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%hd36203964%_)
                                                        (let ((_%__splice1883318834%_
                                                               (gx#syntax-split-splice
                                                                _%hd36203964%_
                                                                '0)))
                                                          (let ((_%tl36433712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice1883318834%_ '1)))
                        (_%target36413709%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice1883318834%_ '0))))
                    (if (gx#stx-null? _%tl36433712%_)
                        (_%__match1889518896%_
                         _%e36133940%_
                         _%hd36143944%_
                         _%tl36153947%_
                         _%e36163950%_
                         _%hd36173954%_
                         _%tl36183957%_
                         _%e36193960%_
                         _%hd36203964%_
                         _%tl36213967%_
                         _%__splice1883318834%_
                         _%target36413709%_
                         _%tl36433712%_)
                        (let () (declare (not safe)) (_%g36063672%_)))))
                (let () (declare (not safe)) (_%g36063672%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _%hd36203964%_)
                                                (let ((_%__splice1883318834%_
                                                       (gx#syntax-split-splice
                                                        _%hd36203964%_
                                                        '0)))
                                                  (let ((_%tl36433712%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1883318834%_
                                                            '1)))
                                                        (_%target36413709%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1883318834%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl36433712%_)
                                                        (_%__match1889518896%_
                                                         _%e36133940%_
                                                         _%hd36143944%_
                                                         _%tl36153947%_
                                                         _%e36163950%_
                                                         _%hd36173954%_
                                                         _%tl36183957%_
                                                         _%e36193960%_
                                                         _%hd36203964%_
                                                         _%tl36213967%_
                                                         _%__splice1883318834%_
                                                         _%target36413709%_
                                                         _%tl36433712%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g36063672%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g36063672%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g36063672%_)))))
                            (let () (declare (not safe)) (_%g36063672%_)))))
                    (let () (declare (not safe)) (_%g36063672%_)))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#and|
      (lambda (_%$stx4144%_)
        (let* ((_%__stx1889818899%_ _%$stx4144%_)
               (_%g41504176%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1889818899%_))))
          (let ((_%__kont1890118902%_ (lambda () '#t))
                (_%__kont1890318904%_ (lambda (_%L4248%_) _%L4248%_))
                (_%__kont1890518906%_
                 (lambda (_%L4203%_ _%L4205%_ _%L4206%_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _%L4205%_
                               (cons (cons _%L4206%_ _%L4203%_)
                                     (cons '#f '())))))))
            (if (gx#stx-pair? _%__stx1889818899%_)
                (let ((_%e41524268%_ (gx#syntax-e _%__stx1889818899%_)))
                  (let ((_%tl41544275%_
                         (let () (declare (not safe)) (##cdr _%e41524268%_)))
                        (_%hd41534272%_
                         (let () (declare (not safe)) (##car _%e41524268%_))))
                    (if (gx#stx-null? _%tl41544275%_)
                        (_%__kont1890118902%_)
                        (if (gx#stx-pair? _%tl41544275%_)
                            (let ((_%e41594238%_ (gx#syntax-e _%tl41544275%_)))
                              (let ((_%tl41614245%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e41594238%_)))
                                    (_%hd41604242%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e41594238%_))))
                                (if (gx#stx-null? _%tl41614245%_)
                                    (_%__kont1890318904%_ _%hd41604242%_)
                                    (_%__kont1890518906%_
                                     _%tl41614245%_
                                     _%hd41604242%_
                                     _%hd41534272%_))))
                            (let () (declare (not safe)) (_%g41504176%_))))))
                (let () (declare (not safe)) (_%g41504176%_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#or|
      (lambda (_%$stx4286%_)
        (let* ((_%__stx1894418945%_ _%$stx4286%_)
               (_%g42924318%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1894418945%_))))
          (let ((_%__kont1894718948%_ (lambda () '#f))
                (_%__kont1894918950%_ (lambda (_%L4390%_) _%L4390%_))
                (_%__kont1895118952%_
                 (lambda (_%L4345%_ _%L4347%_ _%L4348%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%L4347%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _%L4348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L4345%_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (gx#stx-pair? _%__stx1894418945%_)
                (let ((_%e42944410%_ (gx#syntax-e _%__stx1894418945%_)))
                  (let ((_%tl42964417%_
                         (let () (declare (not safe)) (##cdr _%e42944410%_)))
                        (_%hd42954414%_
                         (let () (declare (not safe)) (##car _%e42944410%_))))
                    (if (gx#stx-null? _%tl42964417%_)
                        (_%__kont1894718948%_)
                        (if (gx#stx-pair? _%tl42964417%_)
                            (let ((_%e43014380%_ (gx#syntax-e _%tl42964417%_)))
                              (let ((_%tl43034387%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e43014380%_)))
                                    (_%hd43024384%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e43014380%_))))
                                (if (gx#stx-null? _%tl43034387%_)
                                    (_%__kont1894918950%_ _%hd43024384%_)
                                    (_%__kont1895118952%_
                                     _%tl43034387%_
                                     _%hd43024384%_
                                     _%hd42954414%_))))
                            (let () (declare (not safe)) (_%g42924318%_))))))
                (let () (declare (not safe)) (_%g42924318%_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#cond|
      (lambda (_%$stx4428%_)
        (let* ((_%__stx1899018991%_ _%$stx4428%_)
               (_%g44374528%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1899018991%_))))
          (let ((_%__kont1899318994%_ (lambda () '#!void))
                (_%__kont1899518996%_
                 (lambda (_%L4875%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g48944897%_ _%g48954900%_)
                                        (cons _%g48944897%_ _%g48954900%_))
                                      '()
                                      _%L4875%_)))))
                (_%__kont1899919000%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'syntax-error)
                         (cons '"bad syntax; misplaced else" '()))))
                (_%__kont1900119002%_
                 (lambda (_%L4748%_ _%L4750%_ _%L4751%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%L4750%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _%L4751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L4748%_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1900319004%_
                 (lambda (_%L4686%_ _%L4688%_ _%L4689%_ _%L4690%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%L4689%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (cons _%L4688%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$e)
                           '()))
               (cons (cons _%L4690%_ _%L4686%_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1900519006%_
                 (lambda (_%L4595%_ _%L4597%_ _%L4598%_ _%L4599%_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _%L4598%_
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (foldr (lambda (_%g46204623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g46214626%_)
                  (cons _%g46204623%_ _%g46214626%_))
                '()
                _%L4597%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%L4599%_ _%L4595%_)
                                           '())))))))
            (let* ((_%__match1915119152%_
                    (lambda (_%e45054535%_
                             _%hd45064539%_
                             _%tl45074542%_
                             _%e45084545%_
                             _%hd45094549%_
                             _%tl45104552%_
                             _%e45114555%_
                             _%hd45124559%_
                             _%tl45134562%_
                             _%__splice1900719008%_
                             _%target45144565%_
                             _%tl45164568%_)
                      (letrec ((_%loop45174571%_
                                (lambda (_%hd45154575%_ _%body45214578%_)
                                  (if (gx#stx-pair? _%hd45154575%_)
                                      (let ((_%e45184581%_
                                             (gx#syntax-e _%hd45154575%_)))
                                        (let ((_%lp-tl45204588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e45184581%_)))
                                              (_%lp-hd45194585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e45184581%_))))
                                          (_%loop45174571%_
                                           _%lp-tl45204588%_
                                           (cons _%lp-hd45194585%_
                                                 _%body45214578%_))))
                                      (let ((_%body45224591%_
                                             (reverse _%body45214578%_)))
                                        (_%__kont1900519006%_
                                         _%tl45104552%_
                                         _%body45224591%_
                                         _%hd45124559%_
                                         _%hd45064539%_))))))
                        (_%loop45174571%_ _%target45144565%_ '()))))
                   (_%__match1904719048%_
                    (lambda (_%e44434815%_
                             _%hd44444819%_
                             _%tl44454822%_
                             _%e44464825%_
                             _%hd44474829%_
                             _%tl44484832%_
                             _%e44494835%_
                             _%hd44504839%_
                             _%tl44514842%_
                             _%__splice1899718998%_
                             _%target44524845%_
                             _%tl44544848%_)
                      (letrec ((_%loop44554851%_
                                (lambda (_%hd44534855%_ _%body44594858%_)
                                  (if (gx#stx-pair? _%hd44534855%_)
                                      (let ((_%e44564861%_
                                             (gx#syntax-e _%hd44534855%_)))
                                        (let ((_%lp-tl44584868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e44564861%_)))
                                              (_%lp-hd44574865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e44564861%_))))
                                          (_%loop44554851%_
                                           _%lp-tl44584868%_
                                           (cons _%lp-hd44574865%_
                                                 _%body44594858%_))))
                                      (let ((_%body44604871%_
                                             (reverse _%body44594858%_)))
                                        (if (gx#stx-null? _%tl44484832%_)
                                            (_%__kont1899518996%_
                                             _%body44604871%_)
                                            (_%__kont1899919000%_)))))))
                        (_%loop44554851%_ _%target44524845%_ '())))))
              (if (gx#stx-pair? _%__stx1899018991%_)
                  (let ((_%e44394910%_ (gx#syntax-e _%__stx1899018991%_)))
                    (let ((_%tl44414917%_
                           (let () (declare (not safe)) (##cdr _%e44394910%_)))
                          (_%hd44404914%_
                           (let ()
                             (declare (not safe))
                             (##car _%e44394910%_))))
                      (if (gx#stx-null? _%tl44414917%_)
                          (_%__kont1899318994%_)
                          (if (gx#stx-pair? _%tl44414917%_)
                              (let ((_%e44464825%_
                                     (gx#syntax-e _%tl44414917%_)))
                                (let ((_%tl44484832%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e44464825%_)))
                                      (_%hd44474829%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e44464825%_))))
                                  (if (gx#stx-pair? _%hd44474829%_)
                                      (let ((_%e44494835%_
                                             (gx#syntax-e _%hd44474829%_)))
                                        (let ((_%tl44514842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e44494835%_)))
                                              (_%hd44504839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e44494835%_))))
                                          (if (gx#identifier? _%hd44504839%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-1[1]#_g20911_|
                                                   _%hd44504839%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl44514842%_)
                                                      (let ((_%__splice1899718998%_
                                                             (gx#syntax-split-splice
                                                              _%tl44514842%_
                                                              '0)))
                                                        (let ((_%tl44544848%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1899718998%_ '1)))
                      (_%target44524845%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1899718998%_ '0))))
                  (if (gx#stx-null? _%tl44544848%_)
                      (_%__match1904719048%_
                       _%e44394910%_
                       _%hd44404914%_
                       _%tl44414917%_
                       _%e44464825%_
                       _%hd44474829%_
                       _%tl44484832%_
                       _%e44494835%_
                       _%hd44504839%_
                       _%tl44514842%_
                       _%__splice1899718998%_
                       _%target44524845%_
                       _%tl44544848%_)
                      (_%__kont1899919000%_))))
              (_%__kont1899919000%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl44514842%_)
                                                      (_%__kont1900119002%_
                                                       _%tl44484832%_
                                                       _%hd44504839%_
                                                       _%hd44404914%_)
                                                      (if (gx#stx-pair?
                                                           _%tl44514842%_)
                                                          (let ((_%e44954666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl44514842%_)))
                    (let ((_%tl44974673%_
                           (let () (declare (not safe)) (##cdr _%e44954666%_)))
                          (_%hd44964670%_
                           (let ()
                             (declare (not safe))
                             (##car _%e44954666%_))))
                      (if (gx#identifier? _%hd44964670%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/sugar~Sugar-1[1]#_g20912_|
                               _%hd44964670%_)
                              (if (gx#stx-pair? _%tl44974673%_)
                                  (let ((_%e44984676%_
                                         (gx#syntax-e _%tl44974673%_)))
                                    (let ((_%tl45004683%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e44984676%_)))
                                          (_%hd44994680%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e44984676%_))))
                                      (if (gx#stx-null? _%tl45004683%_)
                                          (_%__kont1900319004%_
                                           _%tl44484832%_
                                           _%hd44994680%_
                                           _%hd44504839%_
                                           _%hd44404914%_)
                                          (if (gx#stx-pair/null?
                                               _%tl44514842%_)
                                              (let ((_%__splice1900719008%_
                                                     (gx#syntax-split-splice
                                                      _%tl44514842%_
                                                      '0)))
                                                (let ((_%tl45164568%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1900719008%_
                                                          '1)))
                                                      (_%target45144565%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1900719008%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl45164568%_)
                                                      (_%__match1915119152%_
                                                       _%e44394910%_
                                                       _%hd44404914%_
                                                       _%tl44414917%_
                                                       _%e44464825%_
                                                       _%hd44474829%_
                                                       _%tl44484832%_
                                                       _%e44494835%_
                                                       _%hd44504839%_
                                                       _%tl44514842%_
                                                       _%__splice1900719008%_
                                                       _%target45144565%_
                                                       _%tl45164568%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g44374528%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g44374528%_))))))
                                  (if (gx#stx-pair/null? _%tl44514842%_)
                                      (let ((_%__splice1900719008%_
                                             (gx#syntax-split-splice
                                              _%tl44514842%_
                                              '0)))
                                        (let ((_%tl45164568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1900719008%_
                                                  '1)))
                                              (_%target45144565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1900719008%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl45164568%_)
                                              (_%__match1915119152%_
                                               _%e44394910%_
                                               _%hd44404914%_
                                               _%tl44414917%_
                                               _%e44464825%_
                                               _%hd44474829%_
                                               _%tl44484832%_
                                               _%e44494835%_
                                               _%hd44504839%_
                                               _%tl44514842%_
                                               _%__splice1900719008%_
                                               _%target45144565%_
                                               _%tl45164568%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g44374528%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g44374528%_))))
                              (if (gx#stx-pair/null? _%tl44514842%_)
                                  (let ((_%__splice1900719008%_
                                         (gx#syntax-split-splice
                                          _%tl44514842%_
                                          '0)))
                                    (let ((_%tl45164568%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1900719008%_
                                              '1)))
                                          (_%target45144565%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1900719008%_
                                              '0))))
                                      (if (gx#stx-null? _%tl45164568%_)
                                          (_%__match1915119152%_
                                           _%e44394910%_
                                           _%hd44404914%_
                                           _%tl44414917%_
                                           _%e44464825%_
                                           _%hd44474829%_
                                           _%tl44484832%_
                                           _%e44494835%_
                                           _%hd44504839%_
                                           _%tl44514842%_
                                           _%__splice1900719008%_
                                           _%target45144565%_
                                           _%tl45164568%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g44374528%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g44374528%_))))
                          (if (gx#stx-pair/null? _%tl44514842%_)
                              (let ((_%__splice1900719008%_
                                     (gx#syntax-split-splice
                                      _%tl44514842%_
                                      '0)))
                                (let ((_%tl45164568%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1900719008%_
                                          '1)))
                                      (_%target45144565%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1900719008%_
                                          '0))))
                                  (if (gx#stx-null? _%tl45164568%_)
                                      (_%__match1915119152%_
                                       _%e44394910%_
                                       _%hd44404914%_
                                       _%tl44414917%_
                                       _%e44464825%_
                                       _%hd44474829%_
                                       _%tl44484832%_
                                       _%e44494835%_
                                       _%hd44504839%_
                                       _%tl44514842%_
                                       _%__splice1900719008%_
                                       _%target45144565%_
                                       _%tl45164568%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g44374528%_)))))
                              (let () (declare (not safe)) (_%g44374528%_))))))
                  (if (gx#stx-pair/null? _%tl44514842%_)
                      (let ((_%__splice1900719008%_
                             (gx#syntax-split-splice _%tl44514842%_ '0)))
                        (let ((_%tl45164568%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1900719008%_ '1)))
                              (_%target45144565%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1900719008%_ '0))))
                          (if (gx#stx-null? _%tl45164568%_)
                              (_%__match1915119152%_
                               _%e44394910%_
                               _%hd44404914%_
                               _%tl44414917%_
                               _%e44464825%_
                               _%hd44474829%_
                               _%tl44484832%_
                               _%e44494835%_
                               _%hd44504839%_
                               _%tl44514842%_
                               _%__splice1900719008%_
                               _%target45144565%_
                               _%tl45164568%_)
                              (let () (declare (not safe)) (_%g44374528%_)))))
                      (let () (declare (not safe)) (_%g44374528%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _%tl44514842%_)
                                                  (_%__kont1900119002%_
                                                   _%tl44484832%_
                                                   _%hd44504839%_
                                                   _%hd44404914%_)
                                                  (if (gx#stx-pair?
                                                       _%tl44514842%_)
                                                      (let ((_%e44954666%_
                                                             (gx#syntax-e
                                                              _%tl44514842%_)))
                                                        (let ((_%tl44974673%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e44954666%_)))
                      (_%hd44964670%_
                       (let () (declare (not safe)) (##car _%e44954666%_))))
                  (if (gx#identifier? _%hd44964670%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/sugar~Sugar-1[1]#_g20912_|
                           _%hd44964670%_)
                          (if (gx#stx-pair? _%tl44974673%_)
                              (let ((_%e44984676%_
                                     (gx#syntax-e _%tl44974673%_)))
                                (let ((_%tl45004683%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e44984676%_)))
                                      (_%hd44994680%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e44984676%_))))
                                  (if (gx#stx-null? _%tl45004683%_)
                                      (_%__kont1900319004%_
                                       _%tl44484832%_
                                       _%hd44994680%_
                                       _%hd44504839%_
                                       _%hd44404914%_)
                                      (if (gx#stx-pair/null? _%tl44514842%_)
                                          (let ((_%__splice1900719008%_
                                                 (gx#syntax-split-splice
                                                  _%tl44514842%_
                                                  '0)))
                                            (let ((_%tl45164568%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1900719008%_
                                                      '1)))
                                                  (_%target45144565%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1900719008%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl45164568%_)
                                                  (_%__match1915119152%_
                                                   _%e44394910%_
                                                   _%hd44404914%_
                                                   _%tl44414917%_
                                                   _%e44464825%_
                                                   _%hd44474829%_
                                                   _%tl44484832%_
                                                   _%e44494835%_
                                                   _%hd44504839%_
                                                   _%tl44514842%_
                                                   _%__splice1900719008%_
                                                   _%target45144565%_
                                                   _%tl45164568%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g44374528%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g44374528%_))))))
                              (if (gx#stx-pair/null? _%tl44514842%_)
                                  (let ((_%__splice1900719008%_
                                         (gx#syntax-split-splice
                                          _%tl44514842%_
                                          '0)))
                                    (let ((_%tl45164568%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1900719008%_
                                              '1)))
                                          (_%target45144565%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1900719008%_
                                              '0))))
                                      (if (gx#stx-null? _%tl45164568%_)
                                          (_%__match1915119152%_
                                           _%e44394910%_
                                           _%hd44404914%_
                                           _%tl44414917%_
                                           _%e44464825%_
                                           _%hd44474829%_
                                           _%tl44484832%_
                                           _%e44494835%_
                                           _%hd44504839%_
                                           _%tl44514842%_
                                           _%__splice1900719008%_
                                           _%target45144565%_
                                           _%tl45164568%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g44374528%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g44374528%_))))
                          (if (gx#stx-pair/null? _%tl44514842%_)
                              (let ((_%__splice1900719008%_
                                     (gx#syntax-split-splice
                                      _%tl44514842%_
                                      '0)))
                                (let ((_%tl45164568%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1900719008%_
                                          '1)))
                                      (_%target45144565%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1900719008%_
                                          '0))))
                                  (if (gx#stx-null? _%tl45164568%_)
                                      (_%__match1915119152%_
                                       _%e44394910%_
                                       _%hd44404914%_
                                       _%tl44414917%_
                                       _%e44464825%_
                                       _%hd44474829%_
                                       _%tl44484832%_
                                       _%e44494835%_
                                       _%hd44504839%_
                                       _%tl44514842%_
                                       _%__splice1900719008%_
                                       _%target45144565%_
                                       _%tl45164568%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g44374528%_)))))
                              (let () (declare (not safe)) (_%g44374528%_))))
                      (if (gx#stx-pair/null? _%tl44514842%_)
                          (let ((_%__splice1900719008%_
                                 (gx#syntax-split-splice _%tl44514842%_ '0)))
                            (let ((_%tl45164568%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1900719008%_ '1)))
                                  (_%target45144565%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1900719008%_
                                      '0))))
                              (if (gx#stx-null? _%tl45164568%_)
                                  (_%__match1915119152%_
                                   _%e44394910%_
                                   _%hd44404914%_
                                   _%tl44414917%_
                                   _%e44464825%_
                                   _%hd44474829%_
                                   _%tl44484832%_
                                   _%e44494835%_
                                   _%hd44504839%_
                                   _%tl44514842%_
                                   _%__splice1900719008%_
                                   _%target45144565%_
                                   _%tl45164568%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g44374528%_)))))
                          (let () (declare (not safe)) (_%g44374528%_))))))
              (if (gx#stx-pair/null? _%tl44514842%_)
                  (let ((_%__splice1900719008%_
                         (gx#syntax-split-splice _%tl44514842%_ '0)))
                    (let ((_%tl45164568%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1900719008%_ '1)))
                          (_%target45144565%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1900719008%_ '0))))
                      (if (gx#stx-null? _%tl45164568%_)
                          (_%__match1915119152%_
                           _%e44394910%_
                           _%hd44404914%_
                           _%tl44414917%_
                           _%e44464825%_
                           _%hd44474829%_
                           _%tl44484832%_
                           _%e44494835%_
                           _%hd44504839%_
                           _%tl44514842%_
                           _%__splice1900719008%_
                           _%target45144565%_
                           _%tl45164568%_)
                          (let () (declare (not safe)) (_%g44374528%_)))))
                  (let () (declare (not safe)) (_%g44374528%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%g44374528%_)))))
                              (let () (declare (not safe)) (_%g44374528%_))))))
                  (let () (declare (not safe)) (_%g44374528%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#when|
      (lambda (_%$stx4930%_)
        (let* ((_%g49344962%_
                (lambda (_%g49354958%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g49354958%_)))
               (_%g49335061%_
                (lambda (_%g49354966%_)
                  (if (gx#stx-pair? _%g49354966%_)
                      (let ((_%e49394969%_ (gx#syntax-e _%g49354966%_)))
                        (let ((_%hd49404973%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e49394969%_)))
                              (_%tl49414976%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e49394969%_))))
                          (if (gx#stx-pair? _%tl49414976%_)
                              (let ((_%e49424979%_
                                     (gx#syntax-e _%tl49414976%_)))
                                (let ((_%hd49434983%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e49424979%_)))
                                      (_%tl49444986%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e49424979%_))))
                                  (if (gx#stx-pair? _%tl49444986%_)
                                      (let ((_%e49454989%_
                                             (gx#syntax-e _%tl49444986%_)))
                                        (let ((_%hd49464993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e49454989%_)))
                                              (_%tl49474996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e49454989%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl49474996%_)
                                              (let ((_g20913_
                                                     (gx#syntax-split-splice
                                                      _%tl49474996%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20914_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20913_)
                                                               (##vector-length
                                                                _g20913_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20914_ 2)))
                (error "Context expects 2 values" _g20914_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target49484999%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g20913_
                                                            0)))
                                                        (_%tl49505002%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g20913_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl49505002%_)
                                                        (letrec ((_%loop49515005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd49495009%_ _%rest49555012%_)
                            (if (gx#stx-pair? _%hd49495009%_)
                                (let ((_%e49525015%_
                                       (gx#syntax-e _%hd49495009%_)))
                                  (let ((_%lp-hd49535019%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e49525015%_)))
                                        (_%lp-tl49545022%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e49525015%_))))
                                    (_%loop49515005%_
                                     _%lp-tl49545022%_
                                     (cons _%lp-hd49535019%_
                                           _%rest49555012%_))))
                                (let ((_%rest49565025%_
                                       (reverse _%rest49555012%_)))
                                  ((lambda (_%L5029%_ _%L5031%_ _%L5032%_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _%L5032%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (cons _%L5031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g50525055%_ _%g50535058%_)
                                    (cons _%g50525055%_ _%g50535058%_))
                                  '()
                                  _%L5029%_)))
               (cons '#!void '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest49565025%_
                                   _%hd49464993%_
                                   _%hd49434983%_))))))
                  (_%loop49515005%_ _%target49484999%_ '()))
                (_%g49344962%_ _%g49354966%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g49344962%_ _%g49354966%_))))
                                      (_%g49344962%_ _%g49354966%_))))
                              (_%g49344962%_ _%g49354966%_))))
                      (_%g49344962%_ _%g49354966%_)))))
          (_%g49335061%_ _%$stx4930%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#unless|
      (lambda (_%$stx5066%_)
        (let* ((_%g50705098%_
                (lambda (_%g50715094%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g50715094%_)))
               (_%g50695197%_
                (lambda (_%g50715102%_)
                  (if (gx#stx-pair? _%g50715102%_)
                      (let ((_%e50755105%_ (gx#syntax-e _%g50715102%_)))
                        (let ((_%hd50765109%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e50755105%_)))
                              (_%tl50775112%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e50755105%_))))
                          (if (gx#stx-pair? _%tl50775112%_)
                              (let ((_%e50785115%_
                                     (gx#syntax-e _%tl50775112%_)))
                                (let ((_%hd50795119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e50785115%_)))
                                      (_%tl50805122%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e50785115%_))))
                                  (if (gx#stx-pair? _%tl50805122%_)
                                      (let ((_%e50815125%_
                                             (gx#syntax-e _%tl50805122%_)))
                                        (let ((_%hd50825129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e50815125%_)))
                                              (_%tl50835132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e50815125%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl50835132%_)
                                              (let ((_g20915_
                                                     (gx#syntax-split-splice
                                                      _%tl50835132%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20916_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20915_)
                                                               (##vector-length
                                                                _g20915_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20916_ 2)))
                (error "Context expects 2 values" _g20916_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target50845135%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g20915_
                                                            0)))
                                                        (_%tl50865138%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g20915_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl50865138%_)
                                                        (letrec ((_%loop50875141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd50855145%_ _%rest50915148%_)
                            (if (gx#stx-pair? _%hd50855145%_)
                                (let ((_%e50885151%_
                                       (gx#syntax-e _%hd50855145%_)))
                                  (let ((_%lp-hd50895155%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e50885151%_)))
                                        (_%lp-tl50905158%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e50885151%_))))
                                    (_%loop50875141%_
                                     _%lp-tl50905158%_
                                     (cons _%lp-hd50895155%_
                                           _%rest50915148%_))))
                                (let ((_%rest50925161%_
                                       (reverse _%rest50915148%_)))
                                  ((lambda (_%L5165%_ _%L5167%_ _%L5168%_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _%L5168%_
                                                 (cons '#!void
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           (cons _%L5167%_
                                 (foldr (lambda (_%g51885191%_ _%g51895194%_)
                                          (cons _%g51885191%_ _%g51895194%_))
                                        '()
                                        _%L5165%_)))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest50925161%_
                                   _%hd50825129%_
                                   _%hd50795119%_))))))
                  (_%loop50875141%_ _%target50845135%_ '()))
                (_%g50705098%_ _%g50715102%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g50705098%_ _%g50715102%_))))
                                      (_%g50705098%_ _%g50715102%_))))
                              (_%g50705098%_ _%g50715102%_))))
                      (_%g50705098%_ _%g50715102%_)))))
          (_%g50695197%_ _%$stx5066%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#syntax-error|
      (lambda (_%stx5202%_)
        (let* ((_%g52055229%_
                (lambda (_%g52065225%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g52065225%_)))
               (_%g52045314%_
                (lambda (_%g52065233%_)
                  (if (gx#stx-pair? _%g52065233%_)
                      (let ((_%e52095236%_ (gx#syntax-e _%g52065233%_)))
                        (let ((_%hd52105240%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e52095236%_)))
                              (_%tl52115243%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e52095236%_))))
                          (if (gx#stx-pair? _%tl52115243%_)
                              (let ((_%e52125246%_
                                     (gx#syntax-e _%tl52115243%_)))
                                (let ((_%hd52135250%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e52125246%_)))
                                      (_%tl52145253%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e52125246%_))))
                                  (if (gx#stx-pair/null? _%tl52145253%_)
                                      (let ((_g20917_
                                             (gx#syntax-split-splice
                                              _%tl52145253%_
                                              '0)))
                                        (begin
                                          (let ((_g20918_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20917_)
                                                       (##vector-length
                                                        _g20917_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20918_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20918_)))
                                          (let ((_%target52155256%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20917_ 0)))
                                                (_%tl52175259%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20917_ 1))))
                                            (if (gx#stx-null? _%tl52175259%_)
                                                (letrec ((_%loop52185262%_
                                                          (lambda (_%hd52165266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%detail52225269%_)
                    (if (gx#stx-pair? _%hd52165266%_)
                        (let ((_%e52195272%_ (gx#syntax-e _%hd52165266%_)))
                          (let ((_%lp-hd52205276%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e52195272%_)))
                                (_%lp-tl52215279%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e52195272%_))))
                            (_%loop52185262%_
                             _%lp-tl52215279%_
                             (cons _%lp-hd52205276%_ _%detail52225269%_))))
                        (let ((_%detail52235282%_
                               (reverse _%detail52225269%_)))
                          ((lambda (_%L5286%_ _%L5288%_)
                             (if (gx#stx-string? _%L5288%_)
                                 (apply gx#raise-syntax-error
                                        '#f
                                        (gx#stx-e _%L5288%_)
                                        _%stx5202%_
                                        (gx#syntax->list
                                         (foldr (lambda (_%g53055308%_
                                                         _%g53065311%_)
                                                  (cons _%g53055308%_
                                                        _%g53065311%_))
                                                '()
                                                _%L5286%_)))
                                 (_%g52055229%_ _%g52065233%_)))
                           _%detail52235282%_
                           _%hd52135250%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop52185262%_
                                                   _%target52155256%_
                                                   '()))
                                                (_%g52055229%_
                                                 _%g52065233%_)))))
                                      (_%g52055229%_ _%g52065233%_))))
                              (_%g52055229%_ _%g52065233%_))))
                      (_%g52055229%_ _%g52065233%_)))))
          (_%g52045314%_ _%stx5202%_))))))
