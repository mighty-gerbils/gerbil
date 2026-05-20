(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g267970_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267977_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267979_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267981_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267983_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267985_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267997_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g267999_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g268001_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g268003_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g268005_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx261428%_)
        (let* ((_%g261432261450%_
                (lambda (_%g261433261446%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261433261446%_))))
               (_%g261431261505%_
                (lambda (_%g261433261454%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261433261454%_))
                      (let ((_%e261436261457%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261433261454%_))))
                        (let ((_%hd261437261461%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261436261457%_)))
                              (_%tl261438261464%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261436261457%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261438261464%_))
                              (let ((_%e261439261467%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261438261464%_))))
                                (let ((_%hd261440261471%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261439261467%_)))
                                      (_%tl261441261474%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261439261467%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261441261474%_))
                                      (let ((_%e261442261477%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261441261474%_))))
                                        (let ((_%hd261443261481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261442261477%_)))
                                              (_%tl261444261484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261442261477%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261444261484%_))
                                              ((lambda (_%g261434261487%_
                                                        _%g261435261489%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g261435261489%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-type!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g261435261489%_ '()))
                         (cons _%g261434261487%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g261432261450%_
                                                      _%g261433261454%_)))
                                               _%hd261443261481%_
                                               _%hd261440261471%_)
                                              (_%g261432261450%_
                                               _%g261433261454%_))))
                                      (_%g261432261450%_ _%g261433261454%_))))
                              (_%g261432261450%_ _%g261433261454%_))))
                      (_%g261432261450%_ _%g261433261454%_)))))
          (_%g261431261505%_ _%$stx261428%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx261509%_)
        (let* ((_%g261513261531%_
                (lambda (_%g261514261527%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261514261527%_))))
               (_%g261512261586%_
                (lambda (_%g261514261535%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261514261535%_))
                      (let ((_%e261517261538%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261514261535%_))))
                        (let ((_%hd261518261542%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261517261538%_)))
                              (_%tl261519261545%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261517261538%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261519261545%_))
                              (let ((_%e261520261548%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261519261545%_))))
                                (let ((_%hd261521261552%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261520261548%_)))
                                      (_%tl261522261555%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261520261548%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261522261555%_))
                                      (let ((_%e261523261558%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261522261555%_))))
                                        (let ((_%hd261524261562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261523261558%_)))
                                              (_%tl261525261565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261523261558%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261525261565%_))
                                              ((lambda (_%g261515261568%_
                                                        _%g261516261570%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g261516261570%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-class!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g261516261570%_ '()))
                         (cons _%g261515261568%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g261513261531%_
                                                      _%g261514261535%_)))
                                               _%hd261524261562%_
                                               _%hd261521261552%_)
                                              (_%g261513261531%_
                                               _%g261514261535%_))))
                                      (_%g261513261531%_ _%g261514261535%_))))
                              (_%g261513261531%_ _%g261514261535%_))))
                      (_%g261513261531%_ _%g261514261535%_)))))
          (_%g261512261586%_ _%$stx261509%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx261590%_)
        (let* ((_%g261594261623%_
                (lambda (_%g261595261619%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261595261619%_))))
               (_%g261593261719%_
                (lambda (_%g261595261627%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261595261627%_))
                      (let ((_%e261598261630%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261595261627%_))))
                        (let ((_%hd261599261634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261598261630%_)))
                              (_%tl261600261637%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261598261630%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl261600261637%_))
                              (let ((_g267948_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl261600261637%_
                                        '0))))
                                (begin
                                  (let ((_g267949_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g267948_)
                                               (##values-length _g267948_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g267949_ 2)))
                                        (error "Context expects 2 values"
                                               _g267949_)))
                                  (let ((_%target261601261640%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267948_ 0)))
                                        (_%tl261603261643%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267948_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261603261643%_))
                                        (letrec ((_%loop261604261646%_
                                                  (lambda (_%hd261602261650%_
                                                           _%type261608261653%_
                                                           _%symbol261609261654%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd261602261650%_))
                                                        (let ((_%e261605261656%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd261602261650%_))))
                  (let ((_%lp-hd261606261660%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261605261656%_)))
                        (_%lp-tl261607261663%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261605261656%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd261606261660%_))
                        (let ((_%e261612261666%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd261606261660%_))))
                          (let ((_%hd261613261670%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261612261666%_)))
                                (_%tl261614261673%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261612261666%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl261614261673%_))
                                (let ((_%e261615261676%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl261614261673%_))))
                                  (let ((_%hd261616261680%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261615261676%_)))
                                        (_%tl261617261683%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261615261676%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261617261683%_))
                                        (_%loop261604261646%_
                                         _%lp-tl261607261663%_
                                         (cons _%hd261616261680%_
                                               _%type261608261653%_)
                                         (cons _%hd261613261670%_
                                               _%symbol261609261654%_))
                                        (_%g261594261623%_
                                         _%g261595261627%_))))
                                (_%g261594261623%_ _%g261595261627%_))))
                        (_%g261594261623%_ _%g261595261627%_))))
                (let ((_%type261610261686%_ (reverse _%type261608261653%_))
                      (_%symbol261611261688%_
                       (reverse _%symbol261609261654%_)))
                  ((lambda (_%g261596261690%_ _%g261597261692%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g261596261690%_
                                _%g261597261692%_))
                             (let ((__tmp267950
                                    (lambda (_%g261707261711%_
                                             _%g261708261714%_
                                             _%g261709261716%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g261708261714%_
                                                        (cons _%g261707261711%_
                                                              '())))
                                            _%g261709261716%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp267950
                                '()
                                _%g261596261690%_
                                _%g261597261692%_)))))
                   _%type261610261686%_
                   _%symbol261611261688%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop261604261646%_
                                           _%target261601261640%_
                                           '()
                                           '()))
                                        (_%g261594261623%_
                                         _%g261595261627%_)))))
                              (_%g261594261623%_ _%g261595261627%_))))
                      (_%g261594261623%_ _%g261595261627%_)))))
          (_%g261593261719%_ _%$stx261590%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx261724%_)
        (let* ((_%__stx267259267260%_ _%$stx261724%_)
               (_%g261729261771%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx267259267260%_)))))
          (let ((_%__kont267262267263%_
                 (lambda (_%g261731261899%_
                          _%g261732261901%_
                          _%g261733261902%_
                          _%g261734261903%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g261734261903%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g261733261902%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g261732261901%_ '()))
                                           (cons _%g261731261899%_ '())))))))
                (_%__kont267264267265%_
                 (lambda (_%g261750261818%_
                          _%g261751261820%_
                          _%g261752261821%_
                          _%g261753261822%_)
                   (cons _%g261753261822%_
                         (cons _%g261752261821%_
                               (cons _%g261751261820%_
                                     (cons _%g261750261818%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match267298267299%_
                   (lambda (_%e261735261849%_
                            _%hd261736261853%_
                            _%tl261737261856%_
                            _%e261738261859%_
                            _%hd261739261863%_
                            _%tl261740261866%_
                            _%e261741261869%_
                            _%hd261742261873%_
                            _%tl261743261876%_
                            _%e261744261879%_
                            _%hd261745261883%_
                            _%tl261746261886%_
                            _%e261747261889%_
                            _%hd261748261893%_
                            _%tl261749261896%_)
                     (let ((_%g261731261899%_ _%hd261748261893%_)
                           (_%g261732261901%_ _%hd261745261883%_)
                           (_%g261733261902%_ _%hd261742261873%_)
                           (_%g261734261903%_ _%hd261739261863%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g261734261903%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g261733261902%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g261732261901%_)))
                           (_%__kont267262267263%_
                            _%g261731261899%_
                            _%g261732261901%_
                            _%g261733261902%_
                            _%g261734261903%_)
                           (let ()
                             (declare (not safe))
                             (_%g261729261771%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx267259267260%_))
                  (let ((_%e261735261849%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx267259267260%_))))
                    (let ((_%tl261737261856%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e261735261849%_)))
                          (_%hd261736261853%_
                           (let ()
                             (declare (not safe))
                             (##car _%e261735261849%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl261737261856%_))
                          (let ((_%e261738261859%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl261737261856%_))))
                            (let ((_%tl261740261866%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e261738261859%_)))
                                  (_%hd261739261863%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e261738261859%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl261740261866%_))
                                  (let ((_%e261741261869%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl261740261866%_))))
                                    (let ((_%tl261743261876%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e261741261869%_)))
                                          (_%hd261742261873%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e261741261869%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl261743261876%_))
                                          (let ((_%e261744261879%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl261743261876%_))))
                                            (let ((_%tl261746261886%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e261744261879%_)))
                                                  (_%hd261745261883%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e261744261879%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl261746261886%_))
                                                  (let ((_%e261747261889%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl261746261886%_))))
                                                    (let ((_%tl261749261896%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e261747261889%_)))
                                                          (_%hd261748261893%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e261747261889%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl261749261896%_))
                                                          (_%__match267298267299%_
                                                           _%e261735261849%_
                                                           _%hd261736261853%_
                                                           _%tl261737261856%_
                                                           _%e261738261859%_
                                                           _%hd261739261863%_
                                                           _%tl261740261866%_
                                                           _%e261741261869%_
                                                           _%hd261742261873%_
                                                           _%tl261743261876%_
                                                           _%e261744261879%_
                                                           _%hd261745261883%_
                                                           _%tl261746261886%_
                                                           _%e261747261889%_
                                                           _%hd261748261893%_
                                                           _%tl261749261896%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g261729261771%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl261746261886%_))
                                                      (_%__kont267264267265%_
                                                       _%hd261745261883%_
                                                       _%hd261742261873%_
                                                       _%hd261739261863%_
                                                       _%hd261736261853%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g261729261771%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g261729261771%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g261729261771%_)))))
                          (let () (declare (not safe)) (_%g261729261771%_)))))
                  (let () (declare (not safe)) (_%g261729261771%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx261928%_)
        (let* ((_%g261932261967%_
                (lambda (_%g261933261963%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261933261963%_))))
               (_%g261931262080%_
                (lambda (_%g261933261971%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261933261971%_))
                      (let ((_%e261937261974%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261933261971%_))))
                        (let ((_%hd261938261978%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261937261974%_)))
                              (_%tl261939261981%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261937261974%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl261939261981%_))
                              (let ((_g267951_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl261939261981%_
                                        '0))))
                                (begin
                                  (let ((_g267952_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g267951_)
                                               (##values-length _g267951_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g267952_ 2)))
                                        (error "Context expects 2 values"
                                               _g267952_)))
                                  (let ((_%target261940261984%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267951_ 0)))
                                        (_%tl261942261987%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267951_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261942261987%_))
                                        (letrec ((_%loop261943261990%_
                                                  (lambda (_%hd261941261994%_
                                                           _%symbol261947261997%_
                                                           _%method261948261998%_
                                                           _%type-t261949261999%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd261941261994%_))
                                                        (let ((_%e261944262001%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd261941261994%_))))
                  (let ((_%lp-hd261945262005%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261944262001%_)))
                        (_%lp-tl261946262008%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261944262001%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd261945262005%_))
                        (let ((_%e261953262011%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd261945262005%_))))
                          (let ((_%hd261954262015%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261953262011%_)))
                                (_%tl261955262018%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261953262011%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl261955262018%_))
                                (let ((_%e261956262021%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl261955262018%_))))
                                  (let ((_%hd261957262025%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261956262021%_)))
                                        (_%tl261958262028%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261956262021%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl261958262028%_))
                                        (let ((_%e261959262031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl261958262028%_))))
                                          (let ((_%hd261960262035%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e261959262031%_)))
                                                (_%tl261961262038%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e261959262031%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl261961262038%_))
                                                (_%loop261943261990%_
                                                 _%lp-tl261946262008%_
                                                 (cons _%hd261960262035%_
                                                       _%symbol261947261997%_)
                                                 (cons _%hd261957262025%_
                                                       _%method261948261998%_)
                                                 (cons _%hd261954262015%_
                                                       _%type-t261949261999%_))
                                                (_%g261932261967%_
                                                 _%g261933261971%_))))
                                        (_%g261932261967%_
                                         _%g261933261971%_))))
                                (_%g261932261967%_ _%g261933261971%_))))
                        (_%g261932261967%_ _%g261933261971%_))))
                (let ((_%symbol261950262041%_ (reverse _%symbol261947261997%_))
                      (_%method261951262043%_ (reverse _%method261948261998%_))
                      (_%type-t261952262044%_
                       (reverse _%type-t261949261999%_)))
                  ((lambda (_%g261934262046%_
                            _%g261935262048%_
                            _%g261936262049%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g261934262046%_
                                _%g261935262048%_
                                _%g261936262049%_))
                             (let ((__tmp267953
                                    (lambda (_%g262065262070%_
                                             _%g262066262073%_
                                             _%g262067262075%_
                                             _%g262068262077%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g262067262075%_
                                                        (cons _%g262066262073%_
                                                              (cons _%g262065262070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g262068262077%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp267953
                                '()
                                _%g261934262046%_
                                _%g261935262048%_
                                _%g261936262049%_)))))
                   _%symbol261950262041%_
                   _%method261951262043%_
                   _%type-t261952262044%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop261943261990%_
                                           _%target261940261984%_
                                           '()
                                           '()
                                           '()))
                                        (_%g261932261967%_
                                         _%g261933261971%_)))))
                              (_%g261932261967%_ _%g261933261971%_))))
                      (_%g261932261967%_ _%g261933261971%_)))))
          (_%g261931262080%_ _%$stx261928%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx262085%_)
        (let* ((_%g262089262122%_
                (lambda (_%g262090262118%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262090262118%_))))
               (_%g262088262232%_
                (lambda (_%g262090262126%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262090262126%_))
                      (let ((_%e262094262129%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262090262126%_))))
                        (let ((_%hd262095262133%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262094262129%_)))
                              (_%tl262096262136%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262094262129%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262096262136%_))
                              (let ((_%e262097262139%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262096262136%_))))
                                (let ((_%hd262098262143%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262097262139%_)))
                                      (_%tl262099262146%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262097262139%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl262099262146%_))
                                      (let ((_g267954_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl262099262146%_
                                                '0))))
                                        (begin
                                          (let ((_g267955_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g267954_)
                                                       (##values-length
                                                        _g267954_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g267955_ 2)))
                                                (error "Context expects 2 values"
                                                       _g267955_)))
                                          (let ((_%target262100262149%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g267954_ 0)))
                                                (_%tl262102262152%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g267954_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl262102262152%_))
                                                (letrec ((_%loop262103262155%_
                                                          (lambda (_%hd262101262159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol262107262162%_
                           _%method262108262163%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd262101262159%_))
                        (let ((_%e262104262165%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd262101262159%_))))
                          (let ((_%lp-hd262105262169%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262104262165%_)))
                                (_%lp-tl262106262172%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262104262165%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd262105262169%_))
                                (let ((_%e262111262175%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd262105262169%_))))
                                  (let ((_%hd262112262179%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262111262175%_)))
                                        (_%tl262113262182%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262111262175%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl262113262182%_))
                                        (let ((_%e262114262185%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl262113262182%_))))
                                          (let ((_%hd262115262189%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e262114262185%_)))
                                                (_%tl262116262192%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e262114262185%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl262116262192%_))
                                                (_%loop262103262155%_
                                                 _%lp-tl262106262172%_
                                                 (cons _%hd262115262189%_
                                                       _%symbol262107262162%_)
                                                 (cons _%hd262112262179%_
                                                       _%method262108262163%_))
                                                (_%g262089262122%_
                                                 _%g262090262126%_))))
                                        (_%g262089262122%_
                                         _%g262090262126%_))))
                                (_%g262089262122%_ _%g262090262126%_))))
                        (let ((_%symbol262109262195%_
                               (reverse _%symbol262107262162%_))
                              (_%method262110262197%_
                               (reverse _%method262108262163%_)))
                          ((lambda (_%g262091262199%_
                                    _%g262092262201%_
                                    _%g262093262202%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g262091262199%_
                                        _%g262092262201%_))
                                     (let ((__tmp267956
                                            (lambda (_%g262220262224%_
                                                     _%g262221262227%_
                                                     _%g262222262229%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g262093262202%_
                                                                (cons _%g262221262227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g262220262224%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g262222262229%_))))
                                       (declare (not safe))
                                       (foldr__1
                                        __tmp267956
                                        '()
                                        _%g262091262199%_
                                        _%g262092262201%_)))))
                           _%symbol262109262195%_
                           _%method262110262197%_
                           _%hd262098262143%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop262103262155%_
                                                   _%target262100262149%_
                                                   '()
                                                   '()))
                                                (_%g262089262122%_
                                                 _%g262090262126%_)))))
                                      (_%g262089262122%_ _%g262090262126%_))))
                              (_%g262089262122%_ _%g262090262126%_))))
                      (_%g262089262122%_ _%g262090262126%_)))))
          (_%g262088262232%_ _%$stx262085%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx262237%_)
        (let* ((_%g262241262255%_
                (lambda (_%g262242262251%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262242262251%_))))
               (_%g262240262296%_
                (lambda (_%g262242262259%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262242262259%_))
                      (let ((_%e262244262262%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262242262259%_))))
                        (let ((_%hd262245262266%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262244262262%_)))
                              (_%tl262246262269%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262244262262%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262246262269%_))
                              (let ((_%e262247262272%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262246262269%_))))
                                (let ((_%hd262248262276%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262247262272%_)))
                                      (_%tl262249262279%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262247262272%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl262249262279%_))
                                      ((lambda (_%g262243262282%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!alias))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g262243262282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd262248262276%_)
                                      (_%g262241262255%_ _%g262242262259%_))))
                              (_%g262241262255%_ _%g262242262259%_))))
                      (_%g262241262255%_ _%g262242262259%_)))))
          (_%g262240262296%_ _%$stx262237%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx262300%_)
        (let* ((_%g262304262358%_
                (lambda (_%g262305262354%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262305262354%_))))
               (_%g262303262539%_
                (lambda (_%g262305262362%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262305262362%_))
                      (let ((_%e262317262365%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262305262362%_))))
                        (let ((_%hd262318262369%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262317262365%_)))
                              (_%tl262319262372%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262317262365%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262319262372%_))
                              (let ((_%e262320262375%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262319262372%_))))
                                (let ((_%hd262321262379%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262320262375%_)))
                                      (_%tl262322262382%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262320262375%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262322262382%_))
                                      (let ((_%e262323262385%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262322262382%_))))
                                        (let ((_%hd262324262389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262323262385%_)))
                                              (_%tl262325262392%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262323262385%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262325262392%_))
                                              (let ((_%e262326262395%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262325262392%_))))
                                                (let ((_%hd262327262399%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262326262395%_)))
                                                      (_%tl262328262402%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262326262395%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl262328262402%_))
                                                      (let ((_%e262329262405%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl262328262402%_))))
                (let ((_%hd262330262409%_
                       (let () (declare (not safe)) (##car _%e262329262405%_)))
                      (_%tl262331262412%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e262329262405%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl262331262412%_))
                      (let ((_%e262332262415%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl262331262412%_))))
                        (let ((_%hd262333262419%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262332262415%_)))
                              (_%tl262334262422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262332262415%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262334262422%_))
                              (let ((_%e262335262425%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262334262422%_))))
                                (let ((_%hd262336262429%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262335262425%_)))
                                      (_%tl262337262432%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262335262425%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262337262432%_))
                                      (let ((_%e262338262435%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262337262432%_))))
                                        (let ((_%hd262339262439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262338262435%_)))
                                              (_%tl262340262442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262338262435%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262340262442%_))
                                              (let ((_%e262341262445%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262340262442%_))))
                                                (let ((_%hd262342262449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262341262445%_)))
                                                      (_%tl262343262452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262341262445%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl262343262452%_))
                                                      (let ((_%e262344262455%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl262343262452%_))))
                (let ((_%hd262345262459%_
                       (let () (declare (not safe)) (##car _%e262344262455%_)))
                      (_%tl262346262462%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e262344262455%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl262346262462%_))
                      (let ((_%e262347262465%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl262346262462%_))))
                        (let ((_%hd262348262469%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262347262465%_)))
                              (_%tl262349262472%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262347262465%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262349262472%_))
                              (let ((_%e262350262475%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262349262472%_))))
                                (let ((_%hd262351262479%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262350262475%_)))
                                      (_%tl262352262482%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262350262475%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl262352262482%_))
                                      ((lambda (_%g262306262485%_
                                                _%g262307262487%_
                                                _%g262308262488%_
                                                _%g262309262489%_
                                                _%g262310262490%_
                                                _%g262311262491%_
                                                _%g262312262492%_
                                                _%g262313262493%_
                                                _%g262314262494%_
                                                _%g262315262495%_
                                                _%g262316262496%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!class))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g262316262496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g262315262495%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g262314262494%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g262313262493%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g262312262492%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g262311262491%_ '()))
                                           (cons _%g262310262490%_
                                                 (cons _%g262309262489%_
                                                       (cons _%g262308262488%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g262307262487%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g262306262485%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd262351262479%_
                                       _%hd262348262469%_
                                       _%hd262345262459%_
                                       _%hd262342262449%_
                                       _%hd262339262439%_
                                       _%hd262336262429%_
                                       _%hd262333262419%_
                                       _%hd262330262409%_
                                       _%hd262327262399%_
                                       _%hd262324262389%_
                                       _%hd262321262379%_)
                                      (_%g262304262358%_ _%g262305262362%_))))
                              (_%g262304262358%_ _%g262305262362%_))))
                      (_%g262304262358%_ _%g262305262362%_))))
              (_%g262304262358%_ _%g262305262362%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g262304262358%_
                                               _%g262305262362%_))))
                                      (_%g262304262358%_ _%g262305262362%_))))
                              (_%g262304262358%_ _%g262305262362%_))))
                      (_%g262304262358%_ _%g262305262362%_))))
              (_%g262304262358%_ _%g262305262362%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g262304262358%_
                                               _%g262305262362%_))))
                                      (_%g262304262358%_ _%g262305262362%_))))
                              (_%g262304262358%_ _%g262305262362%_))))
                      (_%g262304262358%_ _%g262305262362%_)))))
          (_%g262303262539%_ _%$stx262300%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx262543%_)
        (let* ((_%g262547262561%_
                (lambda (_%g262548262557%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262548262557%_))))
               (_%g262546262602%_
                (lambda (_%g262548262565%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262548262565%_))
                      (let ((_%e262550262568%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262548262565%_))))
                        (let ((_%hd262551262572%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262550262568%_)))
                              (_%tl262552262575%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262550262568%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262552262575%_))
                              (let ((_%e262553262578%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262552262575%_))))
                                (let ((_%hd262554262582%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262553262578%_)))
                                      (_%tl262555262585%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262553262578%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl262555262585%_))
                                      ((lambda (_%g262549262588%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g262549262588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd262554262582%_)
                                      (_%g262547262561%_ _%g262548262565%_))))
                              (_%g262547262561%_ _%g262548262565%_))))
                      (_%g262547262561%_ _%g262548262565%_)))))
          (_%g262546262602%_ _%$stx262543%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx262606%_)
        (let* ((_%g262610262624%_
                (lambda (_%g262611262620%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262611262620%_))))
               (_%g262609262665%_
                (lambda (_%g262611262628%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262611262628%_))
                      (let ((_%e262613262631%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262611262628%_))))
                        (let ((_%hd262614262635%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262613262631%_)))
                              (_%tl262615262638%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262613262631%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262615262638%_))
                              (let ((_%e262616262641%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262615262638%_))))
                                (let ((_%hd262617262645%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262616262641%_)))
                                      (_%tl262618262648%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262616262641%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl262618262648%_))
                                      ((lambda (_%g262612262651%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!constructor))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g262612262651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd262617262645%_)
                                      (_%g262610262624%_ _%g262611262628%_))))
                              (_%g262610262624%_ _%g262611262628%_))))
                      (_%g262610262624%_ _%g262611262628%_)))))
          (_%g262609262665%_ _%$stx262606%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx262669%_)
        (let* ((_%g262673262695%_
                (lambda (_%g262674262691%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262674262691%_))))
               (_%g262672262764%_
                (lambda (_%g262674262699%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262674262699%_))
                      (let ((_%e262678262702%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262674262699%_))))
                        (let ((_%hd262679262706%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262678262702%_)))
                              (_%tl262680262709%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262678262702%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262680262709%_))
                              (let ((_%e262681262712%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262680262709%_))))
                                (let ((_%hd262682262716%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262681262712%_)))
                                      (_%tl262683262719%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262681262712%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262683262719%_))
                                      (let ((_%e262684262722%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262683262719%_))))
                                        (let ((_%hd262685262726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262684262722%_)))
                                              (_%tl262686262729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262684262722%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262686262729%_))
                                              (let ((_%e262687262732%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262686262729%_))))
                                                (let ((_%hd262688262736%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262687262732%_)))
                                                      (_%tl262689262739%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262687262732%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl262689262739%_))
                                                      ((lambda (_%g262675262742%_
                                                                _%g262676262744%_
                                                                _%g262677262745%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g262677262745%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g262676262744%_ '()))
                                   (cons _%g262675262742%_ '())))))
               _%hd262688262736%_
               _%hd262685262726%_
               _%hd262682262716%_)
              (_%g262673262695%_ _%g262674262699%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g262673262695%_
                                               _%g262674262699%_))))
                                      (_%g262673262695%_ _%g262674262699%_))))
                              (_%g262673262695%_ _%g262674262699%_))))
                      (_%g262673262695%_ _%g262674262699%_)))))
          (_%g262672262764%_ _%$stx262669%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx262768%_)
        (let* ((_%g262772262794%_
                (lambda (_%g262773262790%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262773262790%_))))
               (_%g262771262863%_
                (lambda (_%g262773262798%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262773262798%_))
                      (let ((_%e262777262801%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262773262798%_))))
                        (let ((_%hd262778262805%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262777262801%_)))
                              (_%tl262779262808%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262777262801%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262779262808%_))
                              (let ((_%e262780262811%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262779262808%_))))
                                (let ((_%hd262781262815%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262780262811%_)))
                                      (_%tl262782262818%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262780262811%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262782262818%_))
                                      (let ((_%e262783262821%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262782262818%_))))
                                        (let ((_%hd262784262825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262783262821%_)))
                                              (_%tl262785262828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262783262821%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262785262828%_))
                                              (let ((_%e262786262831%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262785262828%_))))
                                                (let ((_%hd262787262835%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262786262831%_)))
                                                      (_%tl262788262838%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262786262831%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl262788262838%_))
                                                      ((lambda (_%g262774262841%_
                                                                _%g262775262843%_
                                                                _%g262776262844%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g262776262844%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g262775262843%_ '()))
                                   (cons _%g262774262841%_ '())))))
               _%hd262787262835%_
               _%hd262784262825%_
               _%hd262781262815%_)
              (_%g262772262794%_ _%g262773262798%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g262772262794%_
                                               _%g262773262798%_))))
                                      (_%g262772262794%_ _%g262773262798%_))))
                              (_%g262772262794%_ _%g262773262798%_))))
                      (_%g262772262794%_ _%g262773262798%_)))))
          (_%g262771262863%_ _%$stx262768%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx262867%_)
        (let* ((_%g262871262885%_
                (lambda (_%g262872262881%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262872262881%_))))
               (_%g262870262926%_
                (lambda (_%g262872262889%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262872262889%_))
                      (let ((_%e262874262892%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262872262889%_))))
                        (let ((_%hd262875262896%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262874262892%_)))
                              (_%tl262876262899%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262874262892%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262876262899%_))
                              (let ((_%e262877262902%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262876262899%_))))
                                (let ((_%hd262878262906%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262877262902%_)))
                                      (_%tl262879262909%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262877262902%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl262879262909%_))
                                      ((lambda (_%g262873262912%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g262873262912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd262878262906%_)
                                      (_%g262871262885%_ _%g262872262889%_))))
                              (_%g262871262885%_ _%g262872262889%_))))
                      (_%g262871262885%_ _%g262872262889%_)))))
          (_%g262870262926%_ _%$stx262867%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx262930%_)
        (let* ((_%g262934262952%_
                (lambda (_%g262935262948%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262935262948%_))))
               (_%g262933263007%_
                (lambda (_%g262935262956%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262935262956%_))
                      (let ((_%e262938262959%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262935262956%_))))
                        (let ((_%hd262939262963%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262938262959%_)))
                              (_%tl262940262966%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262938262959%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262940262966%_))
                              (let ((_%e262941262969%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262940262966%_))))
                                (let ((_%hd262942262973%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262941262969%_)))
                                      (_%tl262943262976%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262941262969%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262943262976%_))
                                      (let ((_%e262944262979%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262943262976%_))))
                                        (let ((_%hd262945262983%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262944262979%_)))
                                              (_%tl262946262986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262944262979%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262946262986%_))
                                              ((lambda (_%g262936262989%_
                                                        _%g262937262991%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g262937262991%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g262936262989%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd262945262983%_
                                               _%hd262942262973%_)
                                              (_%g262934262952%_
                                               _%g262935262956%_))))
                                      (_%g262934262952%_ _%g262935262956%_))))
                              (_%g262934262952%_ _%g262935262956%_))))
                      (_%g262934262952%_ _%g262935262956%_)))))
          (_%g262933263007%_ _%$stx262930%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx263011%_)
        (let* ((_%__stx267327267328%_ _%$stx263011%_)
               (_%g263018263079%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx267327267328%_)))))
          (let ((_%__kont267330267331%_
                 (lambda (_%g263020263317%_ _%g263021263319%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g263021263319%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g263020263317%_ '()))
                                     '())))))
                (_%__kont267332267333%_
                 (lambda (_%g263031263256%_
                          _%g263032263258%_
                          _%g263033263259%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g263033263259%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g263032263258%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g263031263256%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont267334267335%_
                 (lambda (_%g263050263180%_ _%g263051263182%_)
                   (cons _%g263051263182%_
                         (cons _%g263050263180%_ (cons '#f '())))))
                (_%__kont267336267337%_
                 (lambda (_%g263058263130%_
                          _%g263059263132%_
                          _%g263060263133%_)
                   (cons _%g263060263133%_
                         (cons _%g263059263132%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g263058263130%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx267327267328%_))
                (let ((_%e263022263287%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx267327267328%_))))
                  (let ((_%tl263024263294%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263022263287%_)))
                        (_%hd263023263291%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263022263287%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl263024263294%_))
                        (let ((_%e263025263297%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl263024263294%_))))
                          (let ((_%tl263027263304%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263025263297%_)))
                                (_%hd263026263301%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263025263297%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263027263304%_))
                                (let ((_%e263028263307%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263027263304%_))))
                                  (let ((_%tl263030263314%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263028263307%_)))
                                        (_%hd263029263311%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263028263307%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263030263314%_))
                                        (_%__kont267330267331%_
                                         _%hd263029263311%_
                                         _%hd263026263301%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl263030263314%_))
                                            (let ((_%e263043263232%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl263030263314%_))))
                                              (let ((_%tl263045263239%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e263043263232%_)))
                                                    (_%hd263044263236%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e263043263232%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd263044263236%_))
                                                    (let ((_%e263046263242%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd263044263236%_))))
                                                      (if (equal? _%e263046263242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl263045263239%_))
                      (let ((_%e263047263246%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl263045263239%_))))
                        (let ((_%tl263049263253%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263047263246%_)))
                              (_%hd263048263250%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263047263246%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl263049263253%_))
                              (_%__kont267332267333%_
                               _%hd263048263250%_
                               _%hd263029263311%_
                               _%hd263026263301%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd263029263311%_))
                                  (let ((_%e263070263116%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd263029263311%_))))
                                    (declare (not safe))
                                    (_%g263018263079%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g263018263079%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd263029263311%_))
                          (let ((_%e263070263116%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd263029263311%_))))
                            (if (equal? _%e263070263116%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl263045263239%_))
                                    (_%__kont267336267337%_
                                     _%hd263044263236%_
                                     _%hd263026263301%_
                                     _%hd263023263291%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g263018263079%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g263018263079%_))))
                          (let () (declare (not safe)) (_%g263018263079%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd263029263311%_))
                      (let ((_%e263070263116%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd263029263311%_))))
                        (if (equal? _%e263070263116%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl263045263239%_))
                                (_%__kont267336267337%_
                                 _%hd263044263236%_
                                 _%hd263026263301%_
                                 _%hd263023263291%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g263018263079%_)))
                            (let () (declare (not safe)) (_%g263018263079%_))))
                      (let () (declare (not safe)) (_%g263018263079%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd263029263311%_))
                                                        (let ((_%e263070263116%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd263029263311%_))))
                  (if (equal? _%e263070263116%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl263045263239%_))
                          (_%__kont267336267337%_
                           _%hd263044263236%_
                           _%hd263026263301%_
                           _%hd263023263291%_)
                          (let () (declare (not safe)) (_%g263018263079%_)))
                      (let () (declare (not safe)) (_%g263018263079%_))))
                (let () (declare (not safe)) (_%g263018263079%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd263029263311%_))
                                                (let ((_%e263070263116%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd263029263311%_))))
                                                  (declare (not safe))
                                                  (_%g263018263079%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g263018263079%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl263027263304%_))
                                    (_%__kont267334267335%_
                                     _%hd263026263301%_
                                     _%hd263023263291%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g263018263079%_))))))
                        (let () (declare (not safe)) (_%g263018263079%_)))))
                (let () (declare (not safe)) (_%g263018263079%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx263338%_)
        (let* ((_%g263342263371%_
                (lambda (_%g263343263367%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263343263367%_))))
               (_%g263341263476%_
                (lambda (_%g263343263375%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263343263375%_))
                      (let ((_%e263345263378%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263343263375%_))))
                        (let ((_%hd263346263382%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263345263378%_)))
                              (_%tl263347263385%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263345263378%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl263347263385%_))
                              (let ((_g267957_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl263347263385%_
                                        '0))))
                                (begin
                                  (let ((_g267958_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g267957_)
                                               (##values-length _g267957_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g267958_ 2)))
                                        (error "Context expects 2 values"
                                               _g267958_)))
                                  (let ((_%target263348263388%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267957_ 0)))
                                        (_%tl263350263391%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267957_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263350263391%_))
                                        (letrec ((_%loop263351263394%_
                                                  (lambda (_%hd263349263398%_
                                                           _%clause263355263401%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd263349263398%_))
                                                        (let ((_%e263352263403%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd263349263398%_))))
                  (let ((_%lp-hd263353263407%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263352263403%_)))
                        (_%lp-tl263354263410%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263352263403%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd263353263407%_))
                        (let ((_g267959_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd263353263407%_
                                  '0))))
                          (begin
                            (let ((_g267960_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g267959_)
                                         (##values-length _g267959_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g267960_ 2)))
                                  (error "Context expects 2 values"
                                         _g267960_)))
                            (let ((_%target263357263413%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g267959_ 0)))
                                  (_%tl263359263416%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g267959_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl263359263416%_))
                                  (letrec ((_%loop263360263419%_
                                            (lambda (_%hd263358263423%_
                                                     _%clause263364263426%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd263358263423%_))
                                                  (let ((_%e263361263428%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd263358263423%_))))
                                                    (let ((_%lp-hd263362263432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e263361263428%_)))
                                                          (_%lp-tl263363263435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e263361263428%_))))
                                                      (_%loop263360263419%_
                                                       _%lp-tl263363263435%_
                                                       (cons _%lp-hd263362263432%_
                                                             _%clause263364263426%_))))
                                                  (let ((_%clause263365263438%_
                                                         (reverse _%clause263364263426%_)))
                                                    (_%loop263351263394%_
                                                     _%lp-tl263354263410%_
                                                     (cons _%clause263365263438%_
                                                           _%clause263355263401%_)))))))
                                    (_%loop263360263419%_
                                     _%target263357263413%_
                                     '()))
                                  (_%g263342263371%_ _%g263343263375%_)))))
                        (_%g263342263371%_ _%g263343263375%_))))
                (let ((_%clause263356263441%_
                       (reverse _%clause263355263401%_)))
                  ((lambda (_%g263344263444%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp267961
                                              (lambda (_%g263459263464%_
                                                       _%g263460263467%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp267962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g263461263470%_ _%g263462263473%_)
                             (cons _%g263461263470%_ _%g263462263473%_))))
                      (declare (not safe))
                      (foldr__0 __tmp267962 '() _%g263459263464%_)))
              _%g263460263467%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp267961
                                          '()
                                          _%g263344263444%_)))
                                 '())))
                   _%clause263356263441%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop263351263394%_
                                           _%target263348263388%_
                                           '()))
                                        (_%g263342263371%_
                                         _%g263343263375%_)))))
                              (_%g263342263371%_ _%g263343263375%_))))
                      (_%g263342263371%_ _%g263343263375%_)))))
          (_%g263341263476%_ _%$stx263338%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx263482%_)
        (let* ((_%g263486263504%_
                (lambda (_%g263487263500%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263487263500%_))))
               (_%g263485263559%_
                (lambda (_%g263487263508%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263487263508%_))
                      (let ((_%e263490263511%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263487263508%_))))
                        (let ((_%hd263491263515%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263490263511%_)))
                              (_%tl263492263518%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263490263511%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263492263518%_))
                              (let ((_%e263493263521%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263492263518%_))))
                                (let ((_%hd263494263525%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263493263521%_)))
                                      (_%tl263495263528%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263493263521%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263495263528%_))
                                      (let ((_%e263496263531%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263495263528%_))))
                                        (let ((_%hd263497263535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263496263531%_)))
                                              (_%tl263498263538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263496263531%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263498263538%_))
                                              ((lambda (_%g263488263541%_
                                                        _%g263489263543%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g263489263543%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g263488263541%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd263497263535%_
                                               _%hd263494263525%_)
                                              (_%g263486263504%_
                                               _%g263487263508%_))))
                                      (_%g263486263504%_ _%g263487263508%_))))
                              (_%g263486263504%_ _%g263487263508%_))))
                      (_%g263486263504%_ _%g263487263508%_)))))
          (_%g263485263559%_ _%$stx263482%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx263563%_)
        (let* ((_%g263567263585%_
                (lambda (_%g263568263581%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263568263581%_))))
               (_%g263566263640%_
                (lambda (_%g263568263589%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263568263589%_))
                      (let ((_%e263571263592%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263568263589%_))))
                        (let ((_%hd263572263596%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263571263592%_)))
                              (_%tl263573263599%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263571263592%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263573263599%_))
                              (let ((_%e263574263602%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263573263599%_))))
                                (let ((_%hd263575263606%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263574263602%_)))
                                      (_%tl263576263609%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263574263602%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263576263609%_))
                                      (let ((_%e263577263612%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263576263609%_))))
                                        (let ((_%hd263578263616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263577263612%_)))
                                              (_%tl263579263619%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263577263612%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263579263619%_))
                                              ((lambda (_%g263569263622%_
                                                        _%g263570263624%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g263570263624%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g263569263622%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd263578263616%_
                                               _%hd263575263606%_)
                                              (_%g263567263585%_
                                               _%g263568263589%_))))
                                      (_%g263567263585%_ _%g263568263589%_))))
                              (_%g263567263585%_ _%g263568263589%_))))
                      (_%g263567263585%_ _%g263568263589%_)))))
          (_%g263566263640%_ _%$stx263563%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx263644%_)
        (let* ((_%g263648263677%_
                (lambda (_%g263649263673%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263649263673%_))))
               (_%g263647263773%_
                (lambda (_%g263649263681%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263649263681%_))
                      (let ((_%e263652263684%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263649263681%_))))
                        (let ((_%hd263653263688%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263652263684%_)))
                              (_%tl263654263691%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263652263684%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl263654263691%_))
                              (let ((_g267963_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl263654263691%_
                                        '0))))
                                (begin
                                  (let ((_g267964_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g267963_)
                                               (##values-length _g267963_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g267964_ 2)))
                                        (error "Context expects 2 values"
                                               _g267964_)))
                                  (let ((_%target263655263694%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267963_ 0)))
                                        (_%tl263657263697%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g267963_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263657263697%_))
                                        (letrec ((_%loop263658263700%_
                                                  (lambda (_%hd263656263704%_
                                                           _%rule263662263707%_
                                                           _%proc263663263708%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd263656263704%_))
                                                        (let ((_%e263659263710%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd263656263704%_))))
                  (let ((_%lp-hd263660263714%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263659263710%_)))
                        (_%lp-tl263661263717%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263659263710%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd263660263714%_))
                        (let ((_%e263666263720%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd263660263714%_))))
                          (let ((_%hd263667263724%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263666263720%_)))
                                (_%tl263668263727%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263666263720%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263668263727%_))
                                (let ((_%e263669263730%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263668263727%_))))
                                  (let ((_%hd263670263734%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263669263730%_)))
                                        (_%tl263671263737%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263669263730%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263671263737%_))
                                        (_%loop263658263700%_
                                         _%lp-tl263661263717%_
                                         (cons _%hd263670263734%_
                                               _%rule263662263707%_)
                                         (cons _%hd263667263724%_
                                               _%proc263663263708%_))
                                        (_%g263648263677%_
                                         _%g263649263681%_))))
                                (_%g263648263677%_ _%g263649263681%_))))
                        (_%g263648263677%_ _%g263649263681%_))))
                (let ((_%rule263664263740%_ (reverse _%rule263662263707%_))
                      (_%proc263665263742%_ (reverse _%proc263663263708%_)))
                  ((lambda (_%g263650263744%_ _%g263651263746%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g263650263744%_
                                _%g263651263746%_))
                             (let ((__tmp267965
                                    (lambda (_%g263761263765%_
                                             _%g263762263768%_
                                             _%g263763263770%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g263762263768%_
                                                        (cons _%g263761263765%_
                                                              '())))
                                            _%g263763263770%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp267965
                                '()
                                _%g263650263744%_
                                _%g263651263746%_)))))
                   _%rule263664263740%_
                   _%proc263665263742%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop263658263700%_
                                           _%target263655263694%_
                                           '()
                                           '()))
                                        (_%g263648263677%_
                                         _%g263649263681%_)))))
                              (_%g263648263677%_ _%g263649263681%_))))
                      (_%g263648263677%_ _%g263649263681%_)))))
          (_%g263647263773%_ _%$stx263644%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx263778%_)
        (let* ((_%g263782263800%_
                (lambda (_%g263783263796%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263783263796%_))))
               (_%g263781263855%_
                (lambda (_%g263783263804%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263783263804%_))
                      (let ((_%e263786263807%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263783263804%_))))
                        (let ((_%hd263787263811%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263786263807%_)))
                              (_%tl263788263814%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263786263807%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263788263814%_))
                              (let ((_%e263789263817%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263788263814%_))))
                                (let ((_%hd263790263821%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263789263817%_)))
                                      (_%tl263791263824%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263789263817%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263791263824%_))
                                      (let ((_%e263792263827%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263791263824%_))))
                                        (let ((_%hd263793263831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263792263827%_)))
                                              (_%tl263794263834%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263792263827%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263794263834%_))
                                              ((lambda (_%g263784263837%_
                                                        _%g263785263839%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'let))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'type))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'optimizer-lookup-type))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g263785263839%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'if))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '!lambda?))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'type))
                                                   '()))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'set!))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '!lambda-inline))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'type))
                             '()))
                 (cons _%g263784263837%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'displayln))
                                                         (cons '"*** WARNING unknown procedure "
                                                               (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g263785263839%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd263793263831%_
                                               _%hd263790263821%_)
                                              (_%g263782263800%_
                                               _%g263783263804%_))))
                                      (_%g263782263800%_ _%g263783263804%_))))
                              (_%g263782263800%_ _%g263783263804%_))))
                      (_%g263782263800%_ _%g263783263804%_)))))
          (_%g263781263855%_ _%$stx263778%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx263859%_)
        (let* ((_%__stx267445267446%_ _%$stx263859%_)
               (_%g263864263889%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx267445267446%_)))))
          (let ((_%__kont267448267449%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont267450267451%_
                 (lambda (_%g263869263936%_
                          _%g263870263938%_
                          _%g263871263939%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g263871263939%_
                                           (cons _%g263870263938%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g263869263936%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx267445267446%_))
                (let ((_%e263866263965%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx267445267446%_))))
                  (let ((_%tl263868263972%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263866263965%_)))
                        (_%hd263867263969%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263866263965%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl263868263972%_))
                        (_%__kont267448267449%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl263868263972%_))
                            (let ((_%e263875263906%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl263868263972%_))))
                              (let ((_%tl263877263913%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e263875263906%_)))
                                    (_%hd263876263910%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e263875263906%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd263876263910%_))
                                    (let ((_%e263878263916%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd263876263910%_))))
                                      (let ((_%tl263880263923%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e263878263916%_)))
                                            (_%hd263879263920%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e263878263916%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl263880263923%_))
                                            (let ((_%e263881263926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl263880263923%_))))
                                              (let ((_%tl263883263933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e263881263926%_)))
                                                    (_%hd263882263930%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e263881263926%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl263883263933%_))
                                                    (_%__kont267450267451%_
                                                     _%tl263877263913%_
                                                     _%hd263882263930%_
                                                     _%hd263879263920%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g263864263889%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g263864263889%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g263864263889%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g263864263889%_))))))
                (let () (declare (not safe)) (_%g263864263889%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx263983%_)
        (let* ((_%__stx267489267490%_ _%$stx263983%_)
               (_%g263988264019%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx267489267490%_)))))
          (let ((_%__kont267492267493%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont267494267495%_
                 (lambda (_%g263993264084%_
                          _%g263994264086%_
                          _%g263995264087%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g263995264087%_
                                           (let ((__tmp267966
                                                  (lambda (_%g264107264110%_
                                                           _%g264108264113%_)
                                                    (cons _%g264107264110%_
                                                          _%g264108264113%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp267966
                                              '()
                                              _%g263994264086%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g263993264084%_)
                                     '()))))))
            (let ((_%__match267532267533%_
                   (lambda (_%e263996264026%_
                            _%hd263997264030%_
                            _%tl263998264033%_
                            _%e263999264036%_
                            _%hd264000264040%_
                            _%tl264001264043%_
                            _%e264002264046%_
                            _%hd264003264050%_
                            _%tl264004264053%_
                            _%__splice267496267497%_
                            _%target264005264056%_
                            _%tl264007264059%_)
                     (letrec ((_%loop264008264062%_
                               (lambda (_%hd264006264066%_ _%sig264012264069%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd264006264066%_))
                                     (let ((_%e264009264071%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd264006264066%_))))
                                       (let ((_%lp-tl264011264078%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e264009264071%_)))
                                             (_%lp-hd264010264075%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e264009264071%_))))
                                         (_%loop264008264062%_
                                          _%lp-tl264011264078%_
                                          (cons _%lp-hd264010264075%_
                                                _%sig264012264069%_))))
                                     (let ((_%sig264013264081%_
                                            (reverse _%sig264012264069%_)))
                                       (_%__kont267494267495%_
                                        _%tl264001264043%_
                                        _%sig264013264081%_
                                        _%hd264003264050%_))))))
                       (_%loop264008264062%_ _%target264005264056%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx267489267490%_))
                  (let ((_%e263990264123%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx267489267490%_))))
                    (let ((_%tl263992264130%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263990264123%_)))
                          (_%hd263991264127%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263990264123%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl263992264130%_))
                          (_%__kont267492267493%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263992264130%_))
                              (let ((_%e263999264036%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263992264130%_))))
                                (let ((_%tl264001264043%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263999264036%_)))
                                      (_%hd264000264040%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263999264036%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd264000264040%_))
                                      (let ((_%e264002264046%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd264000264040%_))))
                                        (let ((_%tl264004264053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264002264046%_)))
                                              (_%hd264003264050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264002264046%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl264004264053%_))
                                              (let ((_%__splice267496267497%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl264004264053%_
                                                        '0))))
                                                (let ((_%tl264007264059%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice267496267497%_
                                                          '1)))
                                                      (_%target264005264056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice267496267497%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl264007264059%_))
                                                      (_%__match267532267533%_
                                                       _%e263990264123%_
                                                       _%hd263991264127%_
                                                       _%tl263992264130%_
                                                       _%e263999264036%_
                                                       _%hd264000264040%_
                                                       _%tl264001264043%_
                                                       _%e264002264046%_
                                                       _%hd264003264050%_
                                                       _%tl264004264053%_
                                                       _%__splice267496267497%_
                                                       _%target264005264056%_
                                                       _%tl264007264059%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g263988264019%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g263988264019%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g263988264019%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g263988264019%_))))))
                  (let () (declare (not safe)) (_%g263988264019%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx264142%_)
        (let* ((_%__stx267535267536%_ _%$stx264142%_)
               (_%g264147264194%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx267535267536%_)))))
          (let ((_%__kont267538267539%_
                 (lambda (_%g264149264352%_ _%g264150264354%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g264150264354%_
                               (let ((__tmp267967
                                      (lambda (_%g264374264377%_
                                               _%g264375264380%_)
                                        (cons _%g264374264377%_
                                              _%g264375264380%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp267967
                                  '()
                                  _%g264149264352%_))))))
                (_%__kont267542267543%_
                 (lambda (_%g264172264249%_ _%g264173264251%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g264173264251%_
                               (let ((__tmp267968
                                      (lambda (_%g264268264271%_
                                               _%g264269264274%_)
                                        (cons _%g264268264271%_
                                              _%g264269264274%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp267968
                                  '()
                                  _%g264172264249%_)))))))
            (let* ((_%__match267602267603%_
                    (lambda (_%e264174264201%_
                             _%hd264175264205%_
                             _%tl264176264208%_
                             _%e264177264211%_
                             _%hd264178264215%_
                             _%tl264179264218%_
                             _%__splice267544267545%_
                             _%target264180264221%_
                             _%tl264182264224%_)
                      (letrec ((_%loop264183264227%_
                                (lambda (_%hd264181264231%_
                                         _%sig264187264234%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd264181264231%_))
                                      (let ((_%e264184264236%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd264181264231%_))))
                                        (let ((_%lp-tl264186264243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264184264236%_)))
                                              (_%lp-hd264185264240%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264184264236%_))))
                                          (_%loop264183264227%_
                                           _%lp-tl264186264243%_
                                           (cons _%lp-hd264185264240%_
                                                 _%sig264187264234%_))))
                                      (let ((_%sig264188264246%_
                                             (reverse _%sig264187264234%_)))
                                        (_%__kont267542267543%_
                                         _%sig264188264246%_
                                         _%hd264178264215%_))))))
                        (_%loop264183264227%_ _%target264180264221%_ '()))))
                   (_%__match267594267595%_
                    (lambda (_%e264174264201%_
                             _%hd264175264205%_
                             _%tl264176264208%_
                             _%e264177264211%_
                             _%hd264178264215%_
                             _%tl264179264218%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl264179264218%_))
                          (let ((_%__splice267544267545%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl264179264218%_
                                    '0))))
                            (let ((_%tl264182264224%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice267544267545%_
                                      '1)))
                                  (_%target264180264221%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice267544267545%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl264182264224%_))
                                  (_%__match267602267603%_
                                   _%e264174264201%_
                                   _%hd264175264205%_
                                   _%tl264176264208%_
                                   _%e264177264211%_
                                   _%hd264178264215%_
                                   _%tl264179264218%_
                                   _%__splice267544267545%_
                                   _%target264180264221%_
                                   _%tl264182264224%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g264147264194%_)))))
                          (let () (declare (not safe)) (_%g264147264194%_)))))
                   (_%__match267582267583%_
                    (lambda (_%e264151264284%_
                             _%hd264152264288%_
                             _%tl264153264291%_
                             _%e264154264294%_
                             _%hd264155264298%_
                             _%tl264156264301%_
                             _%e264157264304%_
                             _%hd264158264308%_
                             _%tl264159264311%_
                             _%e264160264314%_
                             _%hd264161264318%_
                             _%tl264162264321%_
                             _%__splice267540267541%_
                             _%target264163264324%_
                             _%tl264165264327%_)
                      (letrec ((_%loop264166264330%_
                                (lambda (_%hd264164264334%_
                                         _%sig264170264337%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd264164264334%_))
                                      (let ((_%e264167264339%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd264164264334%_))))
                                        (let ((_%lp-tl264169264346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264167264339%_)))
                                              (_%lp-hd264168264343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264167264339%_))))
                                          (_%loop264166264330%_
                                           _%lp-tl264169264346%_
                                           (cons _%lp-hd264168264343%_
                                                 _%sig264170264337%_))))
                                      (let ((_%sig264171264349%_
                                             (reverse _%sig264170264337%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl264159264311%_))
                                            (_%__kont267538267539%_
                                             _%sig264171264349%_
                                             _%hd264155264298%_)
                                            (_%__match267594267595%_
                                             _%e264151264284%_
                                             _%hd264152264288%_
                                             _%tl264153264291%_
                                             _%e264154264294%_
                                             _%hd264155264298%_
                                             _%tl264156264301%_)))))))
                        (_%loop264166264330%_ _%target264163264324%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx267535267536%_))
                  (let ((_%e264151264284%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx267535267536%_))))
                    (let ((_%tl264153264291%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e264151264284%_)))
                          (_%hd264152264288%_
                           (let ()
                             (declare (not safe))
                             (##car _%e264151264284%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl264153264291%_))
                          (let ((_%e264154264294%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl264153264291%_))))
                            (let ((_%tl264156264301%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e264154264294%_)))
                                  (_%hd264155264298%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e264154264294%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl264156264301%_))
                                  (let ((_%e264157264304%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl264156264301%_))))
                                    (let ((_%tl264159264311%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e264157264304%_)))
                                          (_%hd264158264308%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e264157264304%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd264158264308%_))
                                          (let ((_%e264160264314%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd264158264308%_))))
                                            (let ((_%tl264162264321%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e264160264314%_)))
                                                  (_%hd264161264318%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e264160264314%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd264161264318%_))
                                                  (if (let ((__tmp267969
                                                             |gxc[1]#_g267970_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp267969
                                                         _%hd264161264318%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl264162264321%_))
                                                          (let ((_%__splice267540267541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl264162264321%_
                            '0))))
                    (let ((_%tl264165264327%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice267540267541%_ '1)))
                          (_%target264163264324%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice267540267541%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl264165264327%_))
                          (_%__match267582267583%_
                           _%e264151264284%_
                           _%hd264152264288%_
                           _%tl264153264291%_
                           _%e264154264294%_
                           _%hd264155264298%_
                           _%tl264156264301%_
                           _%e264157264304%_
                           _%hd264158264308%_
                           _%tl264159264311%_
                           _%e264160264314%_
                           _%hd264161264318%_
                           _%tl264162264321%_
                           _%__splice267540267541%_
                           _%target264163264324%_
                           _%tl264165264327%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl264156264301%_))
                              (let ((_%__splice267544267545%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl264156264301%_
                                        '0))))
                                (let ((_%tl264182264224%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice267544267545%_
                                          '1)))
                                      (_%target264180264221%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice267544267545%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl264182264224%_))
                                      (_%__match267602267603%_
                                       _%e264151264284%_
                                       _%hd264152264288%_
                                       _%tl264153264291%_
                                       _%e264154264294%_
                                       _%hd264155264298%_
                                       _%tl264156264301%_
                                       _%__splice267544267545%_
                                       _%target264180264221%_
                                       _%tl264182264224%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g264147264194%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g264147264194%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl264156264301%_))
                      (let ((_%__splice267544267545%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl264156264301%_
                                '0))))
                        (let ((_%tl264182264224%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267544267545%_ '1)))
                              (_%target264180264221%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267544267545%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl264182264224%_))
                              (_%__match267602267603%_
                               _%e264151264284%_
                               _%hd264152264288%_
                               _%tl264153264291%_
                               _%e264154264294%_
                               _%hd264155264298%_
                               _%tl264156264301%_
                               _%__splice267544267545%_
                               _%target264180264221%_
                               _%tl264182264224%_)
                              (let ()
                                (declare (not safe))
                                (_%g264147264194%_)))))
                      (let () (declare (not safe)) (_%g264147264194%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl264156264301%_))
                  (let ((_%__splice267544267545%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl264156264301%_
                            '0))))
                    (let ((_%tl264182264224%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice267544267545%_ '1)))
                          (_%target264180264221%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice267544267545%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl264182264224%_))
                          (_%__match267602267603%_
                           _%e264151264284%_
                           _%hd264152264288%_
                           _%tl264153264291%_
                           _%e264154264294%_
                           _%hd264155264298%_
                           _%tl264156264301%_
                           _%__splice267544267545%_
                           _%target264180264221%_
                           _%tl264182264224%_)
                          (let () (declare (not safe)) (_%g264147264194%_)))))
                  (let () (declare (not safe)) (_%g264147264194%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl264156264301%_))
                                                      (let ((_%__splice267544267545%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl264156264301%_
                        '0))))
                (let ((_%tl264182264224%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice267544267545%_ '1)))
                      (_%target264180264221%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice267544267545%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl264182264224%_))
                      (_%__match267602267603%_
                       _%e264151264284%_
                       _%hd264152264288%_
                       _%tl264153264291%_
                       _%e264154264294%_
                       _%hd264155264298%_
                       _%tl264156264301%_
                       _%__splice267544267545%_
                       _%target264180264221%_
                       _%tl264182264224%_)
                      (let () (declare (not safe)) (_%g264147264194%_)))))
              (let () (declare (not safe)) (_%g264147264194%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl264156264301%_))
                                              (let ((_%__splice267544267545%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl264156264301%_
                                                        '0))))
                                                (let ((_%tl264182264224%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice267544267545%_
                                                          '1)))
                                                      (_%target264180264221%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice267544267545%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl264182264224%_))
                                                      (_%__match267602267603%_
                                                       _%e264151264284%_
                                                       _%hd264152264288%_
                                                       _%tl264153264291%_
                                                       _%e264154264294%_
                                                       _%hd264155264298%_
                                                       _%tl264156264301%_
                                                       _%__splice267544267545%_
                                                       _%target264180264221%_
                                                       _%tl264182264224%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g264147264194%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g264147264194%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl264156264301%_))
                                      (let ((_%__splice267544267545%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl264156264301%_
                                                '0))))
                                        (let ((_%tl264182264224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice267544267545%_
                                                  '1)))
                                              (_%target264180264221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice267544267545%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl264182264224%_))
                                              (_%__match267602267603%_
                                               _%e264151264284%_
                                               _%hd264152264288%_
                                               _%tl264153264291%_
                                               _%e264154264294%_
                                               _%hd264155264298%_
                                               _%tl264156264301%_
                                               _%__splice267544267545%_
                                               _%target264180264221%_
                                               _%tl264182264224%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g264147264194%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g264147264194%_))))))
                          (let () (declare (not safe)) (_%g264147264194%_)))))
                  (let () (declare (not safe)) (_%g264147264194%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx265537%_ _%id265539%_)
        (let ((_%proc265543%_
               (let ((__tmp267971
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id265539%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp267971))))
          (if (procedure? _%proc265543%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx265537%_
                 _%id265539%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx265528%_ _%id265530%_)
        (let ((_%klass265534%_
               (let ((__tmp267972
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id265530%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp267972))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass265534%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx265528%_
                 _%id265530%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx264778%_ _%proc264780%_ _%sig264781%_)
        (letrec ((_%signature-arity264783%_
                  (lambda (_%args265460%_)
                    (let _%loop265463%_ ((_%rest265466%_ _%args265460%_)
                                         (_%count265468%_ '0))
                      (let* ((_%rest265469265480%_ _%rest265466%_)
                             (_%E265473265486%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest265469265480%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K265476265517%_
                               (lambda (_%rest265514%_)
                                 (_%loop265463%_
                                  _%rest265514%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count265468%_ '1)))))
                              (_%K265475265506%_ (lambda () _%count265468%_))
                              (_%K265474265494%_
                               (lambda () (cons _%count265468%_ '()))))
                          (let ((_%try-match265471265510%_
                                 (lambda ()
                                   (if (null? _%rest265469265480%_)
                                       (_%K265475265506%_)
                                       (_%K265474265494%_)))))
                            (if (pair? _%rest265469265480%_)
                                (let* ((_%tl265478265521%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest265469265480%_)))
                                       (_%rest265525%_ _%tl265478265521%_))
                                  (_%K265476265517%_ _%rest265525%_))
                                (_%try-match265471265510%_))))))))
                 (_%make-signature264785%_
                  (lambda (_%args265342%_
                           _%return265344%_
                           _%effect265345%_
                           _%unchecked265346%_)
                    (let ((__tmp267973
                           (lambda (_%g265347265349%_)
                             (|gxc[1]#verify-class!|
                              _%ctx264778%_
                              _%g265347265349%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp267973 _%args265342%_))
                    (|gxc[1]#verify-class!| _%ctx264778%_ _%return265344%_)
                    (if _%unchecked265346%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx264778%_
                         _%unchecked265346%_)
                        '#!void)
                    (let ((_%arity265353%_
                           (_%signature-arity264783%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args265342%_)))))
                      (if _%effect265345%_
                          (let ((_%effect265356%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect265345%_))))
                            (if (and (list? _%effect265356%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect265356%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx264778%_
                                   _%proc264780%_
                                   _%effect265356%_))))
                          '#!void)
                      (cons _%arity265353%_
                            (cons (let* ((_%g265359265382%_
                                          (lambda (_%g265360265378%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g265360265378%_))))
                                         (_%g265358265456%_
                                          (lambda (_%g265360265386%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g265360265386%_))
                                                (let ((_%e265365265389%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g265360265386%_))))
                                                  (let ((_%hd265366265393%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e265365265389%_)))
                                                        (_%tl265367265396%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e265365265389%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl265367265396%_))
                                                        (let ((_%e265368265399%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl265367265396%_))))
                  (let ((_%hd265369265403%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265368265399%_)))
                        (_%tl265370265406%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265368265399%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl265370265406%_))
                        (let ((_%e265371265409%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl265370265406%_))))
                          (let ((_%hd265372265413%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e265371265409%_)))
                                (_%tl265373265416%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e265371265409%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl265373265416%_))
                                (let ((_%e265374265419%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl265373265416%_))))
                                  (let ((_%hd265375265423%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e265374265419%_)))
                                        (_%tl265376265426%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e265374265419%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl265376265426%_))
                                        ((lambda (_%g265361265429%_
                                                  _%g265362265431%_
                                                  _%g265363265432%_
                                                  _%g265364265433%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'make-!signature))
                                                 (cons 'arguments:
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g265364265433%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g265363265432%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g265362265431%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g265361265429%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'builtin))
                                         '()))
                             '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd265375265423%_
                                         _%hd265372265413%_
                                         _%hd265369265403%_
                                         _%hd265366265393%_)
                                        (_%g265359265382%_
                                         _%g265360265386%_))))
                                (_%g265359265382%_ _%g265360265386%_))))
                        (_%g265359265382%_ _%g265360265386%_))))
                (_%g265359265382%_ _%g265360265386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g265359265382%_
                                                 _%g265360265386%_)))))
                                    (_%g265358265456%_
                                     (list _%args265342%_
                                           _%return265344%_
                                           _%effect265345%_
                                           _%unchecked265346%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx264778%_ _%proc264780%_)
          (let* ((_%__stx267613267614%_ _%sig264781%_)
                 (_%g264792264895%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx267613267614%_)))))
            (let ((_%__kont267616267617%_
                   (lambda (_%g264794265323%_ _%g264795265325%_)
                     (_%make-signature264785%_
                      _%g264795265325%_
                      _%g264794265323%_
                      '#f
                      '#f)))
                  (_%__kont267618267619%_
                   (lambda (_%g264802265274%_
                            _%g264803265276%_
                            _%g264804265277%_)
                     (_%make-signature264785%_
                      _%g264804265277%_
                      _%g264803265276%_
                      _%g264802265274%_
                      '#f)))
                  (_%__kont267620267621%_
                   (lambda (_%g264818265198%_
                            _%g264819265200%_
                            _%g264820265201%_)
                     (_%make-signature264785%_
                      _%g264820265201%_
                      _%g264819265200%_
                      _%g264818265198%_
                      (let ((__tmp267974
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc264780%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp267974)))))
                  (_%__kont267622267623%_
                   (lambda (_%g264838265104%_
                            _%g264839265106%_
                            _%g264840265107%_
                            _%g264841265108%_)
                     (_%make-signature264785%_
                      _%g264841265108%_
                      _%g264840265107%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g264838265104%_)))))
                  (_%__kont267624267625%_
                   (lambda (_%g264862265011%_ _%g264863265013%_)
                     (_%make-signature264785%_
                      _%g264863265013%_
                      _%g264862265011%_
                      '#f
                      (let ((__tmp267975
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc264780%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp267975)))))
                  (_%__kont267626267627%_
                   (lambda (_%g264874264946%_
                            _%g264875264948%_
                            _%g264876264949%_)
                     (_%make-signature264785%_
                      _%g264876264949%_
                      _%g264875264948%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g264874264946%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx267613267614%_))
                  (let ((_%e264796265303%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx267613267614%_))))
                    (let ((_%tl264798265310%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e264796265303%_)))
                          (_%hd264797265307%_
                           (let ()
                             (declare (not safe))
                             (##car _%e264796265303%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl264798265310%_))
                          (let ((_%e264799265313%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl264798265310%_))))
                            (let ((_%tl264801265320%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e264799265313%_)))
                                  (_%hd264800265317%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e264799265313%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl264801265320%_))
                                  (_%__kont267616267617%_
                                   _%hd264800265317%_
                                   _%hd264797265307%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264801265320%_))
                                      (let ((_%e264811265250%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264801265320%_))))
                                        (let ((_%tl264813265257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264811265250%_)))
                                              (_%hd264812265254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264811265250%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd264812265254%_))
                                              (let ((_%e264814265260%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd264812265254%_))))
                                                (if (equal? _%e264814265260%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl264813265257%_))
                                                        (let ((_%e264815265264%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl264813265257%_))))
                  (let ((_%tl264817265271%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e264815265264%_)))
                        (_%hd264816265268%_
                         (let ()
                           (declare (not safe))
                           (##car _%e264815265264%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl264817265271%_))
                        (_%__kont267618267619%_
                         _%hd264816265268%_
                         _%hd264800265317%_
                         _%hd264797265307%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl264817265271%_))
                            (let ((_%e264834265184%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl264817265271%_))))
                              (let ((_%tl264836265191%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e264834265184%_)))
                                    (_%hd264835265188%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e264834265184%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd264835265188%_))
                                    (let ((_%e264837265194%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd264835265188%_))))
                                      (if (equal? _%e264837265194%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl264836265191%_))
                                              (_%__kont267620267621%_
                                               _%hd264816265268%_
                                               _%hd264800265317%_
                                               _%hd264797265307%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl264836265191%_))
                                                  (let ((_%e264859265094%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl264836265191%_))))
                                                    (let ((_%tl264861265101%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e264859265094%_)))
                                                          (_%hd264860265098%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e264859265094%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl264861265101%_))
                                                          (_%__kont267622267623%_
                                                           _%hd264860265098%_
                                                           _%hd264816265268%_
                                                           _%hd264800265317%_
                                                           _%hd264797265307%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g264792264895%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g264792264895%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g264792264895%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g264792264895%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g264792264895%_))))))
                (let () (declare (not safe)) (_%g264792264895%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e264814265260%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl264813265257%_))
                                                            (_%__kont267624267625%_
                                                             _%hd264800265317%_
                                                             _%hd264797265307%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl264813265257%_))
                        (let ((_%e264887264936%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl264813265257%_))))
                          (let ((_%tl264889264943%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264887264936%_)))
                                (_%hd264888264940%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264887264936%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl264889264943%_))
                                (_%__kont267626267627%_
                                 _%hd264888264940%_
                                 _%hd264800265317%_
                                 _%hd264797265307%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g264792264895%_)))))
                        (let () (declare (not safe)) (_%g264792264895%_))))
                (let () (declare (not safe)) (_%g264792264895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g264792264895%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g264792264895%_))))))
                          (let () (declare (not safe)) (_%g264792264895%_)))))
                  (let () (declare (not safe)) (_%g264792264895%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig264389%_)
        (let* ((_%g264392264472%_
                (lambda (_%g264393264468%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264393264468%_))))
               (_%g264391264774%_
                (lambda (_%g264393264476%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264393264476%_))
                      (let ((_%e264399264479%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264393264476%_))))
                        (let ((_%hd264400264483%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264399264479%_)))
                              (_%tl264401264486%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264399264479%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264401264486%_))
                              (let ((_%e264402264489%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264401264486%_))))
                                (let ((_%hd264403264493%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264402264489%_)))
                                      (_%tl264404264496%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264402264489%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd264403264493%_))
                                      (let ((_%e264405264499%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd264403264493%_))))
                                        (if (equal? _%e264405264499%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl264404264496%_))
                                                (let ((_%e264406264503%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl264404264496%_))))
                                                  (let ((_%hd264407264507%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e264406264503%_)))
                                                        (_%tl264408264510%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e264406264503%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd264407264507%_))
                                                        (let ((_%e264409264513%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd264407264507%_))))
                  (let ((_%hd264410264517%_
                         (let ()
                           (declare (not safe))
                           (##car _%e264409264513%_)))
                        (_%tl264411264520%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e264409264513%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd264410264517%_))
                        (if (let ((__tmp267976 |gxc[1]#_g267977_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp267976
                               _%hd264410264517%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl264411264520%_))
                                (let ((_%e264412264523%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl264411264520%_))))
                                  (let ((_%hd264413264527%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e264412264523%_)))
                                        (_%tl264414264530%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e264412264523%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl264414264530%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl264408264510%_))
                                            (let ((_%e264415264533%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl264408264510%_))))
                                              (let ((_%hd264416264537%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e264415264533%_)))
                                                    (_%tl264417264540%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e264415264533%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd264416264537%_))
                                                    (let ((_%e264418264543%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd264416264537%_))))
                                                      (if (equal? _%e264418264543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl264417264540%_))
                      (let ((_%e264419264547%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl264417264540%_))))
                        (let ((_%hd264420264551%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264419264547%_)))
                              (_%tl264421264554%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264419264547%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd264420264551%_))
                              (let ((_%e264422264557%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd264420264551%_))))
                                (let ((_%hd264423264561%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264422264557%_)))
                                      (_%tl264424264564%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264422264557%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd264423264561%_))
                                      (if (let ((__tmp267978
                                                 |gxc[1]#_g267979_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp267978
                                             _%hd264423264561%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl264424264564%_))
                                              (let ((_%e264425264567%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl264424264564%_))))
                                                (let ((_%hd264426264571%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e264425264567%_)))
                                                      (_%tl264427264574%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e264425264567%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl264427264574%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl264421264554%_))
                                                          (let ((_%e264428264577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl264421264554%_))))
                    (let ((_%hd264429264581%_
                           (let ()
                             (declare (not safe))
                             (##car _%e264428264577%_)))
                          (_%tl264430264584%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e264428264577%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd264429264581%_))
                          (let ((_%e264431264587%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd264429264581%_))))
                            (if (equal? _%e264431264587%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl264430264584%_))
                                    (let ((_%e264432264591%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl264430264584%_))))
                                      (let ((_%hd264433264595%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e264432264591%_)))
                                            (_%tl264434264598%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e264432264591%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd264433264595%_))
                                            (let ((_%e264435264601%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd264433264595%_))))
                                              (let ((_%hd264436264605%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e264435264601%_)))
                                                    (_%tl264437264608%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e264435264601%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd264436264605%_))
                                                    (if (let ((__tmp267980
                                                               |gxc[1]#_g267981_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp267980
                                                           _%hd264436264605%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl264437264608%_))
                                                            (let ((_%e264438264611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl264437264608%_))))
                      (let ((_%hd264439264615%_
                             (let ()
                               (declare (not safe))
                               (##car _%e264438264611%_)))
                            (_%tl264440264618%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e264438264611%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl264440264618%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl264434264598%_))
                                (let ((_%e264441264621%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl264434264598%_))))
                                  (let ((_%hd264442264625%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e264441264621%_)))
                                        (_%tl264443264628%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e264441264621%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd264442264625%_))
                                        (let ((_%e264444264631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd264442264625%_))))
                                          (if (equal? _%e264444264631%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl264443264628%_))
                                                  (let ((_%e264445264635%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl264443264628%_))))
                                                    (let ((_%hd264446264639%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e264445264635%_)))
                                                          (_%tl264447264642%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e264445264635%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd264446264639%_))
                                                          (let ((_%e264448264645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd264446264639%_))))
                    (let ((_%hd264449264649%_
                           (let ()
                             (declare (not safe))
                             (##car _%e264448264645%_)))
                          (_%tl264450264652%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e264448264645%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd264449264649%_))
                          (if (let ((__tmp267982 |gxc[1]#_g267983_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp267982
                                 _%hd264449264649%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl264450264652%_))
                                  (let ((_%e264451264655%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl264450264652%_))))
                                    (let ((_%hd264452264659%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e264451264655%_)))
                                          (_%tl264453264662%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e264451264655%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl264453264662%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl264447264642%_))
                                              (let ((_%e264454264665%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl264447264642%_))))
                                                (let ((_%hd264455264669%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e264454264665%_)))
                                                      (_%tl264456264672%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e264454264665%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd264455264669%_))
                                                      (let ((_%e264457264675%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd264455264669%_))))
                (if (equal? _%e264457264675%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl264456264672%_))
                        (let ((_%e264458264679%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl264456264672%_))))
                          (let ((_%hd264459264683%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264458264679%_)))
                                (_%tl264460264686%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264458264679%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd264459264683%_))
                                (let ((_%e264461264689%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd264459264683%_))))
                                  (let ((_%hd264462264693%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e264461264689%_)))
                                        (_%tl264463264696%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e264461264689%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd264462264693%_))
                                        (if (let ((__tmp267984
                                                   |gxc[1]#_g267985_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp267984
                                               _%hd264462264693%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl264463264696%_))
                                                (let ((_%e264464264699%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl264463264696%_))))
                                                  (let ((_%hd264465264703%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e264464264699%_)))
                                                        (_%tl264466264706%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e264464264699%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl264466264706%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl264460264686%_))
                                                            ((lambda (_%g264394264709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g264395264711%_
                              _%g264396264712%_
                              _%g264397264713%_
                              _%g264398264714%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g264395264711%_))
                           (cons _%g264395264711%_
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!signature))
                                             (cons 'return:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g264397264713%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g264394264709%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd264465264703%_
                     _%hd264452264659%_
                     _%hd264439264615%_
                     _%hd264426264571%_
                     _%hd264413264527%_)
                    (_%g264392264472%_ _%g264393264476%_))
                (_%g264392264472%_ _%g264393264476%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g264392264472%_
                                                 _%g264393264476%_))
                                            (_%g264392264472%_
                                             _%g264393264476%_))
                                        (_%g264392264472%_
                                         _%g264393264476%_))))
                                (_%g264392264472%_ _%g264393264476%_))))
                        (_%g264392264472%_ _%g264393264476%_))
                    (_%g264392264472%_ _%g264393264476%_)))
              (_%g264392264472%_ _%g264393264476%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g264392264472%_
                                               _%g264393264476%_))
                                          (_%g264392264472%_
                                           _%g264393264476%_))))
                                  (_%g264392264472%_ _%g264393264476%_))
                              (_%g264392264472%_ _%g264393264476%_))
                          (_%g264392264472%_ _%g264393264476%_))))
                  (_%g264392264472%_ _%g264393264476%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g264392264472%_
                                                   _%g264393264476%_))
                                              (_%g264392264472%_
                                               _%g264393264476%_)))
                                        (_%g264392264472%_
                                         _%g264393264476%_))))
                                (_%g264392264472%_ _%g264393264476%_))
                            (_%g264392264472%_ _%g264393264476%_))))
                    (_%g264392264472%_ _%g264393264476%_))
                (_%g264392264472%_ _%g264393264476%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g264392264472%_
                                                     _%g264393264476%_))))
                                            (_%g264392264472%_
                                             _%g264393264476%_))))
                                    (_%g264392264472%_ _%g264393264476%_))
                                (_%g264392264472%_ _%g264393264476%_)))
                          (_%g264392264472%_ _%g264393264476%_))))
                  (_%g264392264472%_ _%g264393264476%_))
              (_%g264392264472%_ _%g264393264476%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g264392264472%_
                                               _%g264393264476%_))
                                          (_%g264392264472%_
                                           _%g264393264476%_))
                                      (_%g264392264472%_ _%g264393264476%_))))
                              (_%g264392264472%_ _%g264393264476%_))))
                      (_%g264392264472%_ _%g264393264476%_))
                  (_%g264392264472%_ _%g264393264476%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g264392264472%_
                                                     _%g264393264476%_))))
                                            (_%g264392264472%_
                                             _%g264393264476%_))
                                        (_%g264392264472%_
                                         _%g264393264476%_))))
                                (_%g264392264472%_ _%g264393264476%_))
                            (_%g264392264472%_ _%g264393264476%_))
                        (_%g264392264472%_ _%g264393264476%_))))
                (_%g264392264472%_ _%g264393264476%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g264392264472%_
                                                 _%g264393264476%_))
                                            (_%g264392264472%_
                                             _%g264393264476%_)))
                                      (_%g264392264472%_ _%g264393264476%_))))
                              (_%g264392264472%_ _%g264393264476%_))))
                      (_%g264392264472%_ _%g264393264476%_)))))
          (_%g264391264774%_ _%sig264389%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx265546%_)
        (let* ((_%g265549265567%_
                (lambda (_%g265550265563%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265550265563%_))))
               (_%g265548265622%_
                (lambda (_%g265550265571%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265550265571%_))
                      (let ((_%e265553265574%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265550265571%_))))
                        (let ((_%hd265554265578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265553265574%_)))
                              (_%tl265555265581%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265553265574%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl265555265581%_))
                              (let ((_%e265556265584%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl265555265581%_))))
                                (let ((_%hd265557265588%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265556265584%_)))
                                      (_%tl265558265591%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265556265584%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl265558265591%_))
                                      (let ((_%e265559265594%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl265558265591%_))))
                                        (let ((_%hd265560265598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265559265594%_)))
                                              (_%tl265561265601%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265559265594%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl265561265601%_))
                                              ((lambda (_%g265551265604%_
                                                        _%g265552265606%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g265552265606%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g265551265604%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx265546%_
                                                        _%g265552265606%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx265546%_
                                                        _%g265551265604%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g265552265606%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-predicate))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g265551265604%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g265549265567%_
                                                      _%g265550265571%_)))
                                               _%hd265560265598%_
                                               _%hd265557265588%_)
                                              (_%g265549265567%_
                                               _%g265550265571%_))))
                                      (_%g265549265567%_ _%g265550265571%_))))
                              (_%g265549265567%_ _%g265550265571%_))))
                      (_%g265549265567%_ _%g265550265571%_)))))
          (_%g265548265622%_ _%stx265546%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx265626%_)
        (let* ((_%g265629265653%_
                (lambda (_%g265630265649%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265630265649%_))))
               (_%g265628265934%_
                (lambda (_%g265630265657%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265630265657%_))
                      (let ((_%e265633265660%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265630265657%_))))
                        (let ((_%hd265634265664%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265633265660%_)))
                              (_%tl265635265667%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265633265660%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl265635265667%_))
                              (let ((_%e265636265670%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl265635265667%_))))
                                (let ((_%hd265637265674%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265636265670%_)))
                                      (_%tl265638265677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265636265670%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl265638265677%_))
                                      (let ((_g267986_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl265638265677%_
                                                '0))))
                                        (begin
                                          (let ((_g267987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g267986_)
                                                       (##values-length
                                                        _g267986_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g267987_ 2)))
                                                (error "Context expects 2 values"
                                                       _g267987_)))
                                          (let ((_%target265639265680%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g267986_ 0)))
                                                (_%tl265641265683%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g267986_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl265641265683%_))
                                                (letrec ((_%loop265642265686%_
                                                          (lambda (_%hd265640265690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature265646265693%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd265640265690%_))
                        (let ((_%e265643265695%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd265640265690%_))))
                          (let ((_%lp-hd265644265699%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e265643265695%_)))
                                (_%lp-tl265645265702%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e265643265695%_))))
                            (_%loop265642265686%_
                             _%lp-tl265645265702%_
                             (cons _%lp-hd265644265699%_
                                   _%signature265646265693%_))))
                        (let ((_%signature265647265705%_
                               (reverse _%signature265646265693%_)))
                          ((lambda (_%g265631265708%_ _%g265632265710%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g265632265710%_))
                                 (let* ((_%g265728265743%_
                                         (lambda (_%g265729265739%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g265729265739%_))))
                                        (_%g265727265922%_
                                         (lambda (_%g265729265747%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g265729265747%_))
                                               (let ((_%e265732265750%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g265729265747%_))))
                                                 (let ((_%hd265733265754%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e265732265750%_)))
                                                       (_%tl265734265757%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e265732265750%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl265734265757%_))
                                                       (let ((_%e265735265760%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl265734265757%_))))
                 (let ((_%hd265736265764%_
                        (let ()
                          (declare (not safe))
                          (##car _%e265735265760%_)))
                       (_%tl265737265767%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e265735265760%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl265737265767%_))
                       ((lambda (_%g265730265770%_ _%g265731265772%_)
                          (let* ((_%g265788265796%_
                                  (lambda (_%g265789265792%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g265789265792%_))))
                                 (_%g265787265918%_
                                  (lambda (_%g265789265800%_)
                                    ((lambda (_%g265790265803%_)
                                       (let* ((_%unchecked265816%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g265730265770%_))
                                              (_%g265819265827%_
                                               (lambda (_%g265820265823%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g265820265823%_))))
                                              (_%g265818265850%_
                                               (lambda (_%g265820265831%_)
                                                 ((lambda (_%g265821265834%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g265790265803%_
                                                                (cons _%g265821265834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g265820265831%_))))
                                         (_%g265818265850%_
                                          (if _%unchecked265816%_
                                              (let* ((_%g265854265869%_
                                                      (lambda (_%g265855265865%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g265855265865%_))))
                                                     (_%g265853265914%_
                                                      (lambda (_%g265855265873%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g265855265873%_))
                                                            (let ((_%e265858265876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g265855265873%_))))
                      (let ((_%hd265859265880%_
                             (let ()
                               (declare (not safe))
                               (##car _%e265858265876%_)))
                            (_%tl265860265883%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e265858265876%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl265860265883%_))
                            (let ((_%e265861265886%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl265860265883%_))))
                              (let ((_%hd265862265890%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e265861265886%_)))
                                    (_%tl265863265893%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e265861265886%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl265863265893%_))
                                    ((lambda (_%g265856265896%_
                                              _%g265857265898%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g265857265898%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g265731265772%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g265856265896%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd265862265890%_
                                     _%hd265859265880%_)
                                    (_%g265854265869%_ _%g265855265873%_))))
                            (_%g265854265869%_ _%g265855265873%_))))
                    (_%g265854265869%_ _%g265855265873%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g265853265914%_
                                                 _%unchecked265816%_))
                                              '(begin)))))
                                     _%g265789265800%_))))
                            (_%g265787265918%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g265632265710%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g265731265772%_ '()))
                   (cons '#f (cons 'signature: (cons _%g265730265770%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd265736265764%_
                        _%hd265733265754%_)
                       (_%g265728265743%_ _%g265729265747%_))))
               (_%g265728265743%_ _%g265729265747%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265728265743%_
                                                _%g265729265747%_)))))
                                   (_%g265727265922%_
                                    (|gxc[1]#parse-signature|
                                     _%stx265626%_
                                     _%g265632265710%_
                                     (let ((__tmp267988
                                            (lambda (_%g265925265928%_
                                                     _%g265926265931%_)
                                              (cons _%g265925265928%_
                                                    _%g265926265931%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp267988
                                        '()
                                        _%g265631265708%_)))))
                                 (_%g265629265653%_ _%g265630265657%_)))
                           _%signature265647265705%_
                           _%hd265637265674%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop265642265686%_
                                                   _%target265639265680%_
                                                   '()))
                                                (_%g265629265653%_
                                                 _%g265630265657%_)))))
                                      (_%g265629265653%_ _%g265630265657%_))))
                              (_%g265629265653%_ _%g265630265657%_))))
                      (_%g265629265653%_ _%g265630265657%_)))))
          (_%g265628265934%_ _%stx265626%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx265939%_)
        (let* ((_%g265942265966%_
                (lambda (_%g265943265962%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265943265962%_))))
               (_%g265941266841%_
                (lambda (_%g265943265970%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265943265970%_))
                      (let ((_%e265946265973%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265943265970%_))))
                        (let ((_%hd265947265977%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265946265973%_)))
                              (_%tl265948265980%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265946265973%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl265948265980%_))
                              (let ((_%e265949265983%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl265948265980%_))))
                                (let ((_%hd265950265987%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265949265983%_)))
                                      (_%tl265951265990%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265949265983%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl265951265990%_))
                                      (let ((_g267989_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl265951265990%_
                                                '0))))
                                        (begin
                                          (let ((_g267990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g267989_)
                                                       (##values-length
                                                        _g267989_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g267990_ 2)))
                                                (error "Context expects 2 values"
                                                       _g267990_)))
                                          (let ((_%target265952265993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g267989_ 0)))
                                                (_%tl265954265996%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g267989_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl265954265996%_))
                                                (letrec ((_%loop265955265999%_
                                                          (lambda (_%hd265953266003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature265959266006%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd265953266003%_))
                        (let ((_%e265956266008%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd265953266003%_))))
                          (let ((_%lp-hd265957266012%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e265956266008%_)))
                                (_%lp-tl265958266015%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e265956266008%_))))
                            (_%loop265955265999%_
                             _%lp-tl265958266015%_
                             (cons _%lp-hd265957266012%_
                                   _%case-signature265959266006%_))))
                        (let ((_%case-signature265960266018%_
                               (reverse _%case-signature265959266006%_)))
                          ((lambda (_%g265944266021%_ _%g265945266023%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g265945266023%_))
                                 (let* ((_%signatures266054%_
                                         (map (lambda (_%g266040266042%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx265939%_
                                                 _%g265945266023%_
                                                 _%g266040266042%_))
                                              (let ((__tmp267991
                                                     (lambda (_%g266045266048%_
                                                              _%g266046266051%_)
                                                       (cons _%g266045266048%_
                                                             _%g266046266051%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp267991
                                                 '()
                                                 _%g265944266021%_))))
                                        (_%g266057266083%_
                                         (lambda (_%g266058266079%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g266058266079%_))))
                                        (_%g266056266837%_
                                         (lambda (_%g266058266087%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g266058266087%_))
                                               (let ((_g267992_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g266058266087%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g267993_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g267992_)
                        (##values-length _g267992_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g267993_ 2)))
                 (error "Context expects 2 values" _g267993_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target266061266090%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g267992_
                                                             0)))
                                                         (_%tl266063266093%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g267992_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl266063266093%_))
                                                         (letrec ((_%loop266064266096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd266062266100%_
                                    _%sig266068266103%_
                                    _%arity266069266104%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd266062266100%_))
                                 (let ((_%e266065266106%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd266062266100%_))))
                                   (let ((_%lp-hd266066266110%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e266065266106%_)))
                                         (_%lp-tl266067266113%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e266065266106%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd266066266110%_))
                                         (let ((_%e266072266116%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd266066266110%_))))
                                           (let ((_%hd266073266120%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e266072266116%_)))
                                                 (_%tl266074266123%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e266072266116%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl266074266123%_))
                                                 (let ((_%e266075266126%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl266074266123%_))))
                                                   (let ((_%hd266076266130%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e266075266126%_)))
                                                         (_%tl266077266133%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e266075266126%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl266077266133%_))
                                                         (_%loop266064266096%_
                                                          _%lp-tl266067266113%_
                                                          (cons _%hd266076266130%_
                                                                _%sig266068266103%_)
                                                          (cons _%hd266073266120%_
                                                                _%arity266069266104%_))
                                                         (_%g266057266083%_
                                                          _%g266058266087%_))))
                                                 (_%g266057266083%_
                                                  _%g266058266087%_))))
                                         (_%g266057266083%_
                                          _%g266058266087%_))))
                                 (let ((_%sig266070266136%_
                                        (reverse _%sig266068266103%_))
                                       (_%arity266071266138%_
                                        (reverse _%arity266069266104%_)))
                                   ((lambda (_%g266059266140%_
                                             _%g266060266142%_)
                                      (let* ((_%g266159266167%_
                                              (lambda (_%g266160266163%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g266160266163%_))))
                                             (_%g266158266822%_
                                              (lambda (_%g266160266171%_)
                                                ((lambda (_%g266161266174%_)
                                                   (let* ((_%g266187266195%_
                                                           (lambda (_%g266188266191%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g266188266191%_))))
                  (_%g266186266217%_
                   (lambda (_%g266188266199%_)
                     ((lambda (_%g266189266202%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g266161266174%_
                                    (cons _%g266189266202%_ '()))))
                      _%g266188266199%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g266186266217%_
                                                      (let ((_g267994_
                                                             (let _%loop266221%_ ((_%rest266224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures266054%_)
                                          (_%unchecked-proc266226%_ '#f)
                                          (_%unchecked-clauses266227%_ '()))
                       (let* ((_%rest266228266236%_ _%rest266224%_)
                              (_%else266230266248%_
                               (lambda ()
                                 (values _%unchecked-proc266226%_
                                         (reverse!
                                          _%unchecked-clauses266227%_))))
                              (_%K266232266689%_
                               (lambda (_%rest266252%_ _%hd266254%_)
                                 (let* ((_%g266256266343%_
                                         (lambda (_%g266257266339%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g266257266339%_))))
                                        (_%g266255266685%_
                                         (lambda (_%g266257266347%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g266257266347%_))
                                               (let ((_%e266264266350%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g266257266347%_))))
                                                 (let ((_%hd266265266354%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e266264266350%_)))
                                                       (_%tl266266266357%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e266264266350%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl266266266357%_))
                                                       (let ((_%e266267266360%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl266266266357%_))))
                 (let ((_%hd266268266364%_
                        (let ()
                          (declare (not safe))
                          (##car _%e266267266360%_)))
                       (_%tl266269266367%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e266267266360%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd266268266364%_))
                       (let ((_%e266270266370%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd266268266364%_))))
                         (let ((_%hd266271266374%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e266270266370%_)))
                               (_%tl266272266377%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e266270266370%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl266272266377%_))
                               (let ((_%e266273266380%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl266272266377%_))))
                                 (let ((_%hd266274266384%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e266273266380%_)))
                                       (_%tl266275266387%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e266273266380%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd266274266384%_))
                                       (let ((_%e266276266390%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd266274266384%_))))
                                         (if (equal? _%e266276266390%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl266275266387%_))
                                                 (let ((_%e266277266394%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl266275266387%_))))
                                                   (let ((_%hd266278266398%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e266277266394%_)))
                                                         (_%tl266279266401%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e266277266394%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd266278266398%_))
                                                         (let ((_%e266280266404%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd266278266398%_))))
                   (let ((_%hd266281266408%_
                          (let ()
                            (declare (not safe))
                            (##car _%e266280266404%_)))
                         (_%tl266282266411%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e266280266404%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd266281266408%_))
                         (if (let ((__tmp267996 |gxc[1]#_g267997_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp267996
                                _%hd266281266408%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl266282266411%_))
                                 (let ((_%e266283266414%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl266282266411%_))))
                                   (let ((_%hd266284266418%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e266283266414%_)))
                                         (_%tl266285266421%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e266283266414%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl266285266421%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl266279266401%_))
                                             (let ((_%e266286266424%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl266279266401%_))))
                                               (let ((_%hd266287266428%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e266286266424%_)))
                                                     (_%tl266288266431%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e266286266424%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd266287266428%_))
                                                     (let ((_%e266289266434%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd266287266428%_))))
                                                       (if (equal? _%e266289266434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl266288266431%_))
                       (let ((_%e266290266438%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl266288266431%_))))
                         (let ((_%hd266291266442%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e266290266438%_)))
                               (_%tl266292266445%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e266290266438%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd266291266442%_))
                               (let ((_%e266293266448%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd266291266442%_))))
                                 (let ((_%hd266294266452%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e266293266448%_)))
                                       (_%tl266295266455%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e266293266448%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd266294266452%_))
                                       (if (let ((__tmp267998
                                                  |gxc[1]#_g267999_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp267998
                                              _%hd266294266452%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl266295266455%_))
                                               (let ((_%e266296266458%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl266295266455%_))))
                                                 (let ((_%hd266297266462%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e266296266458%_)))
                                                       (_%tl266298266465%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e266296266458%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl266298266465%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl266292266445%_))
                                                           (let ((_%e266299266468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl266292266445%_))))
                     (let ((_%hd266300266472%_
                            (let ()
                              (declare (not safe))
                              (##car _%e266299266468%_)))
                           (_%tl266301266475%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e266299266468%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd266300266472%_))
                           (let ((_%e266302266478%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd266300266472%_))))
                             (if (equal? _%e266302266478%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl266301266475%_))
                                     (let ((_%e266303266482%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl266301266475%_))))
                                       (let ((_%hd266304266486%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e266303266482%_)))
                                             (_%tl266305266489%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e266303266482%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd266304266486%_))
                                             (let ((_%e266306266492%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd266304266486%_))))
                                               (let ((_%hd266307266496%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e266306266492%_)))
                                                     (_%tl266308266499%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e266306266492%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd266307266496%_))
                                                     (if (let ((__tmp268000
                                                                |gxc[1]#_g268001_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp268000
                                                            _%hd266307266496%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl266308266499%_))
                     (let ((_%e266309266502%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl266308266499%_))))
                       (let ((_%hd266310266506%_
                              (let ()
                                (declare (not safe))
                                (##car _%e266309266502%_)))
                             (_%tl266311266509%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e266309266502%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl266311266509%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl266305266489%_))
                                 (let ((_%e266312266512%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl266305266489%_))))
                                   (let ((_%hd266313266516%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e266312266512%_)))
                                         (_%tl266314266519%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e266312266512%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd266313266516%_))
                                         (let ((_%e266315266522%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd266313266516%_))))
                                           (if (equal? _%e266315266522%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl266314266519%_))
                                                   (let ((_%e266316266526%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl266314266519%_))))
                                                     (let ((_%hd266317266530%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e266316266526%_)))
                                                           (_%tl266318266533%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e266316266526%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd266317266530%_))
                                                           (let ((_%e266319266536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd266317266530%_))))
                     (let ((_%hd266320266540%_
                            (let ()
                              (declare (not safe))
                              (##car _%e266319266536%_)))
                           (_%tl266321266543%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e266319266536%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd266320266540%_))
                           (if (let ((__tmp268002 |gxc[1]#_g268003_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp268002
                                  _%hd266320266540%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl266321266543%_))
                                   (let ((_%e266322266546%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl266321266543%_))))
                                     (let ((_%hd266323266550%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e266322266546%_)))
                                           (_%tl266324266553%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e266322266546%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl266324266553%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl266318266533%_))
                                               (let ((_%e266325266556%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl266318266533%_))))
                                                 (let ((_%hd266326266560%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e266325266556%_)))
                                                       (_%tl266327266563%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e266325266556%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd266326266560%_))
                                                       (let ((_%e266328266566%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd266326266560%_))))
                 (if (equal? _%e266328266566%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl266327266563%_))
                         (let ((_%e266329266570%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl266327266563%_))))
                           (let ((_%hd266330266574%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e266329266570%_)))
                                 (_%tl266331266577%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e266329266570%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd266330266574%_))
                                 (let ((_%e266332266580%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd266330266574%_))))
                                   (let ((_%hd266333266584%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e266332266580%_)))
                                         (_%tl266334266587%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e266332266580%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd266333266584%_))
                                         (if (let ((__tmp268004
                                                    |gxc[1]#_g268005_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp268004
                                                _%hd266333266584%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl266334266587%_))
                                                 (let ((_%e266335266590%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl266334266587%_))))
                                                   (let ((_%hd266336266594%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e266335266590%_)))
                                                         (_%tl266337266597%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e266335266590%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl266337266597%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl266331266577%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl266269266367%_))
                         ((lambda (_%g266258266600%_
                                   _%g266259266602%_
                                   _%g266260266603%_
                                   _%g266261266604%_
                                   _%g266262266605%_
                                   _%g266263266606%_)
                            (let ((_%clause266677%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'make-!primitive-lambda))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%g266263266606%_
                                                           '()))
                                               (cons '#f
                                                     (cons 'signature:
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'make-!signature))
                               (cons 'return:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g266261266604%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g266258266600%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked266679%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g266259266602%_))))
                              (_%loop266221%_
                               _%rest266252%_
                               (let ((_%$e266681%_ _%unchecked266679%_))
                                 (if _%$e266681%_
                                     _%$e266681%_
                                     _%unchecked-proc266226%_))
                               (cons _%clause266677%_
                                     _%unchecked-clauses266227%_))))
                          _%hd266336266594%_
                          _%hd266323266550%_
                          _%hd266310266506%_
                          _%hd266297266462%_
                          _%hd266284266418%_
                          _%hd266265266354%_)
                         (_%g266256266343%_ _%g266257266347%_))
                     (_%g266256266343%_ _%g266257266347%_))
                 (_%g266256266343%_ _%g266257266347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g266256266343%_
                                                  _%g266257266347%_))
                                             (_%g266256266343%_
                                              _%g266257266347%_))
                                         (_%g266256266343%_
                                          _%g266257266347%_))))
                                 (_%g266256266343%_ _%g266257266347%_))))
                         (_%g266256266343%_ _%g266257266347%_))
                     (_%g266256266343%_ _%g266257266347%_)))
               (_%g266256266343%_ _%g266257266347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g266256266343%_
                                                _%g266257266347%_))
                                           (_%g266256266343%_
                                            _%g266257266347%_))))
                                   (_%g266256266343%_ _%g266257266347%_))
                               (_%g266256266343%_ _%g266257266347%_))
                           (_%g266256266343%_ _%g266257266347%_))))
                   (_%g266256266343%_ _%g266257266347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g266256266343%_
                                                    _%g266257266347%_))
                                               (_%g266256266343%_
                                                _%g266257266347%_)))
                                         (_%g266256266343%_
                                          _%g266257266347%_))))
                                 (_%g266256266343%_ _%g266257266347%_))
                             (_%g266256266343%_ _%g266257266347%_))))
                     (_%g266256266343%_ _%g266257266347%_))
                 (_%g266256266343%_ _%g266257266347%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g266256266343%_
                                                      _%g266257266347%_))))
                                             (_%g266256266343%_
                                              _%g266257266347%_))))
                                     (_%g266256266343%_ _%g266257266347%_))
                                 (_%g266256266343%_ _%g266257266347%_)))
                           (_%g266256266343%_ _%g266257266347%_))))
                   (_%g266256266343%_ _%g266257266347%_))
               (_%g266256266343%_ _%g266257266347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g266256266343%_
                                                _%g266257266347%_))
                                           (_%g266256266343%_
                                            _%g266257266347%_))
                                       (_%g266256266343%_ _%g266257266347%_))))
                               (_%g266256266343%_ _%g266257266347%_))))
                       (_%g266256266343%_ _%g266257266347%_))
                   (_%g266256266343%_ _%g266257266347%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g266256266343%_
                                                      _%g266257266347%_))))
                                             (_%g266256266343%_
                                              _%g266257266347%_))
                                         (_%g266256266343%_
                                          _%g266257266347%_))))
                                 (_%g266256266343%_ _%g266257266347%_))
                             (_%g266256266343%_ _%g266257266347%_))
                         (_%g266256266343%_ _%g266257266347%_))))
                 (_%g266256266343%_ _%g266257266347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g266256266343%_
                                                  _%g266257266347%_))
                                             (_%g266256266343%_
                                              _%g266257266347%_)))
                                       (_%g266256266343%_ _%g266257266347%_))))
                               (_%g266256266343%_ _%g266257266347%_))))
                       (_%g266256266343%_ _%g266257266347%_))))
               (_%g266256266343%_ _%g266257266347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g266256266343%_
                                                _%g266257266347%_)))))
                                   (_%g266255266685%_ _%hd266254%_)))))
                         (if (pair? _%rest266228266236%_)
                             (let ((_%hd266233266693%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest266228266236%_)))
                                   (_%tl266234266696%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest266228266236%_))))
                               (let* ((_%hd266699%_ _%hd266233266693%_)
                                      (_%rest266702%_ _%tl266234266696%_))
                                 (_%K266232266689%_
                                  _%rest266702%_
                                  _%hd266699%_)))
                             (_%else266230266248%_))))))
                (begin
                  (let ((_g267995_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g267994_)
                               (##values-length _g267994_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g267995_ 2)))
                        (error "Context expects 2 values" _g267995_)))
                  (let ((_%unchecked-proc266705%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g267994_ 0)))
                        (_%unchecked-clauses266707%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g267994_ 1))))
                    (if _%unchecked-proc266705%_
                        (let* ((_%g266709266733%_
                                (lambda (_%g266710266729%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g266710266729%_))))
                               (_%g266708266818%_
                                (lambda (_%g266710266737%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g266710266737%_))
                                      (let ((_%e266713266740%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g266710266737%_))))
                                        (let ((_%hd266714266744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e266713266740%_)))
                                              (_%tl266715266747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e266713266740%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl266715266747%_))
                                              (let ((_%e266716266750%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl266715266747%_))))
                                                (let ((_%hd266717266754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e266716266750%_)))
                                                      (_%tl266718266757%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e266716266750%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd266717266754%_))
                                                      (let ((_g268006_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd266717266754%_ '0))))
                (begin
                  (let ((_g268007_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g268006_)
                               (##values-length _g268006_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g268007_ 2)))
                        (error "Context expects 2 values" _g268007_)))
                  (let ((_%target266719266760%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g268006_ 0)))
                        (_%tl266721266763%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g268006_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl266721266763%_))
                        (letrec ((_%loop266722266766%_
                                  (lambda (_%hd266720266770%_
                                           _%clause266726266773%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd266720266770%_))
                                        (let ((_%e266723266775%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd266720266770%_))))
                                          (let ((_%lp-hd266724266779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e266723266775%_)))
                                                (_%lp-tl266725266782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e266723266775%_))))
                                            (_%loop266722266766%_
                                             _%lp-tl266725266782%_
                                             (cons _%lp-hd266724266779%_
                                                   _%clause266726266773%_))))
                                        (let ((_%clause266727266785%_
                                               (reverse _%clause266726266773%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl266718266757%_))
                                              ((lambda (_%g266711266788%_
                                                        _%g266712266790%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g266712266790%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0
                                    '#f
                                    'make-!primitive-case-lambda))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list))
                                             (let ((__tmp268008
                                                    (lambda (_%g266809266812%_
                                                             _%g266810266815%_)
                                                      (cons _%g266809266812%_
                                                            _%g266810266815%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp268008
                                                '()
                                                _%g266711266788%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause266727266785%_
                                               _%hd266714266744%_)
                                              (_%g266709266733%_
                                               _%g266710266737%_)))))))
                          (_%loop266722266766%_ _%target266719266760%_ '()))
                        (_%g266709266733%_ _%g266710266737%_)))))
              (_%g266709266733%_ _%g266710266737%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g266709266733%_
                                               _%g266710266737%_))))
                                      (_%g266709266733%_ _%g266710266737%_)))))
                          (_%g266708266818%_
                           (list _%unchecked-proc266705%_
                                 _%unchecked-clauses266707%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g266160266171%_))))
                                        (_%g266158266822%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g265945266023%_
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'make-!primitive-case-lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '@list))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%g266059266140%_
                                          _%g266060266142%_))
                                       (let ((__tmp268009
                                              (lambda (_%g266825266829%_
                                                       _%g266826266832%_
                                                       _%g266827266834%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!primitive-lambda))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%g266826266832%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g266825266829%_ '())))))
              _%g266827266834%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__1
                                          __tmp268009
                                          '()
                                          _%g266059266140%_
                                          _%g266060266142%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig266070266136%_
                                    _%arity266071266138%_))))))
                   (_%loop266064266096%_ _%target266061266090%_ '() '()))
                 (_%g266057266083%_ _%g266058266087%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g266057266083%_
                                                _%g266058266087%_)))))
                                   (_%g266056266837%_ _%signatures266054%_))
                                 (_%g265942265966%_ _%g265943265970%_)))
                           _%case-signature265960266018%_
                           _%hd265950265987%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop265955265999%_
                                                   _%target265952265993%_
                                                   '()))
                                                (_%g265942265966%_
                                                 _%g265943265970%_)))))
                                      (_%g265942265966%_ _%g265943265970%_))))
                              (_%g265942265966%_ _%g265943265970%_))))
                      (_%g265942265966%_ _%g265943265970%_)))))
          (_%g265941266841%_ _%stx265939%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx266849%_)
        (let* ((_%__stx267829267830%_ _%$stx266849%_)
               (_%g266855266915%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx267829267830%_)))))
          (let ((_%__kont267832267833%_
                 (lambda (_%g266857267137%_ _%g266858267139%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g266858267139%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g266858267139%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g266857267137%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont267834267835%_
                 (lambda (_%g266872267062%_
                          _%g266873267064%_
                          _%g266874267065%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g266874267065%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g266874267065%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g266873267064%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g266872267062%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont267836267837%_
                 (lambda (_%g266891266976%_
                          _%g266892266978%_
                          _%g266893266979%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g266893266979%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g266893266979%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g266892266978%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g266891266976%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx267829267830%_))
                (let ((_%e266859267093%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx267829267830%_))))
                  (let ((_%tl266861267100%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e266859267093%_)))
                        (_%hd266860267097%_
                         (let ()
                           (declare (not safe))
                           (##car _%e266859267093%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl266861267100%_))
                        (let ((_%e266862267103%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl266861267100%_))))
                          (let ((_%tl266864267110%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e266862267103%_)))
                                (_%hd266863267107%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e266862267103%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd266863267107%_))
                                (let ((_%e266865267113%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd266863267107%_))))
                                  (if (equal? _%e266865267113%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl266864267110%_))
                                          (let ((_%e266866267117%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl266864267110%_))))
                                            (let ((_%tl266868267124%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e266866267117%_)))
                                                  (_%hd266867267121%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e266866267117%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl266868267124%_))
                                                  (let ((_%e266869267127%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl266868267124%_))))
                                                    (let ((_%tl266871267134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e266869267127%_)))
                                                          (_%hd266870267131%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e266869267127%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl266871267134%_))
                                                          (_%__kont267832267833%_
                                                           _%hd266870267131%_
                                                           _%hd266867267121%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g266855266915%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g266855266915%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g266855266915%_)))
                                      (if (equal? _%e266865267113%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl266864267110%_))
                                              (let ((_%e266882267032%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl266864267110%_))))
                                                (let ((_%tl266884267039%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e266882267032%_)))
                                                      (_%hd266883267036%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e266882267032%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl266884267039%_))
                                                      (let ((_%e266885267042%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl266884267039%_))))
                (let ((_%tl266887267049%_
                       (let () (declare (not safe)) (##cdr _%e266885267042%_)))
                      (_%hd266886267046%_
                       (let ()
                         (declare (not safe))
                         (##car _%e266885267042%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl266887267049%_))
                      (let ((_%e266888267052%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl266887267049%_))))
                        (let ((_%tl266890267059%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e266888267052%_)))
                              (_%hd266889267056%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e266888267052%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl266890267059%_))
                              (_%__kont267834267835%_
                               _%hd266889267056%_
                               _%hd266886267046%_
                               _%hd266883267036%_)
                              (let ()
                                (declare (not safe))
                                (_%g266855266915%_)))))
                      (let () (declare (not safe)) (_%g266855266915%_)))))
              (let () (declare (not safe)) (_%g266855266915%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g266855266915%_)))
                                          (if (equal? _%e266865267113%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl266864267110%_))
                                                  (let ((_%e266901266946%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl266864267110%_))))
                                                    (let ((_%tl266903266953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e266901266946%_)))
                                                          (_%hd266902266950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e266901266946%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl266903266953%_))
                                                          (let ((_%e266904266956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl266903266953%_))))
                    (let ((_%tl266906266963%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e266904266956%_)))
                          (_%hd266905266960%_
                           (let ()
                             (declare (not safe))
                             (##car _%e266904266956%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl266906266963%_))
                          (let ((_%e266907266966%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl266906266963%_))))
                            (let ((_%tl266909266973%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e266907266966%_)))
                                  (_%hd266908266970%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e266907266966%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl266909266973%_))
                                  (_%__kont267836267837%_
                                   _%hd266908266970%_
                                   _%hd266905266960%_
                                   _%hd266902266950%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g266855266915%_)))))
                          (let () (declare (not safe)) (_%g266855266915%_)))))
                  (let () (declare (not safe)) (_%g266855266915%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g266855266915%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g266855266915%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g266855266915%_)))))
                        (let () (declare (not safe)) (_%g266855266915%_)))))
                (let () (declare (not safe)) (_%g266855266915%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx267161%_)
        (let* ((_%g267165267185%_
                (lambda (_%g267166267181%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g267166267181%_))))
               (_%g267164267254%_
                (lambda (_%g267166267189%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g267166267189%_))
                      (let ((_%e267168267192%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g267166267189%_))))
                        (let ((_%hd267169267196%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e267168267192%_)))
                              (_%tl267170267199%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e267168267192%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl267170267199%_))
                              (let ((_g268010_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl267170267199%_
                                        '0))))
                                (begin
                                  (let ((_g268011_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g268010_)
                                               (##values-length _g268010_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g268011_ 2)))
                                        (error "Context expects 2 values"
                                               _g268011_)))
                                  (let ((_%target267171267202%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g268010_ 0)))
                                        (_%tl267173267205%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g268010_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl267173267205%_))
                                        (letrec ((_%loop267174267208%_
                                                  (lambda (_%hd267172267212%_
                                                           _%decl267178267215%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd267172267212%_))
                                                        (let ((_%e267175267217%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd267172267212%_))))
                  (let ((_%lp-hd267176267221%_
                         (let ()
                           (declare (not safe))
                           (##car _%e267175267217%_)))
                        (_%lp-tl267177267224%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e267175267217%_))))
                    (_%loop267174267208%_
                     _%lp-tl267177267224%_
                     (cons _%lp-hd267176267221%_ _%decl267178267215%_))))
                (let ((_%decl267179267227%_ (reverse _%decl267178267215%_)))
                  ((lambda (_%g267167267230%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp268012
                                  (lambda (_%g267245267248%_ _%g267246267251%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g267245267248%_)
                                          _%g267246267251%_))))
                             (declare (not safe))
                             (foldr__0 __tmp268012 '() _%g267167267230%_))))
                   _%decl267179267227%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop267174267208%_
                                           _%target267171267202%_
                                           '()))
                                        (_%g267165267185%_
                                         _%g267166267189%_)))))
                              (_%g267165267185%_ _%g267166267189%_))))
                      (_%g267165267185%_ _%g267166267189%_)))))
          (_%g267164267254%_ _%$stx267161%_))))))
