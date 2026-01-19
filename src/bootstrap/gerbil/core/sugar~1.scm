(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-1[1]#_g20870_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20871_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20874_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20875_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrules|
      (lambda (_%$stx1926%_)
        (let* ((_%g19301958%_
                (lambda (_%g19311954%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g19311954%_)))
               (_%g19292059%_
                (lambda (_%g19311962%_)
                  (if (gx#stx-pair? _%g19311962%_)
                      (let ((_%e19351965%_ (gx#syntax-e _%g19311962%_)))
                        (let ((_%hd19361969%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e19351965%_)))
                              (_%tl19371972%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e19351965%_))))
                          (if (gx#stx-pair? _%tl19371972%_)
                              (let ((_%e19381975%_
                                     (gx#syntax-e _%tl19371972%_)))
                                (let ((_%hd19391979%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e19381975%_)))
                                      (_%tl19401982%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e19381975%_))))
                                  (if (gx#stx-pair? _%tl19401982%_)
                                      (let ((_%e19411985%_
                                             (gx#syntax-e _%tl19401982%_)))
                                        (let ((_%hd19421989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e19411985%_)))
                                              (_%tl19431992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e19411985%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl19431992%_)
                                              (let ((_g20862_
                                                     (gx#syntax-split-splice
                                                      _%tl19431992%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20863_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20862_)
                                                               (##values-length
                                                                _g20862_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20863_ 2)))
                (error "Context expects 2 values" _g20863_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target19441995%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20862_
                                                            0)))
                                                        (_%tl19461998%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20862_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl19461998%_)
                                                        (letrec ((_%loop19472001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd19452005%_ _%clauses19512008%_)
                            (if (gx#stx-pair? _%hd19452005%_)
                                (let ((_%e19482011%_
                                       (gx#syntax-e _%hd19452005%_)))
                                  (let ((_%lp-hd19492015%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e19482011%_)))
                                        (_%lp-tl19502018%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e19482011%_))))
                                    (_%loop19472001%_
                                     _%lp-tl19502018%_
                                     (cons _%lp-hd19492015%_
                                           _%clauses19512008%_))))
                                (let ((_%clauses19522021%_
                                       (reverse _%clauses19512008%_)))
                                  ((lambda (_%L2025%_ _%L2027%_ _%L2028%_)
                                     (if (gx#identifier? _%L2028%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'define-syntax)
                                               (cons _%L2028%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'syntax-rules)
                         (cons _%L2027%_
                               (foldr (lambda (_%g20502053%_ _%g20512056%_)
                                        (cons _%g20502053%_ _%g20512056%_))
                                      '()
                                      _%L2025%_)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%g19301958%_ _%g19311962%_)))
                                   _%clauses19522021%_
                                   _%hd19421989%_
                                   _%hd19391979%_))))))
                  (_%loop19472001%_ _%target19441995%_ '()))
                (_%g19301958%_ _%g19311962%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g19301958%_ _%g19311962%_))))
                                      (_%g19301958%_ _%g19311962%_))))
                              (_%g19301958%_ _%g19311962%_))))
                      (_%g19301958%_ _%g19311962%_)))))
          (_%g19292059%_ _%$stx1926%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrule|
      (lambda (_%$stx2064%_)
        (let* ((_%__stx1833718338%_ _%$stx2064%_)
               (_%g20692110%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1833718338%_))))
          (let ((_%__kont1834018341%_
                 (lambda (_%L2240%_ _%L2242%_ _%L2243%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L2243%_
                               (cons (cons (gx#datum->syntax '#f 'syntax-rules)
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           _%L2242%_)
                     (cons _%L2240%_ '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1834218343%_
                 (lambda (_%L2167%_ _%L2169%_ _%L2170%_ _%L2171%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L2171%_
                               (cons (cons (gx#datum->syntax '#f 'syntax-rules)
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           _%L2170%_)
                     (cons _%L2169%_ (cons _%L2167%_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match1840218403%_
                    (lambda (_%e20902117%_
                             _%hd20912121%_
                             _%tl20922124%_
                             _%e20932127%_
                             _%hd20942131%_
                             _%tl20952134%_
                             _%e20962137%_
                             _%hd20972141%_
                             _%tl20982144%_
                             _%e20992147%_
                             _%hd21002151%_
                             _%tl21012154%_
                             _%e21022157%_
                             _%hd21032161%_
                             _%tl21042164%_)
                      (let ((_%L2167%_ _%hd21032161%_)
                            (_%L2169%_ _%hd21002151%_)
                            (_%L2170%_ _%tl20982144%_)
                            (_%L2171%_ _%hd20972141%_))
                        (if (gx#identifier? _%L2171%_)
                            (_%__kont1834218343%_
                             _%L2167%_
                             _%L2169%_
                             _%L2170%_
                             _%L2171%_)
                            (let () (declare (not safe)) (_%g20692110%_))))))
                   (_%__match1837018371%_
                    (lambda (_%e20742200%_
                             _%hd20752204%_
                             _%tl20762207%_
                             _%e20772210%_
                             _%hd20782214%_
                             _%tl20792217%_
                             _%e20802220%_
                             _%hd20812224%_
                             _%tl20822227%_
                             _%e20832230%_
                             _%hd20842234%_
                             _%tl20852237%_)
                      (let ((_%L2240%_ _%hd20842234%_)
                            (_%L2242%_ _%tl20822227%_)
                            (_%L2243%_ _%hd20812224%_))
                        (if (gx#identifier? _%L2243%_)
                            (_%__kont1834018341%_
                             _%L2240%_
                             _%L2242%_
                             _%L2243%_)
                            (let () (declare (not safe)) (_%g20692110%_)))))))
              (if (gx#stx-pair? _%__stx1833718338%_)
                  (let ((_%e20742200%_ (gx#syntax-e _%__stx1833718338%_)))
                    (let ((_%tl20762207%_
                           (let () (declare (not safe)) (##cdr _%e20742200%_)))
                          (_%hd20752204%_
                           (let ()
                             (declare (not safe))
                             (##car _%e20742200%_))))
                      (if (gx#stx-pair? _%tl20762207%_)
                          (let ((_%e20772210%_ (gx#syntax-e _%tl20762207%_)))
                            (let ((_%tl20792217%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e20772210%_)))
                                  (_%hd20782214%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e20772210%_))))
                              (if (gx#stx-pair? _%hd20782214%_)
                                  (let ((_%e20802220%_
                                         (gx#syntax-e _%hd20782214%_)))
                                    (let ((_%tl20822227%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e20802220%_)))
                                          (_%hd20812224%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e20802220%_))))
                                      (if (gx#stx-pair? _%tl20792217%_)
                                          (let ((_%e20832230%_
                                                 (gx#syntax-e _%tl20792217%_)))
                                            (let ((_%tl20852237%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e20832230%_)))
                                                  (_%hd20842234%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e20832230%_))))
                                              (if (gx#stx-null? _%tl20852237%_)
                                                  (_%__match1837018371%_
                                                   _%e20742200%_
                                                   _%hd20752204%_
                                                   _%tl20762207%_
                                                   _%e20772210%_
                                                   _%hd20782214%_
                                                   _%tl20792217%_
                                                   _%e20802220%_
                                                   _%hd20812224%_
                                                   _%tl20822227%_
                                                   _%e20832230%_
                                                   _%hd20842234%_
                                                   _%tl20852237%_)
                                                  (if (gx#stx-pair?
                                                       _%tl20852237%_)
                                                      (let ((_%e21022157%_
                                                             (gx#syntax-e
                                                              _%tl20852237%_)))
                                                        (let ((_%tl21042164%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e21022157%_)))
                      (_%hd21032161%_
                       (let () (declare (not safe)) (##car _%e21022157%_))))
                  (if (gx#stx-null? _%tl21042164%_)
                      (_%__match1840218403%_
                       _%e20742200%_
                       _%hd20752204%_
                       _%tl20762207%_
                       _%e20772210%_
                       _%hd20782214%_
                       _%tl20792217%_
                       _%e20802220%_
                       _%hd20812224%_
                       _%tl20822227%_
                       _%e20832230%_
                       _%hd20842234%_
                       _%tl20852237%_
                       _%e21022157%_
                       _%hd21032161%_
                       _%tl21042164%_)
                      (let () (declare (not safe)) (_%g20692110%_)))))
              (let () (declare (not safe)) (_%g20692110%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%g20692110%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g20692110%_)))))
                          (let () (declare (not safe)) (_%g20692110%_)))))
                  (let () (declare (not safe)) (_%g20692110%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defsyntax%|
      (lambda (_%$stx2265%_)
        (let* ((_%__stx1840518406%_ _%$stx2265%_)
               (_%g22702309%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1840518406%_))))
          (let ((_%__kont1840818409%_
                 (lambda (_%L2431%_ _%L2433%_ _%L2434%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L2434%_
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _%L2433%_
                                                 (foldr (lambda (_%g24532456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g24542459%_)
                  (cons _%g24532456%_ _%g24542459%_))
                '()
                _%L2431%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1841218413%_
                 (lambda (_%L2346%_ _%L2348%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L2348%_ (cons _%L2346%_ '()))))))
            (let* ((_%__match1846018461%_
                    (lambda (_%e22952316%_
                             _%hd22962320%_
                             _%tl22972323%_
                             _%e22982326%_
                             _%hd22992330%_
                             _%tl23002333%_
                             _%e23012336%_
                             _%hd23022340%_
                             _%tl23032343%_)
                      (let ((_%L2346%_ _%hd23022340%_)
                            (_%L2348%_ _%hd22992330%_))
                        (if (gx#identifier? _%L2348%_)
                            (_%__kont1841218413%_ _%L2346%_ _%L2348%_)
                            (let () (declare (not safe)) (_%g22702309%_))))))
                   (_%__match1845218453%_
                    (lambda (_%e22952316%_
                             _%hd22962320%_
                             _%tl22972323%_
                             _%e22982326%_
                             _%hd22992330%_
                             _%tl23002333%_)
                      (if (gx#stx-pair? _%tl23002333%_)
                          (let ((_%e23012336%_ (gx#syntax-e _%tl23002333%_)))
                            (let ((_%tl23032343%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e23012336%_)))
                                  (_%hd23022340%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e23012336%_))))
                              (if (gx#stx-null? _%tl23032343%_)
                                  (_%__match1846018461%_
                                   _%e22952316%_
                                   _%hd22962320%_
                                   _%tl22972323%_
                                   _%e22982326%_
                                   _%hd22992330%_
                                   _%tl23002333%_
                                   _%e23012336%_
                                   _%hd23022340%_
                                   _%tl23032343%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g22702309%_)))))
                          (let () (declare (not safe)) (_%g22702309%_)))))
                   (_%__match1844018441%_
                    (lambda (_%e22752371%_
                             _%hd22762375%_
                             _%tl22772378%_
                             _%e22782381%_
                             _%hd22792385%_
                             _%tl22802388%_
                             _%e22812391%_
                             _%hd22822395%_
                             _%tl22832398%_
                             _%__splice1841018411%_
                             _%target22842401%_
                             _%tl22862404%_)
                      (letrec ((_%loop22872407%_
                                (lambda (_%hd22852411%_ _%body22912414%_)
                                  (if (gx#stx-pair? _%hd22852411%_)
                                      (let ((_%e22882417%_
                                             (gx#syntax-e _%hd22852411%_)))
                                        (let ((_%lp-tl22902424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e22882417%_)))
                                              (_%lp-hd22892421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e22882417%_))))
                                          (_%loop22872407%_
                                           _%lp-tl22902424%_
                                           (cons _%lp-hd22892421%_
                                                 _%body22912414%_))))
                                      (let ((_%body22922427%_
                                             (reverse _%body22912414%_)))
                                        (let ((_%L2431%_ _%body22922427%_)
                                              (_%L2433%_ _%tl22832398%_)
                                              (_%L2434%_ _%hd22822395%_))
                                          (if (gx#identifier? _%L2434%_)
                                              (_%__kont1840818409%_
                                               _%L2431%_
                                               _%L2433%_
                                               _%L2434%_)
                                              (_%__match1845218453%_
                                               _%e22752371%_
                                               _%hd22762375%_
                                               _%tl22772378%_
                                               _%e22782381%_
                                               _%hd22792385%_
                                               _%tl22802388%_))))))))
                        (_%loop22872407%_ _%target22842401%_ '())))))
              (if (gx#stx-pair? _%__stx1840518406%_)
                  (let ((_%e22752371%_ (gx#syntax-e _%__stx1840518406%_)))
                    (let ((_%tl22772378%_
                           (let () (declare (not safe)) (##cdr _%e22752371%_)))
                          (_%hd22762375%_
                           (let ()
                             (declare (not safe))
                             (##car _%e22752371%_))))
                      (if (gx#stx-pair? _%tl22772378%_)
                          (let ((_%e22782381%_ (gx#syntax-e _%tl22772378%_)))
                            (let ((_%tl22802388%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e22782381%_)))
                                  (_%hd22792385%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e22782381%_))))
                              (if (gx#stx-pair? _%hd22792385%_)
                                  (let ((_%e22812391%_
                                         (gx#syntax-e _%hd22792385%_)))
                                    (let ((_%tl22832398%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e22812391%_)))
                                          (_%hd22822395%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e22812391%_))))
                                      (if (gx#stx-pair/null? _%tl22802388%_)
                                          (let ((_%__splice1841018411%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl22802388%_
                                                  '0)))
                                            (let ((_%tl22862404%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1841018411%_
                                                      '1)))
                                                  (_%target22842401%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1841018411%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl22862404%_)
                                                  (_%__match1844018441%_
                                                   _%e22752371%_
                                                   _%hd22762375%_
                                                   _%tl22772378%_
                                                   _%e22782381%_
                                                   _%hd22792385%_
                                                   _%tl22802388%_
                                                   _%e22812391%_
                                                   _%hd22822395%_
                                                   _%tl22832398%_
                                                   _%__splice1841018411%_
                                                   _%target22842401%_
                                                   _%tl22862404%_)
                                                  (if (gx#stx-pair?
                                                       _%tl22802388%_)
                                                      (let ((_%e23012336%_
                                                             (gx#syntax-e
                                                              _%tl22802388%_)))
                                                        (let ((_%tl23032343%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e23012336%_)))
                      (_%hd23022340%_
                       (let () (declare (not safe)) (##car _%e23012336%_))))
                  (if (gx#stx-null? _%tl23032343%_)
                      (_%__match1846018461%_
                       _%e22752371%_
                       _%hd22762375%_
                       _%tl22772378%_
                       _%e22782381%_
                       _%hd22792385%_
                       _%tl22802388%_
                       _%e23012336%_
                       _%hd23022340%_
                       _%tl23032343%_)
                      (let () (declare (not safe)) (_%g22702309%_)))))
              (let () (declare (not safe)) (_%g22702309%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl22802388%_)
                                              (let ((_%e23012336%_
                                                     (gx#syntax-e
                                                      _%tl22802388%_)))
                                                (let ((_%tl23032343%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e23012336%_)))
                                                      (_%hd23022340%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e23012336%_))))
                                                  (if (gx#stx-null?
                                                       _%tl23032343%_)
                                                      (_%__match1846018461%_
                                                       _%e22752371%_
                                                       _%hd22762375%_
                                                       _%tl22772378%_
                                                       _%e22782381%_
                                                       _%hd22792385%_
                                                       _%tl22802388%_
                                                       _%e23012336%_
                                                       _%hd23022340%_
                                                       _%tl23032343%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g22702309%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g22702309%_))))))
                                  (if (gx#stx-pair? _%tl22802388%_)
                                      (let ((_%e23012336%_
                                             (gx#syntax-e _%tl22802388%_)))
                                        (let ((_%tl23032343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e23012336%_)))
                                              (_%hd23022340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e23012336%_))))
                                          (if (gx#stx-null? _%tl23032343%_)
                                              (_%__match1846018461%_
                                               _%e22752371%_
                                               _%hd22762375%_
                                               _%tl22772378%_
                                               _%e22782381%_
                                               _%hd22792385%_
                                               _%tl22802388%_
                                               _%e23012336%_
                                               _%hd23022340%_
                                               _%tl23032343%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g22702309%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g22702309%_))))))
                          (let () (declare (not safe)) (_%g22702309%_)))))
                  (let () (declare (not safe)) (_%g22702309%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#define|
      (lambda (_%$stx2467%_)
        (let* ((_%__stx1846318464%_ _%$stx2467%_)
               (_%g24722511%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1846318464%_))))
          (let ((_%__kont1846618467%_
                 (lambda (_%L2633%_ _%L2635%_ _%L2636%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L2636%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _%L2635%_
                                                 (foldr (lambda (_%g26552658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g26562661%_)
                  (cons _%g26552658%_ _%g26562661%_))
                '()
                _%L2633%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1847018471%_
                 (lambda (_%L2548%_ _%L2550%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L2550%_ '()) (cons _%L2548%_ '()))))))
            (let* ((_%__match1851818519%_
                    (lambda (_%e24972518%_
                             _%hd24982522%_
                             _%tl24992525%_
                             _%e25002528%_
                             _%hd25012532%_
                             _%tl25022535%_
                             _%e25032538%_
                             _%hd25042542%_
                             _%tl25052545%_)
                      (let ((_%L2548%_ _%hd25042542%_)
                            (_%L2550%_ _%hd25012532%_))
                        (if (gx#identifier? _%L2550%_)
                            (_%__kont1847018471%_ _%L2548%_ _%L2550%_)
                            (let () (declare (not safe)) (_%g24722511%_))))))
                   (_%__match1851018511%_
                    (lambda (_%e24972518%_
                             _%hd24982522%_
                             _%tl24992525%_
                             _%e25002528%_
                             _%hd25012532%_
                             _%tl25022535%_)
                      (if (gx#stx-pair? _%tl25022535%_)
                          (let ((_%e25032538%_ (gx#syntax-e _%tl25022535%_)))
                            (let ((_%tl25052545%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e25032538%_)))
                                  (_%hd25042542%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e25032538%_))))
                              (if (gx#stx-null? _%tl25052545%_)
                                  (_%__match1851818519%_
                                   _%e24972518%_
                                   _%hd24982522%_
                                   _%tl24992525%_
                                   _%e25002528%_
                                   _%hd25012532%_
                                   _%tl25022535%_
                                   _%e25032538%_
                                   _%hd25042542%_
                                   _%tl25052545%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g24722511%_)))))
                          (let () (declare (not safe)) (_%g24722511%_)))))
                   (_%__match1849818499%_
                    (lambda (_%e24772573%_
                             _%hd24782577%_
                             _%tl24792580%_
                             _%e24802583%_
                             _%hd24812587%_
                             _%tl24822590%_
                             _%e24832593%_
                             _%hd24842597%_
                             _%tl24852600%_
                             _%__splice1846818469%_
                             _%target24862603%_
                             _%tl24882606%_)
                      (letrec ((_%loop24892609%_
                                (lambda (_%hd24872613%_ _%body24932616%_)
                                  (if (gx#stx-pair? _%hd24872613%_)
                                      (let ((_%e24902619%_
                                             (gx#syntax-e _%hd24872613%_)))
                                        (let ((_%lp-tl24922626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e24902619%_)))
                                              (_%lp-hd24912623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e24902619%_))))
                                          (_%loop24892609%_
                                           _%lp-tl24922626%_
                                           (cons _%lp-hd24912623%_
                                                 _%body24932616%_))))
                                      (let ((_%body24942629%_
                                             (reverse _%body24932616%_)))
                                        (let ((_%L2633%_ _%body24942629%_)
                                              (_%L2635%_ _%tl24852600%_)
                                              (_%L2636%_ _%hd24842597%_))
                                          (if (gx#identifier? _%L2636%_)
                                              (_%__kont1846618467%_
                                               _%L2633%_
                                               _%L2635%_
                                               _%L2636%_)
                                              (_%__match1851018511%_
                                               _%e24772573%_
                                               _%hd24782577%_
                                               _%tl24792580%_
                                               _%e24802583%_
                                               _%hd24812587%_
                                               _%tl24822590%_))))))))
                        (_%loop24892609%_ _%target24862603%_ '())))))
              (if (gx#stx-pair? _%__stx1846318464%_)
                  (let ((_%e24772573%_ (gx#syntax-e _%__stx1846318464%_)))
                    (let ((_%tl24792580%_
                           (let () (declare (not safe)) (##cdr _%e24772573%_)))
                          (_%hd24782577%_
                           (let ()
                             (declare (not safe))
                             (##car _%e24772573%_))))
                      (if (gx#stx-pair? _%tl24792580%_)
                          (let ((_%e24802583%_ (gx#syntax-e _%tl24792580%_)))
                            (let ((_%tl24822590%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e24802583%_)))
                                  (_%hd24812587%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e24802583%_))))
                              (if (gx#stx-pair? _%hd24812587%_)
                                  (let ((_%e24832593%_
                                         (gx#syntax-e _%hd24812587%_)))
                                    (let ((_%tl24852600%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e24832593%_)))
                                          (_%hd24842597%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e24832593%_))))
                                      (if (gx#stx-pair/null? _%tl24822590%_)
                                          (let ((_%__splice1846818469%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl24822590%_
                                                  '0)))
                                            (let ((_%tl24882606%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1846818469%_
                                                      '1)))
                                                  (_%target24862603%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1846818469%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl24882606%_)
                                                  (_%__match1849818499%_
                                                   _%e24772573%_
                                                   _%hd24782577%_
                                                   _%tl24792580%_
                                                   _%e24802583%_
                                                   _%hd24812587%_
                                                   _%tl24822590%_
                                                   _%e24832593%_
                                                   _%hd24842597%_
                                                   _%tl24852600%_
                                                   _%__splice1846818469%_
                                                   _%target24862603%_
                                                   _%tl24882606%_)
                                                  (if (gx#stx-pair?
                                                       _%tl24822590%_)
                                                      (let ((_%e25032538%_
                                                             (gx#syntax-e
                                                              _%tl24822590%_)))
                                                        (let ((_%tl25052545%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e25032538%_)))
                      (_%hd25042542%_
                       (let () (declare (not safe)) (##car _%e25032538%_))))
                  (if (gx#stx-null? _%tl25052545%_)
                      (_%__match1851818519%_
                       _%e24772573%_
                       _%hd24782577%_
                       _%tl24792580%_
                       _%e24802583%_
                       _%hd24812587%_
                       _%tl24822590%_
                       _%e25032538%_
                       _%hd25042542%_
                       _%tl25052545%_)
                      (let () (declare (not safe)) (_%g24722511%_)))))
              (let () (declare (not safe)) (_%g24722511%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl24822590%_)
                                              (let ((_%e25032538%_
                                                     (gx#syntax-e
                                                      _%tl24822590%_)))
                                                (let ((_%tl25052545%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e25032538%_)))
                                                      (_%hd25042542%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e25032538%_))))
                                                  (if (gx#stx-null?
                                                       _%tl25052545%_)
                                                      (_%__match1851818519%_
                                                       _%e24772573%_
                                                       _%hd24782577%_
                                                       _%tl24792580%_
                                                       _%e24802583%_
                                                       _%hd24812587%_
                                                       _%tl24822590%_
                                                       _%e25032538%_
                                                       _%hd25042542%_
                                                       _%tl25052545%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g24722511%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g24722511%_))))))
                                  (if (gx#stx-pair? _%tl24822590%_)
                                      (let ((_%e25032538%_
                                             (gx#syntax-e _%tl24822590%_)))
                                        (let ((_%tl25052545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e25032538%_)))
                                              (_%hd25042542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e25032538%_))))
                                          (if (gx#stx-null? _%tl25052545%_)
                                              (_%__match1851818519%_
                                               _%e24772573%_
                                               _%hd24782577%_
                                               _%tl24792580%_
                                               _%e24802583%_
                                               _%hd24812587%_
                                               _%tl24822590%_
                                               _%e25032538%_
                                               _%hd25042542%_
                                               _%tl25052545%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g24722511%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g24722511%_))))))
                          (let () (declare (not safe)) (_%g24722511%_)))))
                  (let () (declare (not safe)) (_%g24722511%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*-values|
      (lambda (_%$stx2669%_)
        (let* ((_%__stx1852118522%_ _%$stx2669%_)
               (_%g26742719%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1852118522%_))))
          (let ((_%__kont1852418525%_
                 (lambda (_%L2877%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g28932896%_ _%g28942899%_)
                                        (cons _%g28932896%_ _%g28942899%_))
                                      '()
                                      _%L2877%_)))))
                (_%__kont1852818529%_
                 (lambda (_%L2786%_ _%L2788%_ _%L2789%_ _%L2790%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons _%L2789%_ '())
                               (cons (cons _%L2790%_
                                           (cons _%L2788%_
                                                 (foldr (lambda (_%g28112814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g28122817%_)
                  (cons _%g28112814%_ _%g28122817%_))
                '()
                _%L2786%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match1858018581%_
                    (lambda (_%e26962726%_
                             _%hd26972730%_
                             _%tl26982733%_
                             _%e26992736%_
                             _%hd27002740%_
                             _%tl27012743%_
                             _%e27022746%_
                             _%hd27032750%_
                             _%tl27042753%_
                             _%__splice1853018531%_
                             _%target27052756%_
                             _%tl27072759%_)
                      (letrec ((_%loop27082762%_
                                (lambda (_%hd27062766%_ _%body27122769%_)
                                  (if (gx#stx-pair? _%hd27062766%_)
                                      (let ((_%e27092772%_
                                             (gx#syntax-e _%hd27062766%_)))
                                        (let ((_%lp-tl27112779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e27092772%_)))
                                              (_%lp-hd27102776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e27092772%_))))
                                          (_%loop27082762%_
                                           _%lp-tl27112779%_
                                           (cons _%lp-hd27102776%_
                                                 _%body27122769%_))))
                                      (let ((_%body27132782%_
                                             (reverse _%body27122769%_)))
                                        (_%__kont1852818529%_
                                         _%body27132782%_
                                         _%tl27042753%_
                                         _%hd27032750%_
                                         _%hd26972730%_))))))
                        (_%loop27082762%_ _%target27052756%_ '()))))
                   (_%__match1855418555%_
                    (lambda (_%e26772827%_
                             _%hd26782831%_
                             _%tl26792834%_
                             _%e26802837%_
                             _%hd26812841%_
                             _%tl26822844%_
                             _%__splice1852618527%_
                             _%target26832847%_
                             _%tl26852850%_)
                      (letrec ((_%loop26862853%_
                                (lambda (_%hd26842857%_ _%body26902860%_)
                                  (if (gx#stx-pair? _%hd26842857%_)
                                      (let ((_%e26872863%_
                                             (gx#syntax-e _%hd26842857%_)))
                                        (let ((_%lp-tl26892870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e26872863%_)))
                                              (_%lp-hd26882867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e26872863%_))))
                                          (_%loop26862853%_
                                           _%lp-tl26892870%_
                                           (cons _%lp-hd26882867%_
                                                 _%body26902860%_))))
                                      (let ((_%body26912873%_
                                             (reverse _%body26902860%_)))
                                        (_%__kont1852418525%_
                                         _%body26912873%_))))))
                        (_%loop26862853%_ _%target26832847%_ '())))))
              (if (gx#stx-pair? _%__stx1852118522%_)
                  (let ((_%e26772827%_ (gx#syntax-e _%__stx1852118522%_)))
                    (let ((_%tl26792834%_
                           (let () (declare (not safe)) (##cdr _%e26772827%_)))
                          (_%hd26782831%_
                           (let ()
                             (declare (not safe))
                             (##car _%e26772827%_))))
                      (if (gx#stx-pair? _%tl26792834%_)
                          (let ((_%e26802837%_ (gx#syntax-e _%tl26792834%_)))
                            (let ((_%tl26822844%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e26802837%_)))
                                  (_%hd26812841%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e26802837%_))))
                              (if (gx#stx-null? _%hd26812841%_)
                                  (if (gx#stx-pair/null? _%tl26822844%_)
                                      (let ((_%__splice1852618527%_
                                             (gx#syntax-split-splice->vector
                                              _%tl26822844%_
                                              '0)))
                                        (let ((_%tl26852850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1852618527%_
                                                  '1)))
                                              (_%target26832847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1852618527%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl26852850%_)
                                              (_%__match1855418555%_
                                               _%e26772827%_
                                               _%hd26782831%_
                                               _%tl26792834%_
                                               _%e26802837%_
                                               _%hd26812841%_
                                               _%tl26822844%_
                                               _%__splice1852618527%_
                                               _%target26832847%_
                                               _%tl26852850%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g26742719%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g26742719%_)))
                                  (if (gx#stx-pair? _%hd26812841%_)
                                      (let ((_%e27022746%_
                                             (gx#syntax-e _%hd26812841%_)))
                                        (let ((_%tl27042753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e27022746%_)))
                                              (_%hd27032750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e27022746%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl26822844%_)
                                              (let ((_%__splice1853018531%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl26822844%_
                                                      '0)))
                                                (let ((_%tl27072759%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1853018531%_
                                                          '1)))
                                                      (_%target27052756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1853018531%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl27072759%_)
                                                      (_%__match1858018581%_
                                                       _%e26772827%_
                                                       _%hd26782831%_
                                                       _%tl26792834%_
                                                       _%e26802837%_
                                                       _%hd26812841%_
                                                       _%tl26822844%_
                                                       _%e27022746%_
                                                       _%hd27032750%_
                                                       _%tl27042753%_
                                                       _%__splice1853018531%_
                                                       _%target27052756%_
                                                       _%tl27072759%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g26742719%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g26742719%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g26742719%_))))))
                          (let () (declare (not safe)) (_%g26742719%_)))))
                  (let () (declare (not safe)) (_%g26742719%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let|
      (lambda (_%$stx2908%_)
        (let* ((_%__stx1858318584%_ _%$stx2908%_)
               (_%g29132977%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1858318584%_))))
          (let ((_%__kont1858618587%_
                 (lambda (_%L3183%_ _%L3185%_ _%L3186%_ _%L3187%_ _%L3188%_)
                   (cons (cons (gx#datum->syntax '#f 'letrec-values)
                               (cons (cons (cons (cons _%L3188%_ '())
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda%)
                                                             (cons (foldr (lambda (_%g32133220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%g32143223%_)
                                    (cons _%g32133220%_ _%g32143223%_))
                                  _%L3185%_
                                  _%L3187%_)
                           (foldr (lambda (_%g32153226%_ _%g32163229%_)
                                    (cons _%g32153226%_ _%g32163229%_))
                                  '()
                                  _%L3183%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L3188%_ '())))
                         (foldr (lambda (_%g32173232%_ _%g32183235%_)
                                  (cons _%g32173232%_ _%g32183235%_))
                                '()
                                _%L3186%_))))
                (_%__kont1859218593%_
                 (lambda (_%L3034%_ _%L3036%_)
                   (cons (gx#datum->syntax '#f '~let)
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons _%L3036%_
                                     (foldr (lambda (_%g30533056%_
                                                     _%g30543059%_)
                                              (cons _%g30533056%_
                                                    _%g30543059%_))
                                            '()
                                            _%L3034%_)))))))
            (let* ((_%__match1864018641%_
                    (lambda (_%e29572984%_
                             _%hd29582988%_
                             _%tl29592991%_
                             _%e29602994%_
                             _%hd29612998%_
                             _%tl29623001%_
                             _%__splice1859418595%_
                             _%target29633004%_
                             _%tl29653007%_)
                      (letrec ((_%loop29663010%_
                                (lambda (_%hd29643014%_ _%body29703017%_)
                                  (if (gx#stx-pair? _%hd29643014%_)
                                      (let ((_%e29673020%_
                                             (gx#syntax-e _%hd29643014%_)))
                                        (let ((_%lp-tl29693027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e29673020%_)))
                                              (_%lp-hd29683024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e29673020%_))))
                                          (_%loop29663010%_
                                           _%lp-tl29693027%_
                                           (cons _%lp-hd29683024%_
                                                 _%body29703017%_))))
                                      (let ((_%body29713030%_
                                             (reverse _%body29703017%_)))
                                        (_%__kont1859218593%_
                                         _%body29713030%_
                                         _%hd29612998%_))))))
                        (_%loop29663010%_ _%target29633004%_ '()))))
                   (_%__match1863218633%_
                    (lambda (_%e29572984%_
                             _%hd29582988%_
                             _%tl29592991%_
                             _%e29602994%_
                             _%hd29612998%_
                             _%tl29623001%_)
                      (if (gx#stx-pair/null? _%tl29623001%_)
                          (let ((_%__splice1859418595%_
                                 (gx#syntax-split-splice->vector
                                  _%tl29623001%_
                                  '0)))
                            (let ((_%tl29653007%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1859418595%_ '1)))
                                  (_%target29633004%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1859418595%_
                                      '0))))
                              (if (gx#stx-null? _%tl29653007%_)
                                  (_%__match1864018641%_
                                   _%e29572984%_
                                   _%hd29582988%_
                                   _%tl29592991%_
                                   _%e29602994%_
                                   _%hd29612998%_
                                   _%tl29623001%_
                                   _%__splice1859418595%_
                                   _%target29633004%_
                                   _%tl29653007%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g29132977%_)))))
                          (let () (declare (not safe)) (_%g29132977%_)))))
                   (_%__match1862018621%_
                    (lambda (_%e29203069%_
                             _%hd29213073%_
                             _%tl29223076%_
                             _%e29233079%_
                             _%hd29243083%_
                             _%tl29253086%_
                             _%e29263089%_
                             _%hd29273093%_
                             _%tl29283096%_
                             _%__splice1858818589%_
                             _%target29293099%_
                             _%tl29313102%_)
                      (letrec ((_%loop29323105%_
                                (lambda (_%hd29303109%_
                                         _%arg29363112%_
                                         _%var29373114%_)
                                  (if (gx#stx-pair? _%hd29303109%_)
                                      (let ((_%e29333117%_
                                             (gx#syntax-e _%hd29303109%_)))
                                        (let ((_%lp-tl29353124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e29333117%_)))
                                              (_%lp-hd29343121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e29333117%_))))
                                          (if (gx#stx-pair? _%lp-hd29343121%_)
                                              (let ((_%e29403127%_
                                                     (gx#syntax-e
                                                      _%lp-hd29343121%_)))
                                                (let ((_%tl29423134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e29403127%_)))
                                                      (_%hd29413131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e29403127%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl29423134%_)
                                                      (let ((_%e29433137%_
                                                             (gx#syntax-e
                                                              _%tl29423134%_)))
                                                        (let ((_%tl29453144%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e29433137%_)))
                      (_%hd29443141%_
                       (let () (declare (not safe)) (##car _%e29433137%_))))
                  (if (gx#stx-null? _%tl29453144%_)
                      (_%loop29323105%_
                       _%lp-tl29353124%_
                       (cons _%hd29443141%_ _%arg29363112%_)
                       (cons _%hd29413131%_ _%var29373114%_))
                      (_%__match1863218633%_
                       _%e29203069%_
                       _%hd29213073%_
                       _%tl29223076%_
                       _%e29233079%_
                       _%hd29243083%_
                       _%tl29253086%_))))
              (_%__match1863218633%_
               _%e29203069%_
               _%hd29213073%_
               _%tl29223076%_
               _%e29233079%_
               _%hd29243083%_
               _%tl29253086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__match1863218633%_
                                               _%e29203069%_
                                               _%hd29213073%_
                                               _%tl29223076%_
                                               _%e29233079%_
                                               _%hd29243083%_
                                               _%tl29253086%_))))
                                      (let ((_%var29393150%_
                                             (reverse _%var29373114%_))
                                            (_%arg29383147%_
                                             (reverse _%arg29363112%_)))
                                        (if (gx#stx-pair/null? _%tl29283096%_)
                                            (let ((_%__splice1859018591%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl29283096%_
                                                    '0)))
                                              (let ((_%tl29483156%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1859018591%_
                                                        '1)))
                                                    (_%target29463153%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1859018591%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl29483156%_)
                                                    (letrec ((_%loop29493159%_
                                                              (lambda (_%hd29473163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body29533166%_)
                        (if (gx#stx-pair? _%hd29473163%_)
                            (let ((_%e29503169%_ (gx#syntax-e _%hd29473163%_)))
                              (let ((_%lp-tl29523176%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e29503169%_)))
                                    (_%lp-hd29513173%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e29503169%_))))
                                (_%loop29493159%_
                                 _%lp-tl29523176%_
                                 (cons _%lp-hd29513173%_ _%body29533166%_))))
                            (let ((_%body29543179%_
                                   (reverse _%body29533166%_)))
                              (let ((_%L3183%_ _%body29543179%_)
                                    (_%L3185%_ _%tl29313102%_)
                                    (_%L3186%_ _%arg29383147%_)
                                    (_%L3187%_ _%var29393150%_)
                                    (_%L3188%_ _%hd29243083%_))
                                (if (gx#identifier? _%L3188%_)
                                    (_%__kont1858618587%_
                                     _%L3183%_
                                     _%L3185%_
                                     _%L3186%_
                                     _%L3187%_
                                     _%L3188%_)
                                    (_%__match1863218633%_
                                     _%e29203069%_
                                     _%hd29213073%_
                                     _%tl29223076%_
                                     _%e29233079%_
                                     _%hd29243083%_
                                     _%tl29253086%_))))))))
              (_%loop29493159%_ _%target29463153%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match1863218633%_
                                                     _%e29203069%_
                                                     _%hd29213073%_
                                                     _%tl29223076%_
                                                     _%e29233079%_
                                                     _%hd29243083%_
                                                     _%tl29253086%_))))
                                            (_%__match1863218633%_
                                             _%e29203069%_
                                             _%hd29213073%_
                                             _%tl29223076%_
                                             _%e29233079%_
                                             _%hd29243083%_
                                             _%tl29253086%_)))))))
                        (_%loop29323105%_ _%target29293099%_ '() '())))))
              (if (gx#stx-pair? _%__stx1858318584%_)
                  (let ((_%e29203069%_ (gx#syntax-e _%__stx1858318584%_)))
                    (let ((_%tl29223076%_
                           (let () (declare (not safe)) (##cdr _%e29203069%_)))
                          (_%hd29213073%_
                           (let ()
                             (declare (not safe))
                             (##car _%e29203069%_))))
                      (if (gx#stx-pair? _%tl29223076%_)
                          (let ((_%e29233079%_ (gx#syntax-e _%tl29223076%_)))
                            (let ((_%tl29253086%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e29233079%_)))
                                  (_%hd29243083%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e29233079%_))))
                              (if (gx#stx-pair? _%tl29253086%_)
                                  (let ((_%e29263089%_
                                         (gx#syntax-e _%tl29253086%_)))
                                    (let ((_%tl29283096%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e29263089%_)))
                                          (_%hd29273093%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e29263089%_))))
                                      (if (gx#stx-pair/null? _%hd29273093%_)
                                          (let ((_%__splice1858818589%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd29273093%_
                                                  '0)))
                                            (let ((_%tl29313102%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1858818589%_
                                                      '1)))
                                                  (_%target29293099%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1858818589%_
                                                      '0))))
                                              (_%__match1862018621%_
                                               _%e29203069%_
                                               _%hd29213073%_
                                               _%tl29223076%_
                                               _%e29233079%_
                                               _%hd29243083%_
                                               _%tl29253086%_
                                               _%e29263089%_
                                               _%hd29273093%_
                                               _%tl29283096%_
                                               _%__splice1858818589%_
                                               _%target29293099%_
                                               _%tl29313102%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl29253086%_)
                                              (let ((_%__splice1859418595%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl29253086%_
                                                      '0)))
                                                (let ((_%tl29653007%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1859418595%_
                                                          '1)))
                                                      (_%target29633004%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1859418595%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl29653007%_)
                                                      (_%__match1864018641%_
                                                       _%e29203069%_
                                                       _%hd29213073%_
                                                       _%tl29223076%_
                                                       _%e29233079%_
                                                       _%hd29243083%_
                                                       _%tl29253086%_
                                                       _%__splice1859418595%_
                                                       _%target29633004%_
                                                       _%tl29653007%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g29132977%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g29132977%_))))))
                                  (if (gx#stx-pair/null? _%tl29253086%_)
                                      (let ((_%__splice1859418595%_
                                             (gx#syntax-split-splice->vector
                                              _%tl29253086%_
                                              '0)))
                                        (let ((_%tl29653007%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1859418595%_
                                                  '1)))
                                              (_%target29633004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1859418595%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl29653007%_)
                                              (_%__match1864018641%_
                                               _%e29203069%_
                                               _%hd29213073%_
                                               _%tl29223076%_
                                               _%e29233079%_
                                               _%hd29243083%_
                                               _%tl29253086%_
                                               _%__splice1859418595%_
                                               _%target29633004%_
                                               _%tl29653007%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g29132977%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g29132977%_))))))
                          (let () (declare (not safe)) (_%g29132977%_)))))
                  (let () (declare (not safe)) (_%g29132977%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*|
      (lambda (_%$stx3245%_)
        (let* ((_%g32493273%_
                (lambda (_%g32503269%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g32503269%_)))
               (_%g32483358%_
                (lambda (_%g32503277%_)
                  (if (gx#stx-pair? _%g32503277%_)
                      (let ((_%e32533280%_ (gx#syntax-e _%g32503277%_)))
                        (let ((_%hd32543284%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e32533280%_)))
                              (_%tl32553287%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e32533280%_))))
                          (if (gx#stx-pair? _%tl32553287%_)
                              (let ((_%e32563290%_
                                     (gx#syntax-e _%tl32553287%_)))
                                (let ((_%hd32573294%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e32563290%_)))
                                      (_%tl32583297%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e32563290%_))))
                                  (if (gx#stx-pair/null? _%tl32583297%_)
                                      (let ((_g20864_
                                             (gx#syntax-split-splice
                                              _%tl32583297%_
                                              '0)))
                                        (begin
                                          (let ((_g20865_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20864_)
                                                       (##values-length
                                                        _g20864_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20865_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20865_)))
                                          (let ((_%target32593300%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20864_ 0)))
                                                (_%tl32613303%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20864_ 1))))
                                            (if (gx#stx-null? _%tl32613303%_)
                                                (letrec ((_%loop32623306%_
                                                          (lambda (_%hd32603310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body32663313%_)
                    (if (gx#stx-pair? _%hd32603310%_)
                        (let ((_%e32633316%_ (gx#syntax-e _%hd32603310%_)))
                          (let ((_%lp-hd32643320%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e32633316%_)))
                                (_%lp-tl32653323%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e32633316%_))))
                            (_%loop32623306%_
                             _%lp-tl32653323%_
                             (cons _%lp-hd32643320%_ _%body32663313%_))))
                        (let ((_%body32673326%_ (reverse _%body32663313%_)))
                          ((lambda (_%L3330%_ _%L3332%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'let*-values)
                                         (cons _%L3332%_
                                               (foldr (lambda (_%g33493352%_
                                                               _%g33503355%_)
                                                        (cons _%g33493352%_
                                                              _%g33503355%_))
                                                      '()
                                                      _%L3330%_)))))
                           _%body32673326%_
                           _%hd32573294%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop32623306%_
                                                   _%target32593300%_
                                                   '()))
                                                (_%g32493273%_
                                                 _%g32503277%_)))))
                                      (_%g32493273%_ _%g32503277%_))))
                              (_%g32493273%_ _%g32503277%_))))
                      (_%g32493273%_ _%g32503277%_)))))
          (_%g32483358%_ _%$stx3245%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec|
      (lambda (_%$stx3363%_)
        (let* ((_%g33673391%_
                (lambda (_%g33683387%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g33683387%_)))
               (_%g33663476%_
                (lambda (_%g33683395%_)
                  (if (gx#stx-pair? _%g33683395%_)
                      (let ((_%e33713398%_ (gx#syntax-e _%g33683395%_)))
                        (let ((_%hd33723402%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e33713398%_)))
                              (_%tl33733405%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e33713398%_))))
                          (if (gx#stx-pair? _%tl33733405%_)
                              (let ((_%e33743408%_
                                     (gx#syntax-e _%tl33733405%_)))
                                (let ((_%hd33753412%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e33743408%_)))
                                      (_%tl33763415%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e33743408%_))))
                                  (if (gx#stx-pair/null? _%tl33763415%_)
                                      (let ((_g20866_
                                             (gx#syntax-split-splice
                                              _%tl33763415%_
                                              '0)))
                                        (begin
                                          (let ((_g20867_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20866_)
                                                       (##values-length
                                                        _g20866_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20867_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20867_)))
                                          (let ((_%target33773418%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20866_ 0)))
                                                (_%tl33793421%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20866_ 1))))
                                            (if (gx#stx-null? _%tl33793421%_)
                                                (letrec ((_%loop33803424%_
                                                          (lambda (_%hd33783428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body33843431%_)
                    (if (gx#stx-pair? _%hd33783428%_)
                        (let ((_%e33813434%_ (gx#syntax-e _%hd33783428%_)))
                          (let ((_%lp-hd33823438%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e33813434%_)))
                                (_%lp-tl33833441%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e33813434%_))))
                            (_%loop33803424%_
                             _%lp-tl33833441%_
                             (cons _%lp-hd33823438%_ _%body33843431%_))))
                        (let ((_%body33853444%_ (reverse _%body33843431%_)))
                          ((lambda (_%L3448%_ _%L3450%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec-values)
                                         (cons _%L3450%_
                                               (foldr (lambda (_%g34673470%_
                                                               _%g34683473%_)
                                                        (cons _%g34673470%_
                                                              _%g34683473%_))
                                                      '()
                                                      _%L3448%_)))))
                           _%body33853444%_
                           _%hd33753412%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop33803424%_
                                                   _%target33773418%_
                                                   '()))
                                                (_%g33673391%_
                                                 _%g33683395%_)))))
                                      (_%g33673391%_ _%g33683395%_))))
                              (_%g33673391%_ _%g33683395%_))))
                      (_%g33673391%_ _%g33683395%_)))))
          (_%g33663476%_ _%$stx3363%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec*|
      (lambda (_%$stx3481%_)
        (let* ((_%g34853509%_
                (lambda (_%g34863505%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g34863505%_)))
               (_%g34843594%_
                (lambda (_%g34863513%_)
                  (if (gx#stx-pair? _%g34863513%_)
                      (let ((_%e34893516%_ (gx#syntax-e _%g34863513%_)))
                        (let ((_%hd34903520%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e34893516%_)))
                              (_%tl34913523%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e34893516%_))))
                          (if (gx#stx-pair? _%tl34913523%_)
                              (let ((_%e34923526%_
                                     (gx#syntax-e _%tl34913523%_)))
                                (let ((_%hd34933530%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e34923526%_)))
                                      (_%tl34943533%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e34923526%_))))
                                  (if (gx#stx-pair/null? _%tl34943533%_)
                                      (let ((_g20868_
                                             (gx#syntax-split-splice
                                              _%tl34943533%_
                                              '0)))
                                        (begin
                                          (let ((_g20869_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20868_)
                                                       (##values-length
                                                        _g20868_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20869_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20869_)))
                                          (let ((_%target34953536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20868_ 0)))
                                                (_%tl34973539%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20868_ 1))))
                                            (if (gx#stx-null? _%tl34973539%_)
                                                (letrec ((_%loop34983542%_
                                                          (lambda (_%hd34963546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body35023549%_)
                    (if (gx#stx-pair? _%hd34963546%_)
                        (let ((_%e34993552%_ (gx#syntax-e _%hd34963546%_)))
                          (let ((_%lp-hd35003556%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e34993552%_)))
                                (_%lp-tl35013559%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e34993552%_))))
                            (_%loop34983542%_
                             _%lp-tl35013559%_
                             (cons _%lp-hd35003556%_ _%body35023549%_))))
                        (let ((_%body35033562%_ (reverse _%body35023549%_)))
                          ((lambda (_%L3566%_ _%L3568%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec*-values)
                                         (cons _%L3568%_
                                               (foldr (lambda (_%g35853588%_
                                                               _%g35863591%_)
                                                        (cons _%g35853588%_
                                                              _%g35863591%_))
                                                      '()
                                                      _%L3566%_)))))
                           _%body35033562%_
                           _%hd34933530%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop34983542%_
                                                   _%target34953536%_
                                                   '()))
                                                (_%g34853509%_
                                                 _%g34863513%_)))))
                                      (_%g34853509%_ _%g34863513%_))))
                              (_%g34853509%_ _%g34863513%_))))
                      (_%g34853509%_ _%g34863513%_)))))
          (_%g34843594%_ _%$stx3481%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#~let|
      (lambda (_%stx3599%_)
        (letrec ((_%let-head?3602%_
                  (lambda (_%x4082%_)
                    (let* ((_%__stx1864318644%_ _%x4082%_)
                           (_%g40864097%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1864318644%_))))
                      (let ((_%__kont1864618647%_
                             (lambda (_%L4125%_)
                               (gx#stx-andmap gx#identifier? _%L4125%_)))
                            (_%__kont1864818649%_
                             (lambda () (gx#identifier? _%x4082%_))))
                        (if (gx#stx-pair? _%__stx1864318644%_)
                            (let ((_%e40894115%_
                                   (gx#syntax-e _%__stx1864318644%_)))
                              (let ((_%tl40914122%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e40894115%_)))
                                    (_%hd40904119%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e40894115%_))))
                                (if (gx#identifier? _%hd40904119%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g20870_|
                                         _%hd40904119%_)
                                        (_%__kont1864618647%_ _%tl40914122%_)
                                        (_%__kont1864818649%_))
                                    (_%__kont1864818649%_))))
                            (_%__kont1864818649%_))))))
                 (_%let-head3604%_
                  (lambda (_%x4022%_)
                    (let* ((_%__stx1866318664%_ _%x4022%_)
                           (_%g40264037%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1866318664%_))))
                      (let ((_%__kont1866618667%_
                             (lambda (_%L4065%_) _%L4065%_))
                            (_%__kont1866818669%_
                             (lambda () (list _%x4022%_))))
                        (if (gx#stx-pair? _%__stx1866318664%_)
                            (let ((_%e40294055%_
                                   (gx#syntax-e _%__stx1866318664%_)))
                              (let ((_%tl40314062%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e40294055%_)))
                                    (_%hd40304059%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e40294055%_))))
                                (if (gx#identifier? _%hd40304059%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g20871_|
                                         _%hd40304059%_)
                                        (_%__kont1866618667%_ _%tl40314062%_)
                                        (_%__kont1866818669%_))
                                    (_%__kont1866818669%_))))
                            (_%__kont1866818669%_)))))))
          (let* ((_%__stx1868318684%_ _%stx3599%_)
                 (_%g36073673%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1868318684%_))))
            (let ((_%__kont1868618687%_
                   (lambda (_%L3991%_ _%L3993%_ _%L3994%_ _%L3995%_ _%L3996%_)
                     (cons _%L3996%_
                           (cons _%L3995%_
                                 (cons (cons (cons _%L3994%_
                                                   (cons _%L3993%_ '()))
                                             '())
                                       _%L3991%_)))))
                  (_%__kont1868818689%_
                   (lambda (_%L3794%_ _%L3796%_ _%L3797%_ _%L3798%_)
                     (let* ((_%g38333850%_
                             (lambda (_%g38343846%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g38343846%_)))
                            (_%g38323922%_
                             (lambda (_%g38343854%_)
                               (if (gx#stx-pair/null? _%g38343854%_)
                                   (let ((_g20872_
                                          (gx#syntax-split-splice
                                           _%g38343854%_
                                           '0)))
                                     (begin
                                       (let ((_g20873_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20872_)
                                                    (##values-length _g20872_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20873_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20873_)))
                                       (let ((_%target38363857%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20872_ 0)))
                                             (_%tl38383860%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20872_ 1))))
                                         (if (gx#stx-null? _%tl38383860%_)
                                             (letrec ((_%loop38393863%_
                                                       (lambda (_%hd38373867%_
                                                                _%hd-bind38433870%_)
                                                         (if (gx#stx-pair?
                                                              _%hd38373867%_)
                                                             (let ((_%e38403873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd38373867%_)))
                       (let ((_%lp-hd38413877%_
                              (let ()
                                (declare (not safe))
                                (##car _%e38403873%_)))
                             (_%lp-tl38423880%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e38403873%_))))
                         (_%loop38393863%_
                          _%lp-tl38423880%_
                          (cons _%lp-hd38413877%_ _%hd-bind38433870%_))))
                     (let ((_%hd-bind38443883%_ (reverse _%hd-bind38433870%_)))
                       ((lambda (_%L3887%_)
                          (cons _%L3798%_
                                (cons (begin
                                        (gx#syntax-check-splice-targets
                                         _%L3796%_
                                         _%L3887%_)
                                        (foldr (lambda (_%g39023908%_
                                                        _%g39033911%_
                                                        _%g39043913%_)
                                                 (cons (cons _%g39033911%_
                                                             (cons _%g39023908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%g39043913%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _%L3796%_
                                               _%L3887%_))
                                      (foldr (lambda (_%g39053916%_
                                                      _%g39063919%_)
                                               (cons _%g39053916%_
                                                     _%g39063919%_))
                                             '()
                                             _%L3794%_))))
                        _%hd-bind38443883%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop38393863%_
                                                _%target38363857%_
                                                '()))
                                             (_%g38333850%_ _%g38343854%_)))))
                                   (_%g38333850%_ _%g38343854%_)))))
                       (_%g38323922%_
                        (gx#stx-map
                         _%let-head3604%_
                         (foldr (lambda (_%g39253928%_ _%g39263931%_)
                                  (cons _%g39253928%_ _%g39263931%_))
                                '()
                                _%L3797%_)))))))
              (let* ((_%__match1875218753%_
                      (lambda (_%e36333680%_
                               _%hd36343684%_
                               _%tl36353687%_
                               _%e36363690%_
                               _%hd36373694%_
                               _%tl36383697%_
                               _%e36393700%_
                               _%hd36403704%_
                               _%tl36413707%_
                               _%__splice1869018691%_
                               _%target36423710%_
                               _%tl36443713%_)
                        (letrec ((_%loop36453716%_
                                  (lambda (_%hd36433720%_
                                           _%e36493723%_
                                           _%hd36503725%_)
                                    (if (gx#stx-pair? _%hd36433720%_)
                                        (let ((_%e36463728%_
                                               (gx#syntax-e _%hd36433720%_)))
                                          (let ((_%lp-tl36483735%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e36463728%_)))
                                                (_%lp-hd36473732%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e36463728%_))))
                                            (if (gx#stx-pair?
                                                 _%lp-hd36473732%_)
                                                (let ((_%e36533738%_
                                                       (gx#syntax-e
                                                        _%lp-hd36473732%_)))
                                                  (let ((_%tl36553745%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e36533738%_)))
                                                        (_%hd36543742%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e36533738%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl36553745%_)
                                                        (let ((_%e36563748%_
                                                               (gx#syntax-e
                                                                _%tl36553745%_)))
                                                          (let ((_%tl36583755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e36563748%_)))
                        (_%hd36573752%_
                         (let () (declare (not safe)) (##car _%e36563748%_))))
                    (if (gx#stx-null? _%tl36583755%_)
                        (_%loop36453716%_
                         _%lp-tl36483735%_
                         (cons _%hd36573752%_ _%e36493723%_)
                         (cons _%hd36543742%_ _%hd36503725%_))
                        (let () (declare (not safe)) (_%g36073673%_)))))
                (let () (declare (not safe)) (_%g36073673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g36073673%_)))))
                                        (let ((_%hd36523761%_
                                               (reverse _%hd36503725%_))
                                              (_%e36513758%_
                                               (reverse _%e36493723%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl36413707%_)
                                              (let ((_%__splice1869218693%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl36413707%_
                                                      '0)))
                                                (let ((_%tl36613767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1869218693%_
                                                          '1)))
                                                      (_%target36593764%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1869218693%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl36613767%_)
                                                      (letrec ((_%loop36623770%_
                                                                (lambda (_%hd36603774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body36663777%_)
                          (if (gx#stx-pair? _%hd36603774%_)
                              (let ((_%e36633780%_
                                     (gx#syntax-e _%hd36603774%_)))
                                (let ((_%lp-tl36653787%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e36633780%_)))
                                      (_%lp-hd36643784%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e36633780%_))))
                                  (_%loop36623770%_
                                   _%lp-tl36653787%_
                                   (cons _%lp-hd36643784%_ _%body36663777%_))))
                              (let ((_%body36673790%_
                                     (reverse _%body36663777%_)))
                                (let ((_%L3794%_ _%body36673790%_)
                                      (_%L3796%_ _%e36513758%_)
                                      (_%L3797%_ _%hd36523761%_)
                                      (_%L3798%_ _%hd36373694%_))
                                  (if (gx#stx-andmap
                                       _%let-head?3602%_
                                       (foldr (lambda (_%g38243827%_
                                                       _%g38253830%_)
                                                (cons _%g38243827%_
                                                      _%g38253830%_))
                                              '()
                                              _%L3797%_))
                                      (_%__kont1868818689%_
                                       _%L3794%_
                                       _%L3796%_
                                       _%L3797%_
                                       _%L3798%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g36073673%_)))))))))
                (_%loop36623770%_ _%target36593764%_ '()))
              (let () (declare (not safe)) (_%g36073673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g36073673%_))))))))
                          (_%loop36453716%_ _%target36423710%_ '() '()))))
                     (_%__match1872618727%_
                      (lambda (_%e36143941%_
                               _%hd36153945%_
                               _%tl36163948%_
                               _%e36173951%_
                               _%hd36183955%_
                               _%tl36193958%_
                               _%e36203961%_
                               _%hd36213965%_
                               _%tl36223968%_
                               _%e36233971%_
                               _%hd36243975%_
                               _%tl36253978%_
                               _%e36263981%_
                               _%hd36273985%_
                               _%tl36283988%_)
                        (let ((_%L3991%_ _%tl36223968%_)
                              (_%L3993%_ _%hd36273985%_)
                              (_%L3994%_ _%hd36243975%_)
                              (_%L3995%_ _%hd36183955%_)
                              (_%L3996%_ _%hd36153945%_))
                          (if (_%let-head?3602%_ _%L3994%_)
                              (_%__kont1868618687%_
                               _%L3991%_
                               _%L3993%_
                               _%L3994%_
                               _%L3995%_
                               _%L3996%_)
                              (if (gx#stx-pair/null? _%hd36213965%_)
                                  (let ((_%__splice1869018691%_
                                         (gx#syntax-split-splice->vector
                                          _%hd36213965%_
                                          '0)))
                                    (let ((_%tl36443713%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1869018691%_
                                              '1)))
                                          (_%target36423710%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1869018691%_
                                              '0))))
                                      (if (gx#stx-null? _%tl36443713%_)
                                          (_%__match1875218753%_
                                           _%e36143941%_
                                           _%hd36153945%_
                                           _%tl36163948%_
                                           _%e36173951%_
                                           _%hd36183955%_
                                           _%tl36193958%_
                                           _%e36203961%_
                                           _%hd36213965%_
                                           _%tl36223968%_
                                           _%__splice1869018691%_
                                           _%target36423710%_
                                           _%tl36443713%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g36073673%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g36073673%_))))))))
                (if (gx#stx-pair? _%__stx1868318684%_)
                    (let ((_%e36143941%_ (gx#syntax-e _%__stx1868318684%_)))
                      (let ((_%tl36163948%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e36143941%_)))
                            (_%hd36153945%_
                             (let ()
                               (declare (not safe))
                               (##car _%e36143941%_))))
                        (if (gx#stx-pair? _%tl36163948%_)
                            (let ((_%e36173951%_ (gx#syntax-e _%tl36163948%_)))
                              (let ((_%tl36193958%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e36173951%_)))
                                    (_%hd36183955%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e36173951%_))))
                                (if (gx#stx-pair? _%tl36193958%_)
                                    (let ((_%e36203961%_
                                           (gx#syntax-e _%tl36193958%_)))
                                      (let ((_%tl36223968%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e36203961%_)))
                                            (_%hd36213965%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e36203961%_))))
                                        (if (gx#stx-pair? _%hd36213965%_)
                                            (let ((_%e36233971%_
                                                   (gx#syntax-e
                                                    _%hd36213965%_)))
                                              (let ((_%tl36253978%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e36233971%_)))
                                                    (_%hd36243975%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e36233971%_))))
                                                (if (gx#stx-pair?
                                                     _%tl36253978%_)
                                                    (let ((_%e36263981%_
                                                           (gx#syntax-e
                                                            _%tl36253978%_)))
                                                      (let ((_%tl36283988%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e36263981%_)))
                    (_%hd36273985%_
                     (let () (declare (not safe)) (##car _%e36263981%_))))
                (if (gx#stx-null? _%tl36283988%_)
                    (_%__match1872618727%_
                     _%e36143941%_
                     _%hd36153945%_
                     _%tl36163948%_
                     _%e36173951%_
                     _%hd36183955%_
                     _%tl36193958%_
                     _%e36203961%_
                     _%hd36213965%_
                     _%tl36223968%_
                     _%e36233971%_
                     _%hd36243975%_
                     _%tl36253978%_
                     _%e36263981%_
                     _%hd36273985%_
                     _%tl36283988%_)
                    (if (gx#stx-pair/null? _%hd36213965%_)
                        (let ((_%__splice1869018691%_
                               (gx#syntax-split-splice->vector
                                _%hd36213965%_
                                '0)))
                          (let ((_%tl36443713%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1869018691%_ '1)))
                                (_%target36423710%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1869018691%_ '0))))
                            (if (gx#stx-null? _%tl36443713%_)
                                (_%__match1875218753%_
                                 _%e36143941%_
                                 _%hd36153945%_
                                 _%tl36163948%_
                                 _%e36173951%_
                                 _%hd36183955%_
                                 _%tl36193958%_
                                 _%e36203961%_
                                 _%hd36213965%_
                                 _%tl36223968%_
                                 _%__splice1869018691%_
                                 _%target36423710%_
                                 _%tl36443713%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g36073673%_)))))
                        (let () (declare (not safe)) (_%g36073673%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%hd36213965%_)
                                                        (let ((_%__splice1869018691%_
                                                               (gx#syntax-split-splice->vector
                                                                _%hd36213965%_
                                                                '0)))
                                                          (let ((_%tl36443713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice1869018691%_ '1)))
                        (_%target36423710%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice1869018691%_ '0))))
                    (if (gx#stx-null? _%tl36443713%_)
                        (_%__match1875218753%_
                         _%e36143941%_
                         _%hd36153945%_
                         _%tl36163948%_
                         _%e36173951%_
                         _%hd36183955%_
                         _%tl36193958%_
                         _%e36203961%_
                         _%hd36213965%_
                         _%tl36223968%_
                         _%__splice1869018691%_
                         _%target36423710%_
                         _%tl36443713%_)
                        (let () (declare (not safe)) (_%g36073673%_)))))
                (let () (declare (not safe)) (_%g36073673%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _%hd36213965%_)
                                                (let ((_%__splice1869018691%_
                                                       (gx#syntax-split-splice->vector
                                                        _%hd36213965%_
                                                        '0)))
                                                  (let ((_%tl36443713%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1869018691%_
                                                            '1)))
                                                        (_%target36423710%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1869018691%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl36443713%_)
                                                        (_%__match1875218753%_
                                                         _%e36143941%_
                                                         _%hd36153945%_
                                                         _%tl36163948%_
                                                         _%e36173951%_
                                                         _%hd36183955%_
                                                         _%tl36193958%_
                                                         _%e36203961%_
                                                         _%hd36213965%_
                                                         _%tl36223968%_
                                                         _%__splice1869018691%_
                                                         _%target36423710%_
                                                         _%tl36443713%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g36073673%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g36073673%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g36073673%_)))))
                            (let () (declare (not safe)) (_%g36073673%_)))))
                    (let () (declare (not safe)) (_%g36073673%_)))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#and|
      (lambda (_%$stx4145%_)
        (let* ((_%__stx1875518756%_ _%$stx4145%_)
               (_%g41514177%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1875518756%_))))
          (let ((_%__kont1875818759%_ (lambda () '#t))
                (_%__kont1876018761%_ (lambda (_%L4249%_) _%L4249%_))
                (_%__kont1876218763%_
                 (lambda (_%L4204%_ _%L4206%_ _%L4207%_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _%L4206%_
                               (cons (cons _%L4207%_ _%L4204%_)
                                     (cons '#f '())))))))
            (if (gx#stx-pair? _%__stx1875518756%_)
                (let ((_%e41534269%_ (gx#syntax-e _%__stx1875518756%_)))
                  (let ((_%tl41554276%_
                         (let () (declare (not safe)) (##cdr _%e41534269%_)))
                        (_%hd41544273%_
                         (let () (declare (not safe)) (##car _%e41534269%_))))
                    (if (gx#stx-null? _%tl41554276%_)
                        (_%__kont1875818759%_)
                        (if (gx#stx-pair? _%tl41554276%_)
                            (let ((_%e41604239%_ (gx#syntax-e _%tl41554276%_)))
                              (let ((_%tl41624246%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e41604239%_)))
                                    (_%hd41614243%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e41604239%_))))
                                (if (gx#stx-null? _%tl41624246%_)
                                    (_%__kont1876018761%_ _%hd41614243%_)
                                    (_%__kont1876218763%_
                                     _%tl41624246%_
                                     _%hd41614243%_
                                     _%hd41544273%_))))
                            (let () (declare (not safe)) (_%g41514177%_))))))
                (let () (declare (not safe)) (_%g41514177%_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#or|
      (lambda (_%$stx4287%_)
        (let* ((_%__stx1880118802%_ _%$stx4287%_)
               (_%g42934319%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1880118802%_))))
          (let ((_%__kont1880418805%_ (lambda () '#f))
                (_%__kont1880618807%_ (lambda (_%L4391%_) _%L4391%_))
                (_%__kont1880818809%_
                 (lambda (_%L4346%_ _%L4348%_ _%L4349%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%L4348%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _%L4349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L4346%_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (gx#stx-pair? _%__stx1880118802%_)
                (let ((_%e42954411%_ (gx#syntax-e _%__stx1880118802%_)))
                  (let ((_%tl42974418%_
                         (let () (declare (not safe)) (##cdr _%e42954411%_)))
                        (_%hd42964415%_
                         (let () (declare (not safe)) (##car _%e42954411%_))))
                    (if (gx#stx-null? _%tl42974418%_)
                        (_%__kont1880418805%_)
                        (if (gx#stx-pair? _%tl42974418%_)
                            (let ((_%e43024381%_ (gx#syntax-e _%tl42974418%_)))
                              (let ((_%tl43044388%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e43024381%_)))
                                    (_%hd43034385%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e43024381%_))))
                                (if (gx#stx-null? _%tl43044388%_)
                                    (_%__kont1880618807%_ _%hd43034385%_)
                                    (_%__kont1880818809%_
                                     _%tl43044388%_
                                     _%hd43034385%_
                                     _%hd42964415%_))))
                            (let () (declare (not safe)) (_%g42934319%_))))))
                (let () (declare (not safe)) (_%g42934319%_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#cond|
      (lambda (_%$stx4429%_)
        (let* ((_%__stx1884718848%_ _%$stx4429%_)
               (_%g44384529%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1884718848%_))))
          (let ((_%__kont1885018851%_ (lambda () '#!void))
                (_%__kont1885218853%_
                 (lambda (_%L4876%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g48954898%_ _%g48964901%_)
                                        (cons _%g48954898%_ _%g48964901%_))
                                      '()
                                      _%L4876%_)))))
                (_%__kont1885618857%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'syntax-error)
                         (cons '"bad syntax; misplaced else" '()))))
                (_%__kont1885818859%_
                 (lambda (_%L4749%_ _%L4751%_ _%L4752%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%L4751%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _%L4752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L4749%_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1886018861%_
                 (lambda (_%L4687%_ _%L4689%_ _%L4690%_ _%L4691%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%L4690%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (cons _%L4689%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$e)
                           '()))
               (cons (cons _%L4691%_ _%L4687%_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1886218863%_
                 (lambda (_%L4596%_ _%L4598%_ _%L4599%_ _%L4600%_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _%L4599%_
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (foldr (lambda (_%g46214624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g46224627%_)
                  (cons _%g46214624%_ _%g46224627%_))
                '()
                _%L4598%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%L4600%_ _%L4596%_)
                                           '())))))))
            (let* ((_%__match1900819009%_
                    (lambda (_%e45064536%_
                             _%hd45074540%_
                             _%tl45084543%_
                             _%e45094546%_
                             _%hd45104550%_
                             _%tl45114553%_
                             _%e45124556%_
                             _%hd45134560%_
                             _%tl45144563%_
                             _%__splice1886418865%_
                             _%target45154566%_
                             _%tl45174569%_)
                      (letrec ((_%loop45184572%_
                                (lambda (_%hd45164576%_ _%body45224579%_)
                                  (if (gx#stx-pair? _%hd45164576%_)
                                      (let ((_%e45194582%_
                                             (gx#syntax-e _%hd45164576%_)))
                                        (let ((_%lp-tl45214589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e45194582%_)))
                                              (_%lp-hd45204586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e45194582%_))))
                                          (_%loop45184572%_
                                           _%lp-tl45214589%_
                                           (cons _%lp-hd45204586%_
                                                 _%body45224579%_))))
                                      (let ((_%body45234592%_
                                             (reverse _%body45224579%_)))
                                        (_%__kont1886218863%_
                                         _%tl45114553%_
                                         _%body45234592%_
                                         _%hd45134560%_
                                         _%hd45074540%_))))))
                        (_%loop45184572%_ _%target45154566%_ '()))))
                   (_%__match1890418905%_
                    (lambda (_%e44444816%_
                             _%hd44454820%_
                             _%tl44464823%_
                             _%e44474826%_
                             _%hd44484830%_
                             _%tl44494833%_
                             _%e44504836%_
                             _%hd44514840%_
                             _%tl44524843%_
                             _%__splice1885418855%_
                             _%target44534846%_
                             _%tl44554849%_)
                      (letrec ((_%loop44564852%_
                                (lambda (_%hd44544856%_ _%body44604859%_)
                                  (if (gx#stx-pair? _%hd44544856%_)
                                      (let ((_%e44574862%_
                                             (gx#syntax-e _%hd44544856%_)))
                                        (let ((_%lp-tl44594869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e44574862%_)))
                                              (_%lp-hd44584866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e44574862%_))))
                                          (_%loop44564852%_
                                           _%lp-tl44594869%_
                                           (cons _%lp-hd44584866%_
                                                 _%body44604859%_))))
                                      (let ((_%body44614872%_
                                             (reverse _%body44604859%_)))
                                        (if (gx#stx-null? _%tl44494833%_)
                                            (_%__kont1885218853%_
                                             _%body44614872%_)
                                            (_%__kont1885618857%_)))))))
                        (_%loop44564852%_ _%target44534846%_ '())))))
              (if (gx#stx-pair? _%__stx1884718848%_)
                  (let ((_%e44404911%_ (gx#syntax-e _%__stx1884718848%_)))
                    (let ((_%tl44424918%_
                           (let () (declare (not safe)) (##cdr _%e44404911%_)))
                          (_%hd44414915%_
                           (let ()
                             (declare (not safe))
                             (##car _%e44404911%_))))
                      (if (gx#stx-null? _%tl44424918%_)
                          (_%__kont1885018851%_)
                          (if (gx#stx-pair? _%tl44424918%_)
                              (let ((_%e44474826%_
                                     (gx#syntax-e _%tl44424918%_)))
                                (let ((_%tl44494833%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e44474826%_)))
                                      (_%hd44484830%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e44474826%_))))
                                  (if (gx#stx-pair? _%hd44484830%_)
                                      (let ((_%e44504836%_
                                             (gx#syntax-e _%hd44484830%_)))
                                        (let ((_%tl44524843%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e44504836%_)))
                                              (_%hd44514840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e44504836%_))))
                                          (if (gx#identifier? _%hd44514840%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-1[1]#_g20874_|
                                                   _%hd44514840%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl44524843%_)
                                                      (let ((_%__splice1885418855%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl44524843%_
                                                              '0)))
                                                        (let ((_%tl44554849%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1885418855%_ '1)))
                      (_%target44534846%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1885418855%_ '0))))
                  (if (gx#stx-null? _%tl44554849%_)
                      (_%__match1890418905%_
                       _%e44404911%_
                       _%hd44414915%_
                       _%tl44424918%_
                       _%e44474826%_
                       _%hd44484830%_
                       _%tl44494833%_
                       _%e44504836%_
                       _%hd44514840%_
                       _%tl44524843%_
                       _%__splice1885418855%_
                       _%target44534846%_
                       _%tl44554849%_)
                      (_%__kont1885618857%_))))
              (_%__kont1885618857%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl44524843%_)
                                                      (_%__kont1885818859%_
                                                       _%tl44494833%_
                                                       _%hd44514840%_
                                                       _%hd44414915%_)
                                                      (if (gx#stx-pair?
                                                           _%tl44524843%_)
                                                          (let ((_%e44964667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl44524843%_)))
                    (let ((_%tl44984674%_
                           (let () (declare (not safe)) (##cdr _%e44964667%_)))
                          (_%hd44974671%_
                           (let ()
                             (declare (not safe))
                             (##car _%e44964667%_))))
                      (if (gx#identifier? _%hd44974671%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/sugar~Sugar-1[1]#_g20875_|
                               _%hd44974671%_)
                              (if (gx#stx-pair? _%tl44984674%_)
                                  (let ((_%e44994677%_
                                         (gx#syntax-e _%tl44984674%_)))
                                    (let ((_%tl45014684%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e44994677%_)))
                                          (_%hd45004681%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e44994677%_))))
                                      (if (gx#stx-null? _%tl45014684%_)
                                          (_%__kont1886018861%_
                                           _%tl44494833%_
                                           _%hd45004681%_
                                           _%hd44514840%_
                                           _%hd44414915%_)
                                          (if (gx#stx-pair/null?
                                               _%tl44524843%_)
                                              (let ((_%__splice1886418865%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl44524843%_
                                                      '0)))
                                                (let ((_%tl45174569%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1886418865%_
                                                          '1)))
                                                      (_%target45154566%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1886418865%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl45174569%_)
                                                      (_%__match1900819009%_
                                                       _%e44404911%_
                                                       _%hd44414915%_
                                                       _%tl44424918%_
                                                       _%e44474826%_
                                                       _%hd44484830%_
                                                       _%tl44494833%_
                                                       _%e44504836%_
                                                       _%hd44514840%_
                                                       _%tl44524843%_
                                                       _%__splice1886418865%_
                                                       _%target45154566%_
                                                       _%tl45174569%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g44384529%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g44384529%_))))))
                                  (if (gx#stx-pair/null? _%tl44524843%_)
                                      (let ((_%__splice1886418865%_
                                             (gx#syntax-split-splice->vector
                                              _%tl44524843%_
                                              '0)))
                                        (let ((_%tl45174569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1886418865%_
                                                  '1)))
                                              (_%target45154566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1886418865%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl45174569%_)
                                              (_%__match1900819009%_
                                               _%e44404911%_
                                               _%hd44414915%_
                                               _%tl44424918%_
                                               _%e44474826%_
                                               _%hd44484830%_
                                               _%tl44494833%_
                                               _%e44504836%_
                                               _%hd44514840%_
                                               _%tl44524843%_
                                               _%__splice1886418865%_
                                               _%target45154566%_
                                               _%tl45174569%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g44384529%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g44384529%_))))
                              (if (gx#stx-pair/null? _%tl44524843%_)
                                  (let ((_%__splice1886418865%_
                                         (gx#syntax-split-splice->vector
                                          _%tl44524843%_
                                          '0)))
                                    (let ((_%tl45174569%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1886418865%_
                                              '1)))
                                          (_%target45154566%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1886418865%_
                                              '0))))
                                      (if (gx#stx-null? _%tl45174569%_)
                                          (_%__match1900819009%_
                                           _%e44404911%_
                                           _%hd44414915%_
                                           _%tl44424918%_
                                           _%e44474826%_
                                           _%hd44484830%_
                                           _%tl44494833%_
                                           _%e44504836%_
                                           _%hd44514840%_
                                           _%tl44524843%_
                                           _%__splice1886418865%_
                                           _%target45154566%_
                                           _%tl45174569%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g44384529%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g44384529%_))))
                          (if (gx#stx-pair/null? _%tl44524843%_)
                              (let ((_%__splice1886418865%_
                                     (gx#syntax-split-splice->vector
                                      _%tl44524843%_
                                      '0)))
                                (let ((_%tl45174569%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1886418865%_
                                          '1)))
                                      (_%target45154566%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1886418865%_
                                          '0))))
                                  (if (gx#stx-null? _%tl45174569%_)
                                      (_%__match1900819009%_
                                       _%e44404911%_
                                       _%hd44414915%_
                                       _%tl44424918%_
                                       _%e44474826%_
                                       _%hd44484830%_
                                       _%tl44494833%_
                                       _%e44504836%_
                                       _%hd44514840%_
                                       _%tl44524843%_
                                       _%__splice1886418865%_
                                       _%target45154566%_
                                       _%tl45174569%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g44384529%_)))))
                              (let () (declare (not safe)) (_%g44384529%_))))))
                  (if (gx#stx-pair/null? _%tl44524843%_)
                      (let ((_%__splice1886418865%_
                             (gx#syntax-split-splice->vector
                              _%tl44524843%_
                              '0)))
                        (let ((_%tl45174569%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1886418865%_ '1)))
                              (_%target45154566%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1886418865%_ '0))))
                          (if (gx#stx-null? _%tl45174569%_)
                              (_%__match1900819009%_
                               _%e44404911%_
                               _%hd44414915%_
                               _%tl44424918%_
                               _%e44474826%_
                               _%hd44484830%_
                               _%tl44494833%_
                               _%e44504836%_
                               _%hd44514840%_
                               _%tl44524843%_
                               _%__splice1886418865%_
                               _%target45154566%_
                               _%tl45174569%_)
                              (let () (declare (not safe)) (_%g44384529%_)))))
                      (let () (declare (not safe)) (_%g44384529%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _%tl44524843%_)
                                                  (_%__kont1885818859%_
                                                   _%tl44494833%_
                                                   _%hd44514840%_
                                                   _%hd44414915%_)
                                                  (if (gx#stx-pair?
                                                       _%tl44524843%_)
                                                      (let ((_%e44964667%_
                                                             (gx#syntax-e
                                                              _%tl44524843%_)))
                                                        (let ((_%tl44984674%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e44964667%_)))
                      (_%hd44974671%_
                       (let () (declare (not safe)) (##car _%e44964667%_))))
                  (if (gx#identifier? _%hd44974671%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/sugar~Sugar-1[1]#_g20875_|
                           _%hd44974671%_)
                          (if (gx#stx-pair? _%tl44984674%_)
                              (let ((_%e44994677%_
                                     (gx#syntax-e _%tl44984674%_)))
                                (let ((_%tl45014684%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e44994677%_)))
                                      (_%hd45004681%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e44994677%_))))
                                  (if (gx#stx-null? _%tl45014684%_)
                                      (_%__kont1886018861%_
                                       _%tl44494833%_
                                       _%hd45004681%_
                                       _%hd44514840%_
                                       _%hd44414915%_)
                                      (if (gx#stx-pair/null? _%tl44524843%_)
                                          (let ((_%__splice1886418865%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl44524843%_
                                                  '0)))
                                            (let ((_%tl45174569%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1886418865%_
                                                      '1)))
                                                  (_%target45154566%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1886418865%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl45174569%_)
                                                  (_%__match1900819009%_
                                                   _%e44404911%_
                                                   _%hd44414915%_
                                                   _%tl44424918%_
                                                   _%e44474826%_
                                                   _%hd44484830%_
                                                   _%tl44494833%_
                                                   _%e44504836%_
                                                   _%hd44514840%_
                                                   _%tl44524843%_
                                                   _%__splice1886418865%_
                                                   _%target45154566%_
                                                   _%tl45174569%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g44384529%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g44384529%_))))))
                              (if (gx#stx-pair/null? _%tl44524843%_)
                                  (let ((_%__splice1886418865%_
                                         (gx#syntax-split-splice->vector
                                          _%tl44524843%_
                                          '0)))
                                    (let ((_%tl45174569%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1886418865%_
                                              '1)))
                                          (_%target45154566%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1886418865%_
                                              '0))))
                                      (if (gx#stx-null? _%tl45174569%_)
                                          (_%__match1900819009%_
                                           _%e44404911%_
                                           _%hd44414915%_
                                           _%tl44424918%_
                                           _%e44474826%_
                                           _%hd44484830%_
                                           _%tl44494833%_
                                           _%e44504836%_
                                           _%hd44514840%_
                                           _%tl44524843%_
                                           _%__splice1886418865%_
                                           _%target45154566%_
                                           _%tl45174569%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g44384529%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g44384529%_))))
                          (if (gx#stx-pair/null? _%tl44524843%_)
                              (let ((_%__splice1886418865%_
                                     (gx#syntax-split-splice->vector
                                      _%tl44524843%_
                                      '0)))
                                (let ((_%tl45174569%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1886418865%_
                                          '1)))
                                      (_%target45154566%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1886418865%_
                                          '0))))
                                  (if (gx#stx-null? _%tl45174569%_)
                                      (_%__match1900819009%_
                                       _%e44404911%_
                                       _%hd44414915%_
                                       _%tl44424918%_
                                       _%e44474826%_
                                       _%hd44484830%_
                                       _%tl44494833%_
                                       _%e44504836%_
                                       _%hd44514840%_
                                       _%tl44524843%_
                                       _%__splice1886418865%_
                                       _%target45154566%_
                                       _%tl45174569%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g44384529%_)))))
                              (let () (declare (not safe)) (_%g44384529%_))))
                      (if (gx#stx-pair/null? _%tl44524843%_)
                          (let ((_%__splice1886418865%_
                                 (gx#syntax-split-splice->vector
                                  _%tl44524843%_
                                  '0)))
                            (let ((_%tl45174569%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1886418865%_ '1)))
                                  (_%target45154566%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1886418865%_
                                      '0))))
                              (if (gx#stx-null? _%tl45174569%_)
                                  (_%__match1900819009%_
                                   _%e44404911%_
                                   _%hd44414915%_
                                   _%tl44424918%_
                                   _%e44474826%_
                                   _%hd44484830%_
                                   _%tl44494833%_
                                   _%e44504836%_
                                   _%hd44514840%_
                                   _%tl44524843%_
                                   _%__splice1886418865%_
                                   _%target45154566%_
                                   _%tl45174569%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g44384529%_)))))
                          (let () (declare (not safe)) (_%g44384529%_))))))
              (if (gx#stx-pair/null? _%tl44524843%_)
                  (let ((_%__splice1886418865%_
                         (gx#syntax-split-splice->vector _%tl44524843%_ '0)))
                    (let ((_%tl45174569%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1886418865%_ '1)))
                          (_%target45154566%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1886418865%_ '0))))
                      (if (gx#stx-null? _%tl45174569%_)
                          (_%__match1900819009%_
                           _%e44404911%_
                           _%hd44414915%_
                           _%tl44424918%_
                           _%e44474826%_
                           _%hd44484830%_
                           _%tl44494833%_
                           _%e44504836%_
                           _%hd44514840%_
                           _%tl44524843%_
                           _%__splice1886418865%_
                           _%target45154566%_
                           _%tl45174569%_)
                          (let () (declare (not safe)) (_%g44384529%_)))))
                  (let () (declare (not safe)) (_%g44384529%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%g44384529%_)))))
                              (let () (declare (not safe)) (_%g44384529%_))))))
                  (let () (declare (not safe)) (_%g44384529%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#when|
      (lambda (_%$stx4931%_)
        (let* ((_%g49354963%_
                (lambda (_%g49364959%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g49364959%_)))
               (_%g49345062%_
                (lambda (_%g49364967%_)
                  (if (gx#stx-pair? _%g49364967%_)
                      (let ((_%e49404970%_ (gx#syntax-e _%g49364967%_)))
                        (let ((_%hd49414974%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e49404970%_)))
                              (_%tl49424977%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e49404970%_))))
                          (if (gx#stx-pair? _%tl49424977%_)
                              (let ((_%e49434980%_
                                     (gx#syntax-e _%tl49424977%_)))
                                (let ((_%hd49444984%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e49434980%_)))
                                      (_%tl49454987%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e49434980%_))))
                                  (if (gx#stx-pair? _%tl49454987%_)
                                      (let ((_%e49464990%_
                                             (gx#syntax-e _%tl49454987%_)))
                                        (let ((_%hd49474994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e49464990%_)))
                                              (_%tl49484997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e49464990%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl49484997%_)
                                              (let ((_g20876_
                                                     (gx#syntax-split-splice
                                                      _%tl49484997%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20877_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20876_)
                                                               (##values-length
                                                                _g20876_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20877_ 2)))
                (error "Context expects 2 values" _g20877_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target49495000%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20876_
                                                            0)))
                                                        (_%tl49515003%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20876_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl49515003%_)
                                                        (letrec ((_%loop49525006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd49505010%_ _%rest49565013%_)
                            (if (gx#stx-pair? _%hd49505010%_)
                                (let ((_%e49535016%_
                                       (gx#syntax-e _%hd49505010%_)))
                                  (let ((_%lp-hd49545020%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e49535016%_)))
                                        (_%lp-tl49555023%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e49535016%_))))
                                    (_%loop49525006%_
                                     _%lp-tl49555023%_
                                     (cons _%lp-hd49545020%_
                                           _%rest49565013%_))))
                                (let ((_%rest49575026%_
                                       (reverse _%rest49565013%_)))
                                  ((lambda (_%L5030%_ _%L5032%_ _%L5033%_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _%L5033%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (cons _%L5032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g50535056%_ _%g50545059%_)
                                    (cons _%g50535056%_ _%g50545059%_))
                                  '()
                                  _%L5030%_)))
               (cons '#!void '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest49575026%_
                                   _%hd49474994%_
                                   _%hd49444984%_))))))
                  (_%loop49525006%_ _%target49495000%_ '()))
                (_%g49354963%_ _%g49364967%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g49354963%_ _%g49364967%_))))
                                      (_%g49354963%_ _%g49364967%_))))
                              (_%g49354963%_ _%g49364967%_))))
                      (_%g49354963%_ _%g49364967%_)))))
          (_%g49345062%_ _%$stx4931%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#unless|
      (lambda (_%$stx5067%_)
        (let* ((_%g50715099%_
                (lambda (_%g50725095%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g50725095%_)))
               (_%g50705198%_
                (lambda (_%g50725103%_)
                  (if (gx#stx-pair? _%g50725103%_)
                      (let ((_%e50765106%_ (gx#syntax-e _%g50725103%_)))
                        (let ((_%hd50775110%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e50765106%_)))
                              (_%tl50785113%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e50765106%_))))
                          (if (gx#stx-pair? _%tl50785113%_)
                              (let ((_%e50795116%_
                                     (gx#syntax-e _%tl50785113%_)))
                                (let ((_%hd50805120%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e50795116%_)))
                                      (_%tl50815123%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e50795116%_))))
                                  (if (gx#stx-pair? _%tl50815123%_)
                                      (let ((_%e50825126%_
                                             (gx#syntax-e _%tl50815123%_)))
                                        (let ((_%hd50835130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e50825126%_)))
                                              (_%tl50845133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e50825126%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl50845133%_)
                                              (let ((_g20878_
                                                     (gx#syntax-split-splice
                                                      _%tl50845133%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20879_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20878_)
                                                               (##values-length
                                                                _g20878_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20879_ 2)))
                (error "Context expects 2 values" _g20879_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target50855136%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20878_
                                                            0)))
                                                        (_%tl50875139%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20878_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl50875139%_)
                                                        (letrec ((_%loop50885142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd50865146%_ _%rest50925149%_)
                            (if (gx#stx-pair? _%hd50865146%_)
                                (let ((_%e50895152%_
                                       (gx#syntax-e _%hd50865146%_)))
                                  (let ((_%lp-hd50905156%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e50895152%_)))
                                        (_%lp-tl50915159%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e50895152%_))))
                                    (_%loop50885142%_
                                     _%lp-tl50915159%_
                                     (cons _%lp-hd50905156%_
                                           _%rest50925149%_))))
                                (let ((_%rest50935162%_
                                       (reverse _%rest50925149%_)))
                                  ((lambda (_%L5166%_ _%L5168%_ _%L5169%_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _%L5169%_
                                                 (cons '#!void
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           (cons _%L5168%_
                                 (foldr (lambda (_%g51895192%_ _%g51905195%_)
                                          (cons _%g51895192%_ _%g51905195%_))
                                        '()
                                        _%L5166%_)))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest50935162%_
                                   _%hd50835130%_
                                   _%hd50805120%_))))))
                  (_%loop50885142%_ _%target50855136%_ '()))
                (_%g50715099%_ _%g50725103%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g50715099%_ _%g50725103%_))))
                                      (_%g50715099%_ _%g50725103%_))))
                              (_%g50715099%_ _%g50725103%_))))
                      (_%g50715099%_ _%g50725103%_)))))
          (_%g50705198%_ _%$stx5067%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#syntax-error|
      (lambda (_%stx5203%_)
        (let* ((_%g52065230%_
                (lambda (_%g52075226%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g52075226%_)))
               (_%g52055315%_
                (lambda (_%g52075234%_)
                  (if (gx#stx-pair? _%g52075234%_)
                      (let ((_%e52105237%_ (gx#syntax-e _%g52075234%_)))
                        (let ((_%hd52115241%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e52105237%_)))
                              (_%tl52125244%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e52105237%_))))
                          (if (gx#stx-pair? _%tl52125244%_)
                              (let ((_%e52135247%_
                                     (gx#syntax-e _%tl52125244%_)))
                                (let ((_%hd52145251%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e52135247%_)))
                                      (_%tl52155254%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e52135247%_))))
                                  (if (gx#stx-pair/null? _%tl52155254%_)
                                      (let ((_g20880_
                                             (gx#syntax-split-splice
                                              _%tl52155254%_
                                              '0)))
                                        (begin
                                          (let ((_g20881_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20880_)
                                                       (##values-length
                                                        _g20880_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20881_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20881_)))
                                          (let ((_%target52165257%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20880_ 0)))
                                                (_%tl52185260%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20880_ 1))))
                                            (if (gx#stx-null? _%tl52185260%_)
                                                (letrec ((_%loop52195263%_
                                                          (lambda (_%hd52175267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%detail52235270%_)
                    (if (gx#stx-pair? _%hd52175267%_)
                        (let ((_%e52205273%_ (gx#syntax-e _%hd52175267%_)))
                          (let ((_%lp-hd52215277%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e52205273%_)))
                                (_%lp-tl52225280%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e52205273%_))))
                            (_%loop52195263%_
                             _%lp-tl52225280%_
                             (cons _%lp-hd52215277%_ _%detail52235270%_))))
                        (let ((_%detail52245283%_
                               (reverse _%detail52235270%_)))
                          ((lambda (_%L5287%_ _%L5289%_)
                             (if (gx#stx-string? _%L5289%_)
                                 (apply gx#raise-syntax-error
                                        '#f
                                        (gx#stx-e _%L5289%_)
                                        _%stx5203%_
                                        (gx#syntax->list
                                         (foldr (lambda (_%g53065309%_
                                                         _%g53075312%_)
                                                  (cons _%g53065309%_
                                                        _%g53075312%_))
                                                '()
                                                _%L5287%_)))
                                 (_%g52065230%_ _%g52075234%_)))
                           _%detail52245283%_
                           _%hd52145251%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop52195263%_
                                                   _%target52165257%_
                                                   '()))
                                                (_%g52065230%_
                                                 _%g52075234%_)))))
                                      (_%g52065230%_ _%g52075234%_))))
                              (_%g52065230%_ _%g52075234%_))))
                      (_%g52065230%_ _%g52075234%_)))))
          (_%g52055315%_ _%stx5203%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#compilation-target?|
      (lambda (_%$stx5320%_)
        (let* ((_%g53245338%_
                (lambda (_%g53255334%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g53255334%_)))
               (_%g53235379%_
                (lambda (_%g53255342%_)
                  (if (gx#stx-pair? _%g53255342%_)
                      (let ((_%e53275345%_ (gx#syntax-e _%g53255342%_)))
                        (let ((_%hd53285349%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e53275345%_)))
                              (_%tl53295352%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e53275345%_))))
                          (if (gx#stx-pair? _%tl53295352%_)
                              (let ((_%e53305355%_
                                     (gx#syntax-e _%tl53295352%_)))
                                (let ((_%hd53315359%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e53305355%_)))
                                      (_%tl53325362%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e53305355%_))))
                                  (if (gx#stx-null? _%tl53325362%_)
                                      ((lambda (_%L5365%_)
                                         (cons (gx#datum->syntax '#f 'eq?)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'current-compilation-target)
                                                           '())
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%L5365%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd53315359%_)
                                      (_%g53245338%_ _%g53255342%_))))
                              (_%g53245338%_ _%g53255342%_))))
                      (_%g53245338%_ _%g53255342%_)))))
          (_%g53235379%_ _%$stx5320%_))))))
