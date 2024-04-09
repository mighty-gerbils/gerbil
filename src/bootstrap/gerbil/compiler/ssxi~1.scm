(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g202013_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202020_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202022_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202024_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202026_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202028_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202040_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202042_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202044_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202046_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202048_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx195431%_)
        (let* ((_%g195435195453%_
                (lambda (_%g195436195449%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195436195449%_))))
               (_%g195434195508%_
                (lambda (_%g195436195457%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195436195457%_))
                      (let ((_%e195439195460%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195436195457%_))))
                        (let ((_%hd195440195464%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195439195460%_)))
                              (_%tl195441195467%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195439195460%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195441195467%_))
                              (let ((_%e195442195470%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195441195467%_))))
                                (let ((_%hd195443195474%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195442195470%_)))
                                      (_%tl195444195477%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195442195470%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195444195477%_))
                                      (let ((_%e195445195480%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195444195477%_))))
                                        (let ((_%hd195446195484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195445195480%_)))
                                              (_%tl195447195487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195445195480%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195447195487%_))
                                              ((lambda (_%L195490%_
                                                        _%L195492%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L195492%_))
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
                               (cons _%L195492%_ '()))
                         (cons _%L195490%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g195435195453%_
                                                      _%g195436195457%_)))
                                               _%hd195446195484%_
                                               _%hd195443195474%_)
                                              (_%g195435195453%_
                                               _%g195436195457%_))))
                                      (_%g195435195453%_ _%g195436195457%_))))
                              (_%g195435195453%_ _%g195436195457%_))))
                      (_%g195435195453%_ _%g195436195457%_)))))
          (_%g195434195508%_ _%$stx195431%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx195512%_)
        (let* ((_%g195516195534%_
                (lambda (_%g195517195530%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195517195530%_))))
               (_%g195515195589%_
                (lambda (_%g195517195538%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195517195538%_))
                      (let ((_%e195520195541%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195517195538%_))))
                        (let ((_%hd195521195545%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195520195541%_)))
                              (_%tl195522195548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195520195541%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195522195548%_))
                              (let ((_%e195523195551%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195522195548%_))))
                                (let ((_%hd195524195555%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195523195551%_)))
                                      (_%tl195525195558%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195523195551%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195525195558%_))
                                      (let ((_%e195526195561%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195525195558%_))))
                                        (let ((_%hd195527195565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195526195561%_)))
                                              (_%tl195528195568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195526195561%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195528195568%_))
                                              ((lambda (_%L195571%_
                                                        _%L195573%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L195573%_))
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
                               (cons _%L195573%_ '()))
                         (cons _%L195571%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g195516195534%_
                                                      _%g195517195538%_)))
                                               _%hd195527195565%_
                                               _%hd195524195555%_)
                                              (_%g195516195534%_
                                               _%g195517195538%_))))
                                      (_%g195516195534%_ _%g195517195538%_))))
                              (_%g195516195534%_ _%g195517195538%_))))
                      (_%g195516195534%_ _%g195517195538%_)))))
          (_%g195515195589%_ _%$stx195512%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx195593%_)
        (let* ((_%g195597195626%_
                (lambda (_%g195598195622%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195598195622%_))))
               (_%g195596195726%_
                (lambda (_%g195598195630%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195598195630%_))
                      (let ((_%e195601195633%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195598195630%_))))
                        (let ((_%hd195602195637%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195601195633%_)))
                              (_%tl195603195640%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195601195633%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195603195640%_))
                              (let ((_g201991_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195603195640%_
                                        '0))))
                                (begin
                                  (let ((_g201992_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201991_)
                                               (##vector-length _g201991_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201992_ 2)))
                                        (error "Context expects 2 values"
                                               _g201992_)))
                                  (let ((_%target195604195643%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201991_ 0)))
                                        (_%tl195606195646%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201991_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195606195646%_))
                                        (letrec ((_%loop195607195649%_
                                                  (lambda (_%hd195605195653%_
                                                           _%type195611195656%_
                                                           _%symbol195612195658%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195605195653%_))
                                                        (let ((_%e195608195661%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195605195653%_))))
                  (let ((_%lp-hd195609195665%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195608195661%_)))
                        (_%lp-tl195610195668%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195608195661%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195609195665%_))
                        (let ((_%e195615195671%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195609195665%_))))
                          (let ((_%hd195616195675%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195615195671%_)))
                                (_%tl195617195678%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195615195671%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195617195678%_))
                                (let ((_%e195618195681%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl195617195678%_))))
                                  (let ((_%hd195619195685%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195618195681%_)))
                                        (_%tl195620195688%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195618195681%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195620195688%_))
                                        (_%loop195607195649%_
                                         _%lp-tl195610195668%_
                                         (cons _%hd195619195685%_
                                               _%type195611195656%_)
                                         (cons _%hd195616195675%_
                                               _%symbol195612195658%_))
                                        (_%g195597195626%_
                                         _%g195598195630%_))))
                                (_%g195597195626%_ _%g195598195630%_))))
                        (_%g195597195626%_ _%g195598195630%_))))
                (let ((_%type195613195691%_ (reverse _%type195611195656%_))
                      (_%symbol195614195694%_
                       (reverse _%symbol195612195658%_)))
                  ((lambda (_%L195697%_ _%L195699%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L195697%_
                                _%L195699%_))
                             (let ((__tmp201993
                                    (lambda (_%g195714195718%_
                                             _%g195715195721%_
                                             _%g195716195723%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g195715195721%_
                                                        (cons _%g195714195718%_
                                                              '())))
                                            _%g195716195723%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201993
                                '()
                                _%L195697%_
                                _%L195699%_)))))
                   _%type195613195691%_
                   _%symbol195614195694%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195607195649%_
                                           _%target195604195643%_
                                           '()
                                           '()))
                                        (_%g195597195626%_
                                         _%g195598195630%_)))))
                              (_%g195597195626%_ _%g195598195630%_))))
                      (_%g195597195626%_ _%g195598195630%_)))))
          (_%g195596195726%_ _%$stx195593%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx195731%_)
        (let* ((_%__stx201302201303%_ _%$stx195731%_)
               (_%g195736195778%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201302201303%_)))))
          (let ((_%__kont201305201306%_
                 (lambda (_%L195906%_ _%L195908%_ _%L195909%_ _%L195910%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L195910%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L195909%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L195908%_ '()))
                                           (cons _%L195906%_ '())))))))
                (_%__kont201307201308%_
                 (lambda (_%L195825%_ _%L195827%_ _%L195828%_ _%L195829%_)
                   (cons _%L195829%_
                         (cons _%L195828%_
                               (cons _%L195827%_
                                     (cons _%L195825%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match201341201342%_
                   (lambda (_%e195742195856%_
                            _%hd195743195860%_
                            _%tl195744195863%_
                            _%e195745195866%_
                            _%hd195746195870%_
                            _%tl195747195873%_
                            _%e195748195876%_
                            _%hd195749195880%_
                            _%tl195750195883%_
                            _%e195751195886%_
                            _%hd195752195890%_
                            _%tl195753195893%_
                            _%e195754195896%_
                            _%hd195755195900%_
                            _%tl195756195903%_)
                     (let ((_%L195906%_ _%hd195755195900%_)
                           (_%L195908%_ _%hd195752195890%_)
                           (_%L195909%_ _%hd195749195880%_)
                           (_%L195910%_ _%hd195746195870%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195910%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195909%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195908%_)))
                           (_%__kont201305201306%_
                            _%L195906%_
                            _%L195908%_
                            _%L195909%_
                            _%L195910%_)
                           (let ()
                             (declare (not safe))
                             (_%g195736195778%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201302201303%_))
                  (let ((_%e195742195856%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201302201303%_))))
                    (let ((_%tl195744195863%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195742195856%_)))
                          (_%hd195743195860%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195742195856%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195744195863%_))
                          (let ((_%e195745195866%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl195744195863%_))))
                            (let ((_%tl195747195873%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195745195866%_)))
                                  (_%hd195746195870%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195745195866%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195747195873%_))
                                  (let ((_%e195748195876%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl195747195873%_))))
                                    (let ((_%tl195750195883%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195748195876%_)))
                                          (_%hd195749195880%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195748195876%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl195750195883%_))
                                          (let ((_%e195751195886%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl195750195883%_))))
                                            (let ((_%tl195753195893%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e195751195886%_)))
                                                  (_%hd195752195890%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e195751195886%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195753195893%_))
                                                  (let ((_%e195754195896%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl195753195893%_))))
                                                    (let ((_%tl195756195903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195754195896%_)))
                                                          (_%hd195755195900%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195754195896%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195756195903%_))
                                                          (_%__match201341201342%_
                                                           _%e195742195856%_
                                                           _%hd195743195860%_
                                                           _%tl195744195863%_
                                                           _%e195745195866%_
                                                           _%hd195746195870%_
                                                           _%tl195747195873%_
                                                           _%e195748195876%_
                                                           _%hd195749195880%_
                                                           _%tl195750195883%_
                                                           _%e195751195886%_
                                                           _%hd195752195890%_
                                                           _%tl195753195893%_
                                                           _%e195754195896%_
                                                           _%hd195755195900%_
                                                           _%tl195756195903%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g195736195778%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195753195893%_))
                                                      (_%__kont201307201308%_
                                                       _%hd195752195890%_
                                                       _%hd195749195880%_
                                                       _%hd195746195870%_
                                                       _%hd195743195860%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g195736195778%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g195736195778%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g195736195778%_)))))
                          (let () (declare (not safe)) (_%g195736195778%_)))))
                  (let () (declare (not safe)) (_%g195736195778%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx195935%_)
        (let* ((_%g195939195974%_
                (lambda (_%g195940195970%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195940195970%_))))
               (_%g195938196093%_
                (lambda (_%g195940195978%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195940195978%_))
                      (let ((_%e195944195981%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195940195978%_))))
                        (let ((_%hd195945195985%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195944195981%_)))
                              (_%tl195946195988%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195944195981%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195946195988%_))
                              (let ((_g201994_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195946195988%_
                                        '0))))
                                (begin
                                  (let ((_g201995_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201994_)
                                               (##vector-length _g201994_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201995_ 2)))
                                        (error "Context expects 2 values"
                                               _g201995_)))
                                  (let ((_%target195947195991%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201994_ 0)))
                                        (_%tl195949195994%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201994_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195949195994%_))
                                        (letrec ((_%loop195950195997%_
                                                  (lambda (_%hd195948196001%_
                                                           _%symbol195954196004%_
                                                           _%method195955196006%_
                                                           _%type-t195956196008%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195948196001%_))
                                                        (let ((_%e195951196011%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195948196001%_))))
                  (let ((_%lp-hd195952196015%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195951196011%_)))
                        (_%lp-tl195953196018%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195951196011%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195952196015%_))
                        (let ((_%e195960196021%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195952196015%_))))
                          (let ((_%hd195961196025%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195960196021%_)))
                                (_%tl195962196028%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195960196021%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195962196028%_))
                                (let ((_%e195963196031%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl195962196028%_))))
                                  (let ((_%hd195964196035%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195963196031%_)))
                                        (_%tl195965196038%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195963196031%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195965196038%_))
                                        (let ((_%e195966196041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl195965196038%_))))
                                          (let ((_%hd195967196045%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195966196041%_)))
                                                (_%tl195968196048%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195966196041%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195968196048%_))
                                                (_%loop195950195997%_
                                                 _%lp-tl195953196018%_
                                                 (cons _%hd195967196045%_
                                                       _%symbol195954196004%_)
                                                 (cons _%hd195964196035%_
                                                       _%method195955196006%_)
                                                 (cons _%hd195961196025%_
                                                       _%type-t195956196008%_))
                                                (_%g195939195974%_
                                                 _%g195940195978%_))))
                                        (_%g195939195974%_
                                         _%g195940195978%_))))
                                (_%g195939195974%_ _%g195940195978%_))))
                        (_%g195939195974%_ _%g195940195978%_))))
                (let ((_%symbol195957196051%_ (reverse _%symbol195954196004%_))
                      (_%method195958196054%_ (reverse _%method195955196006%_))
                      (_%type-t195959196056%_
                       (reverse _%type-t195956196008%_)))
                  ((lambda (_%L196059%_ _%L196061%_ _%L196062%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196059%_
                                _%L196061%_
                                _%L196062%_))
                             (let ((__tmp201996
                                    (lambda (_%g196078196083%_
                                             _%g196079196086%_
                                             _%g196080196088%_
                                             _%g196081196090%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g196080196088%_
                                                        (cons _%g196079196086%_
                                                              (cons _%g196078196083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g196081196090%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp201996
                                '()
                                _%L196059%_
                                _%L196061%_
                                _%L196062%_)))))
                   _%symbol195957196051%_
                   _%method195958196054%_
                   _%type-t195959196056%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195950195997%_
                                           _%target195947195991%_
                                           '()
                                           '()
                                           '()))
                                        (_%g195939195974%_
                                         _%g195940195978%_)))))
                              (_%g195939195974%_ _%g195940195978%_))))
                      (_%g195939195974%_ _%g195940195978%_)))))
          (_%g195938196093%_ _%$stx195935%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx196098%_)
        (let* ((_%g196102196135%_
                (lambda (_%g196103196131%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196103196131%_))))
               (_%g196101196249%_
                (lambda (_%g196103196139%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196103196139%_))
                      (let ((_%e196107196142%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196103196139%_))))
                        (let ((_%hd196108196146%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196107196142%_)))
                              (_%tl196109196149%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196107196142%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196109196149%_))
                              (let ((_%e196110196152%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196109196149%_))))
                                (let ((_%hd196111196156%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196110196152%_)))
                                      (_%tl196112196159%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196110196152%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196112196159%_))
                                      (let ((_g201997_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196112196159%_
                                                '0))))
                                        (begin
                                          (let ((_g201998_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201997_)
                                                       (##vector-length
                                                        _g201997_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201998_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201998_)))
                                          (let ((_%target196113196162%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201997_ 0)))
                                                (_%tl196115196165%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201997_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196115196165%_))
                                                (letrec ((_%loop196116196168%_
                                                          (lambda (_%hd196114196172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol196120196175%_
                           _%method196121196177%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd196114196172%_))
                        (let ((_%e196117196180%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd196114196172%_))))
                          (let ((_%lp-hd196118196184%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196117196180%_)))
                                (_%lp-tl196119196187%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196117196180%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd196118196184%_))
                                (let ((_%e196124196190%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd196118196184%_))))
                                  (let ((_%hd196125196194%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196124196190%_)))
                                        (_%tl196126196197%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196124196190%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196126196197%_))
                                        (let ((_%e196127196200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196126196197%_))))
                                          (let ((_%hd196128196204%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196127196200%_)))
                                                (_%tl196129196207%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196127196200%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196129196207%_))
                                                (_%loop196116196168%_
                                                 _%lp-tl196119196187%_
                                                 (cons _%hd196128196204%_
                                                       _%symbol196120196175%_)
                                                 (cons _%hd196125196194%_
                                                       _%method196121196177%_))
                                                (_%g196102196135%_
                                                 _%g196103196139%_))))
                                        (_%g196102196135%_
                                         _%g196103196139%_))))
                                (_%g196102196135%_ _%g196103196139%_))))
                        (let ((_%symbol196122196210%_
                               (reverse _%symbol196120196175%_))
                              (_%method196123196213%_
                               (reverse _%method196121196177%_)))
                          ((lambda (_%L196216%_ _%L196218%_ _%L196219%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L196216%_
                                        _%L196218%_))
                                     (let ((__tmp201999
                                            (lambda (_%g196237196241%_
                                                     _%g196238196244%_
                                                     _%g196239196246%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L196219%_
                                                                (cons _%g196238196244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g196237196241%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g196239196246%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp201999
                                        '()
                                        _%L196216%_
                                        _%L196218%_)))))
                           _%symbol196122196210%_
                           _%method196123196213%_
                           _%hd196111196156%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop196116196168%_
                                                   _%target196113196162%_
                                                   '()
                                                   '()))
                                                (_%g196102196135%_
                                                 _%g196103196139%_)))))
                                      (_%g196102196135%_ _%g196103196139%_))))
                              (_%g196102196135%_ _%g196103196139%_))))
                      (_%g196102196135%_ _%g196103196139%_)))))
          (_%g196101196249%_ _%$stx196098%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx196254%_)
        (let* ((_%g196258196272%_
                (lambda (_%g196259196268%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196259196268%_))))
               (_%g196257196313%_
                (lambda (_%g196259196276%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196259196276%_))
                      (let ((_%e196261196279%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196259196276%_))))
                        (let ((_%hd196262196283%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196261196279%_)))
                              (_%tl196263196286%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196261196279%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196263196286%_))
                              (let ((_%e196264196289%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196263196286%_))))
                                (let ((_%hd196265196293%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196264196289%_)))
                                      (_%tl196266196296%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196264196289%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196266196296%_))
                                      ((lambda (_%L196299%_)
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
                                                           (cons _%L196299%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196265196293%_)
                                      (_%g196258196272%_ _%g196259196276%_))))
                              (_%g196258196272%_ _%g196259196276%_))))
                      (_%g196258196272%_ _%g196259196276%_)))))
          (_%g196257196313%_ _%$stx196254%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx196317%_)
        (let* ((_%g196321196375%_
                (lambda (_%g196322196371%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196322196371%_))))
               (_%g196320196556%_
                (lambda (_%g196322196379%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196322196379%_))
                      (let ((_%e196334196382%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196322196379%_))))
                        (let ((_%hd196335196386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196334196382%_)))
                              (_%tl196336196389%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196334196382%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196336196389%_))
                              (let ((_%e196337196392%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196336196389%_))))
                                (let ((_%hd196338196396%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196337196392%_)))
                                      (_%tl196339196399%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196337196392%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196339196399%_))
                                      (let ((_%e196340196402%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196339196399%_))))
                                        (let ((_%hd196341196406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196340196402%_)))
                                              (_%tl196342196409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196340196402%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196342196409%_))
                                              (let ((_%e196343196412%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196342196409%_))))
                                                (let ((_%hd196344196416%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196343196412%_)))
                                                      (_%tl196345196419%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196343196412%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196345196419%_))
                                                      (let ((_%e196346196422%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl196345196419%_))))
                (let ((_%hd196347196426%_
                       (let () (declare (not safe)) (##car _%e196346196422%_)))
                      (_%tl196348196429%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e196346196422%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196348196429%_))
                      (let ((_%e196349196432%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196348196429%_))))
                        (let ((_%hd196350196436%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196349196432%_)))
                              (_%tl196351196439%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196349196432%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196351196439%_))
                              (let ((_%e196352196442%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196351196439%_))))
                                (let ((_%hd196353196446%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196352196442%_)))
                                      (_%tl196354196449%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196352196442%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196354196449%_))
                                      (let ((_%e196355196452%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196354196449%_))))
                                        (let ((_%hd196356196456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196355196452%_)))
                                              (_%tl196357196459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196355196452%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196357196459%_))
                                              (let ((_%e196358196462%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196357196459%_))))
                                                (let ((_%hd196359196466%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196358196462%_)))
                                                      (_%tl196360196469%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196358196462%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196360196469%_))
                                                      (let ((_%e196361196472%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl196360196469%_))))
                (let ((_%hd196362196476%_
                       (let () (declare (not safe)) (##car _%e196361196472%_)))
                      (_%tl196363196479%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e196361196472%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196363196479%_))
                      (let ((_%e196364196482%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196363196479%_))))
                        (let ((_%hd196365196486%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196364196482%_)))
                              (_%tl196366196489%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196364196482%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196366196489%_))
                              (let ((_%e196367196492%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196366196489%_))))
                                (let ((_%hd196368196496%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196367196492%_)))
                                      (_%tl196369196499%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196367196492%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196369196499%_))
                                      ((lambda (_%L196502%_
                                                _%L196504%_
                                                _%L196505%_
                                                _%L196506%_
                                                _%L196507%_
                                                _%L196508%_
                                                _%L196509%_
                                                _%L196510%_
                                                _%L196511%_
                                                _%L196512%_
                                                _%L196513%_)
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
                                                           (cons _%L196513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L196512%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L196511%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196510%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196509%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L196508%_ '()))
                                           (cons _%L196507%_
                                                 (cons _%L196506%_
                                                       (cons _%L196505%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196504%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L196502%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd196368196496%_
                                       _%hd196365196486%_
                                       _%hd196362196476%_
                                       _%hd196359196466%_
                                       _%hd196356196456%_
                                       _%hd196353196446%_
                                       _%hd196350196436%_
                                       _%hd196347196426%_
                                       _%hd196344196416%_
                                       _%hd196341196406%_
                                       _%hd196338196396%_)
                                      (_%g196321196375%_ _%g196322196379%_))))
                              (_%g196321196375%_ _%g196322196379%_))))
                      (_%g196321196375%_ _%g196322196379%_))))
              (_%g196321196375%_ _%g196322196379%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196321196375%_
                                               _%g196322196379%_))))
                                      (_%g196321196375%_ _%g196322196379%_))))
                              (_%g196321196375%_ _%g196322196379%_))))
                      (_%g196321196375%_ _%g196322196379%_))))
              (_%g196321196375%_ _%g196322196379%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196321196375%_
                                               _%g196322196379%_))))
                                      (_%g196321196375%_ _%g196322196379%_))))
                              (_%g196321196375%_ _%g196322196379%_))))
                      (_%g196321196375%_ _%g196322196379%_)))))
          (_%g196320196556%_ _%$stx196317%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx196560%_)
        (let* ((_%g196564196578%_
                (lambda (_%g196565196574%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196565196574%_))))
               (_%g196563196619%_
                (lambda (_%g196565196582%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196565196582%_))
                      (let ((_%e196567196585%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196565196582%_))))
                        (let ((_%hd196568196589%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196567196585%_)))
                              (_%tl196569196592%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196567196585%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196569196592%_))
                              (let ((_%e196570196595%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196569196592%_))))
                                (let ((_%hd196571196599%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196570196595%_)))
                                      (_%tl196572196602%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196570196595%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196572196602%_))
                                      ((lambda (_%L196605%_)
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
                                                           (cons _%L196605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196571196599%_)
                                      (_%g196564196578%_ _%g196565196582%_))))
                              (_%g196564196578%_ _%g196565196582%_))))
                      (_%g196564196578%_ _%g196565196582%_)))))
          (_%g196563196619%_ _%$stx196560%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx196623%_)
        (let* ((_%g196627196641%_
                (lambda (_%g196628196637%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196628196637%_))))
               (_%g196626196682%_
                (lambda (_%g196628196645%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196628196645%_))
                      (let ((_%e196630196648%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196628196645%_))))
                        (let ((_%hd196631196652%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196630196648%_)))
                              (_%tl196632196655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196630196648%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196632196655%_))
                              (let ((_%e196633196658%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196632196655%_))))
                                (let ((_%hd196634196662%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196633196658%_)))
                                      (_%tl196635196665%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196633196658%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196635196665%_))
                                      ((lambda (_%L196668%_)
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
                                                           (cons _%L196668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196634196662%_)
                                      (_%g196627196641%_ _%g196628196645%_))))
                              (_%g196627196641%_ _%g196628196645%_))))
                      (_%g196627196641%_ _%g196628196645%_)))))
          (_%g196626196682%_ _%$stx196623%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx196686%_)
        (let* ((_%g196690196712%_
                (lambda (_%g196691196708%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196691196708%_))))
               (_%g196689196781%_
                (lambda (_%g196691196716%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196691196716%_))
                      (let ((_%e196695196719%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196691196716%_))))
                        (let ((_%hd196696196723%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196695196719%_)))
                              (_%tl196697196726%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196695196719%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196697196726%_))
                              (let ((_%e196698196729%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196697196726%_))))
                                (let ((_%hd196699196733%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196698196729%_)))
                                      (_%tl196700196736%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196698196729%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196700196736%_))
                                      (let ((_%e196701196739%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196700196736%_))))
                                        (let ((_%hd196702196743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196701196739%_)))
                                              (_%tl196703196746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196701196739%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196703196746%_))
                                              (let ((_%e196704196749%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196703196746%_))))
                                                (let ((_%hd196705196753%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196704196749%_)))
                                                      (_%tl196706196756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196704196749%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196706196756%_))
                                                      ((lambda (_%L196759%_
                                                                _%L196761%_
                                                                _%L196762%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196762%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196761%_ '()))
                                   (cons _%L196759%_ '())))))
               _%hd196705196753%_
               _%hd196702196743%_
               _%hd196699196733%_)
              (_%g196690196712%_ _%g196691196716%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196690196712%_
                                               _%g196691196716%_))))
                                      (_%g196690196712%_ _%g196691196716%_))))
                              (_%g196690196712%_ _%g196691196716%_))))
                      (_%g196690196712%_ _%g196691196716%_)))))
          (_%g196689196781%_ _%$stx196686%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx196785%_)
        (let* ((_%g196789196811%_
                (lambda (_%g196790196807%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196790196807%_))))
               (_%g196788196880%_
                (lambda (_%g196790196815%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196790196815%_))
                      (let ((_%e196794196818%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196790196815%_))))
                        (let ((_%hd196795196822%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196794196818%_)))
                              (_%tl196796196825%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196794196818%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196796196825%_))
                              (let ((_%e196797196828%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196796196825%_))))
                                (let ((_%hd196798196832%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196797196828%_)))
                                      (_%tl196799196835%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196797196828%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196799196835%_))
                                      (let ((_%e196800196838%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196799196835%_))))
                                        (let ((_%hd196801196842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196800196838%_)))
                                              (_%tl196802196845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196800196838%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196802196845%_))
                                              (let ((_%e196803196848%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196802196845%_))))
                                                (let ((_%hd196804196852%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196803196848%_)))
                                                      (_%tl196805196855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196803196848%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196805196855%_))
                                                      ((lambda (_%L196858%_
                                                                _%L196860%_
                                                                _%L196861%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196861%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196860%_ '()))
                                   (cons _%L196858%_ '())))))
               _%hd196804196852%_
               _%hd196801196842%_
               _%hd196798196832%_)
              (_%g196789196811%_ _%g196790196815%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196789196811%_
                                               _%g196790196815%_))))
                                      (_%g196789196811%_ _%g196790196815%_))))
                              (_%g196789196811%_ _%g196790196815%_))))
                      (_%g196789196811%_ _%g196790196815%_)))))
          (_%g196788196880%_ _%$stx196785%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx196884%_)
        (let* ((_%g196888196902%_
                (lambda (_%g196889196898%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196889196898%_))))
               (_%g196887196943%_
                (lambda (_%g196889196906%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196889196906%_))
                      (let ((_%e196891196909%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196889196906%_))))
                        (let ((_%hd196892196913%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196891196909%_)))
                              (_%tl196893196916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196891196909%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196893196916%_))
                              (let ((_%e196894196919%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196893196916%_))))
                                (let ((_%hd196895196923%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196894196919%_)))
                                      (_%tl196896196926%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196894196919%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196896196926%_))
                                      ((lambda (_%L196929%_)
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
                                                           (cons _%L196929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196895196923%_)
                                      (_%g196888196902%_ _%g196889196906%_))))
                              (_%g196888196902%_ _%g196889196906%_))))
                      (_%g196888196902%_ _%g196889196906%_)))))
          (_%g196887196943%_ _%$stx196884%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx196947%_)
        (let* ((_%g196951196969%_
                (lambda (_%g196952196965%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196952196965%_))))
               (_%g196950197024%_
                (lambda (_%g196952196973%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196952196973%_))
                      (let ((_%e196955196976%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196952196973%_))))
                        (let ((_%hd196956196980%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196955196976%_)))
                              (_%tl196957196983%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196955196976%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196957196983%_))
                              (let ((_%e196958196986%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196957196983%_))))
                                (let ((_%hd196959196990%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196958196986%_)))
                                      (_%tl196960196993%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196958196986%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196960196993%_))
                                      (let ((_%e196961196996%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196960196993%_))))
                                        (let ((_%hd196962197000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196961196996%_)))
                                              (_%tl196963197003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196961196996%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196963197003%_))
                                              ((lambda (_%L197006%_
                                                        _%L197008%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197008%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197006%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196962197000%_
                                               _%hd196959196990%_)
                                              (_%g196951196969%_
                                               _%g196952196973%_))))
                                      (_%g196951196969%_ _%g196952196973%_))))
                              (_%g196951196969%_ _%g196952196973%_))))
                      (_%g196951196969%_ _%g196952196973%_)))))
          (_%g196950197024%_ _%$stx196947%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx197028%_)
        (let* ((_%__stx201370201371%_ _%$stx197028%_)
               (_%g197035197096%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201370201371%_)))))
          (let ((_%__kont201373201374%_
                 (lambda (_%L197334%_ _%L197336%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197336%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197334%_ '()))
                                     '())))))
                (_%__kont201375201376%_
                 (lambda (_%L197273%_ _%L197275%_ _%L197276%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197276%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197275%_ '()))
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
                                 (cons _%L197273%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont201377201378%_
                 (lambda (_%L197197%_ _%L197199%_)
                   (cons _%L197199%_ (cons _%L197197%_ (cons '#f '())))))
                (_%__kont201379201380%_
                 (lambda (_%L197147%_ _%L197149%_ _%L197150%_)
                   (cons _%L197150%_
                         (cons _%L197149%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L197147%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201370201371%_))
                (let ((_%e197039197304%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201370201371%_))))
                  (let ((_%tl197041197311%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197039197304%_)))
                        (_%hd197040197308%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197039197304%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197041197311%_))
                        (let ((_%e197042197314%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl197041197311%_))))
                          (let ((_%tl197044197321%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197042197314%_)))
                                (_%hd197043197318%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197042197314%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197044197321%_))
                                (let ((_%e197045197324%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197044197321%_))))
                                  (let ((_%tl197047197331%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197045197324%_)))
                                        (_%hd197046197328%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197045197324%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197047197331%_))
                                        (_%__kont201373201374%_
                                         _%hd197046197328%_
                                         _%hd197043197318%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197047197331%_))
                                            (let ((_%e197060197249%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197047197331%_))))
                                              (let ((_%tl197062197256%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197060197249%_)))
                                                    (_%hd197061197253%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197060197249%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd197061197253%_))
                                                    (let ((_%e197063197259%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd197061197253%_))))
                                                      (if (equal? _%e197063197259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197062197256%_))
                      (let ((_%e197064197263%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197062197256%_))))
                        (let ((_%tl197066197270%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197064197263%_)))
                              (_%hd197065197267%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197064197263%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197066197270%_))
                              (_%__kont201375201376%_
                               _%hd197065197267%_
                               _%hd197046197328%_
                               _%hd197043197318%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd197046197328%_))
                                  (let ((_%e197087197133%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197046197328%_))))
                                    (declare (not safe))
                                    (_%g197035197096%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197035197096%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd197046197328%_))
                          (let ((_%e197087197133%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197046197328%_))))
                            (if (equal? _%e197087197133%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197062197256%_))
                                    (_%__kont201379201380%_
                                     _%hd197061197253%_
                                     _%hd197043197318%_
                                     _%hd197040197308%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197035197096%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g197035197096%_))))
                          (let () (declare (not safe)) (_%g197035197096%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd197046197328%_))
                      (let ((_%e197087197133%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197046197328%_))))
                        (if (equal? _%e197087197133%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197062197256%_))
                                (_%__kont201379201380%_
                                 _%hd197061197253%_
                                 _%hd197043197318%_
                                 _%hd197040197308%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g197035197096%_)))
                            (let () (declare (not safe)) (_%g197035197096%_))))
                      (let () (declare (not safe)) (_%g197035197096%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd197046197328%_))
                                                        (let ((_%e197087197133%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd197046197328%_))))
                  (if (equal? _%e197087197133%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197062197256%_))
                          (_%__kont201379201380%_
                           _%hd197061197253%_
                           _%hd197043197318%_
                           _%hd197040197308%_)
                          (let () (declare (not safe)) (_%g197035197096%_)))
                      (let () (declare (not safe)) (_%g197035197096%_))))
                (let () (declare (not safe)) (_%g197035197096%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd197046197328%_))
                                                (let ((_%e197087197133%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd197046197328%_))))
                                                  (declare (not safe))
                                                  (_%g197035197096%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197035197096%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197044197321%_))
                                    (_%__kont201377201378%_
                                     _%hd197043197318%_
                                     _%hd197040197308%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197035197096%_))))))
                        (let () (declare (not safe)) (_%g197035197096%_)))))
                (let () (declare (not safe)) (_%g197035197096%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx197355%_)
        (let* ((_%g197359197388%_
                (lambda (_%g197360197384%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197360197384%_))))
               (_%g197358197497%_
                (lambda (_%g197360197392%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197360197392%_))
                      (let ((_%e197362197395%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197360197392%_))))
                        (let ((_%hd197363197399%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197362197395%_)))
                              (_%tl197364197402%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197362197395%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197364197402%_))
                              (let ((_g202000_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197364197402%_
                                        '0))))
                                (begin
                                  (let ((_g202001_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202000_)
                                               (##vector-length _g202000_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202001_ 2)))
                                        (error "Context expects 2 values"
                                               _g202001_)))
                                  (let ((_%target197365197405%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202000_ 0)))
                                        (_%tl197367197408%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202000_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197367197408%_))
                                        (letrec ((_%loop197368197411%_
                                                  (lambda (_%hd197366197415%_
                                                           _%clause197372197418%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197366197415%_))
                                                        (let ((_%e197369197421%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197366197415%_))))
                  (let ((_%lp-hd197370197425%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197369197421%_)))
                        (_%lp-tl197371197428%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197369197421%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd197370197425%_))
                        (let ((_g202002_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd197370197425%_
                                  '0))))
                          (begin
                            (let ((_g202003_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g202002_)
                                         (##vector-length _g202002_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g202003_ 2)))
                                  (error "Context expects 2 values"
                                         _g202003_)))
                            (let ((_%target197374197431%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202002_ 0)))
                                  (_%tl197376197434%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202002_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197376197434%_))
                                  (letrec ((_%loop197377197437%_
                                            (lambda (_%hd197375197441%_
                                                     _%clause197381197444%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd197375197441%_))
                                                  (let ((_%e197378197447%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd197375197441%_))))
                                                    (let ((_%lp-hd197379197451%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197378197447%_)))
                                                          (_%lp-tl197380197454%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197378197447%_))))
                                                      (_%loop197377197437%_
                                                       _%lp-tl197380197454%_
                                                       (cons _%lp-hd197379197451%_
                                                             _%clause197381197444%_))))
                                                  (let ((_%clause197382197457%_
                                                         (reverse _%clause197381197444%_)))
                                                    (_%loop197368197411%_
                                                     _%lp-tl197371197428%_
                                                     (cons _%clause197382197457%_
                                                           _%clause197372197418%_)))))))
                                    (_%loop197377197437%_
                                     _%target197374197431%_
                                     '()))
                                  (_%g197359197388%_ _%g197360197392%_)))))
                        (_%g197359197388%_ _%g197360197392%_))))
                (let ((_%clause197373197461%_
                       (reverse _%clause197372197418%_)))
                  ((lambda (_%L197465%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp202004
                                              (lambda (_%g197480197485%_
                                                       _%g197481197488%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp202005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g197482197491%_ _%g197483197494%_)
                             (cons _%g197482197491%_ _%g197483197494%_))))
                      (declare (not safe))
                      (__foldr1 __tmp202005 '() _%g197480197485%_)))
              _%g197481197488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp202004
                                          '()
                                          _%L197465%_)))
                                 '())))
                   _%clause197373197461%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197368197411%_
                                           _%target197365197405%_
                                           '()))
                                        (_%g197359197388%_
                                         _%g197360197392%_)))))
                              (_%g197359197388%_ _%g197360197392%_))))
                      (_%g197359197388%_ _%g197360197392%_)))))
          (_%g197358197497%_ _%$stx197355%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx197503%_)
        (let* ((_%g197507197525%_
                (lambda (_%g197508197521%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197508197521%_))))
               (_%g197506197580%_
                (lambda (_%g197508197529%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197508197529%_))
                      (let ((_%e197511197532%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197508197529%_))))
                        (let ((_%hd197512197536%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197511197532%_)))
                              (_%tl197513197539%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197511197532%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197513197539%_))
                              (let ((_%e197514197542%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197513197539%_))))
                                (let ((_%hd197515197546%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197514197542%_)))
                                      (_%tl197516197549%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197514197542%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197516197549%_))
                                      (let ((_%e197517197552%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197516197549%_))))
                                        (let ((_%hd197518197556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197517197552%_)))
                                              (_%tl197519197559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197517197552%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197519197559%_))
                                              ((lambda (_%L197562%_
                                                        _%L197564%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197564%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197562%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197518197556%_
                                               _%hd197515197546%_)
                                              (_%g197507197525%_
                                               _%g197508197529%_))))
                                      (_%g197507197525%_ _%g197508197529%_))))
                              (_%g197507197525%_ _%g197508197529%_))))
                      (_%g197507197525%_ _%g197508197529%_)))))
          (_%g197506197580%_ _%$stx197503%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx197584%_)
        (let* ((_%g197588197606%_
                (lambda (_%g197589197602%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197589197602%_))))
               (_%g197587197661%_
                (lambda (_%g197589197610%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197589197610%_))
                      (let ((_%e197592197613%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197589197610%_))))
                        (let ((_%hd197593197617%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197592197613%_)))
                              (_%tl197594197620%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197592197613%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197594197620%_))
                              (let ((_%e197595197623%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197594197620%_))))
                                (let ((_%hd197596197627%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197595197623%_)))
                                      (_%tl197597197630%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197595197623%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197597197630%_))
                                      (let ((_%e197598197633%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197597197630%_))))
                                        (let ((_%hd197599197637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197598197633%_)))
                                              (_%tl197600197640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197598197633%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197600197640%_))
                                              ((lambda (_%L197643%_
                                                        _%L197645%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197645%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197643%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197599197637%_
                                               _%hd197596197627%_)
                                              (_%g197588197606%_
                                               _%g197589197610%_))))
                                      (_%g197588197606%_ _%g197589197610%_))))
                              (_%g197588197606%_ _%g197589197610%_))))
                      (_%g197588197606%_ _%g197589197610%_)))))
          (_%g197587197661%_ _%$stx197584%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx197665%_)
        (let* ((_%g197669197698%_
                (lambda (_%g197670197694%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197670197694%_))))
               (_%g197668197798%_
                (lambda (_%g197670197702%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197670197702%_))
                      (let ((_%e197673197705%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197670197702%_))))
                        (let ((_%hd197674197709%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197673197705%_)))
                              (_%tl197675197712%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197673197705%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197675197712%_))
                              (let ((_g202006_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197675197712%_
                                        '0))))
                                (begin
                                  (let ((_g202007_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202006_)
                                               (##vector-length _g202006_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202007_ 2)))
                                        (error "Context expects 2 values"
                                               _g202007_)))
                                  (let ((_%target197676197715%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202006_ 0)))
                                        (_%tl197678197718%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202006_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197678197718%_))
                                        (letrec ((_%loop197679197721%_
                                                  (lambda (_%hd197677197725%_
                                                           _%rule197683197728%_
                                                           _%proc197684197730%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197677197725%_))
                                                        (let ((_%e197680197733%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197677197725%_))))
                  (let ((_%lp-hd197681197737%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197680197733%_)))
                        (_%lp-tl197682197740%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197680197733%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd197681197737%_))
                        (let ((_%e197687197743%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd197681197737%_))))
                          (let ((_%hd197688197747%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197687197743%_)))
                                (_%tl197689197750%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197687197743%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197689197750%_))
                                (let ((_%e197690197753%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197689197750%_))))
                                  (let ((_%hd197691197757%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197690197753%_)))
                                        (_%tl197692197760%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197690197753%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197692197760%_))
                                        (_%loop197679197721%_
                                         _%lp-tl197682197740%_
                                         (cons _%hd197691197757%_
                                               _%rule197683197728%_)
                                         (cons _%hd197688197747%_
                                               _%proc197684197730%_))
                                        (_%g197669197698%_
                                         _%g197670197702%_))))
                                (_%g197669197698%_ _%g197670197702%_))))
                        (_%g197669197698%_ _%g197670197702%_))))
                (let ((_%rule197685197763%_ (reverse _%rule197683197728%_))
                      (_%proc197686197766%_ (reverse _%proc197684197730%_)))
                  ((lambda (_%L197769%_ _%L197771%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L197769%_
                                _%L197771%_))
                             (let ((__tmp202008
                                    (lambda (_%g197786197790%_
                                             _%g197787197793%_
                                             _%g197788197795%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g197787197793%_
                                                        (cons _%g197786197790%_
                                                              '())))
                                            _%g197788197795%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202008
                                '()
                                _%L197769%_
                                _%L197771%_)))))
                   _%rule197685197763%_
                   _%proc197686197766%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197679197721%_
                                           _%target197676197715%_
                                           '()
                                           '()))
                                        (_%g197669197698%_
                                         _%g197670197702%_)))))
                              (_%g197669197698%_ _%g197670197702%_))))
                      (_%g197669197698%_ _%g197670197702%_)))))
          (_%g197668197798%_ _%$stx197665%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx197803%_)
        (let* ((_%g197807197825%_
                (lambda (_%g197808197821%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197808197821%_))))
               (_%g197806197880%_
                (lambda (_%g197808197829%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197808197829%_))
                      (let ((_%e197811197832%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197808197829%_))))
                        (let ((_%hd197812197836%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197811197832%_)))
                              (_%tl197813197839%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197811197832%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197813197839%_))
                              (let ((_%e197814197842%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197813197839%_))))
                                (let ((_%hd197815197846%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197814197842%_)))
                                      (_%tl197816197849%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197814197842%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197816197849%_))
                                      (let ((_%e197817197852%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197816197849%_))))
                                        (let ((_%hd197818197856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197817197852%_)))
                                              (_%tl197819197859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197817197852%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197819197859%_))
                                              ((lambda (_%L197862%_
                                                        _%L197864%_)
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
                                                   (cons _%L197864%_ '()))
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
                 (cons _%L197862%_ '())))
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
                                   (cons _%L197864%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197818197856%_
                                               _%hd197815197846%_)
                                              (_%g197807197825%_
                                               _%g197808197829%_))))
                                      (_%g197807197825%_ _%g197808197829%_))))
                              (_%g197807197825%_ _%g197808197829%_))))
                      (_%g197807197825%_ _%g197808197829%_)))))
          (_%g197806197880%_ _%$stx197803%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx197884%_)
        (let* ((_%__stx201488201489%_ _%$stx197884%_)
               (_%g197889197914%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201488201489%_)))))
          (let ((_%__kont201491201492%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont201493201494%_
                 (lambda (_%L197961%_ _%L197963%_ _%L197964%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L197964%_ (cons _%L197963%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L197961%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201488201489%_))
                (let ((_%e197891197990%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201488201489%_))))
                  (let ((_%tl197893197997%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197891197990%_)))
                        (_%hd197892197994%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197891197990%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl197893197997%_))
                        (_%__kont201491201492%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197893197997%_))
                            (let ((_%e197900197931%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl197893197997%_))))
                              (let ((_%tl197902197938%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197900197931%_)))
                                    (_%hd197901197935%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197900197931%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197901197935%_))
                                    (let ((_%e197903197941%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd197901197935%_))))
                                      (let ((_%tl197905197948%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197903197941%_)))
                                            (_%hd197904197945%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197903197941%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197905197948%_))
                                            (let ((_%e197906197951%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197905197948%_))))
                                              (let ((_%tl197908197958%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197906197951%_)))
                                                    (_%hd197907197955%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197906197951%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197908197958%_))
                                                    (_%__kont201493201494%_
                                                     _%tl197902197938%_
                                                     _%hd197907197955%_
                                                     _%hd197904197945%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197889197914%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197889197914%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197889197914%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g197889197914%_))))))
                (let () (declare (not safe)) (_%g197889197914%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx198008%_)
        (let* ((_%__stx201532201533%_ _%$stx198008%_)
               (_%g198013198044%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201532201533%_)))))
          (let ((_%__kont201535201536%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont201537201538%_
                 (lambda (_%L198111%_ _%L198113%_ _%L198114%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L198114%_
                                           (let ((__tmp202009
                                                  (lambda (_%g198134198137%_
                                                           _%g198135198140%_)
                                                    (cons _%g198134198137%_
                                                          _%g198135198140%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp202009
                                              '()
                                              _%L198113%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L198111%_)
                                     '()))))))
            (let ((_%__match201575201576%_
                   (lambda (_%e198021198051%_
                            _%hd198022198055%_
                            _%tl198023198058%_
                            _%e198024198061%_
                            _%hd198025198065%_
                            _%tl198026198068%_
                            _%e198027198071%_
                            _%hd198028198075%_
                            _%tl198029198078%_
                            _%__splice201539201540%_
                            _%target198030198081%_
                            _%tl198032198084%_)
                     (letrec ((_%loop198033198087%_
                               (lambda (_%hd198031198091%_ _%sig198037198094%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd198031198091%_))
                                     (let ((_%e198034198097%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd198031198091%_))))
                                       (let ((_%lp-tl198036198104%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e198034198097%_)))
                                             (_%lp-hd198035198101%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e198034198097%_))))
                                         (_%loop198033198087%_
                                          _%lp-tl198036198104%_
                                          (cons _%lp-hd198035198101%_
                                                _%sig198037198094%_))))
                                     (let ((_%sig198038198107%_
                                            (reverse _%sig198037198094%_)))
                                       (_%__kont201537201538%_
                                        _%tl198026198068%_
                                        _%sig198038198107%_
                                        _%hd198028198075%_))))))
                       (_%loop198033198087%_ _%target198030198081%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201532201533%_))
                  (let ((_%e198015198150%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201532201533%_))))
                    (let ((_%tl198017198157%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198015198150%_)))
                          (_%hd198016198154%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198015198150%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198017198157%_))
                          (_%__kont201535201536%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198017198157%_))
                              (let ((_%e198024198061%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198017198157%_))))
                                (let ((_%tl198026198068%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198024198061%_)))
                                      (_%hd198025198065%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198024198061%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198025198065%_))
                                      (let ((_%e198027198071%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198025198065%_))))
                                        (let ((_%tl198029198078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198027198071%_)))
                                              (_%hd198028198075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198027198071%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198029198078%_))
                                              (let ((_%__splice201539201540%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198029198078%_
                                                        '0))))
                                                (let ((_%tl198032198084%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201539201540%_
                                                          '1)))
                                                      (_%target198030198081%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201539201540%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198032198084%_))
                                                      (_%__match201575201576%_
                                                       _%e198015198150%_
                                                       _%hd198016198154%_
                                                       _%tl198017198157%_
                                                       _%e198024198061%_
                                                       _%hd198025198065%_
                                                       _%tl198026198068%_
                                                       _%e198027198071%_
                                                       _%hd198028198075%_
                                                       _%tl198029198078%_
                                                       _%__splice201539201540%_
                                                       _%target198030198081%_
                                                       _%tl198032198084%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g198013198044%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198013198044%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198013198044%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198013198044%_))))))
                  (let () (declare (not safe)) (_%g198013198044%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx198169%_)
        (let* ((_%__stx201578201579%_ _%$stx198169%_)
               (_%g198174198221%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201578201579%_)))))
          (let ((_%__kont201581201582%_
                 (lambda (_%L198383%_ _%L198385%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L198385%_
                               (let ((__tmp202010
                                      (lambda (_%g198405198408%_
                                               _%g198406198411%_)
                                        (cons _%g198405198408%_
                                              _%g198406198411%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202010 '() _%L198383%_))))))
                (_%__kont201585201586%_
                 (lambda (_%L198278%_ _%L198280%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L198280%_
                               (let ((__tmp202011
                                      (lambda (_%g198297198300%_
                                               _%g198298198303%_)
                                        (cons _%g198297198300%_
                                              _%g198298198303%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202011 '() _%L198278%_)))))))
            (let* ((_%__match201645201646%_
                    (lambda (_%e198201198228%_
                             _%hd198202198232%_
                             _%tl198203198235%_
                             _%e198204198238%_
                             _%hd198205198242%_
                             _%tl198206198245%_
                             _%__splice201587201588%_
                             _%target198207198248%_
                             _%tl198209198251%_)
                      (letrec ((_%loop198210198254%_
                                (lambda (_%hd198208198258%_
                                         _%sig198214198261%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198208198258%_))
                                      (let ((_%e198211198264%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198208198258%_))))
                                        (let ((_%lp-tl198213198271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198211198264%_)))
                                              (_%lp-hd198212198268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198211198264%_))))
                                          (_%loop198210198254%_
                                           _%lp-tl198213198271%_
                                           (cons _%lp-hd198212198268%_
                                                 _%sig198214198261%_))))
                                      (let ((_%sig198215198274%_
                                             (reverse _%sig198214198261%_)))
                                        (_%__kont201585201586%_
                                         _%sig198215198274%_
                                         _%hd198205198242%_))))))
                        (_%loop198210198254%_ _%target198207198248%_ '()))))
                   (_%__match201637201638%_
                    (lambda (_%e198201198228%_
                             _%hd198202198232%_
                             _%tl198203198235%_
                             _%e198204198238%_
                             _%hd198205198242%_
                             _%tl198206198245%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl198206198245%_))
                          (let ((_%__splice201587201588%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl198206198245%_
                                    '0))))
                            (let ((_%tl198209198251%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice201587201588%_
                                      '1)))
                                  (_%target198207198248%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice201587201588%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198209198251%_))
                                  (_%__match201645201646%_
                                   _%e198201198228%_
                                   _%hd198202198232%_
                                   _%tl198203198235%_
                                   _%e198204198238%_
                                   _%hd198205198242%_
                                   _%tl198206198245%_
                                   _%__splice201587201588%_
                                   _%target198207198248%_
                                   _%tl198209198251%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g198174198221%_)))))
                          (let () (declare (not safe)) (_%g198174198221%_)))))
                   (_%__match201625201626%_
                    (lambda (_%e198178198313%_
                             _%hd198179198317%_
                             _%tl198180198320%_
                             _%e198181198323%_
                             _%hd198182198327%_
                             _%tl198183198330%_
                             _%e198184198333%_
                             _%hd198185198337%_
                             _%tl198186198340%_
                             _%e198187198343%_
                             _%hd198188198347%_
                             _%tl198189198350%_
                             _%__splice201583201584%_
                             _%target198190198353%_
                             _%tl198192198356%_)
                      (letrec ((_%loop198193198359%_
                                (lambda (_%hd198191198363%_
                                         _%sig198197198366%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198191198363%_))
                                      (let ((_%e198194198369%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198191198363%_))))
                                        (let ((_%lp-tl198196198376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198194198369%_)))
                                              (_%lp-hd198195198373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198194198369%_))))
                                          (_%loop198193198359%_
                                           _%lp-tl198196198376%_
                                           (cons _%lp-hd198195198373%_
                                                 _%sig198197198366%_))))
                                      (let ((_%sig198198198379%_
                                             (reverse _%sig198197198366%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl198186198340%_))
                                            (_%__kont201581201582%_
                                             _%sig198198198379%_
                                             _%hd198182198327%_)
                                            (_%__match201637201638%_
                                             _%e198178198313%_
                                             _%hd198179198317%_
                                             _%tl198180198320%_
                                             _%e198181198323%_
                                             _%hd198182198327%_
                                             _%tl198183198330%_)))))))
                        (_%loop198193198359%_ _%target198190198353%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201578201579%_))
                  (let ((_%e198178198313%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201578201579%_))))
                    (let ((_%tl198180198320%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198178198313%_)))
                          (_%hd198179198317%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198178198313%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198180198320%_))
                          (let ((_%e198181198323%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198180198320%_))))
                            (let ((_%tl198183198330%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198181198323%_)))
                                  (_%hd198182198327%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198181198323%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198183198330%_))
                                  (let ((_%e198184198333%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl198183198330%_))))
                                    (let ((_%tl198186198340%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198184198333%_)))
                                          (_%hd198185198337%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198184198333%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd198185198337%_))
                                          (let ((_%e198187198343%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd198185198337%_))))
                                            (let ((_%tl198189198350%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e198187198343%_)))
                                                  (_%hd198188198347%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e198187198343%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd198188198347%_))
                                                  (if (let ((__tmp202012
                                                             |gxc[1]#_g202013_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp202012
                                                         _%hd198188198347%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl198189198350%_))
                                                          (let ((_%__splice201583201584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl198189198350%_ '0))))
                    (let ((_%tl198192198356%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201583201584%_ '1)))
                          (_%target198190198353%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201583201584%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198192198356%_))
                          (_%__match201625201626%_
                           _%e198178198313%_
                           _%hd198179198317%_
                           _%tl198180198320%_
                           _%e198181198323%_
                           _%hd198182198327%_
                           _%tl198183198330%_
                           _%e198184198333%_
                           _%hd198185198337%_
                           _%tl198186198340%_
                           _%e198187198343%_
                           _%hd198188198347%_
                           _%tl198189198350%_
                           _%__splice201583201584%_
                           _%target198190198353%_
                           _%tl198192198356%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198183198330%_))
                              (let ((_%__splice201587201588%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198183198330%_
                                        '0))))
                                (let ((_%tl198209198251%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice201587201588%_
                                          '1)))
                                      (_%target198207198248%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice201587201588%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198209198251%_))
                                      (_%__match201645201646%_
                                       _%e198178198313%_
                                       _%hd198179198317%_
                                       _%tl198180198320%_
                                       _%e198181198323%_
                                       _%hd198182198327%_
                                       _%tl198183198330%_
                                       _%__splice201587201588%_
                                       _%target198207198248%_
                                       _%tl198209198251%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g198174198221%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198174198221%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl198183198330%_))
                      (let ((_%__splice201587201588%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl198183198330%_
                                '0))))
                        (let ((_%tl198209198251%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice201587201588%_ '1)))
                              (_%target198207198248%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice201587201588%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl198209198251%_))
                              (_%__match201645201646%_
                               _%e198178198313%_
                               _%hd198179198317%_
                               _%tl198180198320%_
                               _%e198181198323%_
                               _%hd198182198327%_
                               _%tl198183198330%_
                               _%__splice201587201588%_
                               _%target198207198248%_
                               _%tl198209198251%_)
                              (let ()
                                (declare (not safe))
                                (_%g198174198221%_)))))
                      (let () (declare (not safe)) (_%g198174198221%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl198183198330%_))
                  (let ((_%__splice201587201588%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl198183198330%_ '0))))
                    (let ((_%tl198209198251%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201587201588%_ '1)))
                          (_%target198207198248%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201587201588%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198209198251%_))
                          (_%__match201645201646%_
                           _%e198178198313%_
                           _%hd198179198317%_
                           _%tl198180198320%_
                           _%e198181198323%_
                           _%hd198182198327%_
                           _%tl198183198330%_
                           _%__splice201587201588%_
                           _%target198207198248%_
                           _%tl198209198251%_)
                          (let () (declare (not safe)) (_%g198174198221%_)))))
                  (let () (declare (not safe)) (_%g198174198221%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl198183198330%_))
                                                      (let ((_%__splice201587201588%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl198183198330%_ '0))))
                (let ((_%tl198209198251%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201587201588%_ '1)))
                      (_%target198207198248%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201587201588%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198209198251%_))
                      (_%__match201645201646%_
                       _%e198178198313%_
                       _%hd198179198317%_
                       _%tl198180198320%_
                       _%e198181198323%_
                       _%hd198182198327%_
                       _%tl198183198330%_
                       _%__splice201587201588%_
                       _%target198207198248%_
                       _%tl198209198251%_)
                      (let () (declare (not safe)) (_%g198174198221%_)))))
              (let () (declare (not safe)) (_%g198174198221%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198183198330%_))
                                              (let ((_%__splice201587201588%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198183198330%_
                                                        '0))))
                                                (let ((_%tl198209198251%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201587201588%_
                                                          '1)))
                                                      (_%target198207198248%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201587201588%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198209198251%_))
                                                      (_%__match201645201646%_
                                                       _%e198178198313%_
                                                       _%hd198179198317%_
                                                       _%tl198180198320%_
                                                       _%e198181198323%_
                                                       _%hd198182198327%_
                                                       _%tl198183198330%_
                                                       _%__splice201587201588%_
                                                       _%target198207198248%_
                                                       _%tl198209198251%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g198174198221%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198174198221%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl198183198330%_))
                                      (let ((_%__splice201587201588%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl198183198330%_
                                                '0))))
                                        (let ((_%tl198209198251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201587201588%_
                                                  '1)))
                                              (_%target198207198248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201587201588%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198209198251%_))
                                              (_%__match201645201646%_
                                               _%e198178198313%_
                                               _%hd198179198317%_
                                               _%tl198180198320%_
                                               _%e198181198323%_
                                               _%hd198182198327%_
                                               _%tl198183198330%_
                                               _%__splice201587201588%_
                                               _%target198207198248%_
                                               _%tl198209198251%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g198174198221%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198174198221%_))))))
                          (let () (declare (not safe)) (_%g198174198221%_)))))
                  (let () (declare (not safe)) (_%g198174198221%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx199568%_ _%id199570%_)
        (let ((_%proc199574%_
               (let ((__tmp202014
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id199570%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202014))))
          (if (procedure? _%proc199574%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx199568%_
                 _%id199570%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx199559%_ _%id199561%_)
        (let ((_%klass199565%_
               (let ((__tmp202015
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id199561%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202015))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass199565%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx199559%_
                 _%id199561%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx198809%_ _%proc198811%_ _%sig198812%_)
        (letrec ((_%signature-arity198814%_
                  (lambda (_%args199491%_)
                    (let _%loop199494%_ ((_%rest199497%_ _%args199491%_)
                                         (_%count199499%_ '0))
                      (let* ((_%rest199500199511%_ _%rest199497%_)
                             (_%E199504199517%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest199500199511%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K199507199548%_
                               (lambda (_%rest199545%_)
                                 (_%loop199494%_
                                  _%rest199545%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count199499%_ '1)))))
                              (_%K199506199537%_ (lambda () _%count199499%_))
                              (_%K199505199525%_
                               (lambda () (cons _%count199499%_ '()))))
                          (let ((_%try-match199502199541%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest199500199511%_))
                                       (_%K199506199537%_)
                                       (_%K199505199525%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest199500199511%_))
                                (let* ((_%tl199509199552%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest199500199511%_)))
                                       (_%rest199556%_ _%tl199509199552%_))
                                  (_%K199507199548%_ _%rest199556%_))
                                (_%try-match199502199541%_))))))))
                 (_%make-signature198816%_
                  (lambda (_%args199373%_
                           _%return199375%_
                           _%effect199376%_
                           _%unchecked199377%_)
                    (let ((__tmp202016
                           (lambda (_%g199378199380%_)
                             (|gxc[1]#verify-class!|
                              _%ctx198809%_
                              _%g199378199380%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp202016 _%args199373%_))
                    (|gxc[1]#verify-class!| _%ctx198809%_ _%return199375%_)
                    (if _%unchecked199377%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx198809%_
                         _%unchecked199377%_)
                        '#!void)
                    (let ((_%arity199384%_
                           (_%signature-arity198814%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args199373%_)))))
                      (if _%effect199376%_
                          (let ((_%effect199387%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect199376%_))))
                            (if (and (list? _%effect199387%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect199387%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx198809%_
                                   _%proc198811%_
                                   _%effect199387%_))))
                          '#!void)
                      (cons _%arity199384%_
                            (cons (let* ((_%g199390199413%_
                                          (lambda (_%g199391199409%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g199391199409%_))))
                                         (_%g199389199487%_
                                          (lambda (_%g199391199417%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g199391199417%_))
                                                (let ((_%e199396199420%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g199391199417%_))))
                                                  (let ((_%hd199397199424%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199396199420%_)))
                                                        (_%tl199398199427%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199396199420%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199398199427%_))
                                                        (let ((_%e199399199430%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl199398199427%_))))
                  (let ((_%hd199400199434%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199399199430%_)))
                        (_%tl199401199437%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199399199430%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl199401199437%_))
                        (let ((_%e199402199440%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199401199437%_))))
                          (let ((_%hd199403199444%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199402199440%_)))
                                (_%tl199404199447%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199402199440%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199404199447%_))
                                (let ((_%e199405199450%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199404199447%_))))
                                  (let ((_%hd199406199454%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199405199450%_)))
                                        (_%tl199407199457%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199405199450%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199407199457%_))
                                        ((lambda (_%L199460%_
                                                  _%L199462%_
                                                  _%L199463%_
                                                  _%L199464%_)
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
                           (cons _%L199464%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L199463%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L199462%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L199460%_ '()))
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
                                         _%hd199406199454%_
                                         _%hd199403199444%_
                                         _%hd199400199434%_
                                         _%hd199397199424%_)
                                        (_%g199390199413%_
                                         _%g199391199417%_))))
                                (_%g199390199413%_ _%g199391199417%_))))
                        (_%g199390199413%_ _%g199391199417%_))))
                (_%g199390199413%_ _%g199391199417%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199390199413%_
                                                 _%g199391199417%_)))))
                                    (_%g199389199487%_
                                     (list _%args199373%_
                                           _%return199375%_
                                           _%effect199376%_
                                           _%unchecked199377%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx198809%_ _%proc198811%_)
          (let* ((_%__stx201656201657%_ _%sig198812%_)
                 (_%g198823198926%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201656201657%_)))))
            (let ((_%__kont201659201660%_
                   (lambda (_%L199354%_ _%L199356%_)
                     (_%make-signature198816%_
                      _%L199356%_
                      _%L199354%_
                      '#f
                      '#f)))
                  (_%__kont201661201662%_
                   (lambda (_%L199305%_ _%L199307%_ _%L199308%_)
                     (_%make-signature198816%_
                      _%L199308%_
                      _%L199307%_
                      _%L199305%_
                      '#f)))
                  (_%__kont201663201664%_
                   (lambda (_%L199229%_ _%L199231%_ _%L199232%_)
                     (_%make-signature198816%_
                      _%L199232%_
                      _%L199231%_
                      _%L199229%_
                      (let ((__tmp202017
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc198811%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp202017)))))
                  (_%__kont201665201666%_
                   (lambda (_%L199135%_ _%L199137%_ _%L199138%_ _%L199139%_)
                     (_%make-signature198816%_
                      _%L199139%_
                      _%L199138%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L199135%_)))))
                  (_%__kont201667201668%_
                   (lambda (_%L199042%_ _%L199044%_)
                     (_%make-signature198816%_
                      _%L199044%_
                      _%L199042%_
                      '#f
                      (let ((__tmp202018
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc198811%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp202018)))))
                  (_%__kont201669201670%_
                   (lambda (_%L198977%_ _%L198979%_ _%L198980%_)
                     (_%make-signature198816%_
                      _%L198980%_
                      _%L198979%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L198977%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201656201657%_))
                  (let ((_%e198827199334%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201656201657%_))))
                    (let ((_%tl198829199341%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198827199334%_)))
                          (_%hd198828199338%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198827199334%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198829199341%_))
                          (let ((_%e198830199344%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198829199341%_))))
                            (let ((_%tl198832199351%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198830199344%_)))
                                  (_%hd198831199348%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198830199344%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198832199351%_))
                                  (_%__kont201659201660%_
                                   _%hd198831199348%_
                                   _%hd198828199338%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198832199351%_))
                                      (let ((_%e198842199281%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198832199351%_))))
                                        (let ((_%tl198844199288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198842199281%_)))
                                              (_%hd198843199285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198842199281%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd198843199285%_))
                                              (let ((_%e198845199291%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd198843199285%_))))
                                                (if (equal? _%e198845199291%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198844199288%_))
                                                        (let ((_%e198846199295%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl198844199288%_))))
                  (let ((_%tl198848199302%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198846199295%_)))
                        (_%hd198847199299%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198846199295%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198848199302%_))
                        (_%__kont201661201662%_
                         _%hd198847199299%_
                         _%hd198831199348%_
                         _%hd198828199338%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198848199302%_))
                            (let ((_%e198865199215%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198848199302%_))))
                              (let ((_%tl198867199222%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198865199215%_)))
                                    (_%hd198866199219%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198865199215%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd198866199219%_))
                                    (let ((_%e198868199225%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd198866199219%_))))
                                      (if (equal? _%e198868199225%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198867199222%_))
                                              (_%__kont201663201664%_
                                               _%hd198847199299%_
                                               _%hd198831199348%_
                                               _%hd198828199338%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198867199222%_))
                                                  (let ((_%e198890199125%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl198867199222%_))))
                                                    (let ((_%tl198892199132%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198890199125%_)))
                                                          (_%hd198891199129%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198890199125%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl198892199132%_))
                                                          (_%__kont201665201666%_
                                                           _%hd198891199129%_
                                                           _%hd198847199299%_
                                                           _%hd198831199348%_
                                                           _%hd198828199338%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g198823198926%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198823198926%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198823198926%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198823198926%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198823198926%_))))))
                (let () (declare (not safe)) (_%g198823198926%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e198845199291%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl198844199288%_))
                                                            (_%__kont201667201668%_
                                                             _%hd198831199348%_
                                                             _%hd198828199338%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl198844199288%_))
                        (let ((_%e198918198967%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198844199288%_))))
                          (let ((_%tl198920198974%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198918198967%_)))
                                (_%hd198919198971%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198918198967%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198920198974%_))
                                (_%__kont201669201670%_
                                 _%hd198919198971%_
                                 _%hd198831199348%_
                                 _%hd198828199338%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g198823198926%_)))))
                        (let () (declare (not safe)) (_%g198823198926%_))))
                (let () (declare (not safe)) (_%g198823198926%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g198823198926%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198823198926%_))))))
                          (let () (declare (not safe)) (_%g198823198926%_)))))
                  (let () (declare (not safe)) (_%g198823198926%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig198420%_)
        (let* ((_%g198423198503%_
                (lambda (_%g198424198499%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198424198499%_))))
               (_%g198422198805%_
                (lambda (_%g198424198507%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198424198507%_))
                      (let ((_%e198430198510%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198424198507%_))))
                        (let ((_%hd198431198514%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198430198510%_)))
                              (_%tl198432198517%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198430198510%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198432198517%_))
                              (let ((_%e198433198520%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198432198517%_))))
                                (let ((_%hd198434198524%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198433198520%_)))
                                      (_%tl198435198527%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198433198520%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd198434198524%_))
                                      (let ((_%e198436198530%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd198434198524%_))))
                                        (if (equal? _%e198436198530%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198435198527%_))
                                                (let ((_%e198437198534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl198435198527%_))))
                                                  (let ((_%hd198438198538%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198437198534%_)))
                                                        (_%tl198439198541%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198437198534%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198438198538%_))
                                                        (let ((_%e198440198544%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198438198538%_))))
                  (let ((_%hd198441198548%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198440198544%_)))
                        (_%tl198442198551%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198440198544%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd198441198548%_))
                        (if (let ((__tmp202019 |gxc[1]#_g202020_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp202019
                               _%hd198441198548%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198442198551%_))
                                (let ((_%e198443198554%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198442198551%_))))
                                  (let ((_%hd198444198558%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198443198554%_)))
                                        (_%tl198445198561%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198443198554%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198445198561%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198439198541%_))
                                            (let ((_%e198446198564%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl198439198541%_))))
                                              (let ((_%hd198447198568%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198446198564%_)))
                                                    (_%tl198448198571%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198446198564%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd198447198568%_))
                                                    (let ((_%e198449198574%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd198447198568%_))))
                                                      (if (equal? _%e198449198574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl198448198571%_))
                      (let ((_%e198450198578%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl198448198571%_))))
                        (let ((_%hd198451198582%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198450198578%_)))
                              (_%tl198452198585%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198450198578%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd198451198582%_))
                              (let ((_%e198453198588%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd198451198582%_))))
                                (let ((_%hd198454198592%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198453198588%_)))
                                      (_%tl198455198595%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198453198588%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd198454198592%_))
                                      (if (let ((__tmp202021
                                                 |gxc[1]#_g202022_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp202021
                                             _%hd198454198592%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198455198595%_))
                                              (let ((_%e198456198598%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198455198595%_))))
                                                (let ((_%hd198457198602%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198456198598%_)))
                                                      (_%tl198458198605%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198456198598%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198458198605%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl198452198585%_))
                                                          (let ((_%e198459198608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl198452198585%_))))
                    (let ((_%hd198460198612%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198459198608%_)))
                          (_%tl198461198615%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198459198608%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd198460198612%_))
                          (let ((_%e198462198618%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd198460198612%_))))
                            (if (equal? _%e198462198618%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl198461198615%_))
                                    (let ((_%e198463198622%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl198461198615%_))))
                                      (let ((_%hd198464198626%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198463198622%_)))
                                            (_%tl198465198629%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198463198622%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd198464198626%_))
                                            (let ((_%e198466198632%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd198464198626%_))))
                                              (let ((_%hd198467198636%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198466198632%_)))
                                                    (_%tl198468198639%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198466198632%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd198467198636%_))
                                                    (if (let ((__tmp202023
                                                               |gxc[1]#_g202024_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp202023
                                                           _%hd198467198636%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl198468198639%_))
                                                            (let ((_%e198469198642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl198468198639%_))))
                      (let ((_%hd198470198646%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198469198642%_)))
                            (_%tl198471198649%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198469198642%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl198471198649%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198465198629%_))
                                (let ((_%e198472198652%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198465198629%_))))
                                  (let ((_%hd198473198656%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198472198652%_)))
                                        (_%tl198474198659%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198472198652%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd198473198656%_))
                                        (let ((_%e198475198662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd198473198656%_))))
                                          (if (equal? _%e198475198662%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198474198659%_))
                                                  (let ((_%e198476198666%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl198474198659%_))))
                                                    (let ((_%hd198477198670%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198476198666%_)))
                                                          (_%tl198478198673%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198476198666%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd198477198670%_))
                                                          (let ((_%e198479198676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd198477198670%_))))
                    (let ((_%hd198480198680%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198479198676%_)))
                          (_%tl198481198683%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198479198676%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd198480198680%_))
                          (if (let ((__tmp202025 |gxc[1]#_g202026_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp202025
                                 _%hd198480198680%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198481198683%_))
                                  (let ((_%e198482198686%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl198481198683%_))))
                                    (let ((_%hd198483198690%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198482198686%_)))
                                          (_%tl198484198693%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198482198686%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl198484198693%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198478198673%_))
                                              (let ((_%e198485198696%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198478198673%_))))
                                                (let ((_%hd198486198700%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198485198696%_)))
                                                      (_%tl198487198703%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198485198696%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd198486198700%_))
                                                      (let ((_%e198488198706%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd198486198700%_))))
                (if (equal? _%e198488198706%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198487198703%_))
                        (let ((_%e198489198710%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198487198703%_))))
                          (let ((_%hd198490198714%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198489198710%_)))
                                (_%tl198491198717%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198489198710%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd198490198714%_))
                                (let ((_%e198492198720%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd198490198714%_))))
                                  (let ((_%hd198493198724%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198492198720%_)))
                                        (_%tl198494198727%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198492198720%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd198493198724%_))
                                        (if (let ((__tmp202027
                                                   |gxc[1]#_g202028_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp202027
                                               _%hd198493198724%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198494198727%_))
                                                (let ((_%e198495198730%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl198494198727%_))))
                                                  (let ((_%hd198496198734%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198495198730%_)))
                                                        (_%tl198497198737%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198495198730%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198497198737%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl198491198717%_))
                                                            ((lambda (_%L198740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L198742%_
                              _%L198743%_
                              _%L198744%_
                              _%L198745%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L198742%_))
                           (cons _%L198742%_
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
                       (cons _%L198744%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L198740%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd198496198734%_
                     _%hd198483198690%_
                     _%hd198470198646%_
                     _%hd198457198602%_
                     _%hd198444198558%_)
                    (_%g198423198503%_ _%g198424198507%_))
                (_%g198423198503%_ _%g198424198507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g198423198503%_
                                                 _%g198424198507%_))
                                            (_%g198423198503%_
                                             _%g198424198507%_))
                                        (_%g198423198503%_
                                         _%g198424198507%_))))
                                (_%g198423198503%_ _%g198424198507%_))))
                        (_%g198423198503%_ _%g198424198507%_))
                    (_%g198423198503%_ _%g198424198507%_)))
              (_%g198423198503%_ _%g198424198507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198423198503%_
                                               _%g198424198507%_))
                                          (_%g198423198503%_
                                           _%g198424198507%_))))
                                  (_%g198423198503%_ _%g198424198507%_))
                              (_%g198423198503%_ _%g198424198507%_))
                          (_%g198423198503%_ _%g198424198507%_))))
                  (_%g198423198503%_ _%g198424198507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g198423198503%_
                                                   _%g198424198507%_))
                                              (_%g198423198503%_
                                               _%g198424198507%_)))
                                        (_%g198423198503%_
                                         _%g198424198507%_))))
                                (_%g198423198503%_ _%g198424198507%_))
                            (_%g198423198503%_ _%g198424198507%_))))
                    (_%g198423198503%_ _%g198424198507%_))
                (_%g198423198503%_ _%g198424198507%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g198423198503%_
                                                     _%g198424198507%_))))
                                            (_%g198423198503%_
                                             _%g198424198507%_))))
                                    (_%g198423198503%_ _%g198424198507%_))
                                (_%g198423198503%_ _%g198424198507%_)))
                          (_%g198423198503%_ _%g198424198507%_))))
                  (_%g198423198503%_ _%g198424198507%_))
              (_%g198423198503%_ _%g198424198507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198423198503%_
                                               _%g198424198507%_))
                                          (_%g198423198503%_
                                           _%g198424198507%_))
                                      (_%g198423198503%_ _%g198424198507%_))))
                              (_%g198423198503%_ _%g198424198507%_))))
                      (_%g198423198503%_ _%g198424198507%_))
                  (_%g198423198503%_ _%g198424198507%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g198423198503%_
                                                     _%g198424198507%_))))
                                            (_%g198423198503%_
                                             _%g198424198507%_))
                                        (_%g198423198503%_
                                         _%g198424198507%_))))
                                (_%g198423198503%_ _%g198424198507%_))
                            (_%g198423198503%_ _%g198424198507%_))
                        (_%g198423198503%_ _%g198424198507%_))))
                (_%g198423198503%_ _%g198424198507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g198423198503%_
                                                 _%g198424198507%_))
                                            (_%g198423198503%_
                                             _%g198424198507%_)))
                                      (_%g198423198503%_ _%g198424198507%_))))
                              (_%g198423198503%_ _%g198424198507%_))))
                      (_%g198423198503%_ _%g198424198507%_)))))
          (_%g198422198805%_ _%sig198420%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx199577%_)
        (let* ((_%g199580199598%_
                (lambda (_%g199581199594%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199581199594%_))))
               (_%g199579199653%_
                (lambda (_%g199581199602%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199581199602%_))
                      (let ((_%e199584199605%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199581199602%_))))
                        (let ((_%hd199585199609%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199584199605%_)))
                              (_%tl199586199612%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199584199605%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199586199612%_))
                              (let ((_%e199587199615%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199586199612%_))))
                                (let ((_%hd199588199619%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199587199615%_)))
                                      (_%tl199589199622%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199587199615%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199589199622%_))
                                      (let ((_%e199590199625%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199589199622%_))))
                                        (let ((_%hd199591199629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199590199625%_)))
                                              (_%tl199592199632%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199590199625%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199592199632%_))
                                              ((lambda (_%L199635%_
                                                        _%L199637%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L199637%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L199635%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx199577%_
                                                        _%L199637%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx199577%_
                                                        _%L199635%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L199637%_
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
                                                   (cons _%L199635%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199580199598%_
                                                      _%g199581199602%_)))
                                               _%hd199591199629%_
                                               _%hd199588199619%_)
                                              (_%g199580199598%_
                                               _%g199581199602%_))))
                                      (_%g199580199598%_ _%g199581199602%_))))
                              (_%g199580199598%_ _%g199581199602%_))))
                      (_%g199580199598%_ _%g199581199602%_)))))
          (_%g199579199653%_ _%stx199577%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx199657%_)
        (let* ((_%g199660199684%_
                (lambda (_%g199661199680%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199661199680%_))))
               (_%g199659199967%_
                (lambda (_%g199661199688%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199661199688%_))
                      (let ((_%e199664199691%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199661199688%_))))
                        (let ((_%hd199665199695%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199664199691%_)))
                              (_%tl199666199698%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199664199691%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199666199698%_))
                              (let ((_%e199667199701%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199666199698%_))))
                                (let ((_%hd199668199705%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199667199701%_)))
                                      (_%tl199669199708%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199667199701%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199669199708%_))
                                      (let ((_g202029_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199669199708%_
                                                '0))))
                                        (begin
                                          (let ((_g202030_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202029_)
                                                       (##vector-length
                                                        _g202029_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202030_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202030_)))
                                          (let ((_%target199670199711%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202029_ 0)))
                                                (_%tl199672199714%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202029_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199672199714%_))
                                                (letrec ((_%loop199673199717%_
                                                          (lambda (_%hd199671199721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature199677199724%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199671199721%_))
                        (let ((_%e199674199727%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd199671199721%_))))
                          (let ((_%lp-hd199675199731%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199674199727%_)))
                                (_%lp-tl199676199734%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199674199727%_))))
                            (_%loop199673199717%_
                             _%lp-tl199676199734%_
                             (cons _%lp-hd199675199731%_
                                   _%signature199677199724%_))))
                        (let ((_%signature199678199737%_
                               (reverse _%signature199677199724%_)))
                          ((lambda (_%L199741%_ _%L199743%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L199743%_))
                                 (let* ((_%g199761199776%_
                                         (lambda (_%g199762199772%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g199762199772%_))))
                                        (_%g199760199955%_
                                         (lambda (_%g199762199780%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g199762199780%_))
                                               (let ((_%e199765199783%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g199762199780%_))))
                                                 (let ((_%hd199766199787%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199765199783%_)))
                                                       (_%tl199767199790%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199765199783%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl199767199790%_))
                                                       (let ((_%e199768199793%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl199767199790%_))))
                 (let ((_%hd199769199797%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199768199793%_)))
                       (_%tl199770199800%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199768199793%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl199770199800%_))
                       ((lambda (_%L199803%_ _%L199805%_)
                          (let* ((_%g199821199829%_
                                  (lambda (_%g199822199825%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g199822199825%_))))
                                 (_%g199820199951%_
                                  (lambda (_%g199822199833%_)
                                    ((lambda (_%L199836%_)
                                       (let* ((_%unchecked199849%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L199803%_))
                                              (_%g199852199860%_
                                               (lambda (_%g199853199856%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g199853199856%_))))
                                              (_%g199851199883%_
                                               (lambda (_%g199853199864%_)
                                                 ((lambda (_%L199867%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L199836%_
                                                                (cons _%L199867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g199853199864%_))))
                                         (_%g199851199883%_
                                          (if _%unchecked199849%_
                                              (let* ((_%g199887199902%_
                                                      (lambda (_%g199888199898%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g199888199898%_))))
                                                     (_%g199886199947%_
                                                      (lambda (_%g199888199906%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g199888199906%_))
                                                            (let ((_%e199891199909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g199888199906%_))))
                      (let ((_%hd199892199913%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199891199909%_)))
                            (_%tl199893199916%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199891199909%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199893199916%_))
                            (let ((_%e199894199919%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl199893199916%_))))
                              (let ((_%hd199895199923%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199894199919%_)))
                                    (_%tl199896199926%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199894199919%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl199896199926%_))
                                    ((lambda (_%L199929%_ _%L199931%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L199931%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L199805%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L199929%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd199895199923%_
                                     _%hd199892199913%_)
                                    (_%g199887199902%_ _%g199888199906%_))))
                            (_%g199887199902%_ _%g199888199906%_))))
                    (_%g199887199902%_ _%g199888199906%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199886199947%_
                                                 _%unchecked199849%_))
                                              '(begin)))))
                                     _%g199822199833%_))))
                            (_%g199820199951%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L199743%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L199805%_ '()))
                   (cons '#f (cons 'signature: (cons _%L199803%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd199769199797%_
                        _%hd199766199787%_)
                       (_%g199761199776%_ _%g199762199780%_))))
               (_%g199761199776%_ _%g199762199780%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199761199776%_
                                                _%g199762199780%_)))))
                                   (_%g199760199955%_
                                    (|gxc[1]#parse-signature|
                                     _%stx199657%_
                                     _%L199743%_
                                     (let ((__tmp202031
                                            (lambda (_%g199958199961%_
                                                     _%g199959199964%_)
                                              (cons _%g199958199961%_
                                                    _%g199959199964%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp202031
                                        '()
                                        _%L199741%_)))))
                                 (_%g199660199684%_ _%g199661199688%_)))
                           _%signature199678199737%_
                           _%hd199668199705%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop199673199717%_
                                                   _%target199670199711%_
                                                   '()))
                                                (_%g199660199684%_
                                                 _%g199661199688%_)))))
                                      (_%g199660199684%_ _%g199661199688%_))))
                              (_%g199660199684%_ _%g199661199688%_))))
                      (_%g199660199684%_ _%g199661199688%_)))))
          (_%g199659199967%_ _%stx199657%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx199972%_)
        (let* ((_%g199975199999%_
                (lambda (_%g199976199995%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199976199995%_))))
               (_%g199974200882%_
                (lambda (_%g199976200003%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199976200003%_))
                      (let ((_%e199979200006%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199976200003%_))))
                        (let ((_%hd199980200010%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199979200006%_)))
                              (_%tl199981200013%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199979200006%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199981200013%_))
                              (let ((_%e199982200016%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199981200013%_))))
                                (let ((_%hd199983200020%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199982200016%_)))
                                      (_%tl199984200023%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199982200016%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199984200023%_))
                                      (let ((_g202032_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199984200023%_
                                                '0))))
                                        (begin
                                          (let ((_g202033_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202032_)
                                                       (##vector-length
                                                        _g202032_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202033_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202033_)))
                                          (let ((_%target199985200026%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202032_ 0)))
                                                (_%tl199987200029%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202032_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199987200029%_))
                                                (letrec ((_%loop199988200032%_
                                                          (lambda (_%hd199986200036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature199992200039%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199986200036%_))
                        (let ((_%e199989200042%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd199986200036%_))))
                          (let ((_%lp-hd199990200046%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199989200042%_)))
                                (_%lp-tl199991200049%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199989200042%_))))
                            (_%loop199988200032%_
                             _%lp-tl199991200049%_
                             (cons _%lp-hd199990200046%_
                                   _%case-signature199992200039%_))))
                        (let ((_%case-signature199993200052%_
                               (reverse _%case-signature199992200039%_)))
                          ((lambda (_%L200056%_ _%L200058%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200058%_))
                                 (let* ((_%signatures200089%_
                                         (map (lambda (_%g200075200077%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx199972%_
                                                 _%L200058%_
                                                 _%g200075200077%_))
                                              (let ((__tmp202034
                                                     (lambda (_%g200080200083%_
                                                              _%g200081200086%_)
                                                       (cons _%g200080200083%_
                                                             _%g200081200086%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp202034
                                                 '()
                                                 _%L200056%_))))
                                        (_%g200092200118%_
                                         (lambda (_%g200093200114%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200093200114%_))))
                                        (_%g200091200878%_
                                         (lambda (_%g200093200122%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g200093200122%_))
                                               (let ((_g202035_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g200093200122%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g202036_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g202035_)
                        (##vector-length _g202035_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g202036_ 2)))
                 (error "Context expects 2 values" _g202036_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target200096200125%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202035_
                                                             0)))
                                                         (_%tl200098200128%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202035_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200098200128%_))
                                                         (letrec ((_%loop200099200131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd200097200135%_
                                    _%sig200103200138%_
                                    _%arity200104200140%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd200097200135%_))
                                 (let ((_%e200100200143%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd200097200135%_))))
                                   (let ((_%lp-hd200101200147%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200100200143%_)))
                                         (_%lp-tl200102200150%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200100200143%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd200101200147%_))
                                         (let ((_%e200107200153%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd200101200147%_))))
                                           (let ((_%hd200108200157%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200107200153%_)))
                                                 (_%tl200109200160%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200107200153%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200109200160%_))
                                                 (let ((_%e200110200163%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200109200160%_))))
                                                   (let ((_%hd200111200167%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200110200163%_)))
                                                         (_%tl200112200170%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200110200163%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200112200170%_))
                                                         (_%loop200099200131%_
                                                          _%lp-tl200102200150%_
                                                          (cons _%hd200111200167%_
                                                                _%sig200103200138%_)
                                                          (cons _%hd200108200157%_
                                                                _%arity200104200140%_))
                                                         (_%g200092200118%_
                                                          _%g200093200122%_))))
                                                 (_%g200092200118%_
                                                  _%g200093200122%_))))
                                         (_%g200092200118%_
                                          _%g200093200122%_))))
                                 (let ((_%sig200105200173%_
                                        (reverse _%sig200103200138%_))
                                       (_%arity200106200176%_
                                        (reverse _%arity200104200140%_)))
                                   ((lambda (_%L200179%_ _%L200181%_)
                                      (let* ((_%g200198200206%_
                                              (lambda (_%g200199200202%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g200199200202%_))))
                                             (_%g200197200863%_
                                              (lambda (_%g200199200210%_)
                                                ((lambda (_%L200213%_)
                                                   (let* ((_%g200226200234%_
                                                           (lambda (_%g200227200230%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g200227200230%_))))
                  (_%g200225200256%_
                   (lambda (_%g200227200238%_)
                     ((lambda (_%L200241%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L200213%_ (cons _%L200241%_ '()))))
                      _%g200227200238%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200225200256%_
                                                      (let ((_g202037_
                                                             (let _%loop200260%_ ((_%rest200263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures200089%_)
                                          (_%unchecked-proc200265%_ '#f)
                                          (_%unchecked-clauses200266%_ '()))
                       (let* ((_%rest200267200275%_ _%rest200263%_)
                              (_%else200269200287%_
                               (lambda ()
                                 (values _%unchecked-proc200265%_
                                         (reverse!
                                          _%unchecked-clauses200266%_))))
                              (_%K200271200728%_
                               (lambda (_%rest200291%_ _%hd200293%_)
                                 (let* ((_%g200295200382%_
                                         (lambda (_%g200296200378%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200296200378%_))))
                                        (_%g200294200724%_
                                         (lambda (_%g200296200386%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g200296200386%_))
                                               (let ((_%e200303200389%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g200296200386%_))))
                                                 (let ((_%hd200304200393%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200303200389%_)))
                                                       (_%tl200305200396%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200303200389%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl200305200396%_))
                                                       (let ((_%e200306200399%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl200305200396%_))))
                 (let ((_%hd200307200403%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200306200399%_)))
                       (_%tl200308200406%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200306200399%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd200307200403%_))
                       (let ((_%e200309200409%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd200307200403%_))))
                         (let ((_%hd200310200413%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e200309200409%_)))
                               (_%tl200311200416%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e200309200409%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl200311200416%_))
                               (let ((_%e200312200419%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl200311200416%_))))
                                 (let ((_%hd200313200423%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e200312200419%_)))
                                       (_%tl200314200426%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e200312200419%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd200313200423%_))
                                       (let ((_%e200315200429%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd200313200423%_))))
                                         (if (equal? _%e200315200429%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200314200426%_))
                                                 (let ((_%e200316200433%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200314200426%_))))
                                                   (let ((_%hd200317200437%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200316200433%_)))
                                                         (_%tl200318200440%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200316200433%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd200317200437%_))
                                                         (let ((_%e200319200443%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd200317200437%_))))
                   (let ((_%hd200320200447%_
                          (let ()
                            (declare (not safe))
                            (##car _%e200319200443%_)))
                         (_%tl200321200450%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e200319200443%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd200320200447%_))
                         (if (let ((__tmp202039 |gxc[1]#_g202040_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp202039
                                _%hd200320200447%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl200321200450%_))
                                 (let ((_%e200322200453%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl200321200450%_))))
                                   (let ((_%hd200323200457%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200322200453%_)))
                                         (_%tl200324200460%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200322200453%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl200324200460%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl200318200440%_))
                                             (let ((_%e200325200463%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl200318200440%_))))
                                               (let ((_%hd200326200467%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200325200463%_)))
                                                     (_%tl200327200470%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200325200463%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd200326200467%_))
                                                     (let ((_%e200328200473%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd200326200467%_))))
                                                       (if (equal? _%e200328200473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl200327200470%_))
                       (let ((_%e200329200477%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl200327200470%_))))
                         (let ((_%hd200330200481%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e200329200477%_)))
                               (_%tl200331200484%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e200329200477%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd200330200481%_))
                               (let ((_%e200332200487%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd200330200481%_))))
                                 (let ((_%hd200333200491%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e200332200487%_)))
                                       (_%tl200334200494%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e200332200487%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd200333200491%_))
                                       (if (let ((__tmp202041
                                                  |gxc[1]#_g202042_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp202041
                                              _%hd200333200491%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl200334200494%_))
                                               (let ((_%e200335200497%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl200334200494%_))))
                                                 (let ((_%hd200336200501%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200335200497%_)))
                                                       (_%tl200337200504%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200335200497%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl200337200504%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl200331200484%_))
                                                           (let ((_%e200338200507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl200331200484%_))))
                     (let ((_%hd200339200511%_
                            (let ()
                              (declare (not safe))
                              (##car _%e200338200507%_)))
                           (_%tl200340200514%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e200338200507%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd200339200511%_))
                           (let ((_%e200341200517%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd200339200511%_))))
                             (if (equal? _%e200341200517%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl200340200514%_))
                                     (let ((_%e200342200521%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl200340200514%_))))
                                       (let ((_%hd200343200525%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e200342200521%_)))
                                             (_%tl200344200528%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e200342200521%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd200343200525%_))
                                             (let ((_%e200345200531%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd200343200525%_))))
                                               (let ((_%hd200346200535%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200345200531%_)))
                                                     (_%tl200347200538%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200345200531%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd200346200535%_))
                                                     (if (let ((__tmp202043
                                                                |gxc[1]#_g202044_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp202043
                                                            _%hd200346200535%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl200347200538%_))
                     (let ((_%e200348200541%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl200347200538%_))))
                       (let ((_%hd200349200545%_
                              (let ()
                                (declare (not safe))
                                (##car _%e200348200541%_)))
                             (_%tl200350200548%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e200348200541%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200350200548%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl200344200528%_))
                                 (let ((_%e200351200551%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl200344200528%_))))
                                   (let ((_%hd200352200555%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200351200551%_)))
                                         (_%tl200353200558%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200351200551%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd200352200555%_))
                                         (let ((_%e200354200561%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd200352200555%_))))
                                           (if (equal? _%e200354200561%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl200353200558%_))
                                                   (let ((_%e200355200565%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl200353200558%_))))
                                                     (let ((_%hd200356200569%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e200355200565%_)))
                                                           (_%tl200357200572%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e200355200565%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd200356200569%_))
                                                           (let ((_%e200358200575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd200356200569%_))))
                     (let ((_%hd200359200579%_
                            (let ()
                              (declare (not safe))
                              (##car _%e200358200575%_)))
                           (_%tl200360200582%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e200358200575%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd200359200579%_))
                           (if (let ((__tmp202045 |gxc[1]#_g202046_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp202045
                                  _%hd200359200579%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl200360200582%_))
                                   (let ((_%e200361200585%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl200360200582%_))))
                                     (let ((_%hd200362200589%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e200361200585%_)))
                                           (_%tl200363200592%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e200361200585%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl200363200592%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl200357200572%_))
                                               (let ((_%e200364200595%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl200357200572%_))))
                                                 (let ((_%hd200365200599%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200364200595%_)))
                                                       (_%tl200366200602%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200364200595%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd200365200599%_))
                                                       (let ((_%e200367200605%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd200365200599%_))))
                 (if (equal? _%e200367200605%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl200366200602%_))
                         (let ((_%e200368200609%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl200366200602%_))))
                           (let ((_%hd200369200613%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e200368200609%_)))
                                 (_%tl200370200616%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e200368200609%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd200369200613%_))
                                 (let ((_%e200371200619%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd200369200613%_))))
                                   (let ((_%hd200372200623%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200371200619%_)))
                                         (_%tl200373200626%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200371200619%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd200372200623%_))
                                         (if (let ((__tmp202047
                                                    |gxc[1]#_g202048_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp202047
                                                _%hd200372200623%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200373200626%_))
                                                 (let ((_%e200374200629%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200373200626%_))))
                                                   (let ((_%hd200375200633%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200374200629%_)))
                                                         (_%tl200376200636%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200374200629%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200376200636%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl200370200616%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl200308200406%_))
                         ((lambda (_%L200639%_
                                   _%L200641%_
                                   _%L200642%_
                                   _%L200643%_
                                   _%L200644%_
                                   _%L200645%_)
                            (let ((_%clause200716%_
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
                                                     (cons _%L200645%_ '()))
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
                                                 (cons _%L200643%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200639%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked200718%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L200641%_))))
                              (_%loop200260%_
                               _%rest200291%_
                               (let ((_%$e200720%_ _%unchecked200718%_))
                                 (if _%$e200720%_
                                     _%$e200720%_
                                     _%unchecked-proc200265%_))
                               (cons _%clause200716%_
                                     _%unchecked-clauses200266%_))))
                          _%hd200375200633%_
                          _%hd200362200589%_
                          _%hd200349200545%_
                          _%hd200336200501%_
                          _%hd200323200457%_
                          _%hd200304200393%_)
                         (_%g200295200382%_ _%g200296200386%_))
                     (_%g200295200382%_ _%g200296200386%_))
                 (_%g200295200382%_ _%g200296200386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g200295200382%_
                                                  _%g200296200386%_))
                                             (_%g200295200382%_
                                              _%g200296200386%_))
                                         (_%g200295200382%_
                                          _%g200296200386%_))))
                                 (_%g200295200382%_ _%g200296200386%_))))
                         (_%g200295200382%_ _%g200296200386%_))
                     (_%g200295200382%_ _%g200296200386%_)))
               (_%g200295200382%_ _%g200296200386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200295200382%_
                                                _%g200296200386%_))
                                           (_%g200295200382%_
                                            _%g200296200386%_))))
                                   (_%g200295200382%_ _%g200296200386%_))
                               (_%g200295200382%_ _%g200296200386%_))
                           (_%g200295200382%_ _%g200296200386%_))))
                   (_%g200295200382%_ _%g200296200386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g200295200382%_
                                                    _%g200296200386%_))
                                               (_%g200295200382%_
                                                _%g200296200386%_)))
                                         (_%g200295200382%_
                                          _%g200296200386%_))))
                                 (_%g200295200382%_ _%g200296200386%_))
                             (_%g200295200382%_ _%g200296200386%_))))
                     (_%g200295200382%_ _%g200296200386%_))
                 (_%g200295200382%_ _%g200296200386%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200295200382%_
                                                      _%g200296200386%_))))
                                             (_%g200295200382%_
                                              _%g200296200386%_))))
                                     (_%g200295200382%_ _%g200296200386%_))
                                 (_%g200295200382%_ _%g200296200386%_)))
                           (_%g200295200382%_ _%g200296200386%_))))
                   (_%g200295200382%_ _%g200296200386%_))
               (_%g200295200382%_ _%g200296200386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200295200382%_
                                                _%g200296200386%_))
                                           (_%g200295200382%_
                                            _%g200296200386%_))
                                       (_%g200295200382%_ _%g200296200386%_))))
                               (_%g200295200382%_ _%g200296200386%_))))
                       (_%g200295200382%_ _%g200296200386%_))
                   (_%g200295200382%_ _%g200296200386%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200295200382%_
                                                      _%g200296200386%_))))
                                             (_%g200295200382%_
                                              _%g200296200386%_))
                                         (_%g200295200382%_
                                          _%g200296200386%_))))
                                 (_%g200295200382%_ _%g200296200386%_))
                             (_%g200295200382%_ _%g200296200386%_))
                         (_%g200295200382%_ _%g200296200386%_))))
                 (_%g200295200382%_ _%g200296200386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g200295200382%_
                                                  _%g200296200386%_))
                                             (_%g200295200382%_
                                              _%g200296200386%_)))
                                       (_%g200295200382%_ _%g200296200386%_))))
                               (_%g200295200382%_ _%g200296200386%_))))
                       (_%g200295200382%_ _%g200296200386%_))))
               (_%g200295200382%_ _%g200296200386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200295200382%_
                                                _%g200296200386%_)))))
                                   (_%g200294200724%_ _%hd200293%_)))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest200267200275%_))
                             (let ((_%hd200272200732%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest200267200275%_)))
                                   (_%tl200273200735%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest200267200275%_))))
                               (let* ((_%hd200738%_ _%hd200272200732%_)
                                      (_%rest200741%_ _%tl200273200735%_))
                                 (_%K200271200728%_
                                  _%rest200741%_
                                  _%hd200738%_)))
                             (_%else200269200287%_))))))
                (begin
                  (let ((_g202038_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g202037_)
                               (##vector-length _g202037_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g202038_ 2)))
                        (error "Context expects 2 values" _g202038_)))
                  (let ((_%unchecked-proc200744%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g202037_ 0)))
                        (_%unchecked-clauses200746%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g202037_ 1))))
                    (if _%unchecked-proc200744%_
                        (let* ((_%g200748200772%_
                                (lambda (_%g200749200768%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g200749200768%_))))
                               (_%g200747200859%_
                                (lambda (_%g200749200776%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g200749200776%_))
                                      (let ((_%e200752200779%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g200749200776%_))))
                                        (let ((_%hd200753200783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200752200779%_)))
                                              (_%tl200754200786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200752200779%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200754200786%_))
                                              (let ((_%e200755200789%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200754200786%_))))
                                                (let ((_%hd200756200793%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200755200789%_)))
                                                      (_%tl200757200796%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200755200789%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd200756200793%_))
                                                      (let ((_g202049_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd200756200793%_ '0))))
                (begin
                  (let ((_g202050_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g202049_)
                               (##vector-length _g202049_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g202050_ 2)))
                        (error "Context expects 2 values" _g202050_)))
                  (let ((_%target200758200799%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g202049_ 0)))
                        (_%tl200760200802%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g202049_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl200760200802%_))
                        (letrec ((_%loop200761200805%_
                                  (lambda (_%hd200759200809%_
                                           _%clause200765200812%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd200759200809%_))
                                        (let ((_%e200762200815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd200759200809%_))))
                                          (let ((_%lp-hd200763200819%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200762200815%_)))
                                                (_%lp-tl200764200822%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200762200815%_))))
                                            (_%loop200761200805%_
                                             _%lp-tl200764200822%_
                                             (cons _%lp-hd200763200819%_
                                                   _%clause200765200812%_))))
                                        (let ((_%clause200766200825%_
                                               (reverse _%clause200765200812%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200757200796%_))
                                              ((lambda (_%L200829%_
                                                        _%L200831%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L200831%_
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
                                             (let ((__tmp202051
                                                    (lambda (_%g200850200853%_
                                                             _%g200851200856%_)
                                                      (cons _%g200850200853%_
                                                            _%g200851200856%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp202051
                                                '()
                                                _%L200829%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause200766200825%_
                                               _%hd200753200783%_)
                                              (_%g200748200772%_
                                               _%g200749200776%_)))))))
                          (_%loop200761200805%_ _%target200758200799%_ '()))
                        (_%g200748200772%_ _%g200749200776%_)))))
              (_%g200748200772%_ _%g200749200776%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200748200772%_
                                               _%g200749200776%_))))
                                      (_%g200748200772%_ _%g200749200776%_)))))
                          (_%g200747200859%_
                           (list _%unchecked-proc200744%_
                                 _%unchecked-clauses200746%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g200199200210%_))))
                                        (_%g200197200863%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L200058%_
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
                                          _%L200179%_
                                          _%L200181%_))
                                       (let ((__tmp202052
                                              (lambda (_%g200866200870%_
                                                       _%g200867200873%_
                                                       _%g200868200875%_)
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
                                (cons _%g200867200873%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g200866200870%_ '())))))
              _%g200868200875%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp202052
                                          '()
                                          _%L200179%_
                                          _%L200181%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig200105200173%_
                                    _%arity200106200176%_))))))
                   (_%loop200099200131%_ _%target200096200125%_ '() '()))
                 (_%g200092200118%_ _%g200093200122%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200092200118%_
                                                _%g200093200122%_)))))
                                   (_%g200091200878%_ _%signatures200089%_))
                                 (_%g199975199999%_ _%g199976200003%_)))
                           _%case-signature199993200052%_
                           _%hd199983200020%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop199988200032%_
                                                   _%target199985200026%_
                                                   '()))
                                                (_%g199975199999%_
                                                 _%g199976200003%_)))))
                                      (_%g199975199999%_ _%g199976200003%_))))
                              (_%g199975199999%_ _%g199976200003%_))))
                      (_%g199975199999%_ _%g199976200003%_)))))
          (_%g199974200882%_ _%stx199972%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx200890%_)
        (let* ((_%__stx201872201873%_ _%$stx200890%_)
               (_%g200896200956%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201872201873%_)))))
          (let ((_%__kont201875201876%_
                 (lambda (_%L201178%_ _%L201180%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201180%_ '()))
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
                                                       (cons _%L201180%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201178%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201877201878%_
                 (lambda (_%L201103%_ _%L201105%_ _%L201106%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201106%_ '()))
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
                                                       (cons _%L201106%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201105%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201103%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201879201880%_
                 (lambda (_%L201017%_ _%L201019%_ _%L201020%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201020%_ '()))
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
                                                       (cons _%L201020%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201019%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201017%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201872201873%_))
                (let ((_%e200900201134%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201872201873%_))))
                  (let ((_%tl200902201141%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200900201134%_)))
                        (_%hd200901201138%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200900201134%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200902201141%_))
                        (let ((_%e200903201144%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200902201141%_))))
                          (let ((_%tl200905201151%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200903201144%_)))
                                (_%hd200904201148%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200903201144%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd200904201148%_))
                                (let ((_%e200906201154%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200904201148%_))))
                                  (if (equal? _%e200906201154%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200905201151%_))
                                          (let ((_%e200907201158%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl200905201151%_))))
                                            (let ((_%tl200909201165%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200907201158%_)))
                                                  (_%hd200908201162%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200907201158%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200909201165%_))
                                                  (let ((_%e200910201168%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200909201165%_))))
                                                    (let ((_%tl200912201175%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200910201168%_)))
                                                          (_%hd200911201172%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200910201168%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200912201175%_))
                                                          (_%__kont201875201876%_
                                                           _%hd200911201172%_
                                                           _%hd200908201162%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200896200956%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200896200956%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200896200956%_)))
                                      (if (equal? _%e200906201154%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200905201151%_))
                                              (let ((_%e200923201073%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200905201151%_))))
                                                (let ((_%tl200925201080%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200923201073%_)))
                                                      (_%hd200924201077%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200923201073%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200925201080%_))
                                                      (let ((_%e200926201083%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl200925201080%_))))
                (let ((_%tl200928201090%_
                       (let () (declare (not safe)) (##cdr _%e200926201083%_)))
                      (_%hd200927201087%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200926201083%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200928201090%_))
                      (let ((_%e200929201093%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl200928201090%_))))
                        (let ((_%tl200931201100%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200929201093%_)))
                              (_%hd200930201097%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200929201093%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200931201100%_))
                              (_%__kont201877201878%_
                               _%hd200930201097%_
                               _%hd200927201087%_
                               _%hd200924201077%_)
                              (let ()
                                (declare (not safe))
                                (_%g200896200956%_)))))
                      (let () (declare (not safe)) (_%g200896200956%_)))))
              (let () (declare (not safe)) (_%g200896200956%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200896200956%_)))
                                          (if (equal? _%e200906201154%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200905201151%_))
                                                  (let ((_%e200942200987%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200905201151%_))))
                                                    (let ((_%tl200944200994%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200942200987%_)))
                                                          (_%hd200943200991%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200942200987%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200944200994%_))
                                                          (let ((_%e200945200997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl200944200994%_))))
                    (let ((_%tl200947201004%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200945200997%_)))
                          (_%hd200946201001%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200945200997%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200947201004%_))
                          (let ((_%e200948201007%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200947201004%_))))
                            (let ((_%tl200950201014%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200948201007%_)))
                                  (_%hd200949201011%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200948201007%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200950201014%_))
                                  (_%__kont201879201880%_
                                   _%hd200949201011%_
                                   _%hd200946201001%_
                                   _%hd200943200991%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g200896200956%_)))))
                          (let () (declare (not safe)) (_%g200896200956%_)))))
                  (let () (declare (not safe)) (_%g200896200956%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200896200956%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200896200956%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200896200956%_)))))
                        (let () (declare (not safe)) (_%g200896200956%_)))))
                (let () (declare (not safe)) (_%g200896200956%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx201202%_)
        (let* ((_%g201206201226%_
                (lambda (_%g201207201222%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201207201222%_))))
               (_%g201205201297%_
                (lambda (_%g201207201230%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201207201230%_))
                      (let ((_%e201209201233%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201207201230%_))))
                        (let ((_%hd201210201237%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201209201233%_)))
                              (_%tl201211201240%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201209201233%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201211201240%_))
                              (let ((_g202053_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201211201240%_
                                        '0))))
                                (begin
                                  (let ((_g202054_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202053_)
                                               (##vector-length _g202053_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202054_ 2)))
                                        (error "Context expects 2 values"
                                               _g202054_)))
                                  (let ((_%target201212201243%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202053_ 0)))
                                        (_%tl201214201246%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202053_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201214201246%_))
                                        (letrec ((_%loop201215201249%_
                                                  (lambda (_%hd201213201253%_
                                                           _%decl201219201256%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201213201253%_))
                                                        (let ((_%e201216201259%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201213201253%_))))
                  (let ((_%lp-hd201217201263%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201216201259%_)))
                        (_%lp-tl201218201266%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201216201259%_))))
                    (_%loop201215201249%_
                     _%lp-tl201218201266%_
                     (cons _%lp-hd201217201263%_ _%decl201219201256%_))))
                (let ((_%decl201220201269%_ (reverse _%decl201219201256%_)))
                  ((lambda (_%L201273%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp202055
                                  (lambda (_%g201288201291%_ _%g201289201294%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g201288201291%_)
                                          _%g201289201294%_))))
                             (declare (not safe))
                             (__foldr1 __tmp202055 '() _%L201273%_))))
                   _%decl201220201269%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201215201249%_
                                           _%target201212201243%_
                                           '()))
                                        (_%g201206201226%_
                                         _%g201207201230%_)))))
                              (_%g201206201226%_ _%g201207201230%_))))
                      (_%g201206201226%_ _%g201207201230%_)))))
          (_%g201205201297%_ _%$stx201202%_))))))
