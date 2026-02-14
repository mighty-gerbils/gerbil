(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-1[1]#_g20977_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20978_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20981_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20982_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrules|
      (lambda (_%$stx2012%_)
        (let* ((_%g20162044%_
                (lambda (_%g20172040%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g20172040%_)))
               (_%g20152143%_
                (lambda (_%g20172048%_)
                  (if (gx#stx-pair? _%g20172048%_)
                      (let ((_%e20212051%_ (gx#syntax-e _%g20172048%_)))
                        (let ((_%hd20222055%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e20212051%_)))
                              (_%tl20232058%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e20212051%_))))
                          (if (gx#stx-pair? _%tl20232058%_)
                              (let ((_%e20242061%_
                                     (gx#syntax-e _%tl20232058%_)))
                                (let ((_%hd20252065%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e20242061%_)))
                                      (_%tl20262068%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e20242061%_))))
                                  (if (gx#stx-pair? _%tl20262068%_)
                                      (let ((_%e20272071%_
                                             (gx#syntax-e _%tl20262068%_)))
                                        (let ((_%hd20282075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e20272071%_)))
                                              (_%tl20292078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e20272071%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl20292078%_)
                                              (let ((_g20969_
                                                     (gx#syntax-split-splice
                                                      _%tl20292078%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20970_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20969_)
                                                               (##values-length
                                                                _g20969_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20970_ 2)))
                (error "Context expects 2 values" _g20970_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target20302081%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20969_
                                                            0)))
                                                        (_%tl20322084%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20969_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl20322084%_)
                                                        (letrec ((_%loop20332087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd20312091%_ _%clauses20372094%_)
                            (if (gx#stx-pair? _%hd20312091%_)
                                (let ((_%e20342096%_
                                       (gx#syntax-e _%hd20312091%_)))
                                  (let ((_%lp-hd20352100%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e20342096%_)))
                                        (_%lp-tl20362103%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e20342096%_))))
                                    (_%loop20332087%_
                                     _%lp-tl20362103%_
                                     (cons _%lp-hd20352100%_
                                           _%clauses20372094%_))))
                                (let ((_%clauses20382106%_
                                       (reverse _%clauses20372094%_)))
                                  ((lambda (_%g20182109%_
                                            _%g20192111%_
                                            _%g20202112%_)
                                     (if (gx#identifier? _%g20202112%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'define-syntax)
                                               (cons _%g20202112%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'syntax-rules)
                         (cons _%g20192111%_
                               (foldr (lambda (_%g21342137%_ _%g21352140%_)
                                        (cons _%g21342137%_ _%g21352140%_))
                                      '()
                                      _%g20182109%_)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%g20162044%_ _%g20172048%_)))
                                   _%clauses20382106%_
                                   _%hd20282075%_
                                   _%hd20252065%_))))))
                  (_%loop20332087%_ _%target20302081%_ '()))
                (_%g20162044%_ _%g20172048%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g20162044%_ _%g20172048%_))))
                                      (_%g20162044%_ _%g20172048%_))))
                              (_%g20162044%_ _%g20172048%_))))
                      (_%g20162044%_ _%g20172048%_)))))
          (_%g20152143%_ _%$stx2012%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrule|
      (lambda (_%$stx2148%_)
        (let* ((_%__stx1835618357%_ _%$stx2148%_)
               (_%g21532194%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1835618357%_))))
          (let ((_%__kont1835918360%_
                 (lambda (_%g21552324%_ _%g21562326%_ _%g21572327%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g21572327%_
                               (cons (cons (gx#datum->syntax '#f 'syntax-rules)
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           _%g21562326%_)
                     (cons _%g21552324%_ '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1836118362%_
                 (lambda (_%g21702251%_
                          _%g21712253%_
                          _%g21722254%_
                          _%g21732255%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g21732255%_
                               (cons (cons (gx#datum->syntax '#f 'syntax-rules)
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           _%g21722254%_)
                     (cons _%g21712253%_ (cons _%g21702251%_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match1842118422%_
                    (lambda (_%e21742201%_
                             _%hd21752205%_
                             _%tl21762208%_
                             _%e21772211%_
                             _%hd21782215%_
                             _%tl21792218%_
                             _%e21802221%_
                             _%hd21812225%_
                             _%tl21822228%_
                             _%e21832231%_
                             _%hd21842235%_
                             _%tl21852238%_
                             _%e21862241%_
                             _%hd21872245%_
                             _%tl21882248%_)
                      (let ((_%g21702251%_ _%hd21872245%_)
                            (_%g21712253%_ _%hd21842235%_)
                            (_%g21722254%_ _%tl21822228%_)
                            (_%g21732255%_ _%hd21812225%_))
                        (if (gx#identifier? _%g21732255%_)
                            (_%__kont1836118362%_
                             _%g21702251%_
                             _%g21712253%_
                             _%g21722254%_
                             _%g21732255%_)
                            (let () (declare (not safe)) (_%g21532194%_))))))
                   (_%__match1838918390%_
                    (lambda (_%e21582284%_
                             _%hd21592288%_
                             _%tl21602291%_
                             _%e21612294%_
                             _%hd21622298%_
                             _%tl21632301%_
                             _%e21642304%_
                             _%hd21652308%_
                             _%tl21662311%_
                             _%e21672314%_
                             _%hd21682318%_
                             _%tl21692321%_)
                      (let ((_%g21552324%_ _%hd21682318%_)
                            (_%g21562326%_ _%tl21662311%_)
                            (_%g21572327%_ _%hd21652308%_))
                        (if (gx#identifier? _%g21572327%_)
                            (_%__kont1835918360%_
                             _%g21552324%_
                             _%g21562326%_
                             _%g21572327%_)
                            (let () (declare (not safe)) (_%g21532194%_)))))))
              (if (gx#stx-pair? _%__stx1835618357%_)
                  (let ((_%e21582284%_ (gx#syntax-e _%__stx1835618357%_)))
                    (let ((_%tl21602291%_
                           (let () (declare (not safe)) (##cdr _%e21582284%_)))
                          (_%hd21592288%_
                           (let ()
                             (declare (not safe))
                             (##car _%e21582284%_))))
                      (if (gx#stx-pair? _%tl21602291%_)
                          (let ((_%e21612294%_ (gx#syntax-e _%tl21602291%_)))
                            (let ((_%tl21632301%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e21612294%_)))
                                  (_%hd21622298%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e21612294%_))))
                              (if (gx#stx-pair? _%hd21622298%_)
                                  (let ((_%e21642304%_
                                         (gx#syntax-e _%hd21622298%_)))
                                    (let ((_%tl21662311%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e21642304%_)))
                                          (_%hd21652308%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e21642304%_))))
                                      (if (gx#stx-pair? _%tl21632301%_)
                                          (let ((_%e21672314%_
                                                 (gx#syntax-e _%tl21632301%_)))
                                            (let ((_%tl21692321%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e21672314%_)))
                                                  (_%hd21682318%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e21672314%_))))
                                              (if (gx#stx-null? _%tl21692321%_)
                                                  (_%__match1838918390%_
                                                   _%e21582284%_
                                                   _%hd21592288%_
                                                   _%tl21602291%_
                                                   _%e21612294%_
                                                   _%hd21622298%_
                                                   _%tl21632301%_
                                                   _%e21642304%_
                                                   _%hd21652308%_
                                                   _%tl21662311%_
                                                   _%e21672314%_
                                                   _%hd21682318%_
                                                   _%tl21692321%_)
                                                  (if (gx#stx-pair?
                                                       _%tl21692321%_)
                                                      (let ((_%e21862241%_
                                                             (gx#syntax-e
                                                              _%tl21692321%_)))
                                                        (let ((_%tl21882248%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e21862241%_)))
                      (_%hd21872245%_
                       (let () (declare (not safe)) (##car _%e21862241%_))))
                  (if (gx#stx-null? _%tl21882248%_)
                      (_%__match1842118422%_
                       _%e21582284%_
                       _%hd21592288%_
                       _%tl21602291%_
                       _%e21612294%_
                       _%hd21622298%_
                       _%tl21632301%_
                       _%e21642304%_
                       _%hd21652308%_
                       _%tl21662311%_
                       _%e21672314%_
                       _%hd21682318%_
                       _%tl21692321%_
                       _%e21862241%_
                       _%hd21872245%_
                       _%tl21882248%_)
                      (let () (declare (not safe)) (_%g21532194%_)))))
              (let () (declare (not safe)) (_%g21532194%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%g21532194%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g21532194%_)))))
                          (let () (declare (not safe)) (_%g21532194%_)))))
                  (let () (declare (not safe)) (_%g21532194%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defsyntax%|
      (lambda (_%$stx2349%_)
        (let* ((_%__stx1842418425%_ _%$stx2349%_)
               (_%g23542393%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1842418425%_))))
          (let ((_%__kont1842718428%_
                 (lambda (_%g23562513%_ _%g23572515%_ _%g23582516%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g23582516%_
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _%g23572515%_
                                                 (foldr (lambda (_%g25352538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g25362541%_)
                  (cons _%g25352538%_ _%g25362541%_))
                '()
                _%g23562513%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1843118432%_
                 (lambda (_%g23772430%_ _%g23782432%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g23782432%_ (cons _%g23772430%_ '()))))))
            (let* ((_%__match1847918480%_
                    (lambda (_%e23792400%_
                             _%hd23802404%_
                             _%tl23812407%_
                             _%e23822410%_
                             _%hd23832414%_
                             _%tl23842417%_
                             _%e23852420%_
                             _%hd23862424%_
                             _%tl23872427%_)
                      (let ((_%g23772430%_ _%hd23862424%_)
                            (_%g23782432%_ _%hd23832414%_))
                        (if (gx#identifier? _%g23782432%_)
                            (_%__kont1843118432%_ _%g23772430%_ _%g23782432%_)
                            (let () (declare (not safe)) (_%g23542393%_))))))
                   (_%__match1847118472%_
                    (lambda (_%e23792400%_
                             _%hd23802404%_
                             _%tl23812407%_
                             _%e23822410%_
                             _%hd23832414%_
                             _%tl23842417%_)
                      (if (gx#stx-pair? _%tl23842417%_)
                          (let ((_%e23852420%_ (gx#syntax-e _%tl23842417%_)))
                            (let ((_%tl23872427%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e23852420%_)))
                                  (_%hd23862424%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e23852420%_))))
                              (if (gx#stx-null? _%tl23872427%_)
                                  (_%__match1847918480%_
                                   _%e23792400%_
                                   _%hd23802404%_
                                   _%tl23812407%_
                                   _%e23822410%_
                                   _%hd23832414%_
                                   _%tl23842417%_
                                   _%e23852420%_
                                   _%hd23862424%_
                                   _%tl23872427%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g23542393%_)))))
                          (let () (declare (not safe)) (_%g23542393%_)))))
                   (_%__match1845918460%_
                    (lambda (_%e23592455%_
                             _%hd23602459%_
                             _%tl23612462%_
                             _%e23622465%_
                             _%hd23632469%_
                             _%tl23642472%_
                             _%e23652475%_
                             _%hd23662479%_
                             _%tl23672482%_
                             _%__splice1842918430%_
                             _%target23682485%_
                             _%tl23702488%_)
                      (letrec ((_%loop23712491%_
                                (lambda (_%hd23692495%_ _%body23752498%_)
                                  (if (gx#stx-pair? _%hd23692495%_)
                                      (let ((_%e23722500%_
                                             (gx#syntax-e _%hd23692495%_)))
                                        (let ((_%lp-tl23742507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e23722500%_)))
                                              (_%lp-hd23732504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e23722500%_))))
                                          (_%loop23712491%_
                                           _%lp-tl23742507%_
                                           (cons _%lp-hd23732504%_
                                                 _%body23752498%_))))
                                      (let ((_%body23762510%_
                                             (reverse _%body23752498%_)))
                                        (let ((_%g23562513%_ _%body23762510%_)
                                              (_%g23572515%_ _%tl23672482%_)
                                              (_%g23582516%_ _%hd23662479%_))
                                          (if (gx#identifier? _%g23582516%_)
                                              (_%__kont1842718428%_
                                               _%g23562513%_
                                               _%g23572515%_
                                               _%g23582516%_)
                                              (_%__match1847118472%_
                                               _%e23592455%_
                                               _%hd23602459%_
                                               _%tl23612462%_
                                               _%e23622465%_
                                               _%hd23632469%_
                                               _%tl23642472%_))))))))
                        (_%loop23712491%_ _%target23682485%_ '())))))
              (if (gx#stx-pair? _%__stx1842418425%_)
                  (let ((_%e23592455%_ (gx#syntax-e _%__stx1842418425%_)))
                    (let ((_%tl23612462%_
                           (let () (declare (not safe)) (##cdr _%e23592455%_)))
                          (_%hd23602459%_
                           (let ()
                             (declare (not safe))
                             (##car _%e23592455%_))))
                      (if (gx#stx-pair? _%tl23612462%_)
                          (let ((_%e23622465%_ (gx#syntax-e _%tl23612462%_)))
                            (let ((_%tl23642472%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e23622465%_)))
                                  (_%hd23632469%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e23622465%_))))
                              (if (gx#stx-pair? _%hd23632469%_)
                                  (let ((_%e23652475%_
                                         (gx#syntax-e _%hd23632469%_)))
                                    (let ((_%tl23672482%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e23652475%_)))
                                          (_%hd23662479%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e23652475%_))))
                                      (if (gx#stx-pair/null? _%tl23642472%_)
                                          (let ((_%__splice1842918430%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl23642472%_
                                                  '0)))
                                            (let ((_%tl23702488%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1842918430%_
                                                      '1)))
                                                  (_%target23682485%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1842918430%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl23702488%_)
                                                  (_%__match1845918460%_
                                                   _%e23592455%_
                                                   _%hd23602459%_
                                                   _%tl23612462%_
                                                   _%e23622465%_
                                                   _%hd23632469%_
                                                   _%tl23642472%_
                                                   _%e23652475%_
                                                   _%hd23662479%_
                                                   _%tl23672482%_
                                                   _%__splice1842918430%_
                                                   _%target23682485%_
                                                   _%tl23702488%_)
                                                  (if (gx#stx-pair?
                                                       _%tl23642472%_)
                                                      (let ((_%e23852420%_
                                                             (gx#syntax-e
                                                              _%tl23642472%_)))
                                                        (let ((_%tl23872427%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e23852420%_)))
                      (_%hd23862424%_
                       (let () (declare (not safe)) (##car _%e23852420%_))))
                  (if (gx#stx-null? _%tl23872427%_)
                      (_%__match1847918480%_
                       _%e23592455%_
                       _%hd23602459%_
                       _%tl23612462%_
                       _%e23622465%_
                       _%hd23632469%_
                       _%tl23642472%_
                       _%e23852420%_
                       _%hd23862424%_
                       _%tl23872427%_)
                      (let () (declare (not safe)) (_%g23542393%_)))))
              (let () (declare (not safe)) (_%g23542393%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl23642472%_)
                                              (let ((_%e23852420%_
                                                     (gx#syntax-e
                                                      _%tl23642472%_)))
                                                (let ((_%tl23872427%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e23852420%_)))
                                                      (_%hd23862424%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e23852420%_))))
                                                  (if (gx#stx-null?
                                                       _%tl23872427%_)
                                                      (_%__match1847918480%_
                                                       _%e23592455%_
                                                       _%hd23602459%_
                                                       _%tl23612462%_
                                                       _%e23622465%_
                                                       _%hd23632469%_
                                                       _%tl23642472%_
                                                       _%e23852420%_
                                                       _%hd23862424%_
                                                       _%tl23872427%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g23542393%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g23542393%_))))))
                                  (if (gx#stx-pair? _%tl23642472%_)
                                      (let ((_%e23852420%_
                                             (gx#syntax-e _%tl23642472%_)))
                                        (let ((_%tl23872427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e23852420%_)))
                                              (_%hd23862424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e23852420%_))))
                                          (if (gx#stx-null? _%tl23872427%_)
                                              (_%__match1847918480%_
                                               _%e23592455%_
                                               _%hd23602459%_
                                               _%tl23612462%_
                                               _%e23622465%_
                                               _%hd23632469%_
                                               _%tl23642472%_
                                               _%e23852420%_
                                               _%hd23862424%_
                                               _%tl23872427%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g23542393%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g23542393%_))))))
                          (let () (declare (not safe)) (_%g23542393%_)))))
                  (let () (declare (not safe)) (_%g23542393%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#define|
      (lambda (_%$stx2549%_)
        (let* ((_%__stx1848218483%_ _%$stx2549%_)
               (_%g25542593%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1848218483%_))))
          (let ((_%__kont1848518486%_
                 (lambda (_%g25562713%_ _%g25572715%_ _%g25582716%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g25582716%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _%g25572715%_
                                                 (foldr (lambda (_%g27352738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g27362741%_)
                  (cons _%g27352738%_ _%g27362741%_))
                '()
                _%g25562713%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1848918490%_
                 (lambda (_%g25772630%_ _%g25782632%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g25782632%_ '())
                               (cons _%g25772630%_ '()))))))
            (let* ((_%__match1853718538%_
                    (lambda (_%e25792600%_
                             _%hd25802604%_
                             _%tl25812607%_
                             _%e25822610%_
                             _%hd25832614%_
                             _%tl25842617%_
                             _%e25852620%_
                             _%hd25862624%_
                             _%tl25872627%_)
                      (let ((_%g25772630%_ _%hd25862624%_)
                            (_%g25782632%_ _%hd25832614%_))
                        (if (gx#identifier? _%g25782632%_)
                            (_%__kont1848918490%_ _%g25772630%_ _%g25782632%_)
                            (let () (declare (not safe)) (_%g25542593%_))))))
                   (_%__match1852918530%_
                    (lambda (_%e25792600%_
                             _%hd25802604%_
                             _%tl25812607%_
                             _%e25822610%_
                             _%hd25832614%_
                             _%tl25842617%_)
                      (if (gx#stx-pair? _%tl25842617%_)
                          (let ((_%e25852620%_ (gx#syntax-e _%tl25842617%_)))
                            (let ((_%tl25872627%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e25852620%_)))
                                  (_%hd25862624%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e25852620%_))))
                              (if (gx#stx-null? _%tl25872627%_)
                                  (_%__match1853718538%_
                                   _%e25792600%_
                                   _%hd25802604%_
                                   _%tl25812607%_
                                   _%e25822610%_
                                   _%hd25832614%_
                                   _%tl25842617%_
                                   _%e25852620%_
                                   _%hd25862624%_
                                   _%tl25872627%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g25542593%_)))))
                          (let () (declare (not safe)) (_%g25542593%_)))))
                   (_%__match1851718518%_
                    (lambda (_%e25592655%_
                             _%hd25602659%_
                             _%tl25612662%_
                             _%e25622665%_
                             _%hd25632669%_
                             _%tl25642672%_
                             _%e25652675%_
                             _%hd25662679%_
                             _%tl25672682%_
                             _%__splice1848718488%_
                             _%target25682685%_
                             _%tl25702688%_)
                      (letrec ((_%loop25712691%_
                                (lambda (_%hd25692695%_ _%body25752698%_)
                                  (if (gx#stx-pair? _%hd25692695%_)
                                      (let ((_%e25722700%_
                                             (gx#syntax-e _%hd25692695%_)))
                                        (let ((_%lp-tl25742707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e25722700%_)))
                                              (_%lp-hd25732704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e25722700%_))))
                                          (_%loop25712691%_
                                           _%lp-tl25742707%_
                                           (cons _%lp-hd25732704%_
                                                 _%body25752698%_))))
                                      (let ((_%body25762710%_
                                             (reverse _%body25752698%_)))
                                        (let ((_%g25562713%_ _%body25762710%_)
                                              (_%g25572715%_ _%tl25672682%_)
                                              (_%g25582716%_ _%hd25662679%_))
                                          (if (gx#identifier? _%g25582716%_)
                                              (_%__kont1848518486%_
                                               _%g25562713%_
                                               _%g25572715%_
                                               _%g25582716%_)
                                              (_%__match1852918530%_
                                               _%e25592655%_
                                               _%hd25602659%_
                                               _%tl25612662%_
                                               _%e25622665%_
                                               _%hd25632669%_
                                               _%tl25642672%_))))))))
                        (_%loop25712691%_ _%target25682685%_ '())))))
              (if (gx#stx-pair? _%__stx1848218483%_)
                  (let ((_%e25592655%_ (gx#syntax-e _%__stx1848218483%_)))
                    (let ((_%tl25612662%_
                           (let () (declare (not safe)) (##cdr _%e25592655%_)))
                          (_%hd25602659%_
                           (let ()
                             (declare (not safe))
                             (##car _%e25592655%_))))
                      (if (gx#stx-pair? _%tl25612662%_)
                          (let ((_%e25622665%_ (gx#syntax-e _%tl25612662%_)))
                            (let ((_%tl25642672%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e25622665%_)))
                                  (_%hd25632669%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e25622665%_))))
                              (if (gx#stx-pair? _%hd25632669%_)
                                  (let ((_%e25652675%_
                                         (gx#syntax-e _%hd25632669%_)))
                                    (let ((_%tl25672682%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e25652675%_)))
                                          (_%hd25662679%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e25652675%_))))
                                      (if (gx#stx-pair/null? _%tl25642672%_)
                                          (let ((_%__splice1848718488%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl25642672%_
                                                  '0)))
                                            (let ((_%tl25702688%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1848718488%_
                                                      '1)))
                                                  (_%target25682685%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1848718488%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl25702688%_)
                                                  (_%__match1851718518%_
                                                   _%e25592655%_
                                                   _%hd25602659%_
                                                   _%tl25612662%_
                                                   _%e25622665%_
                                                   _%hd25632669%_
                                                   _%tl25642672%_
                                                   _%e25652675%_
                                                   _%hd25662679%_
                                                   _%tl25672682%_
                                                   _%__splice1848718488%_
                                                   _%target25682685%_
                                                   _%tl25702688%_)
                                                  (if (gx#stx-pair?
                                                       _%tl25642672%_)
                                                      (let ((_%e25852620%_
                                                             (gx#syntax-e
                                                              _%tl25642672%_)))
                                                        (let ((_%tl25872627%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e25852620%_)))
                      (_%hd25862624%_
                       (let () (declare (not safe)) (##car _%e25852620%_))))
                  (if (gx#stx-null? _%tl25872627%_)
                      (_%__match1853718538%_
                       _%e25592655%_
                       _%hd25602659%_
                       _%tl25612662%_
                       _%e25622665%_
                       _%hd25632669%_
                       _%tl25642672%_
                       _%e25852620%_
                       _%hd25862624%_
                       _%tl25872627%_)
                      (let () (declare (not safe)) (_%g25542593%_)))))
              (let () (declare (not safe)) (_%g25542593%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl25642672%_)
                                              (let ((_%e25852620%_
                                                     (gx#syntax-e
                                                      _%tl25642672%_)))
                                                (let ((_%tl25872627%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e25852620%_)))
                                                      (_%hd25862624%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e25852620%_))))
                                                  (if (gx#stx-null?
                                                       _%tl25872627%_)
                                                      (_%__match1853718538%_
                                                       _%e25592655%_
                                                       _%hd25602659%_
                                                       _%tl25612662%_
                                                       _%e25622665%_
                                                       _%hd25632669%_
                                                       _%tl25642672%_
                                                       _%e25852620%_
                                                       _%hd25862624%_
                                                       _%tl25872627%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g25542593%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g25542593%_))))))
                                  (if (gx#stx-pair? _%tl25642672%_)
                                      (let ((_%e25852620%_
                                             (gx#syntax-e _%tl25642672%_)))
                                        (let ((_%tl25872627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e25852620%_)))
                                              (_%hd25862624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e25852620%_))))
                                          (if (gx#stx-null? _%tl25872627%_)
                                              (_%__match1853718538%_
                                               _%e25592655%_
                                               _%hd25602659%_
                                               _%tl25612662%_
                                               _%e25622665%_
                                               _%hd25632669%_
                                               _%tl25642672%_
                                               _%e25852620%_
                                               _%hd25862624%_
                                               _%tl25872627%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g25542593%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g25542593%_))))))
                          (let () (declare (not safe)) (_%g25542593%_)))))
                  (let () (declare (not safe)) (_%g25542593%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*-values|
      (lambda (_%$stx2749%_)
        (let* ((_%__stx1854018541%_ _%$stx2749%_)
               (_%g27542799%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1854018541%_))))
          (let ((_%__kont1854318544%_
                 (lambda (_%g27562953%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g29692972%_ _%g29702975%_)
                                        (cons _%g29692972%_ _%g29702975%_))
                                      '()
                                      _%g27562953%_)))))
                (_%__kont1854718548%_
                 (lambda (_%g27722864%_
                          _%g27732866%_
                          _%g27742867%_
                          _%g27752868%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons _%g27742867%_ '())
                               (cons (cons _%g27752868%_
                                           (cons _%g27732866%_
                                                 (foldr (lambda (_%g28892892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g28902895%_)
                  (cons _%g28892892%_ _%g28902895%_))
                '()
                _%g27722864%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match1859918600%_
                    (lambda (_%e27762806%_
                             _%hd27772810%_
                             _%tl27782813%_
                             _%e27792816%_
                             _%hd27802820%_
                             _%tl27812823%_
                             _%e27822826%_
                             _%hd27832830%_
                             _%tl27842833%_
                             _%__splice1854918550%_
                             _%target27852836%_
                             _%tl27872839%_)
                      (letrec ((_%loop27882842%_
                                (lambda (_%hd27862846%_ _%body27922849%_)
                                  (if (gx#stx-pair? _%hd27862846%_)
                                      (let ((_%e27892851%_
                                             (gx#syntax-e _%hd27862846%_)))
                                        (let ((_%lp-tl27912858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e27892851%_)))
                                              (_%lp-hd27902855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e27892851%_))))
                                          (_%loop27882842%_
                                           _%lp-tl27912858%_
                                           (cons _%lp-hd27902855%_
                                                 _%body27922849%_))))
                                      (let ((_%body27932861%_
                                             (reverse _%body27922849%_)))
                                        (_%__kont1854718548%_
                                         _%body27932861%_
                                         _%tl27842833%_
                                         _%hd27832830%_
                                         _%hd27772810%_))))))
                        (_%loop27882842%_ _%target27852836%_ '()))))
                   (_%__match1857318574%_
                    (lambda (_%e27572905%_
                             _%hd27582909%_
                             _%tl27592912%_
                             _%e27602915%_
                             _%hd27612919%_
                             _%tl27622922%_
                             _%__splice1854518546%_
                             _%target27632925%_
                             _%tl27652928%_)
                      (letrec ((_%loop27662931%_
                                (lambda (_%hd27642935%_ _%body27702938%_)
                                  (if (gx#stx-pair? _%hd27642935%_)
                                      (let ((_%e27672940%_
                                             (gx#syntax-e _%hd27642935%_)))
                                        (let ((_%lp-tl27692947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e27672940%_)))
                                              (_%lp-hd27682944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e27672940%_))))
                                          (_%loop27662931%_
                                           _%lp-tl27692947%_
                                           (cons _%lp-hd27682944%_
                                                 _%body27702938%_))))
                                      (let ((_%body27712950%_
                                             (reverse _%body27702938%_)))
                                        (_%__kont1854318544%_
                                         _%body27712950%_))))))
                        (_%loop27662931%_ _%target27632925%_ '())))))
              (if (gx#stx-pair? _%__stx1854018541%_)
                  (let ((_%e27572905%_ (gx#syntax-e _%__stx1854018541%_)))
                    (let ((_%tl27592912%_
                           (let () (declare (not safe)) (##cdr _%e27572905%_)))
                          (_%hd27582909%_
                           (let ()
                             (declare (not safe))
                             (##car _%e27572905%_))))
                      (if (gx#stx-pair? _%tl27592912%_)
                          (let ((_%e27602915%_ (gx#syntax-e _%tl27592912%_)))
                            (let ((_%tl27622922%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e27602915%_)))
                                  (_%hd27612919%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e27602915%_))))
                              (if (gx#stx-null? _%hd27612919%_)
                                  (if (gx#stx-pair/null? _%tl27622922%_)
                                      (let ((_%__splice1854518546%_
                                             (gx#syntax-split-splice->vector
                                              _%tl27622922%_
                                              '0)))
                                        (let ((_%tl27652928%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1854518546%_
                                                  '1)))
                                              (_%target27632925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1854518546%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl27652928%_)
                                              (_%__match1857318574%_
                                               _%e27572905%_
                                               _%hd27582909%_
                                               _%tl27592912%_
                                               _%e27602915%_
                                               _%hd27612919%_
                                               _%tl27622922%_
                                               _%__splice1854518546%_
                                               _%target27632925%_
                                               _%tl27652928%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g27542799%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g27542799%_)))
                                  (if (gx#stx-pair? _%hd27612919%_)
                                      (let ((_%e27822826%_
                                             (gx#syntax-e _%hd27612919%_)))
                                        (let ((_%tl27842833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e27822826%_)))
                                              (_%hd27832830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e27822826%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl27622922%_)
                                              (let ((_%__splice1854918550%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl27622922%_
                                                      '0)))
                                                (let ((_%tl27872839%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1854918550%_
                                                          '1)))
                                                      (_%target27852836%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1854918550%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl27872839%_)
                                                      (_%__match1859918600%_
                                                       _%e27572905%_
                                                       _%hd27582909%_
                                                       _%tl27592912%_
                                                       _%e27602915%_
                                                       _%hd27612919%_
                                                       _%tl27622922%_
                                                       _%e27822826%_
                                                       _%hd27832830%_
                                                       _%tl27842833%_
                                                       _%__splice1854918550%_
                                                       _%target27852836%_
                                                       _%tl27872839%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g27542799%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g27542799%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g27542799%_))))))
                          (let () (declare (not safe)) (_%g27542799%_)))))
                  (let () (declare (not safe)) (_%g27542799%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let|
      (lambda (_%$stx2984%_)
        (let* ((_%__stx1860218603%_ _%$stx2984%_)
               (_%g29893053%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1860218603%_))))
          (let ((_%__kont1860518606%_
                 (lambda (_%g29913251%_
                          _%g29923253%_
                          _%g29933254%_
                          _%g29943255%_
                          _%g29953256%_)
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (gx#datum->syntax '#f '@loop)
                               (cons (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'letrec-values)
                                                 (cons (cons (cons (cons _%g29953256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (cons (gx#datum->syntax '#f 'lambda%)
                                       (cons (foldr (lambda (_%g32813288%_
                                                             _%g32823291%_)
                                                      (cons _%g32813288%_
                                                            _%g32823291%_))
                                                    _%g29923253%_
                                                    _%g29943255%_)
                                             (foldr (lambda (_%g32833294%_
                                                             _%g32843297%_)
                                                      (cons _%g32833294%_
                                                            _%g32843297%_))
                                                    '()
                                                    _%g29913251%_)))
                                 '()))
                     '())
               (cons _%g29953256%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (foldr (lambda (_%g32853300%_
                                                           _%g32863303%_)
                                                    (cons _%g32853300%_
                                                          _%g32863303%_))
                                                  '()
                                                  _%g29933254%_))
                                     '())))))
                (_%__kont1861118612%_
                 (lambda (_%g30313108%_ _%g30323110%_)
                   (cons (gx#datum->syntax '#f '~let)
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons _%g30323110%_
                                     (foldr (lambda (_%g31273130%_
                                                     _%g31283133%_)
                                              (cons _%g31273130%_
                                                    _%g31283133%_))
                                            '()
                                            _%g30313108%_)))))))
            (let* ((_%__match1865918660%_
                    (lambda (_%e30333060%_
                             _%hd30343064%_
                             _%tl30353067%_
                             _%e30363070%_
                             _%hd30373074%_
                             _%tl30383077%_
                             _%__splice1861318614%_
                             _%target30393080%_
                             _%tl30413083%_)
                      (letrec ((_%loop30423086%_
                                (lambda (_%hd30403090%_ _%body30463093%_)
                                  (if (gx#stx-pair? _%hd30403090%_)
                                      (let ((_%e30433095%_
                                             (gx#syntax-e _%hd30403090%_)))
                                        (let ((_%lp-tl30453102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e30433095%_)))
                                              (_%lp-hd30443099%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e30433095%_))))
                                          (_%loop30423086%_
                                           _%lp-tl30453102%_
                                           (cons _%lp-hd30443099%_
                                                 _%body30463093%_))))
                                      (let ((_%body30473105%_
                                             (reverse _%body30463093%_)))
                                        (_%__kont1861118612%_
                                         _%body30473105%_
                                         _%hd30373074%_))))))
                        (_%loop30423086%_ _%target30393080%_ '()))))
                   (_%__match1865118652%_
                    (lambda (_%e30333060%_
                             _%hd30343064%_
                             _%tl30353067%_
                             _%e30363070%_
                             _%hd30373074%_
                             _%tl30383077%_)
                      (if (gx#stx-pair/null? _%tl30383077%_)
                          (let ((_%__splice1861318614%_
                                 (gx#syntax-split-splice->vector
                                  _%tl30383077%_
                                  '0)))
                            (let ((_%tl30413083%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1861318614%_ '1)))
                                  (_%target30393080%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1861318614%_
                                      '0))))
                              (if (gx#stx-null? _%tl30413083%_)
                                  (_%__match1865918660%_
                                   _%e30333060%_
                                   _%hd30343064%_
                                   _%tl30353067%_
                                   _%e30363070%_
                                   _%hd30373074%_
                                   _%tl30383077%_
                                   _%__splice1861318614%_
                                   _%target30393080%_
                                   _%tl30413083%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g29893053%_)))))
                          (let () (declare (not safe)) (_%g29893053%_)))))
                   (_%__match1863918640%_
                    (lambda (_%e29963143%_
                             _%hd29973147%_
                             _%tl29983150%_
                             _%e29993153%_
                             _%hd30003157%_
                             _%tl30013160%_
                             _%e30023163%_
                             _%hd30033167%_
                             _%tl30043170%_
                             _%__splice1860718608%_
                             _%target30053173%_
                             _%tl30073176%_)
                      (letrec ((_%loop30083179%_
                                (lambda (_%hd30063183%_
                                         _%arg30123186%_
                                         _%var30133187%_)
                                  (if (gx#stx-pair? _%hd30063183%_)
                                      (let ((_%e30093189%_
                                             (gx#syntax-e _%hd30063183%_)))
                                        (let ((_%lp-tl30113196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e30093189%_)))
                                              (_%lp-hd30103193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e30093189%_))))
                                          (if (gx#stx-pair? _%lp-hd30103193%_)
                                              (let ((_%e30163199%_
                                                     (gx#syntax-e
                                                      _%lp-hd30103193%_)))
                                                (let ((_%tl30183206%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e30163199%_)))
                                                      (_%hd30173203%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e30163199%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl30183206%_)
                                                      (let ((_%e30193209%_
                                                             (gx#syntax-e
                                                              _%tl30183206%_)))
                                                        (let ((_%tl30213216%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e30193209%_)))
                      (_%hd30203213%_
                       (let () (declare (not safe)) (##car _%e30193209%_))))
                  (if (gx#stx-null? _%tl30213216%_)
                      (_%loop30083179%_
                       _%lp-tl30113196%_
                       (cons _%hd30203213%_ _%arg30123186%_)
                       (cons _%hd30173203%_ _%var30133187%_))
                      (_%__match1865118652%_
                       _%e29963143%_
                       _%hd29973147%_
                       _%tl29983150%_
                       _%e29993153%_
                       _%hd30003157%_
                       _%tl30013160%_))))
              (_%__match1865118652%_
               _%e29963143%_
               _%hd29973147%_
               _%tl29983150%_
               _%e29993153%_
               _%hd30003157%_
               _%tl30013160%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__match1865118652%_
                                               _%e29963143%_
                                               _%hd29973147%_
                                               _%tl29983150%_
                                               _%e29993153%_
                                               _%hd30003157%_
                                               _%tl30013160%_))))
                                      (let ((_%var30153221%_
                                             (reverse _%var30133187%_))
                                            (_%arg30143219%_
                                             (reverse _%arg30123186%_)))
                                        (if (gx#stx-pair/null? _%tl30043170%_)
                                            (let ((_%__splice1860918610%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl30043170%_
                                                    '0)))
                                              (let ((_%tl30243226%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1860918610%_
                                                        '1)))
                                                    (_%target30223223%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1860918610%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl30243226%_)
                                                    (letrec ((_%loop30253229%_
                                                              (lambda (_%hd30233233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body30293236%_)
                        (if (gx#stx-pair? _%hd30233233%_)
                            (let ((_%e30263238%_ (gx#syntax-e _%hd30233233%_)))
                              (let ((_%lp-tl30283245%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e30263238%_)))
                                    (_%lp-hd30273242%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e30263238%_))))
                                (_%loop30253229%_
                                 _%lp-tl30283245%_
                                 (cons _%lp-hd30273242%_ _%body30293236%_))))
                            (let ((_%body30303248%_
                                   (reverse _%body30293236%_)))
                              (let ((_%g29913251%_ _%body30303248%_)
                                    (_%g29923253%_ _%tl30073176%_)
                                    (_%g29933254%_ _%arg30143219%_)
                                    (_%g29943255%_ _%var30153221%_)
                                    (_%g29953256%_ _%hd30003157%_))
                                (if (gx#identifier? _%g29953256%_)
                                    (_%__kont1860518606%_
                                     _%g29913251%_
                                     _%g29923253%_
                                     _%g29933254%_
                                     _%g29943255%_
                                     _%g29953256%_)
                                    (_%__match1865118652%_
                                     _%e29963143%_
                                     _%hd29973147%_
                                     _%tl29983150%_
                                     _%e29993153%_
                                     _%hd30003157%_
                                     _%tl30013160%_))))))))
              (_%loop30253229%_ _%target30223223%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match1865118652%_
                                                     _%e29963143%_
                                                     _%hd29973147%_
                                                     _%tl29983150%_
                                                     _%e29993153%_
                                                     _%hd30003157%_
                                                     _%tl30013160%_))))
                                            (_%__match1865118652%_
                                             _%e29963143%_
                                             _%hd29973147%_
                                             _%tl29983150%_
                                             _%e29993153%_
                                             _%hd30003157%_
                                             _%tl30013160%_)))))))
                        (_%loop30083179%_ _%target30053173%_ '() '())))))
              (if (gx#stx-pair? _%__stx1860218603%_)
                  (let ((_%e29963143%_ (gx#syntax-e _%__stx1860218603%_)))
                    (let ((_%tl29983150%_
                           (let () (declare (not safe)) (##cdr _%e29963143%_)))
                          (_%hd29973147%_
                           (let ()
                             (declare (not safe))
                             (##car _%e29963143%_))))
                      (if (gx#stx-pair? _%tl29983150%_)
                          (let ((_%e29993153%_ (gx#syntax-e _%tl29983150%_)))
                            (let ((_%tl30013160%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e29993153%_)))
                                  (_%hd30003157%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e29993153%_))))
                              (if (gx#stx-pair? _%tl30013160%_)
                                  (let ((_%e30023163%_
                                         (gx#syntax-e _%tl30013160%_)))
                                    (let ((_%tl30043170%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e30023163%_)))
                                          (_%hd30033167%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e30023163%_))))
                                      (if (gx#stx-pair/null? _%hd30033167%_)
                                          (let ((_%__splice1860718608%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd30033167%_
                                                  '0)))
                                            (let ((_%tl30073176%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1860718608%_
                                                      '1)))
                                                  (_%target30053173%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1860718608%_
                                                      '0))))
                                              (_%__match1863918640%_
                                               _%e29963143%_
                                               _%hd29973147%_
                                               _%tl29983150%_
                                               _%e29993153%_
                                               _%hd30003157%_
                                               _%tl30013160%_
                                               _%e30023163%_
                                               _%hd30033167%_
                                               _%tl30043170%_
                                               _%__splice1860718608%_
                                               _%target30053173%_
                                               _%tl30073176%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl30013160%_)
                                              (let ((_%__splice1861318614%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl30013160%_
                                                      '0)))
                                                (let ((_%tl30413083%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1861318614%_
                                                          '1)))
                                                      (_%target30393080%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1861318614%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl30413083%_)
                                                      (_%__match1865918660%_
                                                       _%e29963143%_
                                                       _%hd29973147%_
                                                       _%tl29983150%_
                                                       _%e29993153%_
                                                       _%hd30003157%_
                                                       _%tl30013160%_
                                                       _%__splice1861318614%_
                                                       _%target30393080%_
                                                       _%tl30413083%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g29893053%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g29893053%_))))))
                                  (if (gx#stx-pair/null? _%tl30013160%_)
                                      (let ((_%__splice1861318614%_
                                             (gx#syntax-split-splice->vector
                                              _%tl30013160%_
                                              '0)))
                                        (let ((_%tl30413083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1861318614%_
                                                  '1)))
                                              (_%target30393080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1861318614%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl30413083%_)
                                              (_%__match1865918660%_
                                               _%e29963143%_
                                               _%hd29973147%_
                                               _%tl29983150%_
                                               _%e29993153%_
                                               _%hd30003157%_
                                               _%tl30013160%_
                                               _%__splice1861318614%_
                                               _%target30393080%_
                                               _%tl30413083%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g29893053%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g29893053%_))))))
                          (let () (declare (not safe)) (_%g29893053%_)))))
                  (let () (declare (not safe)) (_%g29893053%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*|
      (lambda (_%$stx3313%_)
        (let* ((_%g33173341%_
                (lambda (_%g33183337%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g33183337%_)))
               (_%g33163424%_
                (lambda (_%g33183345%_)
                  (if (gx#stx-pair? _%g33183345%_)
                      (let ((_%e33213348%_ (gx#syntax-e _%g33183345%_)))
                        (let ((_%hd33223352%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e33213348%_)))
                              (_%tl33233355%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e33213348%_))))
                          (if (gx#stx-pair? _%tl33233355%_)
                              (let ((_%e33243358%_
                                     (gx#syntax-e _%tl33233355%_)))
                                (let ((_%hd33253362%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e33243358%_)))
                                      (_%tl33263365%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e33243358%_))))
                                  (if (gx#stx-pair/null? _%tl33263365%_)
                                      (let ((_g20971_
                                             (gx#syntax-split-splice
                                              _%tl33263365%_
                                              '0)))
                                        (begin
                                          (let ((_g20972_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20971_)
                                                       (##values-length
                                                        _g20971_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20972_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20972_)))
                                          (let ((_%target33273368%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20971_ 0)))
                                                (_%tl33293371%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20971_ 1))))
                                            (if (gx#stx-null? _%tl33293371%_)
                                                (letrec ((_%loop33303374%_
                                                          (lambda (_%hd33283378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body33343381%_)
                    (if (gx#stx-pair? _%hd33283378%_)
                        (let ((_%e33313383%_ (gx#syntax-e _%hd33283378%_)))
                          (let ((_%lp-hd33323387%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e33313383%_)))
                                (_%lp-tl33333390%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e33313383%_))))
                            (_%loop33303374%_
                             _%lp-tl33333390%_
                             (cons _%lp-hd33323387%_ _%body33343381%_))))
                        (let ((_%body33353393%_ (reverse _%body33343381%_)))
                          ((lambda (_%g33193396%_ _%g33203398%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'let*-values)
                                         (cons _%g33203398%_
                                               (foldr (lambda (_%g34153418%_
                                                               _%g34163421%_)
                                                        (cons _%g34153418%_
                                                              _%g34163421%_))
                                                      '()
                                                      _%g33193396%_)))))
                           _%body33353393%_
                           _%hd33253362%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop33303374%_
                                                   _%target33273368%_
                                                   '()))
                                                (_%g33173341%_
                                                 _%g33183345%_)))))
                                      (_%g33173341%_ _%g33183345%_))))
                              (_%g33173341%_ _%g33183345%_))))
                      (_%g33173341%_ _%g33183345%_)))))
          (_%g33163424%_ _%$stx3313%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec|
      (lambda (_%$stx3429%_)
        (let* ((_%g34333457%_
                (lambda (_%g34343453%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g34343453%_)))
               (_%g34323540%_
                (lambda (_%g34343461%_)
                  (if (gx#stx-pair? _%g34343461%_)
                      (let ((_%e34373464%_ (gx#syntax-e _%g34343461%_)))
                        (let ((_%hd34383468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e34373464%_)))
                              (_%tl34393471%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e34373464%_))))
                          (if (gx#stx-pair? _%tl34393471%_)
                              (let ((_%e34403474%_
                                     (gx#syntax-e _%tl34393471%_)))
                                (let ((_%hd34413478%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e34403474%_)))
                                      (_%tl34423481%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e34403474%_))))
                                  (if (gx#stx-pair/null? _%tl34423481%_)
                                      (let ((_g20973_
                                             (gx#syntax-split-splice
                                              _%tl34423481%_
                                              '0)))
                                        (begin
                                          (let ((_g20974_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20973_)
                                                       (##values-length
                                                        _g20973_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20974_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20974_)))
                                          (let ((_%target34433484%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20973_ 0)))
                                                (_%tl34453487%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20973_ 1))))
                                            (if (gx#stx-null? _%tl34453487%_)
                                                (letrec ((_%loop34463490%_
                                                          (lambda (_%hd34443494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body34503497%_)
                    (if (gx#stx-pair? _%hd34443494%_)
                        (let ((_%e34473499%_ (gx#syntax-e _%hd34443494%_)))
                          (let ((_%lp-hd34483503%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e34473499%_)))
                                (_%lp-tl34493506%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e34473499%_))))
                            (_%loop34463490%_
                             _%lp-tl34493506%_
                             (cons _%lp-hd34483503%_ _%body34503497%_))))
                        (let ((_%body34513509%_ (reverse _%body34503497%_)))
                          ((lambda (_%g34353512%_ _%g34363514%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec-values)
                                         (cons _%g34363514%_
                                               (foldr (lambda (_%g35313534%_
                                                               _%g35323537%_)
                                                        (cons _%g35313534%_
                                                              _%g35323537%_))
                                                      '()
                                                      _%g34353512%_)))))
                           _%body34513509%_
                           _%hd34413478%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop34463490%_
                                                   _%target34433484%_
                                                   '()))
                                                (_%g34333457%_
                                                 _%g34343461%_)))))
                                      (_%g34333457%_ _%g34343461%_))))
                              (_%g34333457%_ _%g34343461%_))))
                      (_%g34333457%_ _%g34343461%_)))))
          (_%g34323540%_ _%$stx3429%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec*|
      (lambda (_%$stx3545%_)
        (let* ((_%g35493573%_
                (lambda (_%g35503569%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g35503569%_)))
               (_%g35483656%_
                (lambda (_%g35503577%_)
                  (if (gx#stx-pair? _%g35503577%_)
                      (let ((_%e35533580%_ (gx#syntax-e _%g35503577%_)))
                        (let ((_%hd35543584%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e35533580%_)))
                              (_%tl35553587%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e35533580%_))))
                          (if (gx#stx-pair? _%tl35553587%_)
                              (let ((_%e35563590%_
                                     (gx#syntax-e _%tl35553587%_)))
                                (let ((_%hd35573594%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e35563590%_)))
                                      (_%tl35583597%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e35563590%_))))
                                  (if (gx#stx-pair/null? _%tl35583597%_)
                                      (let ((_g20975_
                                             (gx#syntax-split-splice
                                              _%tl35583597%_
                                              '0)))
                                        (begin
                                          (let ((_g20976_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20975_)
                                                       (##values-length
                                                        _g20975_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20976_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20976_)))
                                          (let ((_%target35593600%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20975_ 0)))
                                                (_%tl35613603%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20975_ 1))))
                                            (if (gx#stx-null? _%tl35613603%_)
                                                (letrec ((_%loop35623606%_
                                                          (lambda (_%hd35603610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body35663613%_)
                    (if (gx#stx-pair? _%hd35603610%_)
                        (let ((_%e35633615%_ (gx#syntax-e _%hd35603610%_)))
                          (let ((_%lp-hd35643619%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e35633615%_)))
                                (_%lp-tl35653622%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e35633615%_))))
                            (_%loop35623606%_
                             _%lp-tl35653622%_
                             (cons _%lp-hd35643619%_ _%body35663613%_))))
                        (let ((_%body35673625%_ (reverse _%body35663613%_)))
                          ((lambda (_%g35513628%_ _%g35523630%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec*-values)
                                         (cons _%g35523630%_
                                               (foldr (lambda (_%g36473650%_
                                                               _%g36483653%_)
                                                        (cons _%g36473650%_
                                                              _%g36483653%_))
                                                      '()
                                                      _%g35513628%_)))))
                           _%body35673625%_
                           _%hd35573594%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop35623606%_
                                                   _%target35593600%_
                                                   '()))
                                                (_%g35493573%_
                                                 _%g35503577%_)))))
                                      (_%g35493573%_ _%g35503577%_))))
                              (_%g35493573%_ _%g35503577%_))))
                      (_%g35493573%_ _%g35503577%_)))))
          (_%g35483656%_ _%$stx3545%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#~let|
      (lambda (_%stx3661%_)
        (letrec ((_%let-head?3664%_
                  (lambda (_%x4136%_)
                    (let* ((_%__stx1866218663%_ _%x4136%_)
                           (_%g41404151%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1866218663%_))))
                      (let ((_%__kont1866518666%_
                             (lambda (_%g41424179%_)
                               (gx#stx-andmap gx#identifier? _%g41424179%_)))
                            (_%__kont1866718668%_
                             (lambda () (gx#identifier? _%x4136%_))))
                        (if (gx#stx-pair? _%__stx1866218663%_)
                            (let ((_%e41434169%_
                                   (gx#syntax-e _%__stx1866218663%_)))
                              (let ((_%tl41454176%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e41434169%_)))
                                    (_%hd41444173%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e41434169%_))))
                                (if (gx#identifier? _%hd41444173%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g20977_|
                                         _%hd41444173%_)
                                        (_%__kont1866518666%_ _%tl41454176%_)
                                        (_%__kont1866718668%_))
                                    (_%__kont1866718668%_))))
                            (_%__kont1866718668%_))))))
                 (_%let-head3666%_
                  (lambda (_%x4076%_)
                    (let* ((_%__stx1868218683%_ _%x4076%_)
                           (_%g40804091%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1868218683%_))))
                      (let ((_%__kont1868518686%_
                             (lambda (_%g40824119%_) _%g40824119%_))
                            (_%__kont1868718688%_
                             (lambda () (list _%x4076%_))))
                        (if (gx#stx-pair? _%__stx1868218683%_)
                            (let ((_%e40834109%_
                                   (gx#syntax-e _%__stx1868218683%_)))
                              (let ((_%tl40854116%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e40834109%_)))
                                    (_%hd40844113%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e40834109%_))))
                                (if (gx#identifier? _%hd40844113%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g20978_|
                                         _%hd40844113%_)
                                        (_%__kont1868518686%_ _%tl40854116%_)
                                        (_%__kont1868718688%_))
                                    (_%__kont1868718688%_))))
                            (_%__kont1868718688%_)))))))
          (let* ((_%__stx1870218703%_ _%stx3661%_)
                 (_%g36693735%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1870218703%_))))
            (let ((_%__kont1870518706%_
                   (lambda (_%g36714045%_
                            _%g36724047%_
                            _%g36734048%_
                            _%g36744049%_
                            _%g36754050%_)
                     (cons _%g36754050%_
                           (cons _%g36744049%_
                                 (cons (cons (cons _%g36734048%_
                                                   (cons _%g36724047%_ '()))
                                             '())
                                       _%g36714045%_)))))
                  (_%__kont1870718708%_
                   (lambda (_%g36913850%_
                            _%g36923852%_
                            _%g36933853%_
                            _%g36943854%_)
                     (let* ((_%g38893906%_
                             (lambda (_%g38903902%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g38903902%_)))
                            (_%g38883976%_
                             (lambda (_%g38903910%_)
                               (if (gx#stx-pair/null? _%g38903910%_)
                                   (let ((_g20979_
                                          (gx#syntax-split-splice
                                           _%g38903910%_
                                           '0)))
                                     (begin
                                       (let ((_g20980_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20979_)
                                                    (##values-length _g20979_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20980_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20980_)))
                                       (let ((_%target38923913%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20979_ 0)))
                                             (_%tl38943916%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20979_ 1))))
                                         (if (gx#stx-null? _%tl38943916%_)
                                             (letrec ((_%loop38953919%_
                                                       (lambda (_%hd38933923%_
                                                                _%hd-bind38993926%_)
                                                         (if (gx#stx-pair?
                                                              _%hd38933923%_)
                                                             (let ((_%e38963928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd38933923%_)))
                       (let ((_%lp-hd38973932%_
                              (let ()
                                (declare (not safe))
                                (##car _%e38963928%_)))
                             (_%lp-tl38983935%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e38963928%_))))
                         (_%loop38953919%_
                          _%lp-tl38983935%_
                          (cons _%lp-hd38973932%_ _%hd-bind38993926%_))))
                     (let ((_%hd-bind39003938%_ (reverse _%hd-bind38993926%_)))
                       ((lambda (_%g38913941%_)
                          (cons _%g36943854%_
                                (cons (begin
                                        (gx#syntax-check-splice-targets
                                         _%g36923852%_
                                         _%g38913941%_)
                                        (foldr (lambda (_%g39563962%_
                                                        _%g39573965%_
                                                        _%g39583967%_)
                                                 (cons (cons _%g39573965%_
                                                             (cons _%g39563962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%g39583967%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _%g36923852%_
                                               _%g38913941%_))
                                      (foldr (lambda (_%g39593970%_
                                                      _%g39603973%_)
                                               (cons _%g39593970%_
                                                     _%g39603973%_))
                                             '()
                                             _%g36913850%_))))
                        _%hd-bind39003938%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop38953919%_
                                                _%target38923913%_
                                                '()))
                                             (_%g38893906%_ _%g38903910%_)))))
                                   (_%g38893906%_ _%g38903910%_)))))
                       (_%g38883976%_
                        (gx#stx-map
                         _%let-head3666%_
                         (foldr (lambda (_%g39793982%_ _%g39803985%_)
                                  (cons _%g39793982%_ _%g39803985%_))
                                '()
                                _%g36933853%_)))))))
              (let* ((_%__match1877118772%_
                      (lambda (_%e36953742%_
                               _%hd36963746%_
                               _%tl36973749%_
                               _%e36983752%_
                               _%hd36993756%_
                               _%tl37003759%_
                               _%e37013762%_
                               _%hd37023766%_
                               _%tl37033769%_
                               _%__splice1870918710%_
                               _%target37043772%_
                               _%tl37063775%_)
                        (letrec ((_%loop37073778%_
                                  (lambda (_%hd37053782%_
                                           _%e37113785%_
                                           _%hd37123786%_)
                                    (if (gx#stx-pair? _%hd37053782%_)
                                        (let ((_%e37083788%_
                                               (gx#syntax-e _%hd37053782%_)))
                                          (let ((_%lp-tl37103795%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e37083788%_)))
                                                (_%lp-hd37093792%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e37083788%_))))
                                            (if (gx#stx-pair?
                                                 _%lp-hd37093792%_)
                                                (let ((_%e37153798%_
                                                       (gx#syntax-e
                                                        _%lp-hd37093792%_)))
                                                  (let ((_%tl37173805%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e37153798%_)))
                                                        (_%hd37163802%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e37153798%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl37173805%_)
                                                        (let ((_%e37183808%_
                                                               (gx#syntax-e
                                                                _%tl37173805%_)))
                                                          (let ((_%tl37203815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e37183808%_)))
                        (_%hd37193812%_
                         (let () (declare (not safe)) (##car _%e37183808%_))))
                    (if (gx#stx-null? _%tl37203815%_)
                        (_%loop37073778%_
                         _%lp-tl37103795%_
                         (cons _%hd37193812%_ _%e37113785%_)
                         (cons _%hd37163802%_ _%hd37123786%_))
                        (let () (declare (not safe)) (_%g36693735%_)))))
                (let () (declare (not safe)) (_%g36693735%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g36693735%_)))))
                                        (let ((_%hd37143820%_
                                               (reverse _%hd37123786%_))
                                              (_%e37133818%_
                                               (reverse _%e37113785%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl37033769%_)
                                              (let ((_%__splice1871118712%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl37033769%_
                                                      '0)))
                                                (let ((_%tl37233825%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1871118712%_
                                                          '1)))
                                                      (_%target37213822%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1871118712%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl37233825%_)
                                                      (letrec ((_%loop37243828%_
                                                                (lambda (_%hd37223832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body37283835%_)
                          (if (gx#stx-pair? _%hd37223832%_)
                              (let ((_%e37253837%_
                                     (gx#syntax-e _%hd37223832%_)))
                                (let ((_%lp-tl37273844%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e37253837%_)))
                                      (_%lp-hd37263841%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e37253837%_))))
                                  (_%loop37243828%_
                                   _%lp-tl37273844%_
                                   (cons _%lp-hd37263841%_ _%body37283835%_))))
                              (let ((_%body37293847%_
                                     (reverse _%body37283835%_)))
                                (let ((_%g36913850%_ _%body37293847%_)
                                      (_%g36923852%_ _%e37133818%_)
                                      (_%g36933853%_ _%hd37143820%_)
                                      (_%g36943854%_ _%hd36993756%_))
                                  (if (gx#stx-andmap
                                       _%let-head?3664%_
                                       (foldr (lambda (_%g38803883%_
                                                       _%g38813886%_)
                                                (cons _%g38803883%_
                                                      _%g38813886%_))
                                              '()
                                              _%g36933853%_))
                                      (_%__kont1870718708%_
                                       _%g36913850%_
                                       _%g36923852%_
                                       _%g36933853%_
                                       _%g36943854%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g36693735%_)))))))))
                (_%loop37243828%_ _%target37213822%_ '()))
              (let () (declare (not safe)) (_%g36693735%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g36693735%_))))))))
                          (_%loop37073778%_ _%target37043772%_ '() '()))))
                     (_%__match1874518746%_
                      (lambda (_%e36763995%_
                               _%hd36773999%_
                               _%tl36784002%_
                               _%e36794005%_
                               _%hd36804009%_
                               _%tl36814012%_
                               _%e36824015%_
                               _%hd36834019%_
                               _%tl36844022%_
                               _%e36854025%_
                               _%hd36864029%_
                               _%tl36874032%_
                               _%e36884035%_
                               _%hd36894039%_
                               _%tl36904042%_)
                        (let ((_%g36714045%_ _%tl36844022%_)
                              (_%g36724047%_ _%hd36894039%_)
                              (_%g36734048%_ _%hd36864029%_)
                              (_%g36744049%_ _%hd36804009%_)
                              (_%g36754050%_ _%hd36773999%_))
                          (if (_%let-head?3664%_ _%g36734048%_)
                              (_%__kont1870518706%_
                               _%g36714045%_
                               _%g36724047%_
                               _%g36734048%_
                               _%g36744049%_
                               _%g36754050%_)
                              (if (gx#stx-pair/null? _%hd36834019%_)
                                  (let ((_%__splice1870918710%_
                                         (gx#syntax-split-splice->vector
                                          _%hd36834019%_
                                          '0)))
                                    (let ((_%tl37063775%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1870918710%_
                                              '1)))
                                          (_%target37043772%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1870918710%_
                                              '0))))
                                      (if (gx#stx-null? _%tl37063775%_)
                                          (_%__match1877118772%_
                                           _%e36763995%_
                                           _%hd36773999%_
                                           _%tl36784002%_
                                           _%e36794005%_
                                           _%hd36804009%_
                                           _%tl36814012%_
                                           _%e36824015%_
                                           _%hd36834019%_
                                           _%tl36844022%_
                                           _%__splice1870918710%_
                                           _%target37043772%_
                                           _%tl37063775%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g36693735%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g36693735%_))))))))
                (if (gx#stx-pair? _%__stx1870218703%_)
                    (let ((_%e36763995%_ (gx#syntax-e _%__stx1870218703%_)))
                      (let ((_%tl36784002%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e36763995%_)))
                            (_%hd36773999%_
                             (let ()
                               (declare (not safe))
                               (##car _%e36763995%_))))
                        (if (gx#stx-pair? _%tl36784002%_)
                            (let ((_%e36794005%_ (gx#syntax-e _%tl36784002%_)))
                              (let ((_%tl36814012%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e36794005%_)))
                                    (_%hd36804009%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e36794005%_))))
                                (if (gx#stx-pair? _%tl36814012%_)
                                    (let ((_%e36824015%_
                                           (gx#syntax-e _%tl36814012%_)))
                                      (let ((_%tl36844022%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e36824015%_)))
                                            (_%hd36834019%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e36824015%_))))
                                        (if (gx#stx-pair? _%hd36834019%_)
                                            (let ((_%e36854025%_
                                                   (gx#syntax-e
                                                    _%hd36834019%_)))
                                              (let ((_%tl36874032%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e36854025%_)))
                                                    (_%hd36864029%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e36854025%_))))
                                                (if (gx#stx-pair?
                                                     _%tl36874032%_)
                                                    (let ((_%e36884035%_
                                                           (gx#syntax-e
                                                            _%tl36874032%_)))
                                                      (let ((_%tl36904042%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e36884035%_)))
                    (_%hd36894039%_
                     (let () (declare (not safe)) (##car _%e36884035%_))))
                (if (gx#stx-null? _%tl36904042%_)
                    (_%__match1874518746%_
                     _%e36763995%_
                     _%hd36773999%_
                     _%tl36784002%_
                     _%e36794005%_
                     _%hd36804009%_
                     _%tl36814012%_
                     _%e36824015%_
                     _%hd36834019%_
                     _%tl36844022%_
                     _%e36854025%_
                     _%hd36864029%_
                     _%tl36874032%_
                     _%e36884035%_
                     _%hd36894039%_
                     _%tl36904042%_)
                    (if (gx#stx-pair/null? _%hd36834019%_)
                        (let ((_%__splice1870918710%_
                               (gx#syntax-split-splice->vector
                                _%hd36834019%_
                                '0)))
                          (let ((_%tl37063775%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1870918710%_ '1)))
                                (_%target37043772%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1870918710%_ '0))))
                            (if (gx#stx-null? _%tl37063775%_)
                                (_%__match1877118772%_
                                 _%e36763995%_
                                 _%hd36773999%_
                                 _%tl36784002%_
                                 _%e36794005%_
                                 _%hd36804009%_
                                 _%tl36814012%_
                                 _%e36824015%_
                                 _%hd36834019%_
                                 _%tl36844022%_
                                 _%__splice1870918710%_
                                 _%target37043772%_
                                 _%tl37063775%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g36693735%_)))))
                        (let () (declare (not safe)) (_%g36693735%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%hd36834019%_)
                                                        (let ((_%__splice1870918710%_
                                                               (gx#syntax-split-splice->vector
                                                                _%hd36834019%_
                                                                '0)))
                                                          (let ((_%tl37063775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice1870918710%_ '1)))
                        (_%target37043772%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice1870918710%_ '0))))
                    (if (gx#stx-null? _%tl37063775%_)
                        (_%__match1877118772%_
                         _%e36763995%_
                         _%hd36773999%_
                         _%tl36784002%_
                         _%e36794005%_
                         _%hd36804009%_
                         _%tl36814012%_
                         _%e36824015%_
                         _%hd36834019%_
                         _%tl36844022%_
                         _%__splice1870918710%_
                         _%target37043772%_
                         _%tl37063775%_)
                        (let () (declare (not safe)) (_%g36693735%_)))))
                (let () (declare (not safe)) (_%g36693735%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _%hd36834019%_)
                                                (let ((_%__splice1870918710%_
                                                       (gx#syntax-split-splice->vector
                                                        _%hd36834019%_
                                                        '0)))
                                                  (let ((_%tl37063775%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1870918710%_
                                                            '1)))
                                                        (_%target37043772%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1870918710%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl37063775%_)
                                                        (_%__match1877118772%_
                                                         _%e36763995%_
                                                         _%hd36773999%_
                                                         _%tl36784002%_
                                                         _%e36794005%_
                                                         _%hd36804009%_
                                                         _%tl36814012%_
                                                         _%e36824015%_
                                                         _%hd36834019%_
                                                         _%tl36844022%_
                                                         _%__splice1870918710%_
                                                         _%target37043772%_
                                                         _%tl37063775%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g36693735%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g36693735%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g36693735%_)))))
                            (let () (declare (not safe)) (_%g36693735%_)))))
                    (let () (declare (not safe)) (_%g36693735%_)))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#and|
      (lambda (_%$stx4199%_)
        (let* ((_%__stx1877418775%_ _%$stx4199%_)
               (_%g42054231%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1877418775%_))))
          (let ((_%__kont1877718778%_ (lambda () '#t))
                (_%__kont1877918780%_ (lambda (_%g42104303%_) _%g42104303%_))
                (_%__kont1878118782%_
                 (lambda (_%g42174258%_ _%g42184260%_ _%g42194261%_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _%g42184260%_
                               (cons (cons _%g42194261%_ _%g42174258%_)
                                     (cons '#f '())))))))
            (if (gx#stx-pair? _%__stx1877418775%_)
                (let ((_%e42074323%_ (gx#syntax-e _%__stx1877418775%_)))
                  (let ((_%tl42094330%_
                         (let () (declare (not safe)) (##cdr _%e42074323%_)))
                        (_%hd42084327%_
                         (let () (declare (not safe)) (##car _%e42074323%_))))
                    (if (gx#stx-null? _%tl42094330%_)
                        (_%__kont1877718778%_)
                        (if (gx#stx-pair? _%tl42094330%_)
                            (let ((_%e42144293%_ (gx#syntax-e _%tl42094330%_)))
                              (let ((_%tl42164300%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e42144293%_)))
                                    (_%hd42154297%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e42144293%_))))
                                (if (gx#stx-null? _%tl42164300%_)
                                    (_%__kont1877918780%_ _%hd42154297%_)
                                    (_%__kont1878118782%_
                                     _%tl42164300%_
                                     _%hd42154297%_
                                     _%hd42084327%_))))
                            (let () (declare (not safe)) (_%g42054231%_))))))
                (let () (declare (not safe)) (_%g42054231%_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#or|
      (lambda (_%$stx4341%_)
        (let* ((_%__stx1882018821%_ _%$stx4341%_)
               (_%g43474373%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1882018821%_))))
          (let ((_%__kont1882318824%_ (lambda () '#f))
                (_%__kont1882518826%_ (lambda (_%g43524445%_) _%g43524445%_))
                (_%__kont1882718828%_
                 (lambda (_%g43594400%_ _%g43604402%_ _%g43614403%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%g43604402%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _%g43614403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g43594400%_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (gx#stx-pair? _%__stx1882018821%_)
                (let ((_%e43494465%_ (gx#syntax-e _%__stx1882018821%_)))
                  (let ((_%tl43514472%_
                         (let () (declare (not safe)) (##cdr _%e43494465%_)))
                        (_%hd43504469%_
                         (let () (declare (not safe)) (##car _%e43494465%_))))
                    (if (gx#stx-null? _%tl43514472%_)
                        (_%__kont1882318824%_)
                        (if (gx#stx-pair? _%tl43514472%_)
                            (let ((_%e43564435%_ (gx#syntax-e _%tl43514472%_)))
                              (let ((_%tl43584442%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e43564435%_)))
                                    (_%hd43574439%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e43564435%_))))
                                (if (gx#stx-null? _%tl43584442%_)
                                    (_%__kont1882518826%_ _%hd43574439%_)
                                    (_%__kont1882718828%_
                                     _%tl43584442%_
                                     _%hd43574439%_
                                     _%hd43504469%_))))
                            (let () (declare (not safe)) (_%g43474373%_))))))
                (let () (declare (not safe)) (_%g43474373%_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#cond|
      (lambda (_%$stx4483%_)
        (let* ((_%__stx1886618867%_ _%$stx4483%_)
               (_%g44924583%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1886618867%_))))
          (let ((_%__kont1886918870%_ (lambda () '#!void))
                (_%__kont1887118872%_
                 (lambda (_%g44974926%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g49454948%_ _%g49464951%_)
                                        (cons _%g49454948%_ _%g49464951%_))
                                      '()
                                      _%g44974926%_)))))
                (_%__kont1887518876%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'syntax-error)
                         (cons '"bad syntax; misplaced else" '()))))
                (_%__kont1887718878%_
                 (lambda (_%g45254801%_ _%g45264803%_ _%g45274804%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%g45264803%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _%g45274804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g45254801%_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1887918880%_
                 (lambda (_%g45374739%_
                          _%g45384741%_
                          _%g45394742%_
                          _%g45404743%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%g45394742%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (cons _%g45384741%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$e)
                           '()))
               (cons (cons _%g45404743%_ _%g45374739%_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1888118882%_
                 (lambda (_%g45564648%_
                          _%g45574650%_
                          _%g45584651%_
                          _%g45594652%_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _%g45584651%_
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (foldr (lambda (_%g46734676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g46744679%_)
                  (cons _%g46734676%_ _%g46744679%_))
                '()
                _%g45574650%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%g45594652%_ _%g45564648%_)
                                           '())))))))
            (let* ((_%__match1902719028%_
                    (lambda (_%e45604590%_
                             _%hd45614594%_
                             _%tl45624597%_
                             _%e45634600%_
                             _%hd45644604%_
                             _%tl45654607%_
                             _%e45664610%_
                             _%hd45674614%_
                             _%tl45684617%_
                             _%__splice1888318884%_
                             _%target45694620%_
                             _%tl45714623%_)
                      (letrec ((_%loop45724626%_
                                (lambda (_%hd45704630%_ _%body45764633%_)
                                  (if (gx#stx-pair? _%hd45704630%_)
                                      (let ((_%e45734635%_
                                             (gx#syntax-e _%hd45704630%_)))
                                        (let ((_%lp-tl45754642%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e45734635%_)))
                                              (_%lp-hd45744639%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e45734635%_))))
                                          (_%loop45724626%_
                                           _%lp-tl45754642%_
                                           (cons _%lp-hd45744639%_
                                                 _%body45764633%_))))
                                      (let ((_%body45774645%_
                                             (reverse _%body45764633%_)))
                                        (_%__kont1888118882%_
                                         _%tl45654607%_
                                         _%body45774645%_
                                         _%hd45674614%_
                                         _%hd45614594%_))))))
                        (_%loop45724626%_ _%target45694620%_ '()))))
                   (_%__match1892318924%_
                    (lambda (_%e44984868%_
                             _%hd44994872%_
                             _%tl45004875%_
                             _%e45014878%_
                             _%hd45024882%_
                             _%tl45034885%_
                             _%e45044888%_
                             _%hd45054892%_
                             _%tl45064895%_
                             _%__splice1887318874%_
                             _%target45074898%_
                             _%tl45094901%_)
                      (letrec ((_%loop45104904%_
                                (lambda (_%hd45084908%_ _%body45144911%_)
                                  (if (gx#stx-pair? _%hd45084908%_)
                                      (let ((_%e45114913%_
                                             (gx#syntax-e _%hd45084908%_)))
                                        (let ((_%lp-tl45134920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e45114913%_)))
                                              (_%lp-hd45124917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e45114913%_))))
                                          (_%loop45104904%_
                                           _%lp-tl45134920%_
                                           (cons _%lp-hd45124917%_
                                                 _%body45144911%_))))
                                      (let ((_%body45154923%_
                                             (reverse _%body45144911%_)))
                                        (if (gx#stx-null? _%tl45034885%_)
                                            (_%__kont1887118872%_
                                             _%body45154923%_)
                                            (_%__kont1887518876%_)))))))
                        (_%loop45104904%_ _%target45074898%_ '())))))
              (if (gx#stx-pair? _%__stx1886618867%_)
                  (let ((_%e44944961%_ (gx#syntax-e _%__stx1886618867%_)))
                    (let ((_%tl44964968%_
                           (let () (declare (not safe)) (##cdr _%e44944961%_)))
                          (_%hd44954965%_
                           (let ()
                             (declare (not safe))
                             (##car _%e44944961%_))))
                      (if (gx#stx-null? _%tl44964968%_)
                          (_%__kont1886918870%_)
                          (if (gx#stx-pair? _%tl44964968%_)
                              (let ((_%e45014878%_
                                     (gx#syntax-e _%tl44964968%_)))
                                (let ((_%tl45034885%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e45014878%_)))
                                      (_%hd45024882%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e45014878%_))))
                                  (if (gx#stx-pair? _%hd45024882%_)
                                      (let ((_%e45044888%_
                                             (gx#syntax-e _%hd45024882%_)))
                                        (let ((_%tl45064895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e45044888%_)))
                                              (_%hd45054892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e45044888%_))))
                                          (if (gx#identifier? _%hd45054892%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-1[1]#_g20981_|
                                                   _%hd45054892%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl45064895%_)
                                                      (let ((_%__splice1887318874%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl45064895%_
                                                              '0)))
                                                        (let ((_%tl45094901%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1887318874%_ '1)))
                      (_%target45074898%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1887318874%_ '0))))
                  (if (gx#stx-null? _%tl45094901%_)
                      (_%__match1892318924%_
                       _%e44944961%_
                       _%hd44954965%_
                       _%tl44964968%_
                       _%e45014878%_
                       _%hd45024882%_
                       _%tl45034885%_
                       _%e45044888%_
                       _%hd45054892%_
                       _%tl45064895%_
                       _%__splice1887318874%_
                       _%target45074898%_
                       _%tl45094901%_)
                      (_%__kont1887518876%_))))
              (_%__kont1887518876%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl45064895%_)
                                                      (_%__kont1887718878%_
                                                       _%tl45034885%_
                                                       _%hd45054892%_
                                                       _%hd44954965%_)
                                                      (if (gx#stx-pair?
                                                           _%tl45064895%_)
                                                          (let ((_%e45504719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl45064895%_)))
                    (let ((_%tl45524726%_
                           (let () (declare (not safe)) (##cdr _%e45504719%_)))
                          (_%hd45514723%_
                           (let ()
                             (declare (not safe))
                             (##car _%e45504719%_))))
                      (if (gx#identifier? _%hd45514723%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/sugar~Sugar-1[1]#_g20982_|
                               _%hd45514723%_)
                              (if (gx#stx-pair? _%tl45524726%_)
                                  (let ((_%e45534729%_
                                         (gx#syntax-e _%tl45524726%_)))
                                    (let ((_%tl45554736%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e45534729%_)))
                                          (_%hd45544733%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e45534729%_))))
                                      (if (gx#stx-null? _%tl45554736%_)
                                          (_%__kont1887918880%_
                                           _%tl45034885%_
                                           _%hd45544733%_
                                           _%hd45054892%_
                                           _%hd44954965%_)
                                          (if (gx#stx-pair/null?
                                               _%tl45064895%_)
                                              (let ((_%__splice1888318884%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl45064895%_
                                                      '0)))
                                                (let ((_%tl45714623%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1888318884%_
                                                          '1)))
                                                      (_%target45694620%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1888318884%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl45714623%_)
                                                      (_%__match1902719028%_
                                                       _%e44944961%_
                                                       _%hd44954965%_
                                                       _%tl44964968%_
                                                       _%e45014878%_
                                                       _%hd45024882%_
                                                       _%tl45034885%_
                                                       _%e45044888%_
                                                       _%hd45054892%_
                                                       _%tl45064895%_
                                                       _%__splice1888318884%_
                                                       _%target45694620%_
                                                       _%tl45714623%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g44924583%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g44924583%_))))))
                                  (if (gx#stx-pair/null? _%tl45064895%_)
                                      (let ((_%__splice1888318884%_
                                             (gx#syntax-split-splice->vector
                                              _%tl45064895%_
                                              '0)))
                                        (let ((_%tl45714623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1888318884%_
                                                  '1)))
                                              (_%target45694620%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1888318884%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl45714623%_)
                                              (_%__match1902719028%_
                                               _%e44944961%_
                                               _%hd44954965%_
                                               _%tl44964968%_
                                               _%e45014878%_
                                               _%hd45024882%_
                                               _%tl45034885%_
                                               _%e45044888%_
                                               _%hd45054892%_
                                               _%tl45064895%_
                                               _%__splice1888318884%_
                                               _%target45694620%_
                                               _%tl45714623%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g44924583%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g44924583%_))))
                              (if (gx#stx-pair/null? _%tl45064895%_)
                                  (let ((_%__splice1888318884%_
                                         (gx#syntax-split-splice->vector
                                          _%tl45064895%_
                                          '0)))
                                    (let ((_%tl45714623%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1888318884%_
                                              '1)))
                                          (_%target45694620%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1888318884%_
                                              '0))))
                                      (if (gx#stx-null? _%tl45714623%_)
                                          (_%__match1902719028%_
                                           _%e44944961%_
                                           _%hd44954965%_
                                           _%tl44964968%_
                                           _%e45014878%_
                                           _%hd45024882%_
                                           _%tl45034885%_
                                           _%e45044888%_
                                           _%hd45054892%_
                                           _%tl45064895%_
                                           _%__splice1888318884%_
                                           _%target45694620%_
                                           _%tl45714623%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g44924583%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g44924583%_))))
                          (if (gx#stx-pair/null? _%tl45064895%_)
                              (let ((_%__splice1888318884%_
                                     (gx#syntax-split-splice->vector
                                      _%tl45064895%_
                                      '0)))
                                (let ((_%tl45714623%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1888318884%_
                                          '1)))
                                      (_%target45694620%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1888318884%_
                                          '0))))
                                  (if (gx#stx-null? _%tl45714623%_)
                                      (_%__match1902719028%_
                                       _%e44944961%_
                                       _%hd44954965%_
                                       _%tl44964968%_
                                       _%e45014878%_
                                       _%hd45024882%_
                                       _%tl45034885%_
                                       _%e45044888%_
                                       _%hd45054892%_
                                       _%tl45064895%_
                                       _%__splice1888318884%_
                                       _%target45694620%_
                                       _%tl45714623%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g44924583%_)))))
                              (let () (declare (not safe)) (_%g44924583%_))))))
                  (if (gx#stx-pair/null? _%tl45064895%_)
                      (let ((_%__splice1888318884%_
                             (gx#syntax-split-splice->vector
                              _%tl45064895%_
                              '0)))
                        (let ((_%tl45714623%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1888318884%_ '1)))
                              (_%target45694620%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1888318884%_ '0))))
                          (if (gx#stx-null? _%tl45714623%_)
                              (_%__match1902719028%_
                               _%e44944961%_
                               _%hd44954965%_
                               _%tl44964968%_
                               _%e45014878%_
                               _%hd45024882%_
                               _%tl45034885%_
                               _%e45044888%_
                               _%hd45054892%_
                               _%tl45064895%_
                               _%__splice1888318884%_
                               _%target45694620%_
                               _%tl45714623%_)
                              (let () (declare (not safe)) (_%g44924583%_)))))
                      (let () (declare (not safe)) (_%g44924583%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _%tl45064895%_)
                                                  (_%__kont1887718878%_
                                                   _%tl45034885%_
                                                   _%hd45054892%_
                                                   _%hd44954965%_)
                                                  (if (gx#stx-pair?
                                                       _%tl45064895%_)
                                                      (let ((_%e45504719%_
                                                             (gx#syntax-e
                                                              _%tl45064895%_)))
                                                        (let ((_%tl45524726%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e45504719%_)))
                      (_%hd45514723%_
                       (let () (declare (not safe)) (##car _%e45504719%_))))
                  (if (gx#identifier? _%hd45514723%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/sugar~Sugar-1[1]#_g20982_|
                           _%hd45514723%_)
                          (if (gx#stx-pair? _%tl45524726%_)
                              (let ((_%e45534729%_
                                     (gx#syntax-e _%tl45524726%_)))
                                (let ((_%tl45554736%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e45534729%_)))
                                      (_%hd45544733%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e45534729%_))))
                                  (if (gx#stx-null? _%tl45554736%_)
                                      (_%__kont1887918880%_
                                       _%tl45034885%_
                                       _%hd45544733%_
                                       _%hd45054892%_
                                       _%hd44954965%_)
                                      (if (gx#stx-pair/null? _%tl45064895%_)
                                          (let ((_%__splice1888318884%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl45064895%_
                                                  '0)))
                                            (let ((_%tl45714623%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1888318884%_
                                                      '1)))
                                                  (_%target45694620%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1888318884%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl45714623%_)
                                                  (_%__match1902719028%_
                                                   _%e44944961%_
                                                   _%hd44954965%_
                                                   _%tl44964968%_
                                                   _%e45014878%_
                                                   _%hd45024882%_
                                                   _%tl45034885%_
                                                   _%e45044888%_
                                                   _%hd45054892%_
                                                   _%tl45064895%_
                                                   _%__splice1888318884%_
                                                   _%target45694620%_
                                                   _%tl45714623%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g44924583%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g44924583%_))))))
                              (if (gx#stx-pair/null? _%tl45064895%_)
                                  (let ((_%__splice1888318884%_
                                         (gx#syntax-split-splice->vector
                                          _%tl45064895%_
                                          '0)))
                                    (let ((_%tl45714623%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1888318884%_
                                              '1)))
                                          (_%target45694620%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1888318884%_
                                              '0))))
                                      (if (gx#stx-null? _%tl45714623%_)
                                          (_%__match1902719028%_
                                           _%e44944961%_
                                           _%hd44954965%_
                                           _%tl44964968%_
                                           _%e45014878%_
                                           _%hd45024882%_
                                           _%tl45034885%_
                                           _%e45044888%_
                                           _%hd45054892%_
                                           _%tl45064895%_
                                           _%__splice1888318884%_
                                           _%target45694620%_
                                           _%tl45714623%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g44924583%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g44924583%_))))
                          (if (gx#stx-pair/null? _%tl45064895%_)
                              (let ((_%__splice1888318884%_
                                     (gx#syntax-split-splice->vector
                                      _%tl45064895%_
                                      '0)))
                                (let ((_%tl45714623%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1888318884%_
                                          '1)))
                                      (_%target45694620%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1888318884%_
                                          '0))))
                                  (if (gx#stx-null? _%tl45714623%_)
                                      (_%__match1902719028%_
                                       _%e44944961%_
                                       _%hd44954965%_
                                       _%tl44964968%_
                                       _%e45014878%_
                                       _%hd45024882%_
                                       _%tl45034885%_
                                       _%e45044888%_
                                       _%hd45054892%_
                                       _%tl45064895%_
                                       _%__splice1888318884%_
                                       _%target45694620%_
                                       _%tl45714623%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g44924583%_)))))
                              (let () (declare (not safe)) (_%g44924583%_))))
                      (if (gx#stx-pair/null? _%tl45064895%_)
                          (let ((_%__splice1888318884%_
                                 (gx#syntax-split-splice->vector
                                  _%tl45064895%_
                                  '0)))
                            (let ((_%tl45714623%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1888318884%_ '1)))
                                  (_%target45694620%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1888318884%_
                                      '0))))
                              (if (gx#stx-null? _%tl45714623%_)
                                  (_%__match1902719028%_
                                   _%e44944961%_
                                   _%hd44954965%_
                                   _%tl44964968%_
                                   _%e45014878%_
                                   _%hd45024882%_
                                   _%tl45034885%_
                                   _%e45044888%_
                                   _%hd45054892%_
                                   _%tl45064895%_
                                   _%__splice1888318884%_
                                   _%target45694620%_
                                   _%tl45714623%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g44924583%_)))))
                          (let () (declare (not safe)) (_%g44924583%_))))))
              (if (gx#stx-pair/null? _%tl45064895%_)
                  (let ((_%__splice1888318884%_
                         (gx#syntax-split-splice->vector _%tl45064895%_ '0)))
                    (let ((_%tl45714623%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1888318884%_ '1)))
                          (_%target45694620%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1888318884%_ '0))))
                      (if (gx#stx-null? _%tl45714623%_)
                          (_%__match1902719028%_
                           _%e44944961%_
                           _%hd44954965%_
                           _%tl44964968%_
                           _%e45014878%_
                           _%hd45024882%_
                           _%tl45034885%_
                           _%e45044888%_
                           _%hd45054892%_
                           _%tl45064895%_
                           _%__splice1888318884%_
                           _%target45694620%_
                           _%tl45714623%_)
                          (let () (declare (not safe)) (_%g44924583%_)))))
                  (let () (declare (not safe)) (_%g44924583%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%g44924583%_)))))
                              (let () (declare (not safe)) (_%g44924583%_))))))
                  (let () (declare (not safe)) (_%g44924583%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#when|
      (lambda (_%$stx4981%_)
        (let* ((_%g49855013%_
                (lambda (_%g49865009%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g49865009%_)))
               (_%g49845110%_
                (lambda (_%g49865017%_)
                  (if (gx#stx-pair? _%g49865017%_)
                      (let ((_%e49905020%_ (gx#syntax-e _%g49865017%_)))
                        (let ((_%hd49915024%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e49905020%_)))
                              (_%tl49925027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e49905020%_))))
                          (if (gx#stx-pair? _%tl49925027%_)
                              (let ((_%e49935030%_
                                     (gx#syntax-e _%tl49925027%_)))
                                (let ((_%hd49945034%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e49935030%_)))
                                      (_%tl49955037%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e49935030%_))))
                                  (if (gx#stx-pair? _%tl49955037%_)
                                      (let ((_%e49965040%_
                                             (gx#syntax-e _%tl49955037%_)))
                                        (let ((_%hd49975044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e49965040%_)))
                                              (_%tl49985047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e49965040%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl49985047%_)
                                              (let ((_g20983_
                                                     (gx#syntax-split-splice
                                                      _%tl49985047%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20984_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20983_)
                                                               (##values-length
                                                                _g20983_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20984_ 2)))
                (error "Context expects 2 values" _g20984_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target49995050%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20983_
                                                            0)))
                                                        (_%tl50015053%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20983_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl50015053%_)
                                                        (letrec ((_%loop50025056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd50005060%_ _%rest50065063%_)
                            (if (gx#stx-pair? _%hd50005060%_)
                                (let ((_%e50035065%_
                                       (gx#syntax-e _%hd50005060%_)))
                                  (let ((_%lp-hd50045069%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e50035065%_)))
                                        (_%lp-tl50055072%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e50035065%_))))
                                    (_%loop50025056%_
                                     _%lp-tl50055072%_
                                     (cons _%lp-hd50045069%_
                                           _%rest50065063%_))))
                                (let ((_%rest50075075%_
                                       (reverse _%rest50065063%_)))
                                  ((lambda (_%g49875078%_
                                            _%g49885080%_
                                            _%g49895081%_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _%g49895081%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (cons _%g49885080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g51015104%_ _%g51025107%_)
                                    (cons _%g51015104%_ _%g51025107%_))
                                  '()
                                  _%g49875078%_)))
               (cons '#!void '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest50075075%_
                                   _%hd49975044%_
                                   _%hd49945034%_))))))
                  (_%loop50025056%_ _%target49995050%_ '()))
                (_%g49855013%_ _%g49865017%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g49855013%_ _%g49865017%_))))
                                      (_%g49855013%_ _%g49865017%_))))
                              (_%g49855013%_ _%g49865017%_))))
                      (_%g49855013%_ _%g49865017%_)))))
          (_%g49845110%_ _%$stx4981%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#unless|
      (lambda (_%$stx5115%_)
        (let* ((_%g51195147%_
                (lambda (_%g51205143%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g51205143%_)))
               (_%g51185244%_
                (lambda (_%g51205151%_)
                  (if (gx#stx-pair? _%g51205151%_)
                      (let ((_%e51245154%_ (gx#syntax-e _%g51205151%_)))
                        (let ((_%hd51255158%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e51245154%_)))
                              (_%tl51265161%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e51245154%_))))
                          (if (gx#stx-pair? _%tl51265161%_)
                              (let ((_%e51275164%_
                                     (gx#syntax-e _%tl51265161%_)))
                                (let ((_%hd51285168%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e51275164%_)))
                                      (_%tl51295171%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e51275164%_))))
                                  (if (gx#stx-pair? _%tl51295171%_)
                                      (let ((_%e51305174%_
                                             (gx#syntax-e _%tl51295171%_)))
                                        (let ((_%hd51315178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e51305174%_)))
                                              (_%tl51325181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e51305174%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl51325181%_)
                                              (let ((_g20985_
                                                     (gx#syntax-split-splice
                                                      _%tl51325181%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20986_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20985_)
                                                               (##values-length
                                                                _g20985_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20986_ 2)))
                (error "Context expects 2 values" _g20986_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target51335184%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20985_
                                                            0)))
                                                        (_%tl51355187%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20985_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl51355187%_)
                                                        (letrec ((_%loop51365190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd51345194%_ _%rest51405197%_)
                            (if (gx#stx-pair? _%hd51345194%_)
                                (let ((_%e51375199%_
                                       (gx#syntax-e _%hd51345194%_)))
                                  (let ((_%lp-hd51385203%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e51375199%_)))
                                        (_%lp-tl51395206%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e51375199%_))))
                                    (_%loop51365190%_
                                     _%lp-tl51395206%_
                                     (cons _%lp-hd51385203%_
                                           _%rest51405197%_))))
                                (let ((_%rest51415209%_
                                       (reverse _%rest51405197%_)))
                                  ((lambda (_%g51215212%_
                                            _%g51225214%_
                                            _%g51235215%_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _%g51235215%_
                                                 (cons '#!void
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           (cons _%g51225214%_
                                 (foldr (lambda (_%g52355238%_ _%g52365241%_)
                                          (cons _%g52355238%_ _%g52365241%_))
                                        '()
                                        _%g51215212%_)))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest51415209%_
                                   _%hd51315178%_
                                   _%hd51285168%_))))))
                  (_%loop51365190%_ _%target51335184%_ '()))
                (_%g51195147%_ _%g51205151%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g51195147%_ _%g51205151%_))))
                                      (_%g51195147%_ _%g51205151%_))))
                              (_%g51195147%_ _%g51205151%_))))
                      (_%g51195147%_ _%g51205151%_)))))
          (_%g51185244%_ _%$stx5115%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#syntax-error|
      (lambda (_%stx5249%_)
        (let* ((_%g52525276%_
                (lambda (_%g52535272%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g52535272%_)))
               (_%g52515359%_
                (lambda (_%g52535280%_)
                  (if (gx#stx-pair? _%g52535280%_)
                      (let ((_%e52565283%_ (gx#syntax-e _%g52535280%_)))
                        (let ((_%hd52575287%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e52565283%_)))
                              (_%tl52585290%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e52565283%_))))
                          (if (gx#stx-pair? _%tl52585290%_)
                              (let ((_%e52595293%_
                                     (gx#syntax-e _%tl52585290%_)))
                                (let ((_%hd52605297%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e52595293%_)))
                                      (_%tl52615300%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e52595293%_))))
                                  (if (gx#stx-pair/null? _%tl52615300%_)
                                      (let ((_g20987_
                                             (gx#syntax-split-splice
                                              _%tl52615300%_
                                              '0)))
                                        (begin
                                          (let ((_g20988_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20987_)
                                                       (##values-length
                                                        _g20987_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20988_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20988_)))
                                          (let ((_%target52625303%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20987_ 0)))
                                                (_%tl52645306%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20987_ 1))))
                                            (if (gx#stx-null? _%tl52645306%_)
                                                (letrec ((_%loop52655309%_
                                                          (lambda (_%hd52635313%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%detail52695316%_)
                    (if (gx#stx-pair? _%hd52635313%_)
                        (let ((_%e52665318%_ (gx#syntax-e _%hd52635313%_)))
                          (let ((_%lp-hd52675322%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e52665318%_)))
                                (_%lp-tl52685325%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e52665318%_))))
                            (_%loop52655309%_
                             _%lp-tl52685325%_
                             (cons _%lp-hd52675322%_ _%detail52695316%_))))
                        (let ((_%detail52705328%_
                               (reverse _%detail52695316%_)))
                          ((lambda (_%g52545331%_ _%g52555333%_)
                             (if (gx#stx-string? _%g52555333%_)
                                 (apply gx#raise-syntax-error
                                        '#f
                                        (gx#stx-e _%g52555333%_)
                                        _%stx5249%_
                                        (gx#syntax->list
                                         (foldr (lambda (_%g53505353%_
                                                         _%g53515356%_)
                                                  (cons _%g53505353%_
                                                        _%g53515356%_))
                                                '()
                                                _%g52545331%_)))
                                 (_%g52525276%_ _%g52535280%_)))
                           _%detail52705328%_
                           _%hd52605297%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop52655309%_
                                                   _%target52625303%_
                                                   '()))
                                                (_%g52525276%_
                                                 _%g52535280%_)))))
                                      (_%g52525276%_ _%g52535280%_))))
                              (_%g52525276%_ _%g52535280%_))))
                      (_%g52525276%_ _%g52535280%_)))))
          (_%g52515359%_ _%stx5249%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#compilation-target?|
      (lambda (_%$stx5364%_)
        (let* ((_%g53685382%_
                (lambda (_%g53695378%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g53695378%_)))
               (_%g53675423%_
                (lambda (_%g53695386%_)
                  (if (gx#stx-pair? _%g53695386%_)
                      (let ((_%e53715389%_ (gx#syntax-e _%g53695386%_)))
                        (let ((_%hd53725393%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e53715389%_)))
                              (_%tl53735396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e53715389%_))))
                          (if (gx#stx-pair? _%tl53735396%_)
                              (let ((_%e53745399%_
                                     (gx#syntax-e _%tl53735396%_)))
                                (let ((_%hd53755403%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e53745399%_)))
                                      (_%tl53765406%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e53745399%_))))
                                  (if (gx#stx-null? _%tl53765406%_)
                                      ((lambda (_%g53705409%_)
                                         (cons (gx#datum->syntax '#f 'eq?)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'current-compilation-target)
                                                           '())
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g53705409%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd53755403%_)
                                      (_%g53685382%_ _%g53695386%_))))
                              (_%g53685382%_ _%g53695386%_))))
                      (_%g53685382%_ _%g53695386%_)))))
          (_%g53675423%_ _%$stx5364%_))))))
